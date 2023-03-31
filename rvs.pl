#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':encoding(UTF-8)';
use open ':std', ':encoding(UTF-8)';

die "Usage: rvs.pl file\n" unless $#ARGV == 0;

$rvs = $ARGV[0];

# Read module params
open (M, 'modloc.txt') || die "No modloc.txt\n";
while (<M>) {
    next if /^ *#/;
    chop;
    my ($cur, $src, $len) = split;
    $locs{$cur} = $src;
}
close (M);
$b6 = "$rvs.b6";
open(B, ">$b6") || die "Cannot open $b6 for writing\n";
print B qq/шифр 419999^
лен 67(2248)^
лен 43(2222-зп)^
росп 0^
вход 1000^
е
в 1000
к 00 070 1003
к 00 070 1004
к 00 30 70000
с 0010 3400 0067 0105
с 0010 3500 0067 0106
в 2000
а1
/;
open(RVS, $rvs) || die "Cannot open $rvs\n";
$rvs = '';
while (<RVS>) { $rvs .= $_ unless /^ *#/; }
close(RVS);
map {
    $rvs =~ s/$_( *43)zzzz/$_\1$locs{$_}/i; 
} (keys %locs);
print B $rvs;
print B qq/
конец ^
_\$
еконец
/;
close(B);
system("dispak -s $b6 | grep -v ЗОНГП");
