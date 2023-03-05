#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':encoding(UTF-8)';
use open ':std', ':encoding(UTF-8)';

open(TAB, 'fulltab') || die "No fulltab\n";

while (<TAB>) {
    chop;
    ($a, $f, $n, $c) = /(\d+) +(\d+) +([^ ]+)(.*)/;
    #    print "Got $a $f $n\n";
    $comment{$a} = $c if $c ne '';
    if ($n eq '-') {
        $minus{$a} = $f;
        next;
    }
    if (defined($flags{$a}) && $name{$a} ne $n) {
        # Immediately print alias names
        print "$_\n";
    } else {
        $flags{$a} = $f;
        $name{$a} = $n;
    }
}

close(TAB);

for ($i = 0; $i <= $#ARGV; ++$i) {
    $tab = $ARGV[$i];
    open(TAB, $tab) || die "No $tab\n";
    while (<TAB>) {
        chop;
        ($a, $f, $n, $c) =  /(\d+) +(\d+) +([^ ]+)(.*)/;
        $comment{$a} .= $c if $c ne '';
        next if oct($a) < 0100;
        if (!defined($flags{$a})) {            
            $n =~ s/А(\d\d\d\d\d)/A\1/; # making address labels use Latin A
            $f = 2 if $n =~ /A\d\d\d\d\d/;
            $f = 1 if $n =~ /D\d\d\d\d\d/;
            $flags{$a} = $f;
            $name{$a} = $n;
        } elsif (oct($a) > 0162) {
            $n1 = $name{$a};
            $n1 =~ tr/ABEKMHOPCTYX/АВЕКМНОРСТУХ/;
            $n =~ tr/ABEKMHOPCTYX/АВЕКМНОРСТУХ/;
            if ($n1 ne $n) {
                print STDERR "$a defined as $name{$a} in fulltab and as $n in text\n";
            }
        }
    }
    close(TAB);
}

foreach $i (sort keys %flags) {
    print "$i $flags{$i} $name{$i}$comment{$i}\n";
}

foreach $i (sort keys %minus) {
    print "$i $minus{$i} -$comment{$i}\n" if !defined($flags{$i});    
}
