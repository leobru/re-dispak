ОСА	СТАРТ	'40000'
О	ЭКВ	ОСА
	Б
	Е
	М
 КОНД В’0’ СМ
 КОНД М41В’3’ РЕЖ.АУ
	пам	1
D40003	пам	1
	конк	A(G40734)	возм.
	конк	в'00000000'
М21М27	конд	в'0000000201302007'
	пам	13
	конд	п'0000F0'
	пам	4
D40030	конд	в'7777500000000000'
D40031	пам	1
D40032	пам	1
D40033	пам	2
D40035	пам	1
D40036	пам	2
D40040	пам	1
 КОНД М47В’1’ ВРЕМЯ
КУС720	конд	в'0000062000400000'
D40043	пам	2
D40045	конд	в'7777777777777777'
D40046	пам	1
D40047	конд	в'0000037777777777'
	употр	ОСА(М3)
G40050	уиа	'2003'
	сч	D40046
	и	D40030
	по	G42713
	нед	
	уи	М17
	зп	D40031
	мод	D43105
	уиа	0(М7)
	сч	Е48-1(М17)
	нтж	D40046
	зп	D40046
	уиа	'3'
	пб	G40057-1(М17)
G40057	уиа	G40630-О(М2)
	пб	G40641
G40060	сч	D43147
	пб	G40704
G40061	пб	G40740
	конк	в'00100000'
G40062	уиа	-4(М2)
	пб	G41725
G40063	пб	G41715
	конк	в'00100000'
G40064	уиа	G40416-О(М2)
	пб	G40416
G40065	уиа	G40076-О(М2)
	пб	G40076
G40066	уиа	G40563-О(М2)
	пб	G40563
G40067	сч	
	пб	G40305
G40070	уиа	G42250-О(М2)
	пб	G42250
G40071	пб	G41150
	конк	в'00100000'
G40072	уиа	'2003'
	пб	G41354
G40073	уиа	G10177-ОН(М4)
	пб	ВЫЗНЕР
G40074	стоп	14043	надо уиа что-то(М4)
	пб	ВЫЗНЕР
G40075	уиа	G10665-ОН(М4)
	пб	ВЫЗНЕР
G40076	уиа	'1770'(М14)
	уиа	Е41(М17)
G40077	сли	М17(М3)
G40100	уиа	'2003'
	мода	(М7)
	сч	(М14)
	по	G40050
	сч	Е11
	пв	ЗАХЗАН(М15)
G40103	сли	М14(М7)
	сч	(М14)
	по	G40050
	уи	М5
	сда	64+16
	по	G40107
	уи	М5
G40107	сч	(М5)
	и	П77777
	зп	(М14)
	нтж	(М5)
	зп	(М5)
	пб	(М17)
G40112	сч	2(М5)
	и	Е2
	пе	G40702
	уиа	Е31(М12)
	уиа	П77(М13)
	уиа	'1363'(М1)
G40115	уиа	'3'
	уиа	-255(М14)
	сли	М1(М7)
	сли	М13(М3)
G40117	мода	(М1)
	сч	255(М14)
	мода	ОСА
	по	(М12)
	нтж	3(М5)
	и	D40047
	по	G40152
	цикл	G40117(М14)
	мода	ОСА
	пб	(М12)
G40124	уиа	1023(М14)
	уиа	Е23(М12)
	мода	G40277
	уиа	0(М17)
G40126	сли	М14(М7)
	сли	М12(М3)
G40127	сч	(М14)
	уии	М13(М14)
	и	П77777
	по	(М12)
	уи	М14
	сч	3(М14)
	нтж	3(М5)
	и	D40047
	пе	G40127
	пб	(М17)
G40134	уиа	АСБОЙБ(М11)
	сч	3(М5)
	нтж	D43156
	и	D40047
	пе	G40142
	сч	4(М5)
	нтж	D43212
	и	D43222
	пе	G40142
	мода	G40145
	уиа	0(М11)
	пб	G42323
G40142	мода	G42540
	пв	(М14)
	уиа	'2003'
	сч	D43147
	и	Е44
G40145	мода	G40242
	уиа	0(М15)
	пе	G40703
	сч	Е44
	или	D43147
	зп	D43147
	сч	П17
	пв	ТАЙМЕР(М15)
	сч	Е1
	пб	G40145
G40152	уии	М10(М14)
	слиа	255(М14)
	сли	М14(М1)
	сч	
	зп	D43077
	зп	D43100
	сч	(М14)
	сда	64+32
	зп	D40033
	пб	G40160
G40157	зп	D43100
	уии	М14(М12)
G40160	уи	М12
	зп	D40032
	счи	М13
	нтж	D43127
	по	(М13)
	сч	D40032
	и	Е16
	пе	G40243
	сч	(М12)
	и	Е16П1
	пе	G40157
	сч	D43100
	по	(М13)
	сч	D43264
	пе	(М13)
	сч	(М14)
	и	Е48П17
	зп	(М14)
	пб	(М13)
**********
G40172	мода	G40203
	уиа	0(М4)
G40173	сч	1(М12)
	по	G41574
	зп	2(М5)
	сч	2(М12)
	сда	64+41
	уи	М13
G40176	сч	2(М12)
	и	Е39П25
	сда	64+8
	зп	D40033
	сч	(М5)
	и	D43102
	или	D40033
	зп	(М5)
	пб	(М4)
**********
G40203	уиа	'76'(М1)
	уиа	G40214-О(М11)
	сч	1(М12)
	пе	G40206
	уиа	G41613-О(М11)
G40206	сли	М11(М3)
	сч	D43077
	по	G42125
	пв	ТБУФ(М15)
G40210	сч	D43100
	пе	(М11)
G40211	сч	1(М14)
	зп	(М14)
	по	(М11)
	слиа	1(М14)
	цикл	G40211(М10)
	пб	(М11)
**********
G40214	счи	М13
	и	Е7
	уиа	0(М4)
	пе	G40232
	уиа	G40237-О(М11)
G40217	уиа	'2003'
	сч	ШГ
	или	Е48-1(М13)
	зп	ШГ
G40221	сч	D40031
	по	'417'(М2)
	сч	D43147
	или	Е48-1(М13)
	нтж	Е48-1(М13)
	зп	D43147
	пе	G40225
	пв	ТАЙМЕР(М15)
G40225	счи	М5
	зп	D40033
	сч	D40033
	мод	ТУС-1(М13)
	зп	
	уиа	'3'
	мода	ОСА
	пб	(М11)
**********	
G40231	уии	М11(М1)
	пб	G41634
**********
G40232	слиа	-64(М13)
	уиа	D43047-О(М11)
	сли	М11(М13)
	сли	М11(М3)
	уиа	Е40(М4)
	пв	G42541(М14)
	уиа	'2003'
	сч	Е48-1(М13)
	или	D40043
	зп	D40043
G40237	сч	Е11
	пв	ГАШЗАН(М15)
G40240	сч	(М4)
	или	D40046
	зп	D40046
	уиа	'3'
G40242	мода	ОСА
	пб	(М2)
**********
G40243	мода	G42154
	пв	(М1)
	сч	D43264
	пе	'570'(М2)
G40245	сли	М12(М11)
	сч	(М12)
	и	П777
	по	G40251
	зп	D43100
	уии	М15(М12)
	уи	М12
	пб	G40245
**********
G40251	сч	D43100
	уии	М16(М12)
	по	G40264
	сда	64+9
	пе	G40264
	зп	D43101
	мода	G42166
	пв	(М1)
G40255	мода	G40273
	пв	(М1)
	счи	М12
	сда	64-17
	и	Е26Е25
	зп	D43077
	счи	М12
	и	П177
	сда	64-3
	уи	М12
	сли	М12(М11)
	счи	М11
	уии	М1(М13)
	пб	G40272
**********
G40264	сч	(М14)
	и	Е48П17
	зп	(М14)
	мода	G40255
	уиа	0(М1)
	пб	G42176
**********
G40267	сч	
	пв	ТБУФ(М15)
	сда	64-8
	уиа	'3'
	уи	М11
G40272	сда	64-2
	или	НОМСВ
G40273	слц	D43077
	нтж	Е18
G40274	зп	D43077
	пв	ФИЗОБМ(М16)
	уиа	'3'
	пе	(М1)
	сч	D43077
	пб	G40274
**********
G40277	уии	М12(М14)
	пв	G40173(М4)
G40300	сч	(М13)
	и	Е48П17
	или	D40032
	зп	(М13)
	счи	М14
	мода	G40214
	уиа	0(М17)
	пб	G42126
**********
G40304	уиа	'2003'
	пв	АВОСТА(М16)
G40305	зп	D43315
	зп	D40040
	уиа	'2003'
	сч	D40043
	по	G40050
	нед	
	уи	М13
	уиа	0(М2)
	уии	М17(М13)
	мод	НЗАД(М13)
	уиа	0(М10)
	пв	ЗАНПРП(М15)
	сч	Е11
	пв	ЗАХЗАН(М15)
	сч	D40043
	нтж	Е48-1(М13)
	зп	D40043
	уиа	'3'
G40316	уиа	G40414(М12)
	мода	ОСА
	сч	D43047-О(М13)
	по	G40404
	уи	М5
	сч	3(М5)
	и	Е48
	или	D43315
	зп	D43315
	сч	(М5)
	сда	64+16
	и	П77777
	пе	G40326
	сч	Е1
	зп	D40040
G40326	сч	(М5)
	сда	64+32
	по	G40363
	и	П377
	по	G40354
	сч	(М5)
	слц	Е44П41
	или	Е45
	нтж	Е45
	зп	(М5)
	сч	2(М5)
	уи	М11
	сч	(М5)
	слц	D43131
