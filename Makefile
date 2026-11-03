BESM6_PATH ?= /usr/local/share/besm6

MODS = disp70 vzu term kachka kit diski mott gnus khlam pechat \
        avmd prik6 sostav boek1 visp dmlmb esml e71tk consul kz \
        bonbot e64 prik4 prikaz prik5 prik7 resurs cirkul clock \
	tupr bop2 stat2s termas eko plbesm ek2 ek3 ek4 osa osaner \
	gp1 gp4 vektor vydins siprog io gen arfa ra komar gidra \
	nereza arkhin perekh obraz trakh uchet \
	serp serp2 serp3 serp4 serp5 ritm bac \
	sbor80 nakopl nakzad vydach1 \
        ekst ekvvod bop janus prik1 prik2 prik3 proces puskach \
        kanal ekgdr nombob pchkz esuvvk bop1 dudka doprez \
        smena1 smena2 smena3 stat1s ek5 ek6 ek7 sme pgs vyzovd \
        rpipl benson nrot ovd nrkod spoe67 prik8 prorok rezarkh \
        trubka gp3 robot priskv nerot spe66 gruppa konvoy \
	upryach dnepr plan plan2 e60 e60d slojka kch pibesm avml \
        gp2 ukachka v1k v3v4 v6v7 avrasp kz1 skor1 skor2 \
	konfus svyaz7 gens2 prikaz gens gens1 espi80 espl svyaz

SRC = src
BUILD = build
LSTS = $(addprefix $(BUILD)/lst/,$(addsuffix .lst,$(MODS)))

.PHONY: build clean zip full

# Sources are src/*.be; listings go to build/lst, label tables to
# build/tab, job decks to build/job, zone dumps to build/dump, the
# scratch disk to build/disk/2222.
build: $(LSTS) $(BUILD)/modloc.txt rvs.src
	env BESM6_PATH=$(BESM6_PATH) ./rvs.pl rvs.src
	env BESM6_PATH=$(BESM6_PATH) ./verify.pl

$(BUILD)/lst/%.lst: $(SRC)/%.be $(BUILD)/modloc.txt
	env BESM6_PATH=$(BESM6_PATH) ./asm.pl $<

$(BUILD)/txt/%.txt: $(BUILD)/lst/%.lst
	mkdir -p $(BUILD)/txt
	cp $< $@

$(BUILD)/modloc.txt: modlist.src
	mkdir -p $(BUILD)
	./mkloc.pl < $< > $@

clean:
	rm -rf $(BUILD)

zip:	$(addprefix $(BUILD)/txt/,$(addsuffix .txt,$(MODS)))
	cd $(BUILD)/txt && zip -Z bzip2 -m ../listing.zip $(addsuffix .txt,$(MODS))

full: clean build
