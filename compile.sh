#!/bin/sh
# Using the scratch disk image in the current directory
rm -f 2222
touch 2222
BESM6_PATH=.:$BESM6_PATH
export BESM6_PATH
for mod in disp70 vzu term kachka kit diski mott gnus khlam \
	avmd prik6 sostav boek1 visp dmlmb esml e71tk consul \
	bonbot ; do
    echo -n $mod '	: '
    ./prn.sh $mod.be
    grep ОШИБОК= $mod.lst
done
dispak rvs.be
./verify.pl
