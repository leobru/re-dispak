#!/bin/sh
# Assembling a subset of modules from src/ on a fresh scratch disk
# build/disk/2222, linking and verifying
rm -f build/disk/2222
mkdir -p build/disk
touch build/disk/2222
./mkloc.pl < modlist.src > build/modloc.txt
for mod in disp70 vzu term kachka kit diski mott gnus khlam \
	avmd sostav boek1 visp dmlmb esml e71tk consul \
	bonbot e64 prikaz prik4 prik5 prik6 prik7 ; do
    ./asm.pl src/$mod.be
done
./rvs.pl rvs.src
./verify.pl