G40335	и	Е43
	по	G40357
	уиа	G40356(М1)
	уиа	1023(М6)
G40337	сч	1(М5)
	уи	М4
	сда	64+24
	зп	1(М5)
G40341	мода	G42363
	пв	(М14)
	сли	М11(М6)
	пв	G42363(М14)
	счи	М6
	нтж	ВСЕЕД
	уи	М16
	слиа	1(М16)
	сли	М4(М6)
G40346	мода	(М4)
	сч	(М16)
	уиа	
	мода	(М11)
	зп	(М16)
	уиа	'3'
	мода	G40346
	цикл	(М16)
	мода	(М1)
	пино	(М2)
	счи	М4
	пб	G41115
**********
G40354	сч	2(М5)
	уи	М11
	сч	(М5)
	пб	G40335
G40356	слиа	1(М11)
G40357	сч	(М5)
	сда	64+32
	и	П1777
	по	G40363
	уи	М6
	слиа	-1(М6)
	мода	G40337
	пв	(М1)
G40363	сч	(М5)
	сда	64+32
	слц	2(М5)
	зп	1(М5)
	сда	64+24
	уи	М11
	по	G40371
	уиа	7(М6)
	уиа	1(М2)
	уии	М4(М5)
	мода	G40341
	пв	(М1)
G40371	сч	(М5)
	и	П77777
	уиа	0(М2)
	мода	ОСА
	зп	D43047-О(М13)
	мода	G40316
	уиа	0(М17)
	пб	G41635
**********
G40375	сч	D43315
	по	G40305
	и	Е1
	уиа	'77'(М17)
	по	G40400
	уиа	'72'(М17)
G40400	уии	М15(М10)
	сч	(М10)
	нтж	D43304
	пе	G40304
	сч	
	зп	D43315
	зп	(М10)
G40404	сч	Е11
	пв	ГАШЗАН(М15)
	мода	G40375
	уиа	0(М16)
	сч	D40040
	по	G40411
G40407	уиа	'2003'
	сч	ШГП
	или	Е48-1(М13)
	зп	ШГП
G40411	счи	М13
	или	Е26
	пб	ЗАПВЕТ
**********
G40413	стоп	32767	это хак
	пб	G40413
G40414	сч	Е1
	или	D43315
	зп	D43315
	пб	G40371
G40416	уиа	'1767'(М14)
	уиа	ШГ(М12)
	мода	(М7)
	сч	(М14)
	и	Е48П17
	уиа	G40423-О(М17)
	по	G40077
	уиа	G40473-О(М17)
	пб	G40077
G40423	сч	D43147
	и	Е44
	по	G40431
	нтж	D43147
	зп	D43147
	пе	G40427
	пв	ТАЙМЕР(М15)
G40427	сч	Е39
	или	D40046
	зп	D40046
G40431	уиа	'3'
	уиа	АСБОЙБ(М14)
	мода	G40126
	пв	(М17)
G40433	сч	(М14)
	и	П77777
	зп	D40032
	сч	(М13)
	и	Е48П16
	или	D40032
	зп	(М13)
	уии	М12(М5)
	уии	М5(М14)
	пв	G40173(М4)
	уиа	G40416-О(М1)
	уиа	G40214(М17)
	сч	1(М12)
	по	G40443
G40442	счи	М12
	пб	G42126
G40443	слиа	'1377'(М17)
	пб	G40442
G40444	уиа	ШКСВН(М13)
	уиа	П30(М12)
	уиа	'762'(М1)
	пб	G40115
G40446	уиа	-2(М15)
	уиа	-7(М16)
G40447	мода	(М5)
	сч	2(М15)
	мод	D43105
	зп	2(М15)
	цикл	G40447(М15)
G40452	мода	(М12)
	сч	7(М16)
	мода	(М5)
	зп	7(М16)
	цикл	G40452(М16)
	уиа	G40456-О(М11)
	пб	G40206
**********
G40456	уиа	'3'
	сч	3(М5)
	нтж	D43156
	и	D40047
	пе	G40463
	сч	4(М5)
	нтж	D43212
	и	D43222
	по	G40522
G40463	сч	3(М5)
	нтж	D43212
	и	D43222
	пе	G40467
	сч	1(М7)
	зп	1(М5)
	пб	G40522
G40467	сч	1(М5)
	по	G40522
	и	Е48П37
	пе	G40522
	сч	(М5)
	и	D43232
	по	G40522
G40473	уиа	G40474-О(М4)
	пб	G40574
**********
G40474	зп	D40033
G40475	сч	1(М5)
	сда	64-24
	зп	1(М5)
	счмр	
	по	G40475
	зп	D43100
	сда	64-24
	зп	D43077
	сч	D40033
	или	1(М5)
	зп	1(М5)
	и	Е15П11
	мода	G40272
	пв	(М1)
	мода	G40515
	уиа	0(М15)
G40505	сч	D43100
	уиа	-1(М12)
	вч	Е3
G40507	слиа	1(М12)
	уи	М16
	вч	П60
	пе	G40512
	и	П77777
	пе	G40507
G40512	мод	D43105
	слиа	'750'(М12)
	сч	(М12)
	нтж	Е48-1(М16)
	зп	(М12)
	пб	(М15)
**********
G40515	сч	1(М5)
	и	D43216
	по	G40522
	сч	2(М5)
	и	Е9
	по	G40456
	сч	2(М5)
	и	Е48П9
	зп	2(М5)
G40522	мод	D43105
	уиа	0(М12)
	мода	G40173
	пв	(М4)
	уиа	G40416-О(М1)
	сч	1(М12)
	пе	G40214
	пб	G41613
**********
G40526	мода	G40557
	уиа	0(М11)
	уиа	'1363'(М1)
	сч	1(М5)
	по	G40543
	сч	2(М5)
	слц	Е48
	пе	G40543
	нтж	Е5
	и	П77
	пе	G40543
	сч	2(М5)
	сда	64+41
	уи	М16
	уии	М17(М11)
	и	Е7
	по	G40541
	сч	2(М16)
	пв	ВШГП(М15)
	пб	G41635
G40541	сч	Е48-1(М16)
	пв	ВШГ(М15)
	пб	G41635
G40543	уиа	'555'(М12)
	уиа	П377(М13)
	счи	М5
	сда	64-32
	зп	D43100
	пб	G40115
G40546	сч	(М5)
	и	Е48П17
	или	D40033
	зп	(М5)
	сч	(М14)
G40551	и	D40047
	зп	(М14)
	счи	М5
	сда	64-32
	или	(М14)
	зп	(М14)
	пб	(М11)
G40555	по	G40561
	уиа	1023(М11)
	уиа	Е35(М4)
	пб	G40700
G40557	сч	Е11
	пв	ГАШЗАН(М15)
	уиа	'3'
	пб	G40416
G40561	слиа	255(М14)
	сли	М14(М1)
	сч	3(М5)
	пб	G40551
G40563	уиа	G40627-О(М1)
	уиа	'1771'(М14)
	сч	'1771'(М7)
	сда	64+16
	по	G40566
	зп	'1771'(М7)
G40566	мода	G40100
	пв	(М17)
	сч	Е11
	пв	ГАШЗАН(М15)
	уиа	'3'
	сч	(М5)
G40571	сда	64+40
	и	П7
	слц	П3
	сда	64+3
	зп	D40032
	уиа	G40604-О(М4)
G40574	уиа	'2003'
	сч	D43073
	вч	Е3
	по	G40612
	сч	Е1
G40577	уиа	'2003'
	слц	D43073
	и	П77777
	зп	D43073
	сч	
	пв	ТБУФ(М15)
	уиа	'3'
	сда	64-8
	мода	ОСА
	пб	(М4)
**********
G40604	зп	1(М5)
	сч	D40032
	по	G40611
	уиа	G40607-О(М4)
	пб	G40577
G40607	сда	64-24
	или	1(М5)
	зп	1(М5)
G40611	сли	М1(М3)
	пб	(М1)
G40612	уиа	'2003'
	сч	ГУС
	нтж	ТУС+24
	и	Е48П42
	уии	М15(М3)
	пе	G40625
	счи	М5
	сда	64-16
	мод	D40031
	или	'1761'(М7)
	мод	D40031
	зп	'1761'(М7)
	мод	D40031
	сч	Е48-1
	или	D43072
	зп	D43072
	мода	G41014
	пв	(М16)
	слиа	'50'(М15)
	сч	Е11
	пб	ГАШЗАН
G40625	сч	Е31
	зп	D43070
	слиа	'574'(М15)
	пб	G42121
G40627	уии	М12(М5)
	пб	G40677
G40630	сч	D43311
	по	G40637
	пб	G40633
G40632	сч	Е48-1(М1)
	нтж	D43312
G40633	зп	D43312
	по	G40637
	нед	
	уи	М1
	или	Е39
	уиа	G40632(М16)
	пб	ЗАПВЕТ
G40637	сч	D40036
	слц	Е1
	и	П77
	зп	D40036
G40641	сч	D40035
	нтж	D40036
	по	G40050
	мод	D40036
	сч	-128
	зп	D43231
	зп	D43305
	сда	64+6
	и	П3
	пе	G40630
	сч	D43231
	и	П7
	уи	М1
	по	G40652
	вчоб	П3
	по	G40672
	слиа	-3(М1)
	пб	G40652(М1)
G40652	уиа	0(М6)
	пб	G40657
G40653	пб	G40630
	конк	в'00100000'
G40654	пб	G40630
	конк	в'00100000'
G40655	уиа	1(М6)
	пб	G40657
G40656	пб	G40630
	конк	в'00100000'
