#!/usr/bin/env perl
# Converts disbesm6 output into a .be source in the style of serp*.be.
#
# Usage: dis2be.pl [options] -b file.bin file.dis > file.be
#   -b file.bin  the binary given to disbesm6
#   -a origin    octal load address of the binary (default 0, as disbesm6 -a0)
#   -m module    module name to put in place of НЕИМЯ
#   -e addrs     octal addresses (space separated, as given to disbesm6 -e)
#                that get a Gnnnnn label even if nothing refers to them
#   -n names     file of "octal-address name" lines; the auto label
#                (Gnnnnn/Dnnnnn) of that address is renamed everywhere,
#                and the word gets that label even if nothing refers to it
#   -d addrs     file of octal addresses (or ranges a-b) that must be
#                written as data even if disbesm6 traced them as code
#
# Every Gnnnnn/Dnnnnn referenced in an operand gets a label on its word,
# even where disbesm6 forgot to print one.  A word becomes "конд в'...'"
# (value taken from the binary) if disbesm6 shows it as data or if one of
# its halves is not a real instruction (кк, конк, дк); a "конк п'XXX' /
# конк А(label)" pair (a name/address table entry) is kept.  Data words
# keep a п'text' form only when disbesm6 decoded all 6 characters.
# Empty "мода" fillers are dropped where the assembler inserts them by
# itself: before "пв" and extracodes (these go to the right half) and
# before a word that starts with a label or is data.
#
# Typical use:
#   besmtool dump 2053 --start=0402 --length=3 --to-file=ritm.bin
#   disbesm6 -b -a0 -e2 [-eNNN ...] ritm.bin > ritm.dis
#   ./dis2be.pl -m РИТМЕД -e '2 NNN ...' -b ritm.bin ritm.dis > src/ritm.be
#   make build
use utf8;
use feature 'unicode_strings';
use open ':encoding(UTF-8)';
use open ':std', ':encoding(UTF-8)';
use Getopt::Std;
use Encode qw(decode_utf8);

