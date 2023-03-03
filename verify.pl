#!/usr/bin/env perl

@start=	('0621','0736','0756');
@len=	(    7,     1,     1);

for ($i = 0; $i <= $#start; ++$i) {
    $gold = "G$start[$i]-L$len[$i]";
    $silver = "S$start[$i]-L$len[$i]";
    system("../besmtool/besmtool dump 2053 --start=$start[$i] --length=$len[$i] --to-file=$gold") unless (-e $gold); 
    system("../besmtool/besmtool dump 2222 --start=$start[$i] --length=$len[$i] --to-file=$silver");
    if (system("cmp $gold $silver")) {
        chop ($diff = `cmp -l $gold $silver | wc -l`);
        print "$silver differs in $diff bytes\n";
    } else {
        print "$silver matches\n";
    }
}