G40657	сч	D43231
	и	D43233
	по	G40630
	пв	G42213(М17)
	уи	М5
	сч	D43231
	сда	64-14
	и	D43234
	зп	(М5)
	сда	64+22
	уи	М12
	уиа	G10504-ОН(М4)
	мода	ВЫЗНЕР
	пио	(М6)
	мода	(М6)
	сч	D43046
	зп	1(М5)
	уиа	G40630-О(М2)
	уиа	'1766'(М11)
	уиа	Е44(М4)
	пб	G40700
**********
G40672	мода	G42077
	пв	(М17)
	уи	М5
	сч	D43231
	зп	4(М5)
	мода	D43047
	сч	(М1)
	зп	2(М5)
	сч	
	зп	(М5)
G40677	уиа	'1764'(М11)
	уиа	Е46(М4)
G40700	мода	G42540
	пв	(М14)
G40701	уиа	'2003'
	пб	G40240
**********
G40702	мода	G40677
	уиа	0(М15)
G40703	сч	Е11
	пб	ГАШЗАН
**********
G40704	или	Е1
	нтж	Е1
	зп	D43147
	пе	G40707
	пв	ТАЙМЕР(М15)
G40707	сч	D43074
	сда	64+20
	и	П3
	уи	М15
	мода	D43276
	мод	(М15)
	уиа	0(М15)
	уиа	'2003'
	сч	D43257
	по	G40716
	или	ШГ
	зп	ШГ
	сч	
	зп	D43257
G40716	мода	G40722
	уиа	0(М16)
	сч	Е46
	или	Е44
	уиа	'2003'
	или	D40030
	зп	D40030
	пб	(М16)
G40722	сч	Е46
	или	D40046
	зп	D40046
	уиа	'3'
	мод	'1764'(М7)
	сч	2
	и	Е5
	по	G40050
G40726	сч	П3
	пв	ПОК(М13)
	мод	D43074
	сч	-1(М15)
	уи	
G40731	слиа	-1(М15)
	пино	G40726(М15)
	сч	П13
	пв	ПОК(М13)
	пб	G40050
G40734	сч	И15
	уи	М15
	сч	К2013
	пв	ПОК(М13)
	сч	СМ
	мод	D43074
	зп	-1(М15)
	пб	G40731
G40740	сч	'1764'(М7)
	по	G40050
	уи	М5
	сч	D43235
	и	П3
	сда	64-8
	зп	D40032
	уиа	0(М14)
	сч	D43235
	пе	G40752
	сч	(М5)
	сда	64+40
	и	П77
	зп	D43236
	по	G41051
	сч	(М5)
	и	Е47
	по	G40752
	сч	Е1
	зп	D43236
G40752	сч	D43255
	пе	G41012
	сч	D43236
	по	G41062
	нтж	D43235
	по	G41062
	сч	D43235
	и	Е3
	по	G40757
	уиа	24(М14)
G40757	сч	D43235
	слц	Е1
	зп	D43235
	сда	64+2
	уи	М4
	слц	D43235
	и	П3
	уи	М12
	сч	D43236
	нтж	D43235
	уиа	0(М17)
	пе	G40767
	сч	(М5)
	и	Е48
	по	G40767
	уиа	1(М17)
G40767	мода	(М4)
	сч	4(М5)
	мод	D43052(М12)
	сда	64
	мода	(М17)
	и	D43237
	пино	G40773(М17)
	или	Е22
G40773	или	Е19
	зп	D43074
	сч	1(М5)
	сда	64(М14)
	слц	D40032
	и	Е18П1
	или	D43074
	зп	D43074
	и	D43242
	зп	D40032
	сда	64+14
	или	D40032
	зп	D40032
	сч	D43074
	сда	64+10
	и	П3
	нтж	П3
	уи	М17
	сч	D43074
	сда	64+12
	и	П37
	сда	64-24
	или	D40032
	зп	D40032
	пб	G41012
	конк	в'74100157'
G41010	или	D40032
	или	Е37
	или	Е42
	увв	'216'
G41012	сч	Е46
	или	Е44
	мода	G41017
	уиа	0(М16)
G41014	уиа	'2003'
	нтж	ВСЕЕД
	и	D40030
	зп	D40030
	пб	(М16)
G41017	сч	2(М5)
	и	Е5
	сда	64-19
	или	D43074
	зп	D43074
	сч	D43236
	нтж	D43235
	пе	G41036
	сч	(М5)
	и	Е47
	пе	G41033
	сч	(М5)
	и	Е48
	по	G41036
	сч	(М5)
	сда	64+32
	и	П377
	вч	Е1
	сда	64-40
	увв	'221'
	уи	
	сч	D43074
	или	Е20
	пб	G41034
G41033	сч	D43074
	или	Е21
G41034	уи	
	увв	'201'
	уи	
	пб	G41043
G41036	сч	D43074
	сда	64+1
	счмр	64
	или	D43074
	или	Е1
	нтж	Е1
	уи	
	уи	
	увв	'201'
G41043	сч	
	зп	D43255
	сч	Е4
	или	D43075
	зп	D43075
	увв	'234'
	сч	Е5
	пв	ТАЙМЕР(М15)
	сч	Е1
	или	D43147
	зп	D43147
	пб	G40050
G41051	сч	2(М5)
	и	Е48П42
	пе	G41061
	сч	2(М5)
	и	Е5
	по	G41060
	мода	G42077
	пв	(М17)
G41055	зп	1(М5)
	зп	D43235
	сч	4(М5)
	и	D43241
	пб	G40773
G41060	сч	1(М5)
	пб	G41055
G41061	счи	М5
	пб	G41055
G41062	зп	D43235
	зп	D43256
	сч	3(М5)
	или	Е48
	нтж	Е48
	зп	3(М5)
	сч	(М5)
	и	П77777
	зп	'1764'(М7)
	сч	2(М5)
	сда	64+41
	пе	G41073
	сч	2(М5)
	сда	64+24
	уи	М16
	мода	(М16)
	пб	ОСА
G41073	уи	М13
	и	Е7
	по	G41135
	сч	2(М5)
	и	Е5
	по	G41104
	уии	М12(М5)
	сч	(М5)
	сда	64+16
	уи	М11
	мода	G40176
	пв	(М4)
	счи	М11
	зп	2(М5)
	сч	Е11
	пв	ЗАХЗАН(М15)
	уиа	'740'(М2)
	пб	G40214
G41104	мода	G41122
	уиа	0(М1)
G41105	сч	D43236
	по	G41122
G41106	слц	П3
	и	Е4
	по	G41114
	сч	1(М5)
	сда	64+22
	или	Е19
	пв	ТБУФ(М15)
	сч	D43073
	вч	Е1
	зп	D43073
G41114	сч	1(М5)
G41115	и	П77777
	сда	64-2
	или	Е19
	пв	ТБУФ(М15)
	сч	D43073
	вч	Е1
	зп	D43073
	уиа	1(М16)
	уии	М17(М1)
	пб	G42134
G41122	уиа	'77'(М17)
	сч	НЗАД(М13)
	уи	М15
	слиа	-64(М13)
	уиа	'740'(М1)
	сч	3(М5)
	и	Е48
	по	G41132
	сч	(М15)
	нтж	D43304
	пе	G41131
	зп	(М15)
	пб	G41132
G41131	уиа	'2003'
	пв	АВОСТА(М16)
G41132	сч	2(М5)
	и	Е39П25
	мода	G41634
	уиа	0(М16)
	пе	G40411
	пб	G40407
G41135	уиа	'740'(М11)
	сч	1(М5)
	уи	М14
	уии	М6(М5)
	сч	3(М5)
	и	Е48
	по	G41142
	уиа	РЯО2(М1)
	уиа	-1(М6)
	пб	G41114
G41142	мода	G41635
	пв	(М17)
	уии	М5(М6)
	пб	G40217
**********
G41144	уиа	НМБТР(М11)
	сч	3(М5)
	и	Е48
	пе	G41632
	уиа	Е38(М4)
	уиа	'740'(М2)
	пб	G40700
**********	
G41150	уиа	НМБТР(М14)
	уиа	П7(М1)
	мода	G40103
	пв	(М17)
	сч	1(М5)
	уи	М2
	сч	(М2)
	и	D43232
	по	G41202
	сч	3(М2)
	нтж	D43212
	и	D43222
	пе	G41170
	сч	3(М2)
	и	П777
	сда	64-8
	зп	1(М5)
	сч	3(М2)
	и	Е10
	по	G41163
	сч	Е41
	зп	(М2)
G41163	мода	G41171
	уиа	0(М1)
G41164	сч	4(М5)
	зп	6(М5)
	сч	1(М2)
	зп	4(М5)
	сч	2(М2)
	зп	5(М5)
	пб	(М1)
G41170	сч	(М2)
	пб	G40571
G41171	сч	(М2)
	и	D43216
	зп	(М5)
	сч	D43056
	зп	2(М5)
	сч	6(М5)
	сда	64-32
	и	Е44П41
	зп	D40032
	сч	3(М2)
	и	D43260
	или	D40032
	зп	3(М2)
	счи	М2
	зп	7(М5)
	уиа	БОБСВЗ(М2)
	пб	G40677
G41202	уиа	БОБСВЗ(М1)
	сч	
	зп	1(М2)
	сч	4(М5)
	сда	64-32
	и	Е44П41
	зп	D40032
	сч	3(М2)
	и	D43260
	или	D40032
	зп	3(М2)
	счи	М5
	мода	G42126
	пв	(М17)
G41211	уии	М5(М2)
	сч	D43057
	зп	D43060
	сч	3(М5)
	сда	64+18
	зп	D43063
	сч	3(М5)
	нтж	D43160
	и	D40047
	сда	64+8
	по	G41531
	нтж	D43161
	по	G41261
	сч	3(М5)
	и	D40047
	нтж	D43157
	по	G41252
	нтж	D43224
	пе	G41225
	сч	5(М5)
	и	Е32
	пе	G41252
	пб	G41252
