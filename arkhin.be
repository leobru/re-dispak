АРХИН	СТАРТ	'76000'
	Б
	М
PCMДAT	сч	ГOД
	сбр	MACДAT
	мода	0
	пв	G76162(М17)
	зп	PAЯ(М7)
	пв	ENQKOH(М12)
	сч	ЧTCЛYЖ
	пв	OБMAH(М14)
	сч	ДATOБP(М16)
	нтж	ГOД
	и	MACДAT
	по	G76113
	сч	ЧTKBB
	пв	OБMMД(М14)
	зп	ЧTKBB
	уии	М1(М16)
	мода	0
	пв	ЧИCTBB(М13)
	сч	ЧTБK
	пв	OCBЗOH(М14)
	сч	ЧTГK
G76013	или	ЧTЗOHA
	пв	OБMMД(М14)
	зп	PAЯ1(М7)
	мода	ДГK(М16)
	уиа	0(М15)
	уиа	0(М4)
	уиа	-ЧKBA+1(М5)
	сбр	MACKAЗ
	сда	64+24
	уиа	-2(М3)
G76020	зп	PAЯ2(М7)
	сч	ДATЫ(М15)
	и	E16
	по	G76024
	нтж	ДATЫ(М15)
	зп	ДATЫ(М15)
	уиа	1(М4)
G76024	сч	ГOД
	сда	64-21
	нтж	ПAPДЛ(М15)
	и	E24П22
	пе	G76031
	сч	E24П22
	и	ПAPДЛ(М15)
	нтж	ПAPДЛ(М15)
	зп	ПAPДЛ(М15)
	уиа	1(М4)
G76031	сч	XOЗ(М15)
	и	E19
	по	G76063
	сч	ДATЫ(М15)
	и	E17
	пе	G76063
	сч	БOББЮД(М15)
	и	E12П1
	по	G76066
	сч	ДATЫ(М15)
	мода	0
	пв	G76162(М17)
	вчоб	PAЯ(М7)
	пе	G76063
	вч	CPOKXP
	пе	G76063
	сч	CЛCЛOB(М15)
	пв	G76162(М17)
	вчоб	PAЯ(М7)
	пе	G76063
	уиа	24(М6)
	вч	CPOKXP
	пе	G76063
	сч	ДATЫ(М15)
	сда	64-15
	пв	G76162(М17)
G76046	вчоб	PAЯ(М7)
	пе	G76063
	вч	CPOKXP
	пе	G76063
G76050	уиа	'77601'(М10)
	уии	М12(М1)
G76051	уиа	-5(М11)
G76052	сч	KBBOД(М12)
	сда	64(М6)
	нтж	PAЯ2(М7)
	и	MACCC
	по	G76063
	слиа	1(М12)
	цикл	G76052(М11)
	слиа	2(М12)
	цикл	G76051(М10)
	слиа	-24(М6)
	пио	G76050(М6)
	сч	ДATЫ(М15)
	и	E18
	пе	G76066
	сч	ДATЫ(М15)
	или	E18
	пб	G76065
G76063	сч	ДATЫ(М15)
	и	E18
	по	G76066
	нтж	ДATЫ(М15)
G76065	зп	ДATЫ(М15)
	уиа	1(М4)
G76066	сч	PAЯ2(М7)
	слц	E6
	слиа	LCBЯЗ(М15)
	цикл	G76020(М3)
	нтж	E7E6
	слц	E1
	слиа	1(М15)
	уиа	-2(М3)
	цикл	G76020(М5)
	пио	G76074(М4)
	сч	PAЯ1(М7)
	пв	ЗAПИCЬ(М14)
G76074	сч	PAЯ1(М7)
	пв	OCBЗOH(М14)
	сч	ГK-'2000'(М15)
	рзб	MACKAЗ
	пе	G76013
	сч	ЧTKBB
	мода	0
	пв	OCBЗOH(М14)
	сч	ЧTTBT
	пв	OБMMД(М14)
	зп	ЧTTBT
	мода	HBT(М16)
	уиа	0(М1)
	уиа	-LBTOP+1(М16)
G76103	сч	E32
	или	BTTOM(М1)
	зп	BTTOM(М1)
	слиа	LBT(М1)
	цикл	G76103(М16)
	сч	ЧTTBT
	мода	0
	пв	ЗAПOCB(М14)
	сч	ЧTCЛYЖ
	пв	OБMMД(М14)
	зп	ЧTCЛYЖ
	сч	ГOД
	зп	ДATOБP(М16)
	сч	ЧTCЛYЖ
	мода	0
	пв	ЗAПOCB(М14)
G76113	сч	E48
	пв	KOHTPA(М12)
	сч	ЧTCЛYЖ
	пв	OБMMД(М14)
	зп	ЧTCЛYЖ
	сч	ГOД
	и	B7
	уи	М12
	сли	М12(М16)
	сч	TOM1(М12)
	по	G76143
	сч	ЧTCЛYЖ
	мода	0
	пв	ЗAПБYЗ(М13)
	сч	TOM1(М12)
	пв	ДAЙГKЛ(М13)
	зп	PAЯ(М7)
	уии	М11(М15)
	мода	0
	пв	ЗAПБYЗ(М13)
	сч	БOББЮД(М11)
	и	E12П1
	пе	G76141
	сч	TOM1(М12)
	и	E12П1
	или	БOББЮД(М11)
	зп	БOББЮД(М11)
	сч	PAЯ(М7)
	мода	0
	пв	ЗAПOCB(М14)
	сч	ЧTCЛYЖ
	пв	OCBЗOH(М14)
	сч	TOM1(М12)
	уиа	0(М15)
	уиа	BBOA(М17)
	пв	MOHCTP(М16)
	сч	ЧTCЛYЖ
	пв	OБMMД(М14)
	зп	ЧTCЛYЖ
	сч	ГOД
	и	B7
	уи	М12
	сли	М12(М16)
G76141	сч	0
	зп	TOM1(М12)
	сч	ЧTCЛYЖ
	пв	ЗAПИCЬ(М14)
G76143	сч	ЧTCЛYЖ
	пв	OCBЗOH(М14)
	сч	0
	пв	KOHTPA(М12)
	уиа	BTBЫT1(М16)
	пб	DEQ
G76146	зп	PAБ
	сда	64+4
	умн	Ч10
	счмр	64
	зп	PAБ1
	сч	PAБ
	и	E4П1
	слц	PAБ1
	пб	0(М16)
G76153	сда	64-6
	зп	PAБ
	счмр	0
	зп	PAБ1
	сч	PAБ
	сда	64+43
	сда	64-6
	или	PAБ1
	зп	PAБ1
	сч	PAБ
	сда	64-5
	сда	64+33
	или	PAБ1
	пб	0(М16)
G76162	и	E48П34
	по	0(М17)
	мода	0
	пв	G76153(М16)
	зп	PAБ2
	сч	ГOД
	сбр	MACДAT
	пв	G76153(М16)
G76166	вч	PAБ2
	пе	G76170
	сч	0
	пб	G76171
G76170	сч	E1
G76171	зп	PAБ
	сч	ГOД
	сда	64+16
	и	E4П1
	вч	PAБ
	сда	64-4
	зп	PAБ
	сч	PAБ2
	сда	64+11
	или	PAБ
	мода	0
	пв	G76146(М16)
	вч	E1
	зп	PAБ4
	умн	Ч365
	счмр	64
	зп	PAБ3
	сч	PAБ4
	сда	64+2
	слц	PAБ3
	зп	PAБ3
	сч	PAБ2
	сда	64+6
	и	E5П1
	мода	0
	пв	G76146(М16)
	зп	PAБ
	сда	64-2
	уи	М16
	сда	64+2
	умн	Ч30
	счмр	64
	слц	PAБ3
	зп	PAБ3
	сч	ДЛMEC
	сда	64-4(М16)
	и	E4П1
	слц	PAБ3
	зп	PAБ3
	сч	PAБ
	вч	B3
	пе	G76222
	сч	PAБ4
	и	B3
	нтж	B3
	пе	G76222
	сч	E1
	слц	PAБ3
	зп	PAБ3
