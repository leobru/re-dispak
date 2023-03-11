MODS = disp70 vzu term kachka kit diski mott gnus khlam \
        avmd prik6 sostav boek1 visp dmlmb esml

build: $(addsuffix .lst,$(MODS))
	env BESM6_PATH=.:$(BESM6_PATH) dispak rvs.b6
	env BESM6_PATH=.:$(BESM6_PATH) ./verify.pl

%.lst: %.b6
	touch 2222
	env BESM6_PATH=.:$(BESM6_PATH) ./prn $<
	grep ОШИБОК= $@

clean:
	rm -f 2222 *.lst

full: clean build
