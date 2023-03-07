#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':encoding(UTF-8)';
use open ':std', ':encoding(UTF-8)';

die  "Usage: extern.pl symtab listing\n" unless $#ARGV == 1;
# Finds undefined symbols in the listing, finds matching entry symbols in symtab,
# prints ВНЕШ declarations.
open(TAB, $ARGV[0]) || die "Bad symtab $ARGV[0]\n";

while (<TAB>) {
    # Only interested in entry points, but save locals for error reporting
    my ($a, $f, $n) = /^(\d+) +(\d+) +([^\b]+)/;
    next if $n eq '-'; # unnamed, not interesting
    $all{$n} = $a;
    $seen{$n}++;
    next unless / entry /;
    chop;
    ($a, $f, $n, $m) = /^(\d+) +(\d+) +([^ ]+).* entry ([^ ]+)/;
    $n =~ tr/ABEKMHOPCTYX/АВЕКМНОРСТУХ/; # normalizing to Cyrillics
    if (defined($mod{$n}) && $mod{$n} ne $m) {
        print STDERR "Symbol $n defined in both $mod{$n} and $m ???\n";
    } else {
        $mod{$n} = $m;
    }
}
$sz = keys %mod;
print STDERR "Found $sz entry labels\n";
close(TAB);

open(LIST, $ARGV[1]) || die "Bad listing $ARGV[1]\n";

while (<LIST>) {
    next unless /\*МЕТ\*/;
print STDERR "Found labels at $.\n";
    last;
}

while (<LIST>) {
    if (/^\*\*\*\*\*\*\*\*\*\*\*/) {
	print STDERR "End of labels at $.\n";
        last;
    } 
    chop;
    push @lines, $_;
}

for ($col = 0; $col < 8; ++$col) {
    for ($line = 0; $line <= $#lines; ++$line) {
        $elt = substr($lines[$line], $col*16, 16);
        next if $elt =~ /СА *$/; # already known external
        ($name, $addr) = ($1, $2) if $elt =~ /([^ ]+) +(\d\d\d\d\d)/;
        next if $addr ne '00000'; # defined locally
        print STDERR "Considering $name\n";
        $name =~ tr/ABEKMHOPCTYX/АВЕКМНОРСТУХ/;
        if (!defined($mod{$name})) {
            if (defined($seen{$name})) {
                print STDERR "$name is local, defined $seen{$name} times\n";
            } else {
                print STDERR "$name unknown\n";
            }
            next;
        }
        $m = $mod{$name};
        $exts{$m} = 1;
        # Address labels use Latin A
        $name =~ tr/А/A/ if $name =~ /А\d\d\d\d\d/;
        push @$m, $name;
    }
}

# Pack lines up to 60 chars

foreach $m (keys %exts) {
    do {
        $s = "$m ВНЕШ";
        $delim = ' ';
        while (@$m && (length($s) + 1 + length($$m[0]) <= 60)) {
            $s .= "$delim$$m[0]";
            $delim = ',';
            shift @$m;
        }
        print "$s\n";
    } while (@$m);
}