G76222	сч	PAБ2
	и	E6П1
	мода	0
	пв	G76146(М16)
G76224	слц	PAБ3
	пб	0(М17)
ЧИCTBB	сч	ЧTБK
	пв	OБMMД(М14)
	зп	ЧTБK
	уии	М15(М16)
	сч	ЧT545
	пв	OБMAH(М14)
	уиа	'77602'(М17)
	уиа	0(М14)
G76231	слиа	8(М15)
	слиа	8(М1)
	сч	BPEBB(М1)
	по	G76242
	нтж	БK+7(М15)
	и	E38П24
	пе	G76236
	мода	'177'(М17)
	сч	З545(М16)
	пе	G76242
G76236	уиа	-7(М14)
	сч	0
G76237	мода	7(М14)
	зп	KBBOД(М1)
	цикл	G76237(М14)
	сч	E1
	зп	ШKOBB(М1)
	уиа	1(М14)
G76242	цикл	G76231(М17)
	слиа	'76010'(М15)
	слиа	'76010'(М1)
	мода	0(М13)
	пио	0(М14)
	сч	ЧTKBB
	уии	М14(М13)
	пб	ЗAПИCЬ
ПOBBOД	мода	0
	пв	ENQKOH(М12)
	сч	ЧTKBB
	пв	OБMMД(М14)
	зп	ЧTKBB
	уии	М1(М16)
	мода	0
	пв	ЧИCTBB(М13)
G76252	уии	М2(М15)
	уии	М4(М1)
G76253	сч	БK+CЛAП(М2)
	и	EAП
	по	G76457
	сч	БK+6(М2)
	и	EЖДY
	пе	G76457
	сч	БK+5(М2)
	и	E10П1
	слц	ЧTЗOHC
	зп	PAЯ(М7)
	мода	0
	пв	YБPЗOH(М17)
	сч	PAЯ(М7)
	пв	OБMMД(М14)
	зп	PAЯ(М7)
	уии	М3(М16)
	сч	MACBB+1(М3)
	и	E48П25
	зп	ШИФPЗT
	мод	ЗAДAЧИ-1(М7)
	зп	ШИФPЗ-1
	счи	М4
	и	E15П11
	уи	М4
	счи	М2
	и	E10П1
	уи	М16
	сли	М4(М16)
	уиа	-7(М16)
	сч	0
G76272	мода	7(М16)
	зп	KBBOД(М4)
	цикл	G76272(М16)
	сч	E2
	зп	ШKOBB(М4)
	сч	ШKAHY(М3)
	и	E48П17
	чед	0
	уи	М5
	по	G76435
	мода	ИMEHA(М3)
	уиа	0(М1)
G76300	сч	MACBB(М1)
	и	E48П43
	по	G76427
	уии	М10(М1)
	счи	М4
	зп	PAЯ1(М7)
	сч	PAЯ(М7)
	зп	PAЯ5(М7)
	сч	E4
	зп	PAЯ(М7)
	уиа	G76506(М16)
	счи	М16
	или	AДPOШ(М7)
	зп	AДPOШ(М7)
	слиа	LЗГЛBB(М1)
	пв	ДAЙИMП(М6)
G76310	зп	PAБ
	сч	AДPOШ(М7)
	и	E48П16
	зп	AДPOШ(М7)
	мод	PAЯ1(М7)
	уиа	0(М4)
	уии	М1(М10)
	счи	М1
	и	E15П11
	уи	М3
	сч	PAЯ5(М7)
	зп	PAЯ(М7)
	сч	0
	зп	PAЯ5(М7)
	сч	PAБ
	пе	G76464
	сч	PAЯ4(М7)
	и	E24П1
	зп	PAЯ4(М7)
	пв	ДAЙГK(М13)
	зп	PAЯ5(М7)
	пв	ЧEЙШИФ(М17)
	по	G76500
	зп	PAБ
	и	E2
	пе	G76327
	сч	MACBB(М1)
	и	E40
	пе	G76500
G76327	сч	PAБ
	и	B3
	сда	64-37
	зп	PAЯ1(М7)
	сч	ПAPДЛ(М15)
	и	E48П37
	пе	G76334
	сч	E42
	или	PAЯ1(М7)
	зп	PAЯ1(М7)
G76334	сч	ПAPДЛ(М15)
	и	E36П25
	пе	G76337
	сч	E37
	или	PAЯ1(М7)
	зп	PAЯ1(М7)
G76337	сч	ПAPДЛ(М15)
	и	E16П1
	по	G76464
	уии	М6(М15)
	мода	0
	пв	BTOБЛ(М13)
	уии	М13(М6)
	зп	PAЯ2(М7)
	уиа	-1(М16)
G76344	мода	1(М16)
	сч	ЯЧMЛ(М3)
	сда	64-2
	уиа	-5(М17)
G76346	зп	PAБ
	нтж	MACBB(М1)
	и	E48П43
	по	G76354
	сч	PAБ
	сда	64-8
	цикл	G76346(М17)
	цикл	G76344(М16)
	зп	X
	счи	М16
	пвл	APXOШ(М16)
	конк	А(OШ10)
G76354	уиа	1(М14)
	слиа	2(М17)
	счи	М17
	и	E15
	по	G76360
	слиа	3(М17)
	уиа	0(М14)
G76360	мода	1(М16)
	мода	1(М16)
	слиа	0(М14)
	слиа	-2(М17)
	счи	М17
	сда	64-4
	уи	М17
	сч	E16П1
	нтж	E15
	сда	64(М17)
	зп	PAБ
	сч	PAЯ2(М7)
	или	E16
	или	E14
	или	E13
	сда	64(М17)
	зп	PAБ1
	мода	0(М14)
	сч	MACBB+3(М3)
	или	PAБ
	нтж	PAБ
	или	PAБ1
	мода	0(М14)
	зп	MACBB+3(М3)
	сч	PAЯ2(М7)
	и	E12
	по	G76402
	Э65	NБЛ
	вч	PAЯ2(М7)
	пе	G76402
	сч	MACBB(М1)
	сда	64+42
	уи	М16
	сч	E48-8(М16)
	или	YKAЗДB(М3)
	зп	YKAЗДB(М3)
G76402	пио	G76406(М15)
	сч	E48-1(М5)
	или	ШKOBB(М4)
	зп	ШKOBB(М4)
	сч	E18
	или	PAЯ1(М7)
	зп	PAЯ1(М7)
G76406	сч	XOЗ(М13)
	и	E17
	по	G76414
	сч	EБKИO
	или	ЯЧБKИO+2(М3)
	зп	ЯЧБKИO+2(М3)
	сч	XOЗ(М13)
	и	ШKЭBM
	по	G76414
	сч	E24-1(М5)
	или	ШKOBB(М4)
	зп	ШKOBB(М4)
G76414	сч	MACBB(М1)
	и	MACKBB
	или	PAЯ1(М7)
	зп	MACBB(М1)
	счи	М5
	сда	64+1
	уи	М16
	счмр	0
	уиа	-24(М17)
	пе	G76422
	уиа	0(М17)
	слиа	-1(М16)
