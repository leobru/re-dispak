MODS = disp70 vzu term kachka kit diski mott gnus khlam pechat \
        avmd prik6 sostav boek1 visp dmlmb esml e71tk consul kz \
        bonbot e64 prik4 prikaz prik5 prik7 resurs cirkul clock \
	tupr bop2 stat2s zone0414 zone0567s0 plbesm ek2 ek3 ek4 \
        ekst ekvvod bop janus prik1 prik2 prik3 proces puskach \
        kanal ekgdr nombob pchkz esuvvk bop1 zone0576s2 doprez \
        smena1 zone0602s1 zone0602s2 stat1s ek5 ek6 ek7 sme \
        rpipl benson nrot ovd nrkod spoe67 prik8 prorok \
        trubka zone0565s2 robot priskv nerot spe66 \
	upryach dnepr plan plan2 e60 e60d slojka kch pibesm \
        zone0561s0 ukachka v1k v3v4 v6v7 avrasp kz1 skor1 skor2 \
	zone0676 zone0677 gens2 prikaz gens gens1 espi80 espl

build: $(addsuffix .lst,$(MODS)) modloc.txt rvs.src
	env BESM6_PATH=.:$(BESM6_PATH) ./rvs.pl rvs.src
	env BESM6_PATH=.:$(BESM6_PATH) ./verify.pl

%.lst: %.be modloc.txt
	env BESM6_PATH=.:$(BESM6_PATH) ./asm.pl $<

modloc.txt: modlist.src
	./mkloc.pl < $< > $@

clean:
	rm -f 2222 *.lst *.tab G*-L* S*-L* *.be.b6

full: clean build
