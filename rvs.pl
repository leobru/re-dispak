#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':encoding(UTF-8)';
use open ':std', ':encoding(UTF-8)';

die "Usage: rvs.pl file\n" unless $#ARGV == 0;
# Links the modules listed in file into build/disk/2222;
# the job deck goes to build/job/, the log to build/rvs.log.

$rvs = $ARGV[0];

# Read module params
open (M, 'build/modloc.txt') || die "No build/modloc.txt\n";
while (<M>) {
    next if /^ *#/;
    chop;
    my ($cur, $src, $len) = split;
    $locs{$cur} = $src;
}
close (M);
system('mkdir -p build/job build/disk; touch build/disk/2222');
(my $rvsbase = $rvs) =~ s{^.*/}{};
$b6 = "build/job/$rvsbase.b6";
$ENV{BESM6_PATH} = 'build/disk:' . ($ENV{BESM6_PATH} // '/usr/local/share/besm6');
open(B, ">$b6") || die "Cannot open $b6 for writing\n";
print B qq/шифр 419999^
лен 67(2248)42(2113)^
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
    $rvs =~ s/мдл   $_( *43)zzzz/мдл   $_\1$locs{$_}/i; 
} (keys %locs);
print B $rvs;
print B qq/
конец ^
_\$
еконец
/;
close(B);
system("dispak -s $b6 | tee build/rvs.log | grep -v ЗОНГП");