G76422	сч	PAЯ4(М7)
	сда	64(М17)
	мода	0(М16)
	или	KBBOД(М4)
	мода	0(М16)
	зп	KBBOД(М4)
	сч	PAЯ5(М7)
	пв	OCBЗOH(М14)
	слиа	-1(М5)
G76427	сч	MACBB(М1)
	сда	64+24
	и	E6П1
	уи	М16
	сли	М1(М16)
	пино	G76300(М5)
	сч	ШKOBB(М4)
	или	E12П1
	нтж	E12П1
	по	G76435
	сч	0
	пб	G76436
G76435	сч	EBKЛ
G76436	зп	PAЯ1(М7)
	сч	БK+7(М2)
	и	E38П24
	зп	BPEBB(М4)
	сч	БK+5(М2)
	и	E10П1
	сда	64-6
	или	BPEBB(М4)
	зп	BPEBB(М4)
	сч	ШKAHY(М3)
	и	E48П17
	чед	0
	или	BPEBB(М4)
	зп	BPEBB(М4)
	сч	ЧTKBB
	пв	ЗAПИCЬ(М14)
	уии	М15(М3)
	счи	М2
	и	E10П1
	сда	64+3
	уи	М14
	сч	EAП
	или	PAЯ1(М7)
Э62132	мода	0
	Э62	'132'
	сч	PAЯ(М7)
	пв	OCBЗOH(М14)
	сч	ШKOBB(М4)
	и	E48П25
	по	G76457
	сч	EЖДY60
	или	PEЖИMЫ
	зп	PEЖИMЫ
G76457	сч	БK+7(М2)
	и	E10П1
	по	CПACИБ
	зп	PAБ
	счи	М2
	и	E15П11
	или	PAБ
	уи	М2
	пб	G76253
G76464	уии	М6(М1)
	сч	MACBB(М1)
	зп	MACBB+LЗГЛBB-1(М1)
	слиа	-3+LЗГЛBB(М6)
	сч	THETOБ
	зп	MACBB(М6)
	сч	THETOБ+1
	зп	MACBB+1(М6)
G76470	сч	ПPOПYC
	зп	MACBB+LЗГЛBB-1(М1)
	счи	М2
	и	E10П1
	сда	64+3
	уи	М15
	уии	М1(М6)
	Э71	ИCOПTT
	сч	E24П16
	Э62	'100'
	сч	PAЯ(М7)
	пв	OCBЗOH(М14)
	сч	PAЯ5(М7)
	по	G76457
	уиа	G76457(М14)
	пб	OCBЗOH
G76500	уии	М6(М1)
	слиа	-4+LЗГЛBB(М6)
	сч	MACBB(М1)
	зп	MACBB+LЗГЛBB-1(М1)
	сч	THETПP
	зп	MACBB(М6)
	сч	THETПP+1
	зп	MACBB+1(М6)
	сч	THETПP+2
	зп	MACBB+2(М6)
	пб	G76470
G76506	сч	E1
	пб	G76310
ПOБOП	сч	ETAФ
	пв	ЗAHPEC(М16)
* next insn used as data
D76510	мода	0
	пв	ENQKOH(М12)
	сч	PAЯ5(М7)
	и	E10П1
	слц	ЧTЗOHC
	пв	OБMMД(М14)
	зп	PAЯ(М7)
	уии	М2(М16)
	сч	ШKAHY(М2)
	сбр	D77673
	сда	64+24
	зп	ФИЗOБT
	мод	ЗAДAЧИ-1(М7)
	зп	ФИЗOБM-1
	сч	ШKAHY(М2)
	и	E48П17
	чед	0
	уи	М5
	уиа	HOPMA(М15)
	пио	YПPБOП(М5)
	мода	0
	пв	ДAЙШИФ(М17)
	сч	ЧTKBB
	пв	OБMMД(М14)
	зп	ЧTKBB
	уии	М4(М16)
	сч	PAЯ5(М7)
	и	E48П41
	сда	64+37
	уи	М16
	сли	М4(М16)
	мод	ACBOБ
	уиа	0(М3)
	мода	0(М5)
	мода	0(М5)
	уиа	1(М15)
	уии	М1(М3)
	пв	BCTTAФ(М14)
	по	G76543
	пам	0
	зп	X
	счи	М16
	пвл	APXOШ(М16)
	конк	А(OШ9999)
	сч	PEЖИMЫ
	или	EHMTAФ
	нтж	EHMTAФ
	или	ETAФ
	зп	PEЖИMЫ
	пв	DEQ(М16)
	сч	PAЯ(М7)
	пв	OCBЗOH(М14)
	сч	EHMTAФ
	пб	ПAYЗA
G76543	мода	0(М5)
	мода	0(М5)
	уиа	1(М16)
	счи	М16
	или	E16
	зп	ЗГЛMЛ(М1)
	слиа	-1(М16)
	уии	М6(М1)
	сч	0
G76550	мода	0(М16)
	зп	1(М6)
	слиа	-1(М16)
	пино	G76550(М16)
	зп	PAЯ5(М7)
	сч	ACBOБ
	или	AKTЛMT
	зп	AKTЛMT
	мод	ЗAДAЧИ-1(М7)
	зп	AKTЛMЛ-1
	слиа	1(М6)
	слиа	ИMEHA(М2)
G76556	сч	MACBB(М2)
	и	E48П43
	по	G76625
	счи	М5
	сда	64+1
	уи	М16
	счмр	0
	уиа	24(М17)
	пе	G76564
	уиа	0(М17)
	слиа	-1(М16)
G76564	мода	0(М16)
	сч	KBBOД(М4)
	сда	64(М17)
	и	E24П1
	по	G76664
	зп	PAЯ1(М7)
	сч	MACBB(М2)
	и	MACБOП
	или	PAЯ1(М7)
	пв	BKЛБOБ(М12)
	пе	G76574
	пино	G76653(М15)
	зп	X
	счи	М16
	пвл	APXOШ(М16)
	конк	А(OШ9999)
G76574	зп	PAЯ2(М7)
	ржа	19
	по	G76606
	сч	CBEДMЛ(М6)
	и	E48П43
	зп	PAБ1
	сда	64+6
	или	KOTK72
	зп	PAБ
	сч	PAБ1
	уии	М12(М7)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М7)
	Э50	'170'
	мода	0
	Э72	PAБ
	сч	PAБ1
	Э50	'170'
	уии	М7(М12)
G76606	сч	PAЯ2(М7)
	ржа	11
	пе	G76613
	зп	PAЯ5(М7)
	уиа	0(М12)
	счи	М4
	и	E15П11
	уи	М15
	сч	PAЯ1(М7)
	пв	ЗAKPИO(М11)
G76613	сч	MACBB(М2)
	ржа	19
	по	G76621
	нтж	E41
	нтж	E17
	слц	E1
	и	E17П1
	зп	PAБ
	сда	64-17
	или	PAБ
	или	CДBMЛ(М6)
	зп	CДBMЛ(М6)
G76621	сч	MACBB(М2)
	и	E24П22
	сда	64+2
	или	CBEДMЛ(М6)
	зп	CBEДMЛ(М6)
	слиа	2(М6)
	слиа	-1(М5)
G76625	сч	MACBB(М2)
	сда	64+24
	и	E6П1
	уи	М16
	сли	М2(М16)
	пино	G76556(М5)
	уиа	G76652(М10)
	уиа	HOPMA(М11)
	сч	ЧTKBB
	пв	ЗAПOCB(М14)
	сч	PAЯ5(М7)
	по	G76643
	счи	М4
	и	E15П11
	уи	М15
	пв	ПPOBИO(М17)
	уиа	PAБ1(М15)
	сч	ГOД
	и	B7
	Э50	'172'
	нтж	ГOД
	и	B7
	по	G76643
	пам	0
	зп	X
	счи	М16
	пвл	APXOШ(М16)
	конк	А(OШ9999)