G41225	сч	
	зп	2(М5)
	пб	G41237
G41227	счи	М10
	или	D43155
	или	Е48Е47
	зп	4(М5)
	сч	D43156
	зп	3(М5)
	сч	
	зп	(М5)
	сч	5(М5)
	и	П377
	или	Е38
	зп	5(М5)
	сч	ТУС+24
	и	Е48П42
	зп	2(М5)
	зп	1(М5)
G41237	уиа	'1770'(М11)
	уиа	Е42(М4)
G41240	мода	G42537
	пв	(М14)
	уиа	'1253'(М2)
	пб	G40237
G41242	сч	3(М5)
	и	Е48
	по	G41246
	сч	D43236
	по	G41631
	мода	G41631
	уиа	0(М1)
	пб	G41106
G41246	уиа	'1251'(М1)
	сч	7(М5)
	уи	М2
	сч	1(М5)
	зп	1(М2)
	пб	G41634
G41251	уиа	'740'(М1)
	пб	G41211
G41252	мода	G41635
	пв	(М17)
G41253	мода	G42213
	пв	(М17)
	уи	М5
	сч	D43063
	и	D43234
	зп	(М5)
	уии	М2(М1)
	сч	D43060
	зп	1(М5)
	уиа	G41766-О(М11)
	уиа	Е44(М4)
	пб	G40700
**********
G41261	сч	3(М5)
	и	П377
	уи	М10
	мода	G41252
	уиа	0(М12)
	сч	Е48-1(М10)
	рзб	ШЕСТР
	зп	НОМФУН+3
	по	(М12)
	уии	М10(М1)
	нед	П77777
	уи	М17
	уии	М13(М3)
	мод	ТБЛ(М17)
	уиа	0(М16)
	уиа	'2003'
	сч	ТСЛ(М17)
	или	Е28
	или	Е31
	зп	ТСЛ(М17)
	сч	Е48(М17)
	сбр	ШЕСТР
	нед	П77777
	уи	М11
	слиа	D43163-О(М11)
	сли	М11(М3)
	сч	НОМФУН+4
	и	Е48(М17)
	по	G41327
	нтж	НОМФУН+4
	зп	НОМФУН+4
	уиа	'3'
	слиа	1(М13)
	сч	(М11)
	сда	64+15
	уи	М1
	сда	64+15
	уи	М4
	пб	G41336
G41305	сч	Е48(М17)
	или	НОМФУН+4
	зп	НОМФУН+4
	счи	М4
	сда	64-15
	уиа	'2003'
	зп	D43077
	счи	М1
	или	D43077
	сда	64-15
	или	(М11)
	зп	(М11)
	уиа	'3'
	уии	М1(М10)
	пб	(М12)
G41315	сч	П377
	зп	'3313'(М13)
	мод	(М16)
	сч	9(М16)
	сда	64-8
	или	'3313'(М13)
	сд	(М16)
	мод	(М16)
	зп	9(М16)
	пв	КПФШ(М14)
	сч	(М11)
	мода	G41326
	уиа	0(М1)
	пб	G41115
**********
G41324	сч	D43233
	мод	(М16)
	зп	9(М16)
	пв	КПФШ(М14)
G41326	уии	М1(М10)
	пб	(М12)
**********
G41327	сч	НОМФУН+3
	и	Е48(М17)
	по	(М15)
	нтж	НОМФУН+3
	зп	НОМФУН+3
	сч	(М5)
	и	D43232
	по	G41324
	сч	1(М5)
	и	П77777
	зп	(М11)
	уи	М1
	уиа	48(М4)
G41336	сч	ШЗПРИМ
	и	Е48(М17)
	пе	G41305
	сч	(М1)
	сда	64-8(М4)
	и	П377
	по	G41315
	слиа	-8(М4)
	уиа	'2003'
	пв	G42725(М14)
	зп	'3313'(М13)
	уиа	'3'
	мод	(М16)
	сч	9(М16)
	сда	64-8
	или	'3313'(М13)
	пв	ЗПСЕС1(М14)
	пино	G41336(М4)
	слиа	1(М1)
	счи	М1
	сда	64-32
	нтж	(М5)
	сда	64+32
	и	П377
	по	G41315
	уиа	48(М4)
	пб	G41336
G41354	сч	НОМФУН+2
	и	D43153
	нтж	НОМФУН+2
	по	G40050
	нед	П77777
	уи	М1
	сч	D43136
	и	Е2
	пе	G40050
	зп	D42742
	пв	G42077(М17)
	уи	М5
	сч	Е1
	пв	ТБУФ(М15)
	сда	64-8
	уи	М17
	зп	1(М5)
	сч	D43136
	слц	Е1
	зп	D43136
	сч	Е48(М1)
	или	ШКВЫД
	зп	ШКВЫД
G41371	мод	ТБЛ(М1)
	уиа	0(М16)
	уиа	'3'
	уии	М4(М16)
	слиа	9(М4)
	сч	3(М16)
	нтж	П77777
	слц	Е2
	уи	М6
	сч	ТСЛ(М1)
	и	Е33
	по	G41413
G41377	сч	(М4)
	зп	(М17)
	уиа	-5(М15)
	сч	(М4)
G41401	сда	64-8
	зп	D40032
	счмр	
	нтж	
	по	G41411
	зп	D42742
G41404	сч	D40032
	цикл	G41401(М15)
	слиа	1(М4)
	цикл	G41377(М6)
G41406	мод	3(М16)
	слиа	0(М6)
	счи	М6
	сда	64-32
	пб	G41426
G41411	сч	D42742
	по	G41404
	пб	G41406
G41413	слиа	-1(М6)
G41414	сч	(М4)
	зп	(М17)
	слиа	1(М4)
	мода	G41414
	цикл	(М6)
	сч	3(М16)
	и	П377
	слц	Е1
	слц	D42742
	зп	D42742
	сч	1(М16)
	по	G41423
	зп	ТБЛ(М1)
	пб	G41371
G41423	уиа	'2003'
	сч	D43210
	зп	(М17)
	сч	Е1
	слц	D42742
	сда	64-32
G41426	или	Е41
	зп	(М5)
	сч	D43137
	зп	2(М5)
	сч	1(М16)
	по	G41454
	зп	ТБЛ(М1)
G41432	сч	Е48(М1)
	или	D43153
	зп	D43153
	уиа	'3'
	сч	D43156
	зп	3(М5)
	сч	Е48(М1)
	сбр	ШЕСТР
	нед	
	зп	D40032
	или	D43160
	зп	4(М5)
	слц	П77777
	уи	М15
	и	П3
	нтж	П3
	сда	64-3
	уи	М11
	счи	М15
	сда	64+2
	и	П7
	уи	М4
	мода	D43163+12
	сч	(М4)
	сда	64(М11)
	и	П377
	или	Е39
	зп	5(М5)
	сч	D43155
	или	D40032
	зп	7(М5)
	уиа	Е42(М4)
	уиа	'1770'(М11)
	пв	G42537(М14)
	уиа	'1354'(М2)
	пб	G40237
**********
G41454	мод	ТСЛ(М1)
	уиа	0(М14)
	сч	ТСЛ(М1)
	и	Е33
	пе	G41523
G41457	мод	1(М14)
	уиа	0(М14)
	уиа	'3'
	пио	G41513(М14)
	счи	М14
	сда	64+5
	и	П37
	уи	М11
	уиа	-13(М6)
G41464	счи	М14
	нтж	ТСЛ-1(М6)
	и	Е15П11
	по	G41470
	цикл	G41464(М6)
G41467	стоп	, это честный стоп по ненахождению чего-то в цикле
	пб	G41467
G41470	сч	3(М14)
	слц	П11
	и	П77777
	сда	64+5
	нтж	П77777
	слц	Е1
	уи	М4
	уиа	'2003'
G41474	сч	ТСЛ-1(М6)
	или	Е48(М11)
	зп	ТСЛ-1(М6)
	и	Е48П17
	нтж	Е48П17
	пе	G41502
	сч	ТСЛ-1(М6)
	и	Е18П1
	сда	64-2
	пв	ТБУФ(М15)
	сч	
	зп	ТСЛ-1(М6)
G41502	уии	М15(М11)
	слиа	-31(М15)
	пино	G41511(М15)
	пио	G41457(М4)
	уиа	-13(М6)
	уиа	-1(М11)
G41505	счи	М14
	слц	Е11
	нтж	ТСЛ-1(М6)
	и	Е15П11
	по	G41511
	цикл	G41505(М6)
	пб	G41467
G41511	слиа	1(М11)
	цикл	G41474(М4)
	пб	G41457
G41513	мод	ТСЛ(М1)
	уиа	0(М16)
	сч	
	уиа	-30(М15)
G41515	мода	(М16)
	зп	31(М15)
	цикл	G41515(М15)
	сч	Е46Е45
	зп	(М16)
	уиа	15(М15)
	счи	М15
	или	Е48
	зп	3(М16)
	сч	П60
	зп	4(М16)
G41523	сч	Е48(М1)
	нтж	НОМФУН+2
	зп	НОМФУН+2
	сч	Е48(М1)
	или	ШКВЫД
	нтж	Е48(М1)
	зп	ШКВЫД
	мода	G41432
	уиа	0(М16)
	уии	М15(М1)
	пб	КВ2
