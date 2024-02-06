#!/usr/bin/env perl

sub tocmd {
    my ($c) = @_;
    if (($c >> 19) & 1) {
        return sprintf('%02o %02o %05o', $c >> 20, ($c >> 15) & 037, $c & 077777);
    } else {
        return sprintf('%02o %03o %04o', $c >> 20, ($c >> 12) & 0377, $c & 07777);
    }
}

open(B, "base.txt") || die "No base.txt\n";
while (<B>) {
    if (/^(\d\d\d\d).(\d\d\d\d):  .... .... .... ....  (......) (......)  /) {
        ($z, $a, $l, $r) = ($1, $2, $3, $4);
        $i = oct($a) % 256;
        $l = tocmd(hex($l));
        $r = tocmd(hex($r));
        $loc{"$i $l"} .= "$z ${a}L " unless $l eq '00 000 0000' || $l eq '00 22 00000';
        $loc{"$i $r"} .= "$z ${a}R " unless $r eq '00 000 0000' || $r eq '00 22 00000';
    }   
}

close(B);
$tot = %loc;

printf STDERR "Read $tot commands\n";

while(<>) {
    chop;
    ($i, $c) = /(\d\d\d) (\d\d \d\d..\d\d\d\d)/;
    next if $c eq '00 000 0000' || $c eq '00 22 00000';
    $i = oct($i);
    print "$c: ";
    if (!defined($loc{"$i $c"})) { print "unknown\n"; }
        else { print $loc{"$i $c"}, "\n"; }
}