G76643	счи	М2
	и	E15П11
	уи	М2
	сч	ЯЧФИЗO(М2)
	сда	64+15
	и	E11П1
	или	ФИЗOБT
	зп	ФИЗOБT
	мод	ЗAДAЧИ-1(М7)
	зп	ФИЗOБM-1
	счи	М3
	зп	ACBOБ
	пб	0(М10)
G76652	уии	М15(М11)
	пб	YПPБOП
G76653	уиа	CБOЙBB(М11)
	уиа	G76652(М10)
	счи	М5
	сда	64-1
	уи	М15
	зп	PAБ
	уии	М1(М6)
	мод	AKTЛMT
	уиа	0(М16)
	сч	ЗГЛMЛ(М16)
	и	E15П1
	зп	PAБ1
	вч	PAБ
	нтж	PAБ1
	нтж	ЗГЛMЛ(М16)
	зп	ЗГЛMЛ(М16)
	уиа	G76625+4(М14)
	пб	BЫБTAФ
G76664	сч	ШKOBB(М4)
	и	E12П1
	нед	0
	по	G76667
	вчоб	B60
	слц	E1
G76667	сда	64-24
	или	D77674
	зп	D76675
	уиа	G76667+5(М1)
	мода	0
	Э71	ИCOПTT
	мода	0
	Э71	ИCOПTT
	пб	G76653
	конд	п'2АРХ:Ч'
D76675	пам	1
ПOKЗ	мод	AKTЛMT
	уиа	0(М6)
	пио	G76741(М6)
	сч	ETAФ
	мода	0
	пв	ЗAHPEC(М16)
	мода	0
	пв	ENQKOH(М12)
	сч	ЧTKBB
	пв	OБMMД(М14)
	зп	ЧTKBB
	уии	М5(М16)
	мод	AKTЛMT
	мод	ЗГЛMЛ
	уиа	-1(М10)
	мод	ACBOБ
	уиа	0(М3)
	сч	0
	зп	PAЯ(М7)
	пио	G76723(М10)
G76710	мод	AKTЛMT
	уиа	-1(М6)
	сли	М6(М10)
	мод	CBEДMЛ(М6)
	сч	TAФCC
	сда	64+24
	зп	PAЯ2(М7)
	пв	G77547(М12)
	зп	PAЯ1(М7)
	и	E14П8
	по	G76720
	уиа	1(М12)
	уии	М15(М5)
	сч	PAЯ2(М7)
	мода	0
	пв	ЗAKPИO(М11)
G76720	сч	PAЯ1(М7)
	или	PAЯ(М7)
	зп	PAЯ(М7)
	слиа	-2(М10)
	пино	G76710(М10)
G76723	мод	AKTЛMT
	уиа	0(М1)
	мод	ЗГЛMЛ(М1)
	уиа	0(М15)
	мода	0
	пв	BЫБTAФ(М14)
	сч	E15П1
	и	AKTЛMT
	нтж	AKTЛMT
	зп	AKTЛMT
	мод	ЗAДAЧИ-1(М7)
	зп	AKTЛMЛ-1
	сч	ЧTKBB
	пв	ЗAПOCB(М14)
	уии	М15(М5)
	пв	ПPOBИO(М17)
	уиа	PAБ1(М15)
	сч	0
	мода	0
	Э50	'172'
	сч	PAЯ(М7)
	пв	COOБЩИ(М15)
	счи	М3
	зп	ACBOБ
	сч	EHMTAФ
	или	PEЖИMЫ
	зп	PEЖИMЫ
G76741	сч	ШИФPЗT
	и	E24П1
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М15)
	зп	ШИФPЗT
	зп	ШИФPЗ-1(М15)
	сч	0
	зп	AДMИHT
	зп	AДMИH-1(М15)
	пв	DEQ(М16)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М1)
	сч	YПPO-1(М1)
	зп	PAЯ4(М7)
	сч	0
	зп	YПPO-1(М1)
	сч	PAЯ4(М7)
	и	E48П25
	по	KOHЗAД
	Э65	TYCП-1(М1)
	уи	М16
	Э65	23(М16)
	сда	64+15
	и	E7П1
	уи	М16
	сч	E48
	сда	64-MЛCБOЙ(М16)
	и	ШKCБOЙ
	пе	KOHЗAД
	пв	ENQ(М16)
	сч	E48
	пв	KOHTPA(М12)
	уиа	KOHЗAД(М16)
	счи	М16
	или	AДPOШ(М7)
	зп	AДPOШ(М7)
	сч	PAЯ4(М7)
	пв	ДAЙГKЛ(М13)
	зп	PAЯ3(М7)
	уии	М13(М15)
	уиа	HЗHEP(М15)
	уиа	YHOБЛ(М17)
	пб	BЫЗHEP
OTБAЦ	мод	ЗAДAЧИ-1(М7)
	Э65	TYCП-1
	уи	М2
	Э65	ЯЧHИA(М2)
	и	E48+EHИИAC-'103'
	уиа	ЗAПPЭK(М15)
	по	OШЗAД
	сч	0
	зп	PAЯ(М7)
	мод	AKTЛMT
	уиа	0(М1)
	пио	G77013(М1)
	мод	ЗГЛMЛ(М1)
	уиа	-1(М2)
	пио	G77013(М2)
	слиа	1(М1)
G76777	сч	CBEДMЛ(М1)
	сда	64+19
	и	B7
	по	G77011
	сда	64-3
	уи	М16
	сда	64-16
	нтж	CBEДMЛ(М1)
	зп	CBEДMЛ(М1)
	сч	E48П43
	сда	64-6(М16)
	и	PAЯ(М7)
	нтж	PAЯ(М7)
	зп	PAЯ(М7)
	сч	CBEДMЛ(М1)
	и	E48П43
	сда	64-6(М16)
	или	PAЯ(М7)
	зп	PAЯ(М7)
G77011	слиа	2(М1)
	слиа	-2(М2)
	пино	G76777(М2)
G77013	сч	ФИЗOБT
	сда	64-24
	рзб	D77675
	или	PAЯ(М7)
	пб	OTBЗAД
Э72	сч	PAЯ(М7)
	зп	ИCOБM
	или	E48П43
	нтж	E48П43
	зп	PAЯ(М7)
	сч	ИCOБM
	сда	64+45
	по	G77063
	нтж	E1
	по	G77133
G77023	мода	0
	пв	G77637(М17)
	сч	PAЯ(М7)
	и	E6П1
	уи	М2
	сда	64-42
	зп	PAЯ5(М7)
	пв	ПPCBOБ(М17)
	пе	ЗAПBИP
	сч	PAЯ(М7)
	сда	64-36
	и	E48П43
	зп	PAЯ4(М7)
	пв	ГДEЛEH(М17)
	пио	G77060(М6)
	уии	М6(М16)
	сч	PAЯ5(М7)
	пв	HOBCBE(М17)
	сч	PAЯ(М7)
	сда	64+15
	и	B7
	зп	PAБ
	и	B6
	пе	G77645
	сч	PAБ
	пв	G77275(М17)
	сч	PAЯ4(М7)
	уии	М14(М7)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М7)
	мода	0
	Э50	'170'
	уии	М7(М14)
	сч	PAЯ4(М7)
	нтж	CДBMЛ(М6)
	пе	G77054
	мода	0
	пв	G77261(М14)
	сч	PAЯ5(М7)
	сда	64+12
	или	PAЯ4(М7)
	сда	64+6
	или	KЭ72CM
	зп	PAЯ1(М7)
	уии	М14(М7)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М7)
	Э72	PAЯ1(М14)
	уии	М7(М14)
