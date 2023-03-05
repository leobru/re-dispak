#!/usr/bin/env perl

@start=	('0621','0625', '0736','0756','0605', '0534');
@len=	(    4,     3,      1,     1,     1,      1);
# When len == 1: 4 - compare the whole zone; 0 to 3 - compare the given sector of a zone
# When len > 1, ignored
@sect=	(    4,     4,      4,     4,     4,      2);
for ($i = 0; $i <= $#start; ++$i) {
    my($s, $l) = ($start[$i], $len[$i]);
    $gold = "G$s-L$l";
    $silver = "S$s-L$l";
    system("besmtool dump 2053 --start=$s --length=$l --to-file=$gold") unless (-e $gold); 
    system("besmtool dump 2222 --start=$s --length=$l --to-file=$silver");
    if ($l == 1 && $sect[$i] != 4) {
        $toskip = $sect[i] * 1536;
        $flags = "-i $toskip -n 1536";
    } else { $flags = ''; }
    if (system("cmp $flags $gold $silver")) {
        chop ($diff = `cmp $flags -l $gold $silver | wc -l`);
        print "$silver differs in $diff bytes\n";
    } else {
        print "$silver matches\n";
    }
}
