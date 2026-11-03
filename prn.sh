#!/bin/sh
# Runs a job deck under dispak with printing enabled.
# Usage: prn.sh build/job/NAME.b6 [NAME]
# Writes build/lst/NAME.lst and the label table build/tab/NAME.tab;
# the scratch disk is build/disk/2222.
mkdir -p build/disk build/lst build/tab build/job
touch build/disk/2222
BESM6_PATH=build/disk:${BESM6_PATH:-/usr/local/share/besm6}
export BESM6_PATH
base=${2:-$(basename "$1" .b6)}
prn=build/job/$base.prn
sed 's/^1-1/0-0/;/БТМАЛФ/d' < "$1" > "$prn"
dispak "$prn" > "build/lst/$base.lst"
./flatten.pl < "build/lst/$base.lst" > "build/tab/$base.tab"
rm "$prn"