G77054	сч	PAЯ5(М7)
	уии	М14(М7)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М7)
	мода	0
	Э50	'170'
	уии	М7(М14)
G77060	сч	PAЯ(М7)
	сда	64+18
	и	E18П1
	по	HOPBЫX
	зп	PAЯ(М7)
	пб	G77023
G77063	сч	ETAФ
	пв	ЗAHPEC(М16)
* next insn used as data
D77064	мода	0
	пв	ENQKOH(М12)
	сч	ЧTKBB
	пв	OБMMД(М14)
	зп	ЧTKBB
G77067	сч	PAЯ(М7)
	сда	64+6
	зп	PAЯ(М7)
	счмр	0
	по	G77364
	зп	PAЯ3(М7)
	мода	0
	пв	ГДEЛEH(М17)
	пио	G77067(М6)
	мод	ACBOБ
	уиа	0(М3)
	уии	М10(М6)
	уии	М6(М16)
	мод	CBEДMЛ(М6)
	сч	TAФCC
	сда	64+24
	зп	ИMЯ(М7)
	пв	G77545(М12)
	зп	ИMЯ1(М7)
	и	E14П8
	по	G77105
	сч	ЧTKBB
	и	E35П31
	сда	64+20
	уи	М15
	уиа	1(М12)
	сч	ИMЯ(М7)
	пв	ЗAKPИO(М11)
G77105	сч	ИMЯ1(М7)
	пв	COOБЩИ(М15)
	мод	AKTЛMT
	уиа	0(М6)
	сли	М6(М10)
	сч	PAЯ3(М7)
	уии	М12(М7)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М7)
	Э50	'170'
	уии	М7(М12)
	сч	CBEДMЛ(М6)
	нтж	CДBMЛ(М6)
	и	E48П43
	уиа	G77067(М12)
	пе	G77123
	сч	PAЯ3(М7)
	сда	64+6
	или	KOTK72
	зп	PAЯ1(М7)
	уии	М15(М7)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М7)
	Э72	PAЯ1(М15)
	мода	0
	пв	G77646(М14)
	уии	М7(М15)
G77123	уии	М1(М6)
	уиа	2(М15)
	мод	AKTЛMT
	уиа	0(М16)
	сч	ЗГЛMЛ(М16)
	и	E15П1
	вч	E2
	нтж	ЗГЛMЛ(М16)
	и	E15П1
	нтж	ЗГЛMЛ(М16)
	зп	ЗГЛMЛ(М16)
	пв	BЫБTAФ(М14)
	счи	М3
	зп	ACBOБ
	пб	0(М12)
G77133	сч	0
	зп	PAЯ2(М7)
	мода	0
	пв	G77637(М17)
G77135	сч	PAЯ(М7)
	сда	64-42
	зп	PAЯ5(М7)
	пв	ГДEЛEH(М17)
	пио	G77245(М6)
	уии	М10(М16)
	сч	PAЯ(М7)
	сда	64-36
	и	E48П43
	зп	PAЯ4(М7)
	мода	0
	пв	ГДEЛEH(М17)
	пио	G77224(М6)
	уии	М11(М16)
	уии	М6(М11)
	уиа	-1(М14)
	уиа	G77201(М12)
	сч	PAЯ5(М7)
	мода	0
	пв	HOBCBE(М17)
G77147	уии	М6(М10)
	сч	PAЯ4(М7)
	мода	0
	пв	HOBCBE(М17)
	сч	PAЯ(М7)
	сда	64+12
	и	B66
	пе	G77645
	сч	PAЯ(М7)
	сда	64+12
G77154	мода	0
	пв	G77275(М17)
G77155	сч	PAЯ(М7)
	сда	64+15
	уии	М6(М11)
	цикл	G77154(М14)
	сч	CДBMЛ(М10)
	нтж	PAЯ5(М7)
	и	E48П43
	по	G77164
	сч	PAЯ2(М7)
	пе	0(М12)
	мода	0
	пв	G77261(М14)
G77163	уиа	G77221(М12)
	пб	G77171
G77164	сч	PAЯ2(М7)
	пе	G77167
	сч	CДBMЛ(М11)
	нтж	PAЯ4(М7)
	и	E48П43
	пе	G77174
G77167	мода	0
	пв	G77261(М14)
	сч	0
	пб	0(М12)
G77171	сч	CДBMЛ(М11)
	нтж	PAЯ5(М7)
	и	E48П43
	пе	0(М12)
G77173	уиа	G77206(М12)
	пб	G77202
G77174	мода	0
	пв	G77261(М14)
	сч	PAЯ5(М7)
	зп	PAБ1
	сч	PAЯ4(М7)
	зп	PAЯ5(М7)
	сч	PAБ1
	зп	PAЯ4(М7)
	пб	G77173
G77201	уиа	G77205(М12)
G77202	сч	PAЯ5(М7)
	сда	64+12
	или	PAЯ4(М7)
	сда	64+6
	пб	0(М12)
G77205	или	KЭ72ПE
	пб	G77207
G77206	или	KЭ72CM
G77207	зп	PAЯ1(М7)
	сч	PAЯ4(М7)
	нтж	PAЯ5(М7)
	по	G77237
	сч	PAЯ4(М7)
	уии	М17(М7)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М7)
	мода	0
	Э50	'170'
	сч	PAЯ5(М17)
	Э50	'170'
	мода	0
	Э72	PAЯ1(М17)
	сч	PAЯ4(М17)
	Э50	'170'
	сч	PAЯ5(М17)
	Э50	'170'
	уии	М7(М17)
G77221	сч	PAЯ(М7)
	сда	64+18
	зп	PAЯ(М7)
	и	E18П1
	по	HOPBЫX
	пб	G77133
G77224	сч	E1
	зп	PAЯ2(М7)
	уиа	0(М14)
	уии	М11(М10)
	мода	0
	пв	G77147(М12)
	зп	PAБ1
	пв	G77202(М12)
	зп	PAЯ1(М7)
	сч	PAЯ(М7)
	и	E16
	сда	64-18
	зп	PAБ
	сч	PAБ1
	по	G77235
	сч	PAЯ1(М7)
	или	KЭ72CM
	пб	G77236
G77235	сч	PAЯ1(М7)
	или	KЭ72ПE
G77236	или	PAБ
	зп	PAЯ1(М7)
G77237	сч	PAЯ5(М7)
	уии	М17(М7)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М7)
	мода	0
	Э50	'170'
	мода	0
	Э72	PAЯ1(М17)
	сч	PAЯ4(М17)
	Э50	'170'
	уии	М7(М17)
	пб	G77221
G77245	сч	PAЯ(М7)
	сда	64-36
	и	E48П43
	зп	PAЯ3(М7)
	мода	0
	пв	ГДEЛEH(М17)
	пио	G77221(М6)
	уии	М6(М16)
	уии	М10(М6)
	сч	PAЯ5(М7)
	зп	PAЯ4(М7)
	сч	PAЯ3(М7)
	зп	PAЯ5(М7)
	сч	PAЯ(М7)
	и	E18П13
	чед	0
	и	E1
	по	G77224
	сч	E13
	или	E16
	нтж	PAЯ(М7)
	зп	PAЯ(М7)
	пб	G77224
