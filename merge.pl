#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':encoding(UTF-8)';
use open ':std', ':encoding(UTF-8)';

for ($i = 0; $i <= $#ARGV; ++$i) {
    $tab = $ARGV[$i];
    open(TAB, $tab) || die "No $tab\n";
    while (<TAB>) {
        chop;
        ($a, $f, $n, $c) =  /^(\d+) +(\d+) +([^ ]+)(.*)/;
        next if $n =~ /[МMEЕ]\d\d?$/; # do not merge register and bit definitions
        next if oct($a) < 020; # too much noise
        next if 0103 <= oct($a) && oct($a) <= 0162; # E constants may appear under many names
        if (defined($flags{$a}) && $name{$a} ne $n) {
            print STDERR "In symtabs, $a: $name{$a} -> $n ??? Ignoring\n";
            next;
        }
        $comment{$a} .= $c if $c ne '';
        $f = 2 if $n =~ /A\d\d\d\d\d/;
        $f = 1 if $n =~ /D\d\d\d\d\d/;
        $flags{$a} = $f;        # Typically flags in the .tab files are 0, just in case
        $name{$a} = $n;
    }
    close(TAB);
}

if (open(TAB, 'fulltab')) {
    while (<TAB>) {
        chop;
        ($a, $f, $n, $c) = /^(\d+) +(\d+) +([^ ]+)(.*)/;
        # print "Got $a $f $n\n";
        $comment{$a} = $c . $comment{$a} if $c ne ''; #Comments from fulltab are prepended
        if (!defined($flags{$a})) {
            if ($n eq '-') {
                $minus{$a} = $f;
                next;
            } else {
                $flags{$a} = $f;
                $name{$a} = $n;
            }
            next;
        }
        $flags{$a} |= $f;
        $n1 = $name{$a};
        $n1 =~ tr/ABEKMHOPCTYX/АВЕКМНОРСТУХ/;
        $n =~ tr/ABEKMHOPCTYX/АВЕКМНОРСТУХ/;        
        if ($n1 ne $n && $n ne '-' && $n !~ /[АADU]\d\d\d\d\d/) {
            # Immediately print alias names, unless they are automatic            
            print "$a $flags{$a} $n\n";
        }
    }
    close(TAB);
} else {
    print STDERR "Warning: no fulltab\n";
}

foreach $i (sort keys %flags) {
    $n = $i;
    $n =~ s/А(\d\d\d\d\d)/G\1/; # making address labels use Latin G
    print "$n $flags{$i} $name{$i}$comment{$i}\n";
}

foreach $i (keys %minus) {
    $comment{$i} =~ s/entry.*//;
    print "$i $minus{$i} -$comment{$i}\n" if !defined($flags{$i});    
}
