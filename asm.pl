#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':encoding(UTF-8)';
use open ':std', ':encoding(UTF-8)';

$verbose = 0;
if ($#ARGV >= 0 && $ARGV[0] eq '-v') { $verbose = 1; shift @ARGV; }

die "Usage: asm.pl [-v] file\n" unless $#ARGV == 0;

$src = $ARGV[0];

# Find module name
$mod = '';
open(F, $src) || die "Cannot open $src\n";
while (<F>) {
    my ($name, $start, $rest) = split;
    # Mixing of Cyrillic and Latin letters not supported
    if ($start =~ /старт/i || $start =~ /ctapt/i || $start =~ /start/i) {
        $mod = $name;
        last;
    }
}
close (F);
die "Could not find module name in $src, check start\n" if $mod eq '';
# Find module params
open (M, 'modloc.txt') || die "No modloc.txt\n";
$found = 0;
while (<M>) {
    next if /^ *#/;
    chop;
    ($cur, $dest, $len) = split;
    if ("$mod " =~ /^$cur\b/i) { $found = 1; last; }
}
close (M);
die "Could not find $mod in modloc.txt\n" if ! $found;
$b6 = "$src.b6";
open(B, ">$b6") || die "Cannot open $b6 for writing\n";
print B qq/шифр 419999^
трак 64^
лент 30(2048-6200)^
лент 42(2099)^
лент 43(2222-ЗП)^
ацп 40^
росп 0^
врем 240^
лист 0-37^
вход 4000^
е
в 4000
к 00 010 4003
к 15 24 04000
к 00 066 0001 00 000 0100
с 3000 67
в 14000
а1
ВВД\$\$\$^
/;
open(F, $src) || die "Where did $src go?\n";
while (<F>) {
	chop;
	$_ = '*' if /^\b*$/;
	print B "$_^\n";
}
close (F);
print B qq/
КВЧ\$\$\$^
ТРН\$\$\$^
ЧТКОМП420070^
1-1^
БТМАЛФ^
ЗОНМОД43$dest  00$len^
КНЦ\$\$\$^
_\$ЕКОНЕЦ
/;
close(B);
system("dispak $b6") if $verbose;
system("./prn.sh $b6");
$res = `grep ОШИБОК= $src.lst`;
if ($res =~ /=0000/) { $color = 2; } else { $color = 1; }
print STDERR "\033[1;3${color}m$mod	: $res\033[22;39m\n";
$lst = $src;
$lst =~ s/\.be/.lst/;
system("mv $src.lst $lst");