G77261	мод	AKTЛMT
	уиа	0(М6)
	мод	ЗГЛMЛ(М6)
	уиа	-1(М16)
	слиа	1(М6)
G77264	сч	CДBMЛ(М6)
	нтж	PAЯ4(М7)
	и	E48П43
	пе	G77270
	сч	PAЯ5(М7)
	пв	HOBCДB(М17)
	пб	G77273
G77270	сч	CДBMЛ(М6)
	нтж	PAЯ5(М7)
	и	E48П43
	пе	G77273
	сч	PAЯ4(М7)
	пв	HOBCДB(М17)
G77273	слиа	2(М6)
	слиа	-2(М16)
	пино	G77264(М16)
	пб	0(М14)
G77275	и	B7
	зп	PAБ1
	пе	0(М17)
	сч	CBEДMЛ(М6)
	и	E39
	по	0(М17)
	сч	E40
	или	CBEДMЛ(М6)
	зп	CBEДMЛ(М6)
	пб	0(М17)
Э62	счи	М1
	слиа	'77673'(М1)
	пио	G77306(М1)
	слиа	'105'(М1)
	вч	E10
	по	G77322
	пб	ЭKHET
G77306	сч	PAЯ(М7)
	сда	64-42
	мода	0
	пв	ГДEЛEH(М17)
	пио	HOPBЫX(М6)
	сч	PAЯ(М7)
	ржа	11
	уиа	CBEДMЛ(М1)
	уиа	CДBMЛ(М2)
	пе	G77314
	уиа	CДBMЛ(М1)
	уиа	CBEДMЛ(М2)
G77314	сли	М1(М16)
	сли	М2(М16)
	сч	0(М1)
	и	E42E41
	нтж	0(М1)
	зп	0(М1)
	счмр	0
	нтж	0(М2)
	и	E42E41
	нтж	0(М2)
	зп	0(М2)
	пб	HOPBЫX
G77322	счи	М1
	зп	PAЯ(М7)
	сда	64-33
	пв	ГДEЛEH(М17)
	пио	HOPBЫX(М6)
	сч	PAЯ(М7)
	и	E9П1
	нтж	E9П1
	по	G77331
	нтж	E9П1
	сда	64-4
	зп	PAЯ(М7)
	пб	Э63CДB
G77331	сч	ETAФ
	пв	ЗAHPEC(М16)
	мода	0
	пв	ENQKOH(М12)
	сч	ЧTKBB
	пв	OБMMД(М14)
	зп	ЧTKBB
	уии	М5(М16)
	мод	ACBOБ
	уиа	0(М3)
	уии	М10(М6)
	мод	AKTЛMT
	слиа	0(М6)
	мод	CBEДMЛ(М6)
	сч	TAФCC
	сда	64+24
	зп	ИMЯ(М7)
	пв	G77545(М12)
G77342	зп	ИMЯ1(М7)
	и	E14П8
	по	G77346
	сч	ИMЯ(М7)
	уиа	1(М12)
	уии	М15(М5)
	мода	0
	пв	ЗAKPИO(М11)
G77346	сч	ИMЯ1(М7)
	пв	COOБЩИ(М15)
	мод	AKTЛMT
	уиа	0(М6)
	сли	М6(М10)
	сч	CBEДMЛ(М6)
	и	E48П43
	уии	М14(М7)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М7)
	мода	0
	Э50	'170'
	уии	М7(М14)
	сч	CBEДMЛ(М6)
	нтж	CДBMЛ(М6)
	и	E48П43
	пе	G77363
	уии	М15(М7)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М7)
	мод	PAЯ(М15)
	Э62	
	мода	0
	пв	G77646(М14)
	уии	М7(М15)
G77363	мода	0
	пв	G77123(М12)
G77364	сч	ЧTKBB
	и	E35П31
	сда	64+20
	уи	М15
	сч	ЧTKBB
	пв	ЗAПOCB(М14)
	мода	0
	пв	ПPOBИO(М17)
	уиа	PAБ1(М15)
	сч	0
	мода	0
	Э50	'172'
	сч	EHMTAФ
	или	PEЖИMЫ
	зп	PEЖИMЫ
	пб	HOPBЫX
Э53	сч	ETAФ
	пв	ЗAHPEC(М16)
	мод	ЗAДAЧИ-1(М7)
	уиа	0(М1)
	мода	0
	Э65	TYCП-1(М1)
	уи	М3
	мод	PAЯ(М7)
	уиа	0(М2)
	Э65	9(М3)
	зп	PAБ
	сда	64-42
	зп	PAЯ1(М7)
	уии	М4(М1)
	уии	М5(М2)
	сч	PAБ
	и	E15
	по	G77406
	уии	М5(М1)
	уии	М4(М2)
G77406	сч	PAБ
	и	E13
	зп	PAЯ2(М7)
	сч	AKTЛMЛ-1(М4)
	зп	AKTЛMT
	сч	PAЯ1(М7)
	мода	0
	пв	ГДEЛEH(М17)
	уиа	CБOЙBB(М15)
	пио	OШЗAД(М6)
	уии	М14(М16)
	сч	CBEДMЛ(М14)
	сда	64+19
	и	E5П1
	по	G77417
	сч	E42
	пб	OTBЗAД
G77417	мод	CBEДMЛ(М14)
	сч	ЧBH
	зп	PAБ1
	сда	64+36
	зп	PAБ
	и	E12
	по	G77424
	Э65	NБЛ
	вч	PAБ
	по	G77435
G77424	мод	AKTЛMЛ-1(М4)
	уиа	1(М1)
	мод	ЗГЛMЛ-1(М1)
	уиа	-1(М2)
G77426	мод	CBEДMЛ(М1)
	сч	ЧBH
	нтж	PAБ1
	и	E48П37
	пе	G77433
	сч	CBEДMЛ(М1)
	нтж	CBEДMЛ(М14)
	по	G77433
	сч	E41
	пб	OTBЗAД
G77433	слиа	2(М1)
	слиа	-2(М2)
	пино	G77426(М2)
G77435	мод	ACBOБ
	уиа	0(М3)
	мод	AKTЛMЛ-1(М5)
	уиа	0(М10)
	пино	G77452(М10)
	уии	М10(М3)
	слиа	-KOHTAФ+3(М3)
	счи	М3
	слиа	KOHTAФ-2(М3)
	и	E15
	пе	G77445
	пам	0
	зп	X
	счи	М16
	пвл	APXOШ(М16)
	конк	А(OШ9999)
G77445	сч	0
	зп	0(М3)
	сч	E16E1
	зп	ЗГЛMЛ(М10)
	сч	ACBOБ
	или	AKTЛMЛ-1(М5)
	зп	AKTЛMЛ-1(М5)
	счи	М3
	зп	ACBOБ
G77452	мод	AKTЛMЛ-1(М4)
	слиа	0(М6)
	сч	CBEДMЛ(М6)
	и	E48П16
	зп	ИMЯ(М7)
	сч	CДBMЛ(М6)
	зп	ИMЯ1(М7)
	мод	CBEДMЛ(М6)
	сч	TAФCC
	зп	PAЯ5(М7)
	мод	CBEДMЛ(М6)
	сч	ЧBH
	зп	PAЯ4(М7)
	уии	М2(М7)
	уии	М7(М4)
	сч	AKTЛMЛ-1(М4)
	зп	AKTЛMT
	сч	PAЯ1(М2)
	мода	0
	Э50	'170'
	сч	CBEДMЛ(М6)
	нтж	CДBMЛ(М6)
	и	E48П43
	пе	G77471
	сч	PAЯ1(М2)
	сда	64+33
	уи	М16
	Э62	'777'(М16)
	мода	0
	пв	G77646(М14)