my $usage = "Usage: dis2be.pl [-m module] [-e entries] [-n names] [-d addrs] [-a origin] -b file.bin file.dis\n";
getopts('n:m:b:a:d:e:', \%opt) || die $usage;
die $usage unless defined $opt{b};
$opt{$_} = decode_utf8($opt{$_}) for grep { defined $opt{$_} } keys %opt;
my $origin = oct($opt{a} // '0');
sub o5 { sprintf('%05o', $_[0]) }

my %ren;
if (defined $opt{n}) {
    open(N, $opt{n}) || die "Cannot open $opt{n}\n";
    while (<N>) {
        next if /^\s*(#|$)/;
        my ($a, $n) = split;
        $ren{o5(oct($a))} = $n;
    }
    close(N);
}
my %forcedata;
if (defined $opt{d}) {
    open(D, $opt{d}) || die "Cannot open $opt{d}\n";
    while (<D>) {
        s/#.*//;
        for my $r (split) {
            my ($lo, $hi) = split /-/, $r;
            $hi //= $lo;
            $forcedata{o5($_)} = 1 for oct($lo) .. oct($hi);
        }
    }
    close(D);
}
my %entry;
$entry{o5(oct($_))} = 1 for split ' ', ($opt{e} // '');

# Binary image
open(BIN, '<:raw', $opt{b}) || die "Cannot open $opt{b}\n";
my $bin = do { local $/; <BIN> };
close(BIN);
sub word {
    my $a = shift;
    my $off = ($a - $origin) * 6;
    return undef if $off < 0 || $off + 6 > length($bin);
    my $v = 0;
    $v = $v * 256 + $_ for unpack('C6', substr($bin, $off, 6));
    return sprintf('%016o', $v);
}

# Parse the listing into words
my ($start, @words, %ref);
for (<>) {
    chomp;
    next unless /\t/;
    my @f = split /\t/, $_, -1;
    if (/СТАРТ\t(.*)/) { $start = $1; next; }
    next if /ФИНИШ/;
    my ($label, $mnem, $opnd) = @f[1, 2, 3];
    $opnd //= '';
    $opnd =~ s/ PARITY .*//;
    $opnd =~ s/\s+$//;
    my ($addr) = $f[0] =~ /^(?=.{4}[0-7][ :]) *([0-7]+)[ :]/;
    push @words, { addr => oct($addr), label => $label, ops => [] } if defined $addr;
    next unless @words;
    my $w = $words[-1];
    # Continuation lines of two-line "кк" / "конк" words have the
    # mnemonic one field further
    if ($mnem eq '' && !defined $addr) {
        ($mnem, $opnd) = @f[4, 5];
        $opnd //= '';
    }
    $opnd =~ s/^A\(/А(/;     # Latin A from disbesm6 -> Cyrillic А
    $ref{$2} = $1 while $opnd =~ /\b([GD])([0-7]{5})\b/g;
    push @{$w->{ops}}, [$mnem, $opnd];
    $w->{data} = 1 if $mnem =~ /^(кк|конк|дк|конд|пам)$/;
}

sub symname {
    my ($k, $a) = @_;
    return $ren{$a} // "$k$a";
}
sub rename_syms {
    my $s = shift;
    $s =~ s/\b([GD])([0-7]{5})\b/symname($1, $2)/ge;
    return $s;
}
sub tableword {
    my @ops = @{$_[0]{ops}};
    return @ops == 2 && $ops[0][0] eq 'конк' && $ops[1][0] eq 'конк'
        && $ops[0][1] =~ /^п'.{3}'$/ && $ops[1][1] =~ /^А\([GD][0-7]{5}\)$/;
}

# Final labels; does a word start a new word by itself in the source?
for my $w (@words) {
    my $a = o5($w->{addr});
    my $label = $w->{label};
    $label = "$ref{$a}$a" if $label eq '' && defined $ref{$a};
    $label = "G$a" if $label eq '' && $entry{$a};
    $label = $ren{$a} if defined $ren{$a};
    $w->{label} = rename_syms($label);
    $w->{aligned} = $w->{label} ne '' || ($w->{data} && !tableword($w)) || $forcedata{$a};
}

my $name = $opt{m} // 'НЕИМЯ';
print "$name\tСТАРТ\t$start\n\tБ\n\tМ\n";
sub emit {
    my ($label, $mnem, $opnd) = @_;
    print +(defined $opnd && $opnd ne '') ? "$label\t$mnem\t$opnd\n" : "$label\t$mnem\n";
}
for my $i (0 .. $#words) {
    my $w = $words[$i];
    my $nextaligned = $i == $#words || $words[$i + 1]{aligned};
    my $a = o5($w->{addr});
    my $label = $w->{label};
    my @ops = @{$w->{ops}};
    my $code = word($w->{addr});
    die "No word $a in $opt{b}\n" unless defined $code;
    if (!$forcedata{$a} && tableword($w)) {
        emit($label, 'конк', $ops[0][1]);
        emit('', 'конк', rename_syms($ops[1][1]));
        next;
    }
    if ($w->{data} || $forcedata{$a}) {
        if (@ops == 1 && $ops[0][0] eq 'пам') {
            emit($label, 'пам', $ops[0][1]);
            next;
        }
        my $opnd;
        if (@ops == 1 && $ops[0][0] eq 'конд' && $ops[0][1] =~ /^п'.{6}'$/) {
            $opnd = $ops[0][1];
        } else {
            (my $v = $code) =~ s/^0+//;
            $opnd = "в'" . ($v eq '' ? '0' : $v) . "'";
        }
        emit($label, 'конд', $opnd);
        next;
    }
    # disbesm6 omits the right half after an unconditional jump
    push @ops, ['мода', ''] if @ops == 1 && substr($code, 8) eq '02200000';
    push @ops, ['конк', "в'" . substr($code, 8) . "'"] if @ops == 1;
    # Fillers the assembler inserts by itself
    shift @ops if $ops[0][0] eq 'мода' && $ops[0][1] eq ''
        && ($ops[1][0] eq 'пв' || $ops[1][0] =~ /^Э\d/);
    pop @ops if @ops == 2 && $ops[1][0] eq 'мода' && $ops[1][1] eq '' && $nextaligned;
    for my $op (@ops) {
        my ($mnem, $opnd) = @$op;
        emit($label, $mnem, $mnem eq 'конк' ? $opnd : rename_syms($opnd));
        $label = '';
    }
}
print "\tФИНИШ\n";