G41531	сч	3(М5)
	и	П77
	уи	М10
	сч	Е48-1(М10)
	рзб	ШЕСТР
	нед	П77777
	уи	М4
	сч	4(М5)
	и	D43104
	уиа	'2003'
	по	G41547
	сч	Е48(М4)
	нтж	ВСЕЕД
	зп	D40032
	и	НОМФУН+5
	зп	НОМФУН+5
	сч	D40032
	и	НОМФУН+2
	зп	НОМФУН+2
	сч	D40032
	и	ШКВЫД
	зп	ШКВЫД
	сч	Е46
	или	ШКОРАБ
	зп	ШКОРАБ
	сч	Е48(М4)
	или	ШБУДИЛ
	зп	ШБУДИЛ
G41547	сч	Е48(М4)
	или	D43153
	нтж	Е48(М4)
	зп	D43153
	сч	Е48(М4)
	или	ШЗПРИМ
	нтж	Е48(М4)
	зп	ШЗПРИМ
	уиа	G41252-О(М2)
G41554	уиа	Е37(М4)
	пб	G40240
G41555	сч	3(М5)
	и	Е48
	пе	G41632
	сч	1(М5)
	уии	М2(М5)
	уи	М5
	сч	4(М5)
	сда	64-16
	и	D43216
	зп	2(М5)
	сч	
	зп	1(М5)
	уиа	'1767'(М11)
	сч	4(М2)
	и	D43244
	сда	64-12
	или	Е5
	или	2(М5)
	зп	2(М5)
	счи	М2
	мода	G42126
	пв	(М17)
	уиа	Е43(М4)
	уиа	'740'(М1)
	сч	D43061
	зп	D43060
	сч	2(М5)
	сда	64-2
	зп	D43063
	пб	G41240
G41574	сч	2(М5)
	сбр	D43263
	сда	64+30
	зп	D43063
	сч	2(М5)
	нтж	D43137
	по	G41612
	сч	2(М5)
	сда	64+42
	по	G41602
	сда	64+5
	нтж	Е1
G41602	зп	2(М5)
	сч	2(М12)
	сда	64+18
	сда	64-18
	или	D43063
	или	2(М5)
	зп	2(М5)
G41606	сда	64-2
	зп	D43063
	сч	(М5)
	и	D43232
	сда	64+8
	или	D43062
	зп	D43060
	пб	(М4)
G41612	сч	П5
	пб	G41602
**********
G41613	сч	Е11
	пв	ГАШЗАН(М15)
	уиа	'1772'(М11)
	уии	М14(М1)
	сли	М14(М3)
	сч	'1772'(М7)
	пе	G42540
	уиа	G41253(М14)
	пб	G42540
**********
G41620	сч	'1772'(М7)
	по	G40740
	сч	3(М5)
	и	Е48
	пе	G41632
	сч	'1772'(М7)
	мода	'1772'(М7)
	уиа	0(М6)
G41624	уи	М4
	пио	G41632(М4)
	сч	2(М4)
	сда	64+12
	нтж	4(М5)
	и	D43244
	по	G41636
	уии	М6(М4)
	сч	(М4)
	пб	G41624
G41631	сч	7(М5)
	зп	1(М5)
G41632	уиа	'740'(М1)
G41633	сч	1(М5)
	пв	G42126(М17)
G41634	уии	М17(М1)
	сли	М17(М3)
G41635	счи	М5
	пб	G42126
G41636	сч	1(М5)
	уи	М2
	мода	G41164
	пв	(М1)
G41640	счи	М2
	пв	G42126(М17)
	уии	М10(М4)
	уии	М12(М5)
	сч	(М6)
	и	Е48П16
	зп	(М6)
	сч	(М4)
	и	П77777
	или	(М6)
	зп	(М6)
	по	G41651
	уиа	G41651-О(М1)
	уиа	G41253(М4)
	мод	(М6)
	уиа	0(М5)
	сч	2(М5)
	пб	G41606
G41651	уии	М4(М10)
	уии	М5(М12)
	сч	(М4)
	зп	(М5)
	и	D43216
	зп	(М4)
	сч	1(М4)
	зп	1(М5)
	счи	М4
	зп	7(М5)
	сч	4(М5)
	зп	1(М4)
	сч	2(М4)
	сда	64+16
	или	(М4)
	зп	(М4)
	сч	2(М4)
	зп	D43135
	сч	5(М5)
	зп	2(М4)
	сч	(М4)
	и	D43232
	по	G41702
	сч	D43064
G41665	зп	2(М5)
	уиа	'1764'(М11)
	уиа	G40740(М14)
	пб	G42540
G41667	мод	7(М5)
	сч	4
	нтж	D43212
	и	D43222
	по	G41702
	сч	D43135
	и	П7
	по	G41701
	нтж	П5
	пе	G41702
	уиа	G41702-О(М2)
G41675	сч	1(М5)
	и	П77777
	сда	64-2
	пв	ТБУФ(М15)
	сч	D43136
	вч	Е1
	зп	D43136
	пб	G41554
G41701	мода	G41105
	пв	(М1)
G41702	сч	6(М5)
	зп	4(М5)
	сч	3(М5)
	и	Е48
	уиа	'740'(М1)
	пе	G41634
	сч	7(М5)
	зп	1(М5)
	сч	
	зп	(М5)
	сч	D43065
	пб	G41665
**********
G41710	мод	1(М5)
	сч	
	сда	64-18
	зп	D43063
	уиа	'1713'(М1)
	пб	G41633
**********
G41713	сч	D43066
	зп	D43060
	уиа	'740'(М1)
	пб	G41253
**********
G41715	уиа	'1766'(М14)
	пв	G40103(М17)
	сч	(М5)
	и	D43234
	по	G41723
	уиа	'2003'
	сч	1(М5)
	увв	'232'
	сч	D43151
	или	(М5)
	или	П3
	увв	'233'
G41723	счи	М5
	мода	G41715
	уиа	0(М17)
	пб	G42226
**********
G41725	сч	D43217
	уи	М5
	пе	G42053
	сч	D43143
	по	G41771
	пв	G42077(М17)
	уи	М5
	уиа	'1771'(М13)
	мод	D43145
	сч	
	зп	(М5)
	и	D43104
	по	G41735
	сч	(М5)
	слц	Е41
	зп	(М5)
G41735	сч	D43143
	и	Е24П1
	зп	1(М5)
	сда	64+15
	и	П777
	зп	2(М5)
	сч	D43143
	и	Е48П42
	или	2(М5)
	зп	2(М5)
	сда	64+41
	уи	М16
G41743	мод	D43145
	сч	4(М2)
	мода	(М5)
	зп	7(М2)
	цикл	G41743(М2)
	сч	(М5)
	мод	ТУС-1(М16)
	зп	9
	уиа	0(М2)
	сч	2(М5)
	уиа	'2003'
	и	П60
	по	G41767
	нтж	Е5
	по	G41756
G41753	сч	D43147
	или	Е48-1(М16)
	зп	D43147
	сч	Е11
	пв	ТАЙМЕР(М15)
G41756	сч	
	мода	(М2)
	зп	D43143
	сч	D43146
	по	G41763
	или	ШГ
	зп	ШГ
	сч	
	зп	D43146
G41763	сч	2(М5)
	и	П37
	нтж	Е5
	по	G42621
	сли	М13(М3)
	нтж	Е2
G41766	по	G42641
	пб	G42535
G41767	сч	ШГ
	или	Е48-1(М16)
	зп	ШГ
	пб	G41756
G41771	сч	D43144
	по	G41773
	зп	D43315
	пб	G42000
G41773	мода	D43265
	уиа	0(М4)
G41774	сч	(М4)
	по	G40050
	зп	D43315
	и	Е20
	слиа	1(М4)
	по	G41774
	нтж	-1(М4)
	зп	-1(М4)
G42000	сбр	НАПРМГ
	сда	64+42
	уи	М4
	сч	ТЗНМД(М4)
	и	П7777
	сда	64-16
	зп	D40032
	пв	G42077(М17)
	уи	М5
	зп	D43217
	сч	D43315
	и	Е48П43
	или	Е1
	зп	2(М5)
	сч	D43315
	и	Е48
	нтж	Е48
	сда	64+39
	или	2(М5)
	зп	2(М5)
	сч	ТЗНМД(М4)
	сда	64+12
	и	П377
	зп	5(М5)
	сч	D40032
	зп	6(М5)
	сч	D43315
	и	Е34П25
	вч	Е27
	сда	64+22
	пв	ПЕРЕВ(М15)
	сбр	D43140
	сда	64+32
	или	6(М5)
	зп	6(М5)
	сч	D43156
	зп	3(М5)
	сч	Е43
	зп	(М5)
	сч	
	зп	D40033
	сч	D43315
	и	Е5
	пе	G42073
	сч	D43315
	и	Е6
	сда	64-4
	зп	D40033
	по	G42034
	сч	D43315
	и	П3
	слц	6(М5)
	зп	6(М5)
	сч	Е41
	зп	(М5)
G42034	сч	D43315
	и	Е18
	сда	64+17
	уи	М6
	сч	D43315
	и	Е12
	сда	64-5
	зп	D40032
	сч	D43315
	сбр	D43215
	сда	64+32
	или	D40032
G42042	зп	1(М5)
	сда	64+8
	мода	D43212
	или	(М6)
	или	D40033
	зп	4(М5)
	и	D40047
	зп	D40032
	сч	D43315
	сда	64+42
	уи	М10
	мод	ТУС-1(М10)
	сч	9
	сда	64-32
	или	D40032
	мод	ТУС-1(М10)
	зп	9
	пв	G42535(М13)
