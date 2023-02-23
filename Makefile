MODS = disp70 vzu term kachka kit diski mott gnus khlam \
        avmd prik6 sostav boek1 visp dmlmb esml e71tk consul \
        bonbot
build: $(addsuffix .lst,$(MODS))
	env BESM6_PATH=.:$(BESM6_PATH) dispak rvs.be
	env BESM6_PATH=.:$(BESM6_PATH) ./verify.pl

%.lst: %.be
	env BESM6_PATH=.:$(BESM6_PATH) ./prn.sh $<
	grep ОШИБОК= $@

clean:
	rm -f 2222 *.lst

full: clean build
