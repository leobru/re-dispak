MODS = disp70 vzu term kachka kit diski mott gnus khlam pechat \
        avmd prik6 sostav boek1 visp dmlmb esml e71tk consul kz \
        bonbot e64 prik4 prikaz prik5 prik7 resurs cirkul clock \
	tupr bop2 stat2s termas eko plbesm ek2 ek3 ek4 osa osaner \
	gp1 gp4 vektor vydins siprog io gen arfa ra komar gidra \
	nereza arkhin perekh obraz trakh serp4 serp1 bac \
        ekst ekvvod bop janus prik1 prik2 prik3 proces puskach \
        kanal ekgdr nombob pchkz esuvvk bop1 zone0576s2 doprez \
        smena1 nombo1 nombo2 stat1s ek5 ek6 ek7 sme pgs vyzovd \
        rpipl benson nrot ovd nrkod spoe67 prik8 prorok rezarkh \
        trubka zone0565s2 robot priskv nerot spe66 gruppa konvoy \
	upryach dnepr plan plan2 e60 e60d slojka kch pibesm avml \
        zone0561s0 ukachka v1k v3v4 v6v7 avrasp kz1 skor1 skor2 \
	khlam2 khlam3 gens2 prikaz gens gens1 espi80 espl svyaz

build: $(addsuffix .lst,$(MODS)) modloc.txt rvs.src
	env BESM6_PATH=.:$(BESM6_PATH) ./rvs.pl rvs.src
	env BESM6_PATH=.:$(BESM6_PATH) ./verify.pl

%.lst: %.be modloc.txt
	env BESM6_PATH=.:$(BESM6_PATH) ./asm.pl $<

%.txt: %.lst
	cp $< $@

modloc.txt: modlist.src
	./mkloc.pl < $< > $@

clean:
	rm -f 2222 *.lst *.tab G*-L* S*-L* *.be.b6

zip:	$(addsuffix .txt,$(MODS))
	zip -Z bzip2 -m listing.zip $(addsuffix .txt,$(MODS))

full: clean build