G42053	мода	G42077
	пв	(М17)
	уи	М4
	сч	4(М5)
	и	D40047
	зп	3(М4)
	сч	1(М5)
	зп	1(М4)
	сч	2(М5)
	и	Е48П9
	или	П60
	зп	2(М4)
	уии	М5(М4)
	уиа	'2003'
	слц	Е48
	по	G42070
	или	Е48
	сда	64+42
	уи	М2
	сч	D43315
	и	Е20
	пе	G42070
	сч	ШГ
	или	Е48-1(М2)
	зп	ШГ
G42070	уиа	1(М2)
	уии	М16(М10)
	сч	
	зп	D43217
	уиа	АСБОЙБ(М13)
	пб	G41753
G42073	сч	
	зп	(М5)
	уиа	2(М6)
	сч	Е1
	пб	G42042
G42076	уиа	'50'(М2)
	пб	G40240
G42077	уиа	'2003'
	сч	D40045
	по	G42105
	сч	D40045
	нед	
	уи	М15
	сч	Е48-1(М15)
	нтж	D40045
	зп	D40045
	счи	М15
	сда	64-3
	пб	G42220
G42105	сч	ГУС
	нтж	ТУС+24
	и	Е48П42
	пе	G42114
	мод	D40031
	сч	Е48-1
	или	D43071
	зп	D43071
	мода	G41014
	пв	(М16)
	уиа	Е36(М4)
	уиа	'50'(М2)
	пб	G40240
G42114	уии	М16(М3)
	счи	М17
	зп	И17
	сч	Е36
	мода	G42577
	пв	(М15)
	сч	Е31
	зп	D43067
	мода	G42077
	уиа	0(М15)
G42121	уии	М33(М15)
	сч	ИВ25
	уи	М27
	счрж	'77'
	зп	РК
	уиа	БПУ(М15)
	пб	ТВ16
G42125	уиа	G40210(М17)
	счи	М12
G42126	уиа	'2003'
	зп	D43253
	и	Е16
	пе	G42150
	сч	D43253
	и	П777
	сда	64+3
	уи	М15
	сч	D40045
	или	Е48-1(М15)
	зп	D40045
	уиа	0(М16)
G42134	сли	М16(М3)
	сч	'3071'(М16)
	пе	G42141
	сч	'3067'(М16)
	по	G42147
	или	ШГ
	зп	ШГ
	сч	
	зп	'3067'(М16)
	пб	G42147
G42141	нед	
	уи	М15
	сч	D40030
	или	Е48-1(М15)
	зп	D40030
	сч	'3071'(М16)
	нтж	Е48-1(М15)
	зп	'3071'(М16)
	сч	D40046
	или	Е48-1(М15)
	зп	D40046
G42147	уиа	'3'
	пб	(М17)
G42150	счи	М1
	зп	D43245
	счи	М11
	зп	D43246
	счи	М17
	зп	D43247
	мода	G42156
	уиа	0(М1)
G42154	сч	Е27
	зп	D43077
	пб	G40267
G42156	мода	G42200
	уиа	0(М1)
	сч	D43253
	уи	М16
	сли	М16(М11)
	сч	(М16)
	и	П777
	зп	D43101
	сч	(М16)
	и	D43132
	зп	D43253
	сда	64+9
	уи	М15
	сда	64+9
	пе	G42206
	сли	М15(М11)
G42166	сч	(М15)
	сда	64+9
	сда	64-9
G42170	или	D43101
	зп	(М15)
G42171	сч	D43101
	по	G42176
	уи	М15
	сли	М15(М11)
	сч	ВСЕЕД
	нтж	D43132
	и	(М15)
	или	D43253
	зп	(М15)
G42176	сч	
	зп	(М16)
	зп	ТБЗН(М16)
	пб	(М1)
G42200	мода	G40273
	пв	(М1)
	сч	D43077
	пв	ТБУФ(М15)
	уиа	'3'
	сч	D43245
	уи	М1
	сч	D43246
	уи	М11
	мод	D43247
	пб	
G42206	и	Е2
	пе	G42171
	счи	М15
	и	П777
	слц	D43105
	уи	М15
	сч	(М15)
	и	Е48П16
	или	Е16
	пб	G42170
G42213	сч	D43250
	по	G42221
	нед	
	уи	М15
	сч	Е48-1(М15)
	нтж	D43250
	зп	D43250
	сли	М15(М15)
	слиа	НОММЛ1(М15)
	счи	М15
G42220	слц	D43105
	пб	(М17)
G42221	уиа	'2003'
	сч	D40030
	или	D40031
	зп	D43251
	счи	М1
	зп	D43133
	сч	Е44
	зп	D40030
	уиа	'3'
	пб	G40050
G42226	сда	64+1
	и	П377
	уи	М15
	слиа	-195(М15)
	сч	D43250
	или	Е48-1(М15)
	зп	D43250
	сч	D43251
	по	(М17)
	и	П77
	уи	М15
	нтж	D43251
	уиа	'2003'
	или	Е44
	зп	D40030
	счи	М15
	зп	D40031
	сч	D43133
	уи	М1
	уиа	'3'
	сч	
	зп	D43251
	слиа	-1(М15)
	мода	G40057
	пио	(М15)
	пб	G41253
**********
ВЫЗНЕР	сч	
	пв	ТБУФ(М15)
	уиа	'3'
	сда	64-8
	уи	М2
	сда	64-2
	или	КУС720
	слц	НОММЛ1
	уии	М16(М2)
	пб	ФИЗОБМ
**********
G42250	уиа	АСБОЙБ(М14)
	уиа	G42250-О(М11)
	мода	G40103
	пв	(М17)
	сли	М11(М3)
	сч	1(М5)
	и	Е15П11
	по	G42323
G42254	уиа	-9(М16)
	уиа	0(М15)
G42255	мода	(М7)
	сч	'761'(М16)
	нтж	ВСЕЕД
	пе	G42262
	слиа	48(М15)
	цикл	G42255(М16)
	уиа	G10414-ОН(М4)
	пб	ВЫЗНЕР
G42261	счи	М14
	пб	G42331
G42262	нед	Е3
	уи	М14
	сли	М14(М15)
	счи	М14
G42264	зп	D43100
	сда	64-24
	или	Е18
	зп	D43077
	мода	G40505
	пв	(М15)
G42267	сч	2(М5)
	и	Е9
	по	G42315
	сч	(М5)
	и	Е43Е42
	пе	G42315
	уиа	256(М1)
	сч	(М5)
	сда	64+32
	и	П377
	по	G42275
	уи	М1
G42275	сч	
	пв	ТБУФ(М15)
	уиа	'3'
	сда	64-8
	уи	М10
	сч	1(М5)
	уи	М16
G42301	сч	(М16)
	зп	(М10)
	слиа	1(М16)
	слиа	1(М10)
	слиа	-1(М1)
	мода	G42301
	пино	(М1)
	сч	2(М5)
	нтж	D43137
	пе	G42310
	сч	Е9
	зп	2(М5)
	уиа	G42310-О(М2)
	пб	G41675
**********
G42310	счи	М10
	и	Е15П11
	мода	G40272
	пв	(М1)
	счи	М10
	сда	64-2
	или	Е19
	пв	ТБУФ(М15)
	пб	G42321
**********
G42315	сч	1(М5)
	и	Е15П11
	мода	G40272
	пв	(М1)
	сч	2(М5)
	и	Е9
	по	G42324
G42321	счи	М14
	сда	64-24
	или	1(М5)
	зп	1(М5)
G42323	уиа	'762'(М1)
	пб	G40543
**********
G42324	мода	G41114
	пв	(М1)
G42325	уиа	'762'(М1)
	сч	1(М5)
	сда	64+24
	зп	1(М5)
	по	G42261
	счи	М14
	сда	64-24
	или	1(М5)
G42331	зп	1(М5)
	и	Е15П11
	пе	G42254
	пб	G40543
G42333	сч	D43100
	пб	G42264
G42334	уиа	G10002-ОН(М4)
	сч	ТУС+24
	уи	М3
	счи	М2
	зп	D43252
	пб	ВЫЗНЕР
**********
G42337	сч	D43252
	уи	М2
	уиа	'2003'
	сч	D43311
	или	Е48-1(М1)
	нтж	Е48-1(М1)
	зп	D43311
	уиа	'3'
	пб	'437'(М6)
ВИХ	сч	(М10)
	нтж	D43304
	пе	G42372
G42346	мода	'114'(М7)
	пв	(М14)
	сч	'47'(М7)
	сда	64+39
	и	П37
	нтж	П7
	пе	'127'(М7)
	сч	'47'(М7)
	и	Е48Е47
	зп	D43243
	уиа	'2003'
	сч	'66'(М10)
	или	Е21
	зп	'66'(М10)
	уиа	'3'
	уии	М4(М11)
	мода	G42366
	уиа	0(М12)
	сч	'47'(М7)
	и	D43103
	зп	'47'(М7)
	слиа	7(М11)
	уиа	G42407-О(М14)
G42362	сли	М14(М3)
G42363	счи	М12
	пв	ЗАПВЫХ(М15)
	уиа	
	сч	(М11)
	уиа	'3'
	пб	(М14)
G42366	уиа	'72'(М3)
	пб	'1206'(М7)
G42367	уиа	31(М3)
	пб	'1206'(М7)
G42370	уиа	'44'(М3)
	пб	'1206'(М7)
G42371	уиа	'56'(М3)
	пб	'1206'(М7)
G42372	сч	(М10)
	нтж	D43306
	пе	G42376
	сч	Е48-1(М6)
	уиа	'2003'
	или	D43311
	зп	D43311
	пб	'51'(М7)
G42376	сч	(М10)
	нтж	D43307
	пе	G42401
	сч	D40035
	зп	(М10)
	пб	'51'(М7)