G77471	мода	0
	пв	G77123(М12)
G77472	мод	AKTЛMЛ-1(М5)
	уиа	1(М11)
	мод	ЗГЛMЛ-1(М11)
	уиа	1(М12)
G77474	слиа	-2(М12)
	пио	G77502(М12)
	мод	CBEДMЛ(М11)
	сч	ЧBH
	нтж	PAЯ4(М2)
	и	E48П37
	слиа	2(М11)
	пе	G77474
	сч	CДBMЛ-2(М11)
	и	E48П43
	пб	G77510
G77502	уии	М7(М5)
	сч	PAЯ4(М2)
	сда	64+36
	или	PAЯ1(М2)
	мода	0
	Э50	'170'
	мода	0
	Э65	TYCП-1(М5)
	уи	М14
	Э65	0(М14)
	пе	G77544
	сч	PAЯ1(М2)
G77510	зп	PAЯ4(М2)
	счи	М3
	зп	ACBOБ
	мод	AKTЛMЛ-1(М5)
	уиа	0(М11)
	сч	ЗГЛMЛ(М11)
	уи	М1
	сли	М1(М11)
	слц	E2
	зп	ЗГЛMЛ(М11)
	уиа	2(М15)
	пв	BCTTAФ(М14)
	по	G77521
	пам	0
	зп	X
	счи	М16
	пвл	APXOШ(М16)
	конк	А(OШ9999)
G77521	счи	М3
	зп	ACBOБ
	мод	AKTЛMЛ-1(М5)
	уиа	0(М11)
	мод	ЗГЛMЛ(М11)
	слиа	-2(М11)
	сч	PAЯ5(М2)
	пв	ДAЙOБЛ(М17)
	счи	М16
	или	ИMЯ(М2)
	зп	CBEДMЛ(М11)
	сч	ИMЯ1(М2)
	или	E48П43
	нтж	E48П43
	или	PAЯ4(М2)
	зп	CДBMЛ(М11)
	уии	М7(М5)
	сч	PAЯ1(М2)
	мода	0
	Э50	'170'
	сч	CBEДMЛ(М11)
	и	E39
	пе	G77536
	сч	0
	зп	PAЯ2(М7)
G77536	сч	PAЯ2(М2)
	сда	64-27
	зп	PAЯ2(М2)
	сч	CBEДMЛ(М11)
	или	E40
	нтж	E40
	или	PAЯ2(М2)
	зп	CBEДMЛ(М11)
	сч	0
G77543	уии	М7(М2)
	пб	OTBЗAД
G77544	сч	E40
	пб	G77543
G77545	сч	CBEДMЛ(М6)
	сда	64-2
	и	E24П22
	пе	ЗAПBИP
G77547	мод	CBEДMЛ(М6)
	уиа	0(М1)
	сч	ЧBH(М1)
	и	E26П17
	вч	E17
	зп	PAБ
	сч	ЧBH(М1)
	или	E26П17
	нтж	E26П17
	или	PAБ
	зп	ЧBH(М1)
	сч	TAФCC(М1)
	мода	0
	пв	ДAЙГKЛ(М13)
	зп	PAБ4
	сч	CЧЭ70(М1)
	и	E48П25
	слц	ПOCЗOH(М15)
	зп	ПOCЗOH(М15)
	сч	CЧЭ70(М1)
	и	E24П1
	зп	CЧЭ70(М1)
	сч	ГOД
	сбр	MACДAT
	зп	PAБ1
	сч	CЛCЛ(М1)
	по	G77603
	сч	ЧBH(М1)
	и	E16П1
	зп	PAБ
	сч	ПOCЗOH(М15)
	и	E16П1
	вч	PAБ
	по	G77572
	сч	ПOCЗOH(М15)
	и	E48П17
	или	PAБ
	зп	ПOCЗOH(М15)
G77572	сч	CЛCЛ(М1)
	и	E48П25
	сда	64+15
	или	PAБ1
	зп	CЛCЛOB(М15)
	сч	CЛCЛ(М1)
	и	E24П1
	сда	64+14
	или	CЛCЛOB(М15)
	зп	CЛCЛOB(М15)
	сч	E24П13
	и	БOББЮД(М15)
	нтж	БOББЮД(М15)
	зп	БOББЮД(М15)
	сч	E48П16
	и	ДATЫ(М15)
	зп	ДATЫ(М15)
	пб	G77606
G77603	сч	ДATЫ(М15)
	или	E48П34
	нтж	E48П34
	или	PAБ1
	зп	ДATЫ(М15)
G77606	уиа	0(М13)
	сч	ГOД
	и	B7
	уи	М16
	сч	CBEДMЛ(М6)
	и	E24E23
	по	G77626
	нтж	CBEДMЛ(М6)
	зп	CBEДMЛ(М6)
	мод	ЗAДAЧИ-1(М7)
	сч	E48-1
	и	ШKENQ
	нтж	ШKENQ
	зп	ШKENQ
	сч	ЧBH(М1)
	и	E36П27
	зп	PAБ
	вч	E27
	нтж	PAБ
	нтж	ЧBH(М1)
	зп	ЧBH(М1)
	и	E36П27
	пе	G77626
	сч	E30
	и	ПPИПOЛ(М15)
	нтж	ПPИПOЛ(М15)
	зп	ПPИПOЛ(М15)
	сч	XOЗ(М15)
	нтж	E8(М16)
	зп	XOЗ(М15)
	слиа	'177'(М13)
G77626	сч	ЧBH(М1)
	и	E26П17
	пе	G77635
	сч	TAФCC(М1)
	и	E17
	по	G77632
	слиа	'37600'(М13)
G77632	сч	XOЗ(М15)
	нтж	E15(М16)
	зп	XOЗ(М15)
	сч	TAФCC(М1)
	уи	М15
	пв	BЫБTAФ(М14)
G77635	сч	PAБ4
	пв	ЗAПOCB(М14)
	счи	М13
	пб	0(М12)
G77637	уиа	-1(М16)
	сч	PAЯ(М7)
G77640	и	E6П1
	вч	B30
	пе	ЗAПBИP
	вчоб	B37
	пе	ЗAПBИP
	сч	PAЯ(М7)
	сда	64+6
	цикл	G77640(М16)
	пб	0(М17)
G77645	уиа	ДPAБЭK(М15)
	пб	OШЗAД
G77646	мод	AKTЛMЛ-1(М7)
	уиа	1(М10)
	мод	ЗГЛMЛ-1(М10)
	уиа	-1(М17)
G77650	сч	CДBMЛ(М10)
	нтж	CBEДMЛ(М6)
	и	E48П43
	пе	G77654
	сч	CBEДMЛ(М10)
	нтж	CBEДMЛ(М6)
	и	E48П43
	пе	G77656
G77654	слиа	2(М10)
	слиа	-2(М17)
	пино	G77650(М17)
	пб	0(М14)
G77656	сч	CBEДMЛ(М10)
	и	E48П43
	зп	PAБ
	Э50	'170'
	мод	CBEДMЛ(М10)
	сч	ЧBH
	сда	64+36
	или	PAБ
	мода	0
	Э50	'170'
	сч	PAБ
	Э50	'170'
G77664	сч	CДBMЛ(М10)
	нтж	CBEДMЛ(М6)
	и	E48П43
	пе	G77671
	сч	PAБ
	нтж	CДBMЛ(М10)
	и	E48П43
	нтж	CДBMЛ(М10)
	зп	CДBMЛ(М10)
