#!/bin/sh
# Using the scratch disk image in the current directory
rm -f 2222
touch 2222
BESM6_PATH=.:$BESM6_PATH
export BESM6_PATH
for mod in disp70 vzu term kachka kit diski mott gnus khlam ; do
    echo -n $mod '	: '
    ./prn $mod.b6
    grep ОШИБОК= $mod.lst
done
dispak rvs.b6
./verify.pl