G42401	сч	(М10)
	нтж	D43310
	пе	G42346
	сч	D43311
	по	G42370
	уиа	'2003'
	увв	'200'
	уи	
	сч	
	зп	D40035
	зп	D40036
	пб	'51'(М7)
G42407	сч	'47'(М7)
	и	Е5
	уиа	0(М5)
	пе	G42551
	мода	G42445
	уиа	0(М13)
	сч	'47'(М7)
	и	Е2
	по	G42416
	уиа	'2000'
	сч	2(М4)
	уиа	'3'
	нтж	D43154
	пе	G42370
G42416	сч	'47'(М7)
	и	Е4
	пе	G42434
G42420	уиа	'2000'
	сч	1(М4)
	уиа	'3'
	сда	64(М5)
	уи	М11
	сда	64+20
	и	П17
	по	G42427
	вчоб	
	уи	М17
	сли	М17(М10)
	сч	'26'(М17)
	уи	М17
	сли	М11(М17)
G42427	пио	G42430(М11)
	пв	G42363(М14)
G42430	счи	М11
	мода	G42433
	пино	(М5)
	зп	'1730'(М7)
	уиа	24(М5)
	пб	G42420
G42433	зп	'1731'(М7)
	пб	(М13)
G42434	уиа	'2003'
	сч	D40030
	и	Е46
	по	G42443
	уиа	'2000'
	сч	2(М4)
	уиа	'2003'
	увв	'232'
	уиа	'2000'
	сч	1(М4)
	уиа	'2003'
	или	D43151
	увв	'233'
	пб	'51'(М7)
G42443	сч	Е31
	зп	D43257
	уиа	G42434(М15)
	пб	G42121
G42445  вчоб    '1730'(М7)
        пе      G42371
        слц     Е1
        зп      D43150
G42447	вчоб	D43207
	пе	G42367
	слиа	1024(М11)
	сч	'1731'(М7)
	пе	G42456
	или	'1730'(М7)
	по	G42456
	уиа	G42366(М15)
	счи	М15
	пв	ЗАПВЫХ(М15)
	уиа	
	сч	'24'
	уиа	'3'
G42456	уиа	G42461(М17)
	сч	D43150
	вчоб	Е11
	по	G42077
	уиа	ШКИВ(М14)
	пб	G42362
G42461	уи	М5
	уиа	-4(М15)
G42462	уиа	
	мода	6(М4)
	сч	(М15)
	уиа	'3'
	мода	(М5)
	зп	7(М15)
	цикл	G42462(М15)
	сч	3(М5)
	и	D43260
	зп	3(М5)
	счи	М6
	сда	64-41
	или	Е48
	зп	2(М5)
	сч	'47'(М7)
	и	D43103
	или	2(М5)
	зп	2(М5)
	сч	D43243
	и	Е47
	по	G42476
	сч	D43150
	нтж	Е11
	пе	G42367
G42476	сч	D43150
	сда	64-32
	или	D43243
	зп	(М5)
	и	D43104
	по	G42503
	сч	(М5)
	слц	Е41
	зп	(М5)
G42503	сч	
	зп	D43243
	сч	'47'(М7)
	и	Е5
	пе	G42612
	сч	'47'(М7)
	и	Е2
	пе	G42513
	сч	'47'(М7)
	и	Е3
	пе	G42513
	сч	ГОД
	и	П7
	сда	64-40
	или	3(М5)
	зп	3(М5)
G42513	сч	'1730'(М7)
	или	'1731'(М7)
	по	G42532
	сч	'1731'(М7)
	уи	М11
	сч	D43150
	уи	М14
	уиа	G42520-О(М4)
	пб	G40574
**********
G42520	уи	М15
G42521	зп	1(М5)
	уиа	-1023(М17)
G42522	уиа	
	сч	(М11)
	уиа	'3'
	мода	(М15)
	зп	1023(М17)
	слиа	-1(М14)
	пио	G42534(М14)
	слиа	1(М11)
	цикл	G42522(М17)
	уиа	G42530-О(М4)
	пб	G40574
**********
G42530	уи	М15
	сда	64-24
	или	1(М5)
	пб	G42521
G42532	сч	
	зп	(М5)
	зп	1(М5)
G42534	мода	G42643
	уиа	0(М13)
G42535	уиа	Е42(М4)
	уиа	'1770'(М11)
G42536	мода	G42574
	уиа	0(М14)
G42537	сч	Е11
	пв	ЗАХЗАН(М15)
G42540	мод	D43105
	слиа	0(М11)
G42541	уиа	'3'
	сч	(М11)
	по	G42545
G42543	уи	М11
	сч	(М11)
	и	П77777
	пе	G42543
G42545	счи	М5
	или	(М11)
	зп	(М11)
	сч	(М5)
	и	Е48П17
	зп	(М5)
	пб	(М14)
G42551	сч	'47'(М7)
	и	П17
	уи	М16
	вч	Е3
	по	G42370
	пб	G42554(М16)
G42554	сч	
	пб	G42560
G42555	сч	
	пб	G42560
G42556	сч	
	пб	G42625
G42557	пб	G42564
	конк	в'00100000'
G42560	мода	G42420
	пв	(М13)
	сч	'1730'(М7)
	или	'1731'(М7)
	по	G42370
	пам	0
	уиа	G42461(М17)
	пб	G42077
**********
G42564	уиа	'2000'
	сч	2(М4)
	уиа	'3'
	зп	(М10)
	счи	М6
	сда	64-42
	или	(М10)
	зп	(М10)
	уиа	Е34(М4)
	сч	Е48-1(М6)
	или	D43262
	зп	D43262
	мода	'70'(М7)
	уиа	0(М13)
	пб	G42575
**********
G42574	сч	Е11
	пв	ГАШЗАН(М15)
G42575	сч	(М4)
	уии	М15(М13)
	уии	М16(М3)
	отмен	(М3)
*====================
	употр	ОСА(М16)
G42577	или	D40046
	зп	D40046
G42600	сч	D43106
	пе	(М15)
	сч	ШГ
	или	Е24
	зп	ШГ
	зп	D43106
	сч	ИВ25
	зп	М21М27
	сч	D43261
	зп	D40003
	пб	(М15)
**********
G42606	сч	ТУС-1(М16)
	уи	М16
	сч	D43147
	или	D43254
	зп	D43254
	уиа	НЕТСО(М15)
	пб	G42600
	отмен	(М16)
*====================
	употр	ОСА(М3)
G42612	сч	'47'(М7)
	и	Е2
	пе	G42636
	сч	'1731'(М7)
	сда	64-24
	или	'1730'(М7)
	зп	1(М5)
	сч	'1731'(М7)
	уи	М16
	сч	
	уиа	'2000'
	зп	(М16)
	уиа	'3'
	уиа	'2623'(М13)
G42621	уиа	'1767'(М11)
	уиа	Е43(М4)
	сли	М13(М3)
	пб	G42536
G42623	сч	'47'(М7)
	сда	64+24
	пе	'51'(М7)
	пб	'70'(М7)
G42625	уиа	'2000'
	сч	2(М4)
	уиа	'3'
	нтж	D43154
	пе	G42370
	уиа	24(М5)
	мода	G42420
	пв	(М13)
G42631	по	G42370
	сч	
	зп	'1730'(М7)
	уиа	'2000'
	сч	1(М4)
	уиа	'3'
	и	П77777
	зп	D43150
	по	G42370
	пб	G42447
G42636	сч	'1731'(М7)
	сда	64-16
	или	(М5)
	зп	(М5)
	мода	'70'(М7)
	уиа	0(М13)
G42641	уиа	'1771'(М11)
	уиа	Е41(М4)
	пб	G42536
G42643	сч	'47'(М7)
	и	Е2
	по	'51'(М7)
	пб	G42623
	отмен	(М3)
	употр	ОСА(М16)
G42645	сч	ТУС+24
	уи	М16
G42646	увв	'4230'
	зп	D43076
	и	D43075
	по	БПУ
	нед	
	уи	М17
	сч	Е48-1(М17)
	нтж	ВСЕЕД
	увв	'230'
	мода	(М17)
	пб	'2613'(М16)
G42654	зп	
	пб	G42674
	зп	
	пб	G42674
	зп	
	пб	G42674
	зп	
	пб	G42674
	зп	
	пб	G42674
	зп	
	пб	G42674
	зп	
	пб	G42704
	зп	
	пб	G42674
	зп	
	пб	G42674
	зп	
	пб	G42677
	зп	
	пб	G42674
	зп	
	пб	G42674
	зп	
	пб	G42707
	увв	'214'
	пб	G42674
	зп	
	пб	G42674
	зп	
	пб	G42674
G42674	сч	7
	и	Е44
	пе	G42646
	сч	D43076
	пб	БМВ
	конк	в'73002646'
G42677	сч	D40035
	слц	Е1
	и	П77
	зп	D40035
	увв	'202'
	сч	Е48
G42702	мода	G42646
	уиа	0(М15)
	пб	G42577
G42704	сч	D43221
	слц	Е1
	и	П77
	зп	D43221
	увв	'214'
	пб	G42674
G42707	сч	D43075
	нтж	Е4
	зп	D43075
	увв	'234'
	сч	D43074
	по	G42646
	сч	Е47
	пб	G42702
	отмен	(М16)
	употр	ОСА(М3)
G42713	сч	D43254
	зп	D43106
	по	ВИСП16
	сч	D43254
	и	Е44
	по	G42723
	нтж	D43254
	зп	D43254
	сч	D40046
	или	Е39
	зп	D40046
	сч	D43147
	или	Е44
	нтж	Е44
	зп	D43147
	по	G40050
G42723	уиа	'3'
	уиа	0(М6)
	уиа	G10417-ОН(М4)
	пб	ВЫЗНЕР
