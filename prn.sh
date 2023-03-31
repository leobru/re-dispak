#!/bin/sh
touch 2222
base=`basename $1 .b6`
sed 's/^1-1/0-0/;/БТМАЛФ/d' < $1 > $base.prn
dispak $base.prn > $base.lst
./flatten.pl < $base.lst > $base.tab
rm $base.prn