G77671	слиа	2(М10)
	слиа	-2(М17)
	пино	G77664(М17)
	пб	0(М14)
D77673	конд	в'0000000000020360'
D77674	конд	в'1361240077600000'
D77675	конд	в'6004010020000000'
	ВХОД	Э53,Э62,Э72,OTБAЦ,ПOKЗ,ПOБOП,Э62132,ПOBBOД,ЧИCTBB
	ВХОД	PCMДAT
APФA	ВНЕШ	HOPMA,OБЛHET,OШИMЯO,БOБAPX,HBИPTH,OШШИФP,YЖEE
APФA	ВНЕШ	HETБЮД,ЗOБЛ,HMKAT,HETTOM,БOЛ12,OШДAT,OШДЛИH,OШБOБ
APФA	ВНЕШ	БЮДMAЛ,ИEPAPX,HETPEC,HMAPX,HETПPA,OБЛKTЛ,ШKAГPY
APФA	ВНЕШ	ЖДИOБЛ,OШBИД,БЮДAPX,HETПAP,BHЗAH,ЛИCOБM,HOPBЫX
APФA	ВНЕШ	OTBЗAД,OШИMЯ,BEPШИ2,БЮДHET,И10B8B,HETЗOH,ПPAHET
APФA	ВНЕШ	OШГPY,OШBИДA,CHOПEP,HЗKMЛ,OШЭKCT,ЗAПPЭK,CHЯПOЛ
APФA	ВНЕШ	ДPAБЭK,OШBИPT,HEBПAP,ДAЙЗП,ИCBЧЛ,ЧYЖИHФ,CБOЙBB
APФA	ВНЕШ	HПAPOЛ,KOЗAД,OШЗAД,OБMMД,OБMAH,OCBЗOH,ЗAПИCЬ
APФA	ВНЕШ	ЗAПOCB,LЗГЛBB,ПAYЗA,YПPБOП,KOHЗAД,CПACИБ,ЗAHPEC
APФA	ВНЕШ	DEQ,MOHCTP,KOHTPA,ENQKOH,ЗAПБYЗ,YБPЗOH,ENQ,BЫЗHEP
APФA	ВНЕШ	BCTTAФ,BЫБTAФ,BKЛБOБ,ДAЙOБЛ,ГДEЛEH,ПPCBOБ,HOBCBE
APФA	ВНЕШ	HOBCДB,ДAЙГK,ДAЙГKЛ,ДAЙГKO,ДAЙИMП,ЗAKPИO,ПPOBИO
APФA	ВНЕШ	BTOБЛ,ДAЙШИФ,ЧEЙШИФ,ПPOШИФ,ДAЙБO,ГДEБЮД,ЗПOЗY
APФA	ВНЕШ	ЧTИMЯП,BBOA
B3B4	ВНЕШ	ШKAHY,ИMEHA
HEPEЗA	ВНЕШ	YHOБЛ
KOMAP	ВНЕШ	E48,E47,E46,E45,E44,E43,E42,E41,E40,E39,E38,E37
KOMAP	ВНЕШ	E36,E35,E34,E33,E32,E31,E30,E29,E28,E27,E26,E25
KOMAP	ВНЕШ	E24,E23,E22,E21,E20,E19,E18,E17,E16,E15,E14,E13
KOMAP	ВНЕШ	E12,E11,E10,E9,E8,E7,E6,E5,E4,E3,E2,E1,BCEEД
KOMAP	ВНЕШ	E48П16,E48П17,E48П25,E48П32,E48П33,E48П34,E48П37
KOMAP	ВНЕШ	E48П41,E48П43,E48П46,E42П37,E42П16,E42E41,E40П1
KOMAP	ВНЕШ	E38П24,E36П16,E36П25,E36П27,E35П21,E35П31,E32П1
KOMAP	ВНЕШ	E32П17,E32П25,E32П29,E28П13,E26П17,E24П1,E24П9
KOMAP	ВНЕШ	E24П13,E24П15,E24П16,E24П17,E24П21,E24П22,E24E23
KOMAP	ВНЕШ	E23П21,E22П1,E21П18,E20П18,E19E18,E18П1,E18П13
KOMAP	ВНЕШ	E17П1,E17E16,E16П1,E16E15,E16E1,E15П1,E15П11
KOMAP	ВНЕШ	E14П1,E14П8,E12П1,E11П1,E10П1,E9П1,E8П1,E7П1,E7E6
KOMAP	ВНЕШ	E6П1,E5П1,E4П1,B3,B5,B6,B7,B12,B16,B30,B37,B55
KOMAP	ВНЕШ	B60,B66,OOПППП,OOOOBB,П017,П166,П200,OППППO
KOMAP	ВНЕШ	E15E14,PAЯ,PAЯ1,PAЯ2,PAЯ3,PAЯ4,PAЯ5,ИMЯ,ИMЯ1,PAБ
KOMAP	ВНЕШ	PAБ1,PAБ2,PAБ3,PAБ4,PAБ5,Ч10,Ч30,Ч365,ДЛMEC
KOMAP	ВНЕШ	KOTK72,KЭ72ПE,KЭ72CM,MACДAT,MACKAЗ,ЧTЗOHA,ЧTЗOHC
KOMAP	ВНЕШ	ИCOПTT,THETOБ,THETПP,TЧK,ПPOПYC,ЗAДAЧИ,CPOKXP
KOMAP	ВНЕШ	ШKЭBM,ГOД,OБЩШИФ,ЧTKBB,ЧT545,ЧTБK,MACБOП,MACKBB
KOMAP	ВНЕШ	KBBOД,ШKOBB,BPEBB,БK,EAП,EBKЛ,CЛAП,EЖДY,EБKИO
KOMAP	ВНЕШ	MACBB,ЯЧФИЗO,ЯЧMЛ,YKAЗДB,З545,ЧTCЛYЖ,TOM1,ДATOБP
KOMAP	ВНЕШ	ЧTГK,ГK,XOЗ,ПAPДЛ,ПPИПOЛ,БOББЮД,CЛCЛOB,ДATЫ
KOMAP	ВНЕШ	ПOCЗOH,ЧKBA,LCBЯЗ,ДГK,MACCC,LKBA,ШИБЮ,ЧTTBT,BTTOM
KOMAP	ВНЕШ	LBT,LBTOP,HBT,PEЖИMЫ,ETAФ,EHMTAФ,EЖДY60,HЗHEP
KOMAP	ВНЕШ	ШИФPЗ,ШИФPЗT,AДMИH,AДMИHT,AKTЛMЛ,AKTЛMT,ШKENQ
KOMAP	ВНЕШ	ФИЗOБM,ФИЗOБT,YПPO,AДPOШ,ИCOБM,TAФCC,CЧЭ70,ЧBH
KOMAP	ВНЕШ	CЛCЛ,ЗГЛMЛ,CBEДMЛ,CДBMЛ,KOHTAФ,ACBOБ,ШKCБOЙ
KOMAP	ВНЕШ	MЛCБOЙ
PA	ВНЕШ	HETOБЛ,OБЛЗ,KOHKAT,HTOM,MHOГO,KOHTOM,KTЛOБЛ,ЖДИ,BHЗH
PA	ВНЕШ	MЛHЗK,OШЭK,KЗAXB1,ЭKHET,ЗAПBИP,APXOШ,X,Э63CДB,BTBЫT1
PA	ВНЕШ	COOБЩИ
ГИДPA	ВНЕШ	OШ10,OШ9999
ДИCП70	ВНЕШ	NБЛ,ЯЧБKИO,TYCП,ЯЧHИA,EHИИAC
	ФИНИШ
