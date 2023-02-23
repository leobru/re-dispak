#!/usr/bin/env perl

@start=	('0621','0625','0475','0736','0755','0605','0534','0671','0572','0567','0422');
@len=	(    4,     3,     2,     1,     2,     1,     1,     1,     1,     1,     1);
# When len == 1: 4 - compare the whole zone; 0 to 3 - compare the given sector of a zone
# When len > 1, ignored
@sect=	(    4,     4,     4,     4,     4,     4,     2,     4,     3,     2,     4);
for ($i = 0; $i <= $#start; ++$i) {
    my($s, $l) = ($start[$i], $len[$i]);
    $gold = "G$s-L$l";
    $silver = "S$s-L$l";
    system("besmtool dump 2053 --start=$s --length=$l --to-file=$gold > /dev/null")
	unless (-e $gold && 6144*$l == -s $gold); 
    system("rm -f $silver") if (-e $silver);
    system("besmtool dump 2222 --start=$s --length=$l --to-file=$silver > /dev/null");
    if ($l == 1 && $sect[$i] != 4) {
        $toskip = $sect[i] * 1536;
        $flags = "-i $toskip -n 1536";
    } else { $flags = ''; }
    if (-s $silver != $l * 6144) {
        print "\033[1;31mBad read of $silver\033[0;30m\n";
    } else {
        $first = `cmp $flags $gold $silver`;
        if ($?) {
            chop ($diff = `cmp $flags -l $gold $silver | wc -l`);
            print "\033[1;31m$silver differs in $diff bytes\033[0;30m\n";
            ($zone, $byte) = $first =~ /G(\d+).*byte (\d+)/;
            $zone = oct($zone);
            $zone += int($byte / 6144);
            $word = int(($byte % 6144) / 6);
            printf ("First difference in zone %04o, word %04o\n", $zone, $word);
        } else {
            print "\033[1;32m$silver matches\033[0;30m\n";
        }
    }
}
