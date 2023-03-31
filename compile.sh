#!/bin/sh
# Using the scratch disk image in the current directory
rm -f 2222
touch 2222
BESM6_PATH=.:$BESM6_PATH
export BESM6_PATH
for mod in disp70 vzu term kachka kit diski mott gnus khlam \
	avmd sostav boek1 visp dmlmb esml e71tk consul \
	bonbot e64 prikaz prik4 prik5 prik6 prik7 ; do
    ./asm.pl $mod.be
done
./rvs.pl rvs.src
./verify.pl
