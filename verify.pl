#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':encoding(UTF-8)';
use open ':std', ':encoding(UTF-8)';

# Parsing rvs.src to find out what to compare
open(R, 'rvs.src') || die "No rvs.src\n";
while (<R>) {
    next if /^#/;
# Taking only lines with specified target location
    next unless /мдл +(......).*зонгп \d\d(\d\d\d\d) *(\d+)/i;
    push @start, $2;
    push @len, $3;
    $name{$2} = $1;
}
close(R);
# Parsing sect.src to find out if partial zones must be compared
if (open(S, 'sect.src')) {
    while (<S>) {
        next if /^\b*#/;
        my ($z, $s) = /(\d+) +([0123]+)/;
        $sect{$z} = $s;
    }
}

# Uses $gold, $silver
sub comp {
    my ($s, $l, $n) = @_;
    my $toskip = $n * 1536;
    my $flags = '';
    my $nsec = $n == 4 ? '' : "(sector $n)";
    $flags = "-i $toskip -n 1536" unless $n == 4;
#    print "Running cmp $flags $gold $silver\n";
    my $first = `env LANG=en_US.UTF-8 cmp -b $flags $gold $silver`;
    if ($?) {
        chop ($diff = `cmp $flags -l $gold $silver | wc -l`);
        print "\033[1;31m$Zone $s, $name{$s} $nsec differs in $diff bytes\033[22;39m\n";
        ($zone, $byte) = $first =~ /G(\d+).*byte (\d+)/;
        $zone = oct($zone);
        $zone += int($byte / 6144);
        $word = int(($byte % 6144) / 6);
        printf ("First difference in zone %04o, word %04o\n", $zone, $word);
    } else {
        print "\033[1;32mZone $s, $name{$s} $nsec matches\033[22;39m\n";
    }
}

for ($i = 0; $i <= $#start; ++$i) {
    my($s, $l) = ($start[$i], $len[$i]);
    $gold = "G$s-L$l";
    $silver = "S$s-L$l";
    system("besmtool dump 2053 --start=$s --length=$l --to-file=$gold > /dev/null")
	unless (-e $gold && 6144*$l == -s $gold); 
    system("rm -f $silver") if (-e $silver);
    system("besmtool dump 2222 --start=$s --length=$l --to-file=$silver > /dev/null");
    if (-s $silver != $l * 6144) {
        print "\033[1;31mBad read of $silver\033[22;39m\n";
        next;
    }
    if ($l == 1 && defined($sect{$s})) {
        foreach $n (split //, $sect{$s}) {
            comp($s, $l, $n);
        }
    } else {
        comp($s, $l, 4);
    }
}