**********
G42725	зп	D43043
	и	П3
	сда	64-3
	уи	М6
	сч	D43043
	сда	64+2
	уи	М2
	мода	ТАБЛИЦ
	сч	(М2)
	сда	64(М6)
G42732	и	П377
	пб	(М14)
G42733	зп	D43043
	уиа	'2003'
	и	Е1
	уи	М4
	сч	D43043
	сда	64+1
	зп	РМР
	мод	РМР
	сч	ТАБЛИЦ
	сда	64+32
	мода	G42732
	пио	(М4)
	сда	64+8
	пб	G42732
D42742	пам	1
ТАБЛИЦ  конд    х'f1d60f0f0f0f'
        конд    х'f3f20f0f0f0f'
        конд    х'f5f40f0f0f0f'
        конд    х'f7f60f0f0f0f'
        конд    х'f9f80f0f0f0f'
        конд    х'604e0f0f7d0f'
        конд    х'6b610f0f0f0f'
        конд    х'404b0f0f0f0f'
        конд    х'7cc50f0f0f0f'
        конд    х'5d4d0f0f0f0f'
        конд    х'7e5c0f0f0f0f'
        конд    х'4a5e0f0f0f0f'
        конд    х'5c5a0f0f0f0f'
        конд    х'7d7d0f0f0f0f'
        конд    х'4c7b0f0f0f0f'
        конд    х'7a6e0f0f0f0f'
        конд    х'bac10f0f0f0f'
        конд    х'bfc20f0f0f0f'
        конд    х'c5bc0e170f0f'
        конд    х'faec5b0a121d'
        конд    х'cccb0f0f0f51'
        конд    х'ced20f0f0f0f'
        конд    х'c8d457180f0f'
        конд    х'dcd653161319'
        конд    х'c3d70f0f0c0b'
        конд    х'ebe30f0f0f0f'
        конд    х'e7be0d0f0f0f'
        конд    х'febb501e5a14'
        конд    х'fdfb0f0f0f0f'
        конд    х'eeef0f0f0f0f'
        конд    х'b8fc1c1f0f0f'
        конд    х'c4dd1a151b11'
        конд    х'c7c60f0f0f0f'
        конд    х'd1c90f0f0f0f'
        конд    х'd5d30f0f0f0f'
        конд    х'd9d80f0f0f0f'
        конд    х'e4e20f0f0f0f'
        конд    х'e6e50f0f0f0f'
        конд    х'6de90f0f0f0f'
        конд    х'6e4c0f0f0f0f'
        конд    х'506f0f0f0f0f'
        конд    х'5ffc0f0f0f0f'
        конд    х'7e600f0f0f0f'
        конд    х'5b6c0f0f0f0f'
        конд    х'6de00f0f0f0f'
        конд    х'4f6d0f0f0f0f'
	конд	п'FFЦБ Ю'
	конд	п'FFГФ Д'
	конд	п'FFСВА '
	конд	п'FFGFЕD'
	конд	п'FFИ IН'
	конд	п'FF Л Й'
	конд	п'FFLКJ '
	конд	п'FFРОNМ'
	конд	п'FF  RQ'
	конд	п'FF∨ ЯП'
	конд	п'FFТS |'
	конд	п'FFХWVU'
	конд	п'FFУ ZУ'
	конд	п'FFЫЬ Ж'
	конд	п'FF3210'
	конд	п'FF7654'
	конд	п'=FШЗ98'
	конд	п'FF ЧЩЭ'
D43043	пам	3
D43046	конд	в'0001000374000000'
D43047	конд	в'0000700374000000'
	конд	в'0000114400000020'
	конд	в'0000162000000020'
D43052	конд	в'0000155500000020'
	пам	1
	конд	в'7777777777777760'
	конд	в'7777777777777740'
D43056	конд	в'0000124200000020'
D43057	конд	в'0000540374000000'
D43060	пам	1
D43061	конд	в'0000500374000000'
D43062	конд	в'0000000374000000'
D43063	пам	1
D43064	конд	в'0000166700000000'
D43065	конд	в'0000171000000000'
D43066	конд	в'0000600374000000' 
D43067	пам	1
D43070	пам	1
D43071	пам	1
D43072	пам	1
D43073	пам	1
D43074	пам	1
D43075	конд	в'0000000000177700'
D43076	пам	1
D43077	пам	1
D43100	пам	1
D43101	пам	1
D43102	конд	в'7777740000177777'
D43103	конд	в'0007777777777777'
D43104	конд	в'0017740000000000'
D43105	пам	1
D43106	пам	17
D43127	конд	A(G40546)	возм.
	конд	п'D00000'
D43131	конд	в'7777740000000000'
D43132	конд	в'0000000003777000'
D43133	пам	2
D43135	пам	1
D43136	пам	1
D43137	конд	п'000015'
D43140	конд	п'00    '
ЯЧВСС	пам	2
D43143	пам	1
D43144	пам	1
D43145	пам	1
D43146	пам	1
D43147	пам	1
D43150	пам	1
D43151	пам	1
	конд	п'00000='
D43153	пам	1
D43154	конд	в'4530663646152327'
D43155	конд	п'00ЕСТ0'
D43156	конд	п'00ПАУК'
D43157	конд	в'0000000000000162'
D43160	конд	в'4000004514222000'
D43161	конд	в'0000000000000026'
	конд	в'7777777777600000'
D43163	пам	20
D43207	конд	п'000060'
D43210	конд	п'FFFFF='
	конд	в'0000000000370014'
D43212	конд	в'4160005411026000'
	конд	в'6060005411026000'
	конд	в'6200005411026000'
D43215	конд	в'0000000020370014'
D43216	конд	в'7777777700000000'
D43217	пам	2
D43221	пам	1
D43222	конд	в'0000037777776000'
	конд	в'0000000003770000'
D43224	конд	п'00000Б'
	пам	1
	конд	в'0000000040000000'
	пам	2
D43231	пам	1
D43232	конд	п'700000'
D43233	конд	в'7760000000000000'
D43234	конд	в'0000000360000000'
D43235	пам	1
D43236	пам	1
D43237	конд	в'3777740000000000'
D43240	конд	в'3777777700000000'
D43241	конд	в'3777777000000000'
D43242	конд	в'3600000000000000'
D43243	пам	1
D43244	конд	п'0000 0'
D43245	пам	1
D43246	пам	1
D43247	пам	1
D43250	конд	в'7777777777777777'
D43251	пам	1
D43252	пам	1
D43253	пам	1
D43254	пам	1
D43255	пам	1
D43256	пам	1
D43257	пам	1
D43260	конд	в'3417777777777777'
D43261	конд	п'0000FИ'
D43262	пам	1
D43263	конд	в'7700000000000777'
D43264	пам	1
D43265	пам	9
D43276	конд	п'000008'
	конд	п'00000F'
	конд	п'000010'
	конд	п'000040'
	конд	в'0377777700000000'
	конд	в'3777777000000000'
D43304	конд	п'СКИФЫ '
D43305	пам	1
D43306	конд	п'0СКИФ2'
D43307	конд	п'0СКИФ3'
D43310	конд	п'СКИФГШ'
D43311	пам	1
D43312	пам	2
D43314	пам	1
D43315	пам	1
	ВХОД	ВИХ,ЯЧВСС,D43074,D43100,D43105,G41635,G40221
БОЭК1	ВНЕШ	ЗАПВЫХ
ВЗУ	ВНЕШ	ПОК
ВИСП	ВНЕШ	ВШГП,ВШГ
ДИСКИ	ВНЕШ	П11,Е16П1,НОМСВ
* некоторые внешние, включая Еnn, могут на самом деле быть смещениями
* от ОСА, ОСАНЕР и пр.
ДИСП70	ВНЕШ	ФИЗОБМ,ЗАПВЕТ,ПЕРЕВ,ЗАХЗАН,ГАШЗАН,ТБУФ,ВИСП16
ДИСП70	ВНЕШ	ЗАНПРП,БПУ,ТАЙМЕР,БМВ,АВОСТА,ИВ25
ДИСП70	ВНЕШ	Е24П1,ТСЛ,НЗАД,И17
ДИСП70	ВНЕШ	И15,РМР,РК,СМ,ТУС,ШКИВ,НМБТР,АСБОЙБ
ДИСП70	ВНЕШ	ОБРМБ,СТМГ,ВРЕЗП,Е43Е42
ДИСП70	ВНЕШ	П7,БОБСВЗ,РЯО2,ТБЗН,ТЗНМД,НОММЛ1
ДИСП70	ВНЕШ	П377,П177,П60,П30,П777,П37,П3,Е26Е25
ДИСП70	ВНЕШ	ГУС,Е15П11,ШКСВН,ШГП,ШГ,К2013,П17,Е18П1
ДИСП70	ВНЕШ	П5,НАПРМГ,П1777,П7777,ГОД,П13,П77,Е44П41
ДИСП70	ВНЕШ	ВСЕЕД,Е39П25,ТВ16,Е48П43,Е34П25,Е48П37,П77777
ДИСП70	ВНЕШ	НЕТСО,Е48П16,Е48П9
ДИСП70	ВНЕШ	Е48Е47,Е46Е45
КАЧКА	ВНЕШ	Е48П17
КИТ	ВНЕШ	ТБЛ,Е48П42
МОТТ	ВНЕШ	ШЕСТР,ШБУДИЛ,ШКОРАБ,ШЗПРИМ,ШКВЫД
МОТТ	ВНЕШ	КВ2,КПФШ,ЗПСЕС1,НОМФУН
ОСАНЕР	ВНЕШ	(ОН,ОСАНЕР),G10002,G10665,G10177,G10504
ОСАНЕР	ВНЕШ	G10414,G10417
	ФИНИШ