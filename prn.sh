#!/bin/sh
touch 2222
rm -f tmp[0-9][0-9][0-9]*
sed 's/^1-1/0-0/;/БТМАЛФ/d' < $1 > tmp$$
base=`basename $1 .be`
dispak tmp$$ > $base.lst
./flatten.pl < $base.lst > $base.tab
rm tmp$$
