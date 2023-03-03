BESM6_PATH=${BESM6_PATH:-build}

rm $BESM6_PATH/2222
touch $BESM6_PATH/2222
for mod in disp70 vzu term kachka kit diski mott gnus khlam ; do
	echo -n $mod '	: '
	./prn $mod.b6
	grep ОШИБОК= $mod.lst
done
dispak rvs.b6
./verify.pl
