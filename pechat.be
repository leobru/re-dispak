ПЕЧАТЬ СТАРТ ’10000’
 Б
 Е
 М
 УПОТР ПЕЧАТЬ(М7)
 КОНД В’0’
 КОНД М41В’3’
	пам	24
ТСБОЙ	конд	п'4СБОЙ '
	пам	1
D10034	конд	в'0000000100010001'
D10035	пам	4
	конд	в'4000000000000000'
D10042	пам	3
D10045	конд	в'5000200000000004'
D10046	пам	2
НАЧАЛО	пв	G71045(М15)
НАЧАЦП	уиа	'2003'
	сч	ШКАРУ
	и	Е48П37
	по	КОНЕЦ
	нед	П77777
	уи	М6
	сч	ШКАРУ
	нтж	E48(М6)
	зп	ШКАРУ
	счи	М6
	сда	64-1
	уи	М11
	сли	М11(М7)
	нтж	E2
	уи	М12
	уии	М10(М6)
	сли	М10(М7)
	сч	
	зп	D11171-П(М10)
	зп	D11161-П(М10)
	зп	D11165-П(М10)
	зп	D11163-П(М10)
	зп	D11167-П(М10)
	сч	ШИФРАЦ
	или	E3(М12)
	зп	ШИФРАЦ
	рег	'101'
	сч	ПРЕДЕЛ
	и	E25(М6)
	зп	D11243-П(М10)
	сч	ВРЕМЯ
	вч	D10671-П(М10)
	вчаб	E8
	пе	G10075
	сч	'71263'(М6)
	зп	D10673-П(М10)
	пб	G10075          может хак
	зп	D11243-П(М10)
	пб	G10103
G10075	сч	E3
	увв	'14'(М6)
	сч	E39(М6)
	пв	ТВ67(М15)
	сч	D71104(М6)
	зп	24(М10)
	сч	E1
	пв	ТБУФ(М15)
	сда	64-8
	уи	М1
	зп	D10676-П(М10)
G10103	пам	0
	сч	E37
	зп	D11263-П(М10)
	сч	D11241
	или	D11242
	пе	G10110
	мода	'1400'(М7)
	уиа	0(М5)
	счи	М5
	зп	D11241-П(М10)
	пб	G10112
G10110	сч	E1
	пв	ТБУФ(М15)
	сда	64-8
G10112	уи	М5
	сда	64-2
	или	НОММБ
	или	КУСАЦП-П(М10)
	зп	D11212-П(М10)
G10115	пам	0
	мода	G10127
	уиа	0(М15)
G10116	уиа	'3'
	мода	(М15)
	пио	(М1)
	уиа	'77401'(М16)
G10120	сч	
	мода	(М1)
	зп	'377'(М16)
	мода	G10120
	цикл	(М16)
	зп	'1214'(М11)
	зп	'1215'(М11)
	пб	(М15)
G10124	зп	D10042-П(М10)
	сч	D11263-П(М10)
	зп	D11171-П(М10)
	слц	E1
	зп	D11263-П(М10)
G10127	уиа	-5(М4)
	уии	М2(М5)
	сч	D11263-П(М10)
	и	E3
	по	G10132
	пб	G10232
G10132	уиа	0(М13)
	сч	D11263-П(М10)
	и	П3
	или	D11212-П(М10)
	пв	ФИЗОБМ(М16)
	сч	D11263-П(М10)
	и	П3
	пе	G10141
	сч	(М5)
	и	E31
	по	G10404
	сч	
	зп	D11261-П(М10)
G10141	мода	ВЫБСИМ
	пв	(М16)
	уиа	'3'
	по	G10226
	нтж	П177
	по	G10206
	и	E8
	зп	D10046-П(М10)
	сч	
	зп	D11222-П(М10)
	сч	D10046-П(М10)
	по	G10167
	нтж	D10703-П(М10)
	уи	М13
	пб	G10141
G10151	сч	D11263-П(М10)
	или	E48
	зп	D11263-П(М10)
	сч	ШКАРУ
	и	E24(М6)
	нтж	ШКАРУ
	зп	ШКАРУ
	сч	
	зп	ЗОЧ2(М10)
	пб	G10310
G10156	сч	D71106
	и	D71107(М6)
	по	(М17)
	мода	G71067
	пио	(М6)
	сч	D10046-П(М10)
	и	П17
	уи	М16
	нтж	D10046-П(М10)
	сда	64+1
	уи	М3
	мода	(М16)
	сч	'71116'
	сда	64(М3)
	и	П377
	зп	D10046-П(М10)
	пб	(М17)
G10167	сч	D10703-П(М10)
	вч	E1
	зп	D10046-П(М10)
	вч	П140
	по	G10334
	мода	G10156
	пв	(М17)
G10173	сч	D10046-П(М10)
	мода	'1214'(М11)
	уиа	0(М16)
	уи	М17
	вч	П60
	пе	G10177
	слиа	1(М16)
	уи	М17
G10177	сч	E48(М17)
	или	(М16)
	зп	(М16)
	сч	D10046-П(М10)
	и	П37
	сда	64-3
	уи	М3
	сли	М3(М1)
	сч	D10046-П(М10)
	сда	64+5
	вчоб	E2
	сда	64-4
	зп	D10046-П(М10)
	пб	G10210
G10206	мода	ВЫБСИМ
	пв	(М16)
G10207	вч	E1
	зп	D11222-П(М10)
G10210	мода	G10216
	пио	(М6)
	сч	D71106
	и	D71107(М6)
	по	G10216
	счи	М13
	сда	64+4
	уи	М16
	сли	М16(М3)
	счи	М13
	и	П17
	пб	G10221
G10216	счи	М13
	и	П7
	уи	М16
	сли	М16(М3)
	счи	М13
	сда	64+3
G10221	нтж	П17
	слц	D10046-П(М10)
	уи	М17
	сч	E48(М17)
	или	(М16)
	зп	(М16)
	слиа	1(М13)
	сч	D11222-П(М10)
	по	G10141
	пб	G10207
G10226	сч	E35
	уиа	'2003'
	или	D11263-П(М10)
	зп	D11263-П(М10)
	пб	G10232
G10231	сч	П177
	зп	D10042-П(М10)
G10232	сч	'1214'(М11)
	чед	
	зп	D10046-П(М10)
	сч	'1215'(М11)
	чед	D10046-П(М10)
	сда	64-15
	или	D10042-П(М10)
	зп	D10042-П(М10)
	сч	E34
	уиа	'2003'
	или	D11263-П(М10)
	нтж	E37
	или	E48
	зп	D11263-П(М10)
	сч	ВРЕМЯ
	зп	D10671-П(М10)
	сч	ШКАРУ
	или	E24(М6)
	зп	ШКАРУ
	уиа	'3'
	мода	D11267
	уиа	0(М17)
	счи	М6
	по	G10247
	слиа	13(М17)
G10247	уиа	11(М15)
	счи	М14
G10250	слиа	-1(М15)
	счим	М1(М15)
	мода	G10250
	пино	(М15)
	зп	(М17)
	сч	ВРЕМЯ
	зп	(М17)
	пб	НАЧАЦП
G10254	сч	D10673
	сл	D10674
	зп	D10675
	сч	E7
	пв	ТАЙМЕР(М15)
	пв	ТБУФ13(М16)
	уиа	'2003'
	сч	ШКАРУ
	и	Е24П13
	по	G10273
	сч	D11303
	вчаб	D11320
	вчаб	E10
	пе	G10273
	сч	ШКАРУ
	сда	64-24
	нед	П77777
	уи	М6
	сч	D10673
	сл	D10674
	по	G10271
	нтж	D10675
	пе	G10254
G10271	сч	ШКАРУ
	нтж	E24(М6)
	или	Е36(М6)
	зп	ШКАРУ
G10273	сч	ШКАРУ
	сда	64-12
	и	Е48П37
	пе	G10345
	сч	ШКАРУ
	сда	64-24
	и	Е48П37
G10277	по	G10277
	нед	П77777
	уи	М6
	сч	ШКАРУ
	нтж	E24(М6)
	зп	ШКАРУ
G10302	уиа	-11(М16)
	мода	D11303
	уиа	0(М17)
	счи	М6
	по	G10305
	слиа	13(М17)
G10305	уиа	'3'
	сч	(М17)
G10306	уим	М14(М16)
	мода	G10306
	цикл	(М16)
G10310	пам	0
	сч	D11263-П(М10)
	рзб	D10034
	слц	СТУСТР+7
	зп	СТУСТР+7
	сч	D11263-П(М10)
	и	E47
	по	G10350
	нтж	D11263-П(М10)
	зп	D11263-П(М10)
	сч	D11163-П(М10)
	пе	G10317
	уии	М2(М5)
	уиа	-5(М4)
	пб	G10321
G10317	уи	М2
	мод	D11167-П(М10)
	уиа	0(М4)
G10321	уиа	0(М13)
	сч	E1
	зп	D10042-П(М10)
	сч	D11173-П(М10)
	нтж	D11263-П(М10)
	и	П3
	по	G10327
	сч	D11263-П(М10)
	и	E3
	пе	G10232
	уиа	E25(М15)
	пб	G10330
G10327	уиа	E18(М15)
G10330	сч	D11173-П(М10)
	и	П3
	или	E37
	зп	D11263-П(М10)
	сли	М15(М7)
	пб	G10116
	сч	E1              зачем это
G10334	зп	D10042-П(М10)
	нтж	П37
	нтж	E3
	по	G10124
	нтж	П6
	по	G10231
	нтж	E1
	пе	G10232
	уиа	'3'
	уиа	0(М2)
	уиа	-2(М4)
	сч	ВРЕМЯ
G10342	зп	D10773
	мода	D10775
	вч	2(М4)
	пе	G10722
	слиа	1(М2)
	пб	G10342
G10345	нед	П77777
	уи	М6
	сч	ШКАРУ
	нтж	Е36(М6)
	зп	ШКАРУ
	пб	G10302
G10350	сч	D11263-П(М10)
	и	D10045
	по	G10407
	сч	E48(М6)
	или	E39(М6)
	или	D11243-П(М10)
	пв	ТВ67А(М15)
	уиа	'3'
	счи	М1
	по	G10357
	сда	64-2
	пв	ТБУФ(М15)
G10357	сч	D11233-П(М10)
	по	G10362
	пв	ТБУФ(М15)
	сч	
	зп	D11233-П(М10)
G10362	сч	D11241-П(М10)
	пе	G10364
	сч	D11212-П(М10)
	пв	ТБУФ(М15)
G10364	сч	
	зп	D11241-П(М10)
	сч	E3
	или	E35
	и	D11263-П(М10)
	по	G10424
	сч	ШКПЛАН
	или	E3(М12)
	зп	ШКПЛАН
	сч	D11263-П(М10)
	и	E3
	пе	КОНЕЦ
	сч	ШИФРАЦ
	нтж	E3(М12)
	зп	ШИФРАЦ
G10374	пам	0
	сч	П12
	увв	'14'(М6)
КОНЕЦ	уиа	'2003'
	сч	ШКАРУ
	сда	64-12
	и	Е48П37
	пе	G10345
	сч	ШКАРУ
	и	Е48П37
	пе	НАЧАЦП
	сч	ШКАРУ
	и	Е24П13
	пе	G10254
	пв	ЗАНОСМ(М16)
	сч	E47
	пб	ОТКАЗН
G10404	сч	1(М2)
	зп	D11257-П(М10)
	сч	D11261-П(М10)
	или	D11233-П(М10)
	по	G10413
G10407	сч	D11233-П(М10)
	пе	G11077
	сч	D11261-П(М10)
	по	G11116
	нтж	E7
	нтж	П5
	пе	G10422
	зп	D11261-П(М10)
G10413	пв	ТБУФ(М15)
	сда	64-8
	уи	М14
	сда	64-2
	или	D11001
	слц	НОММЛ1
	зп	D11233-П(М10)
	пв	ЕNQ(М15)
	сч	D11233-П(М10)
	пв	ФИЗОБМ(М16)
	уиа	'3'
	пб	G11003
G10422	сч	D11261-П(М10)
	слц	E1
	зп	D11261-П(М10)
	пб	G11116
G10424	мода	G10374
	уиа	0(М15)
	уиа	ТСБОЙ-П(М16)
	уиа	'2003'
	сч	D11263-П(М10)
	и	E48
	пе	ВЫДСБ1
	слиа	ТНЕТИН-ТСБОЙ(М16)
ВЫДСБ1	сч	ШИФРАЦ
	или	E27(М12)
	зп	ШИФРАЦ
	сч	
	зп	D11265-П(М10)
	счи	М6
	сда	64-8
	или	АЦПУ0
	зп	ТСБОЙ+1
	пб	G71060
ВЫДОПТ	уии	М32(М15)
	сли	М16(М7)
	сч	E23
	пб	ТВ40
ВЫБСИМ	сч	2(М2)
	мода	5(М4)
	сд	ДВБАЙТ
	и	П377
	зп	D10703-П(М10)
	мода	(М16)
	цикл	(М4)
	слиа	1(М2)
	уиа	-5(М4)
	пб	(М16)
G10444	слиа	-10(М16)
	мод	ТУС+1
	уиа	0(М17)
        отмен   (М7)
        употр   ПЕЧАТЬ(М17)
	счи	М3
	уии	М3(М16)
	сли	М16(М17)
	зп	D10700
	сч	D10673-П(М16)
	по	G10452
	слц	П77777
	зп	D10673-П(М16)
	пб	G10463
G10452	сч	E48(М3)
	пв	ТВ67(М15)
	сч	24(М16)
	нтж	D71104(М3)
	по	G10456
	сч	D11263-П(М16)
	или	E47
	зп	D11263-П(М16)
G10456	сч	
	зп	24(М16)
	сч	E34
	или	Е36
	и	D11263-П(М16)
	пе	G10465
G10461	сч	D11263-П(М16)
	и	E37
	по	G10650
G10463	пам	0
	мод	D10700
	уиа	0(М3)
	пб	БМВ
G10465	сч	D11263-П(М16)
	и	E46
	пе	G10461
	увв	'4031'
	и	E24(М3)
	пе	G10463
	сч	D11263-П(М16)
	слц	E42
	зп	D11263-П(М16)
	пб	G10463
G10472	слиа	-1(М16)
	мод	ТУС+1
	уиа	0(М17)
	счи	М3
	уии	М3(М16)
	сли	М16(М17)
	зп	D10700
	сч	24(М16)
	зп	РЭ3
	слц	E1
	зп	24(М16)
	ржа	'3'
	сч	D11263-П(М16)
	и	Е36
	по	G10611
	увв	'4031'
	и	E24(М3)
	по	G10544
	сч	D11263-П(М16)
	или	КСД3
	нтж	КСД3
	зп	D11263-П(М16)
	увв	'4031'
	и	E20(М3)
	по	G10530
	сч	D11263-П(М16)
	или	E30
	зп	D11263-П(М16)
	пб	G10530
G10511	сч	D11263-П(М16)
	нтж	Е36
	зп	D11263-П(М16)
G10513	пам	0
	сч	D11263-П(М16)
	и	E30
	по	G10517
	нтж	D11263-П(М16)
	зп	D11263-П(М16)
	сч	'72276'
	вч	'1322'(М16)
	зп	D11265-П(М16)
G10517	сч	D11265-П(М16)
	нтж	'72276'
	пе	G10521
	зп	D11265-П(М16)
G10521	сч	D10701-П(М16)
	нтж	П177
	пе	G10546
	сч	D11265-П(М16)
	пе	G10550
	зп	D10701-П(М16)
	сч	D11243-П(М16)
	по	G10530
G10525	сч	
	зп	'1245'(М16)
	сч	D11263-П(М16)
	нтж	Е36
	зп	D11263-П(М16)
	пб	G10650
G10530	сч	ПРЕДЕЛ
	и	E47
	по	G10535
	сч	22(М16)
	слц	E1
	зп	22(М16)
	нтж	D71102(М3)
	пе	G10544
	зп	22(М16)
G10535	пам	0
	сч	D10701-П(М16)
	пе	П3(М17)
	сч	ПРЕДЕЛ
	и	E47
	пе	G10511
	сч	22(М16)
	слц	E1
	зп	22(М16)
	нтж	П12
	пе	G10544
	зп	22(М16)
	пб	G10511
G10543	мод	D11224
	уиа	0(М2)
G10544	мод	D10700
	уиа	0(М3)
	пб	БМВ
G10546	сч	D10701-П(М16)
	по	G10544
	вч	E1
	зп	D10701-П(М16)
G10550	сч	D11243-П(М16)
	пе	G10552
	сч	E1
	увв	'14'(М3)
G10552	сч	D11263-П(М16)
	или	Е36
	зп	D11263-П(М16)
 СЧ АЗУ
 СЛЦ Е25
 ЗП АЗУ          КОЛ-ВО СТРОК
	сч	D11265-П(М16)
	слц	E1
	зп	D11265-П(М16)
	сч	D11243-П(М16)
	по	G10544
	мода	G10571
	уиа	0(М15)
G10561	пам	0
	сч	E11
	увв	'70'(М3)
	сда	64+56
G10563	пам	0
	увв	'4070'
	уи	
	зп	'1254'(М16)
	сч	E10
	увв	'70'(М3)
	сда	64+56
	сч	'1254'(М16)
	и	E10(М3)
	по	(М15)
	сч	
	зп	ЗОЧ2(М16)
	пб	G10654
G10571	сч	К2013
	увв	'70'(М3)
	сда	64+56
	мода	G10544
	уиа	0(М15)
	пб	G10563
G10574	слиа	-31(М16)
	мод	ТУС+1
	уиа	0(М17)
	счи	М3
	уии	М3(М16)
	сли	М16(М17)
	зп	D10700
	мода	G10561
	пв	(М15)
	сч	E18(М3)
	пв	ТВ67(М15)
	сч	D11263-П(М16)
	и	E34
	по	G10607
	нтж	D11263-П(М16)
	или	Е36
	зп	D11263-П(М16)
	сч	D10042-П(М16)
	и	П7777
	зп	D10701-П(М16)
G10607	пам	0
	сч	D10701-П(М16)
	зп	ЗОЧ2(М16)
	по	G10525
	пб	G10517
G10611	счи	М2
	зп	D11224
	сч	D11263-П(М16)
	и	E34
	по	G10521
	уиа	0(М2)
	сч	РЭ3
	уи	М15
	вч	П60
	пе	G10620
	слиа	1(М2)
	уи	М15
	вч	П60
	по	G10543
G10620	сч	E48(М15)
	мода	(М3)
	мода	'1214'(М16)
	и	(М2)
	по	G10662
	сч	РЭ3
	и	П37
	сда	64-3
	слц	D10676-П(М16)
	уи	М2
	сч	РЭ3
	сда	64+5
	сда	64-4
	уи	М15
	счи	М1
	зп	РЭ3
	уиа	-7(М1)
	счи	М16
	и	E1
	пе	G10664
G10632	мода	7(М1)
	сч	(М2)
	сда	64(М15)
	увв	'47'(М1)
	уи	
	сч	
	увв	
	мода	G10632
	цикл	(М1)
G10637	пам	0
	мод	РЭ3
	уиа	0(М1)
	мод	D11224
	уиа	0(М2)
	сч	D10042-П(М16)
	вч	E16
	зп	D10042-П(М16)
G10643	пам	0
	зп	D10701-П(М16)
	и	Е24П16
	пе	G10544
	сч	D11263-П(М16)
	нтж	E34
	или	Е36
	зп	D11263-П(М16)
	и	E3
	пе	G10521
G10650	пам	0
	сч	D11263-П(М16)
	нтж	E48
	или	E37
	зп	D11263-П(М16)
	сч	ШКАРУ
	нтж	E24(М3)
	или	Е36(М3)
	зп	ШКАРУ
G10654	мод	D10700
	уиа	0(М3)
	сч	ШЗБУДС
	и	E47
	по	БМВ
	нтж	ШЗБУДС
	зп	ШЗБУДС
	сч	ШГ
	или	E47
	зп	ШГ
	пб	БПУ
G10662	сч	D10042-П(М16)
	мод	D11224
	уиа	0(М2)
	пб	G10643
G10664	мода	7(М1)
	сч	(М2)
	сда	64(М15)
	увв	'57'(М1)
	уи	
	сч	
	увв	
	мода	G10664
	цикл	(М1)
	пб	G10637
D10671	конд	в'0000000077777777'
	конд	в'0000000077777777'
D10673	пам	1
D10674	пам	1
D10675	пам	1
D10676	пам	2
D10700	пам	1
D10701	пам	2
D10703	пам	2
D10705	пам	1
D10706	пам	1
	конд	п'0ЛПОЖЧ'м40в'240'              КОНЕЦ
	конд	п'00ФШУЖ'м40в'246'м32в'247'      УЧТЕ
	конд	п'ОЬЦ0МЙ'м16в'257'             НЫХ ЛИ
	конд	п'ТУПГ00'м8в'266'в'142'        СТОВ
*
*     ПОСЛЕДНИЕ СТРОКИ ВЫДАЧИ
*     -----------------------
ТЕККНЦ НОП
 КОНД П’00БЧРФ’М40В’261’М32В’32’                АЦПУ
 КОНД П’/000ЮГ’М24В’271’М16В’272’             -0  ЭВ
 КОНД П’Н/0000’М16В’300’М8В’301’В’301’        М-0
 КОНД П’11 11 ’                               00.00.
 КОНД П’110000’М24В’32’М16В’142’М8В’32’В’177’ 00*
	конд	м40в'177'м32в'142'м24в'006'м16в'177'м8в'176'в'176'
	пам	1
        отмен   (М17)
        употр   ПЕЧАТЬ(М7)
G10722	сч	D10774
	сда	64-16
	зп	D10774
	счи	М2
	пв	ПЕРЕВ(М15)
	или	D10774
	зп	D10774
	сч	D10773
	уиа	0(М2)
	мода	G10342
	цикл	(М4)
	сч	D10774
	рзб	D11000
	слц	ТВРЕ1
	зп	ТЕККНЦ+3
	сч	D10774
	сда	64-32
	слц	ТВРЕ2
	зп	ТЕККНЦ+4
	уии	М2(М6)
	сч	
	зп	D11261-П(М10)
	зп	D10706
	сч	E31
	зп	D10705
	сч	ГОД
	и	П7
	слц	E1
	сда	64-24
	или	ТНЭВМ
	зп	ТЕККНЦ+2
	счи	М2
	слц	E1
	сда	64-32
	или	ТНАЦП
	зп	ТЕККНЦ+1
	уиа	-12(М16)
G10745	мода	12(М16)
	сч	D10705
	мода	12(М16)
	зп	(М5)
	мода	G10745
	цикл	(М16)
	сч	D11257-П(М10)
	пе	G10753
	уии	М2(М5)
	слиа	4(М2)
	зп	1(М2)
	пб	G10772
G10753	сч	
	зп	D11257-П(М10)
	пв	ТБУФ(М15)
	сда	64-8
	уи	М2
	сда	64-2
	или	D11001
	слц	НОММЛ1
	зп	D11002
	пв	ЕNQ(М15)
	сч	D11002
	пв	ФИЗОБМ(М16)
	уиа	'3'
	сч	ГОД
	и	П7
	уи	М16
	сли	М16(М2)
	сч	
	зп	'1750'(М16)
	сч	D11002
	пв	ФИЗЗП(М16)
	сч	D11002
	пв	DЕQ(М15)
	сч	D11002
	пв	ТБУФ(М15)
	уии	М2(М5)
G10772	уиа	-5(М4)
	пб	G11116
D10773	пам	1
D10774	пам	1
D10775	конд	в'0000000000537440'
	конд	в'0000000000005670'
	конд	п'00000Т'
D11000	конд	в'7777740077777400'
D11001	конд	в'0000063700400000'
D11002	пам	1
G11003	счи	М2
	зп	D11220-П(М10)
	счи	М4
	пб	G11021
	конд	в'0300601403006142'
	конд	м40в'130'м32в'177'м24в'037'м16в'241'м8в'242'в'243'
D11007	пам	1
D11010	пам	1
	конд	м40в'261'м32в'262'м24в'263'м16в'062'м8в'063'в'061'
D11012	конд	в'5560040100200674'
D11013	конд	м40в'275'м32в'042'м24в'014'м16в'001'м8в'301'в'302'
D11014	конд	п'11 11 '
D11015	конд	в'0020071363000401'
D11016	конд	п'.00.00'
	конд	м40в'326'м32в'325'м24в'130'м16в'177'м8в'045'в'143'
G11020	сч	E1
	пб	G11035
G11021	сда	64-15
	или	D11220-П(М10)
	зп	D11220-П(М10)
	сч	D11257-П(М10)
	зп	D10773
	рзб	ПРОБ6
	слц	ЕДИНИЦ
	зп	D11007
	сч	D10773
	сда	64-24
	рзб	ПРОБ6
	слц	ЕДИНИЦ
	зп	D11010
	уиа	0(М2)
	уиа	-2(М4)
	сч	ГОД
	и	П7
	уи	М16
	сда	64-16
	слц	D11235
	зп	D11013
	сли	М16(М14)
	сч	'1761'(М16)
	слц	E1
G11035	зп	'1761'(М16)
	зп	D10035-П(М10)
	и	E13
	пе	G11020
	сч	'1761'(М16)
	пв	ПЕРЕВ(М15)
	сда	64-8
	слц	D11236
	зп	D11012
	сч	ВРЕМЯ
G11042	зп	D10773
	мода	D10775
	вч	2(М4)
	пе	G11045
	слиа	1(М2)
	пб	G11042
G11045	сч	D10774
	сда	64-16
	зп	D10774
	счи	М2
	пв	ПЕРЕВ(М15)
	или	D10774
	зп	D10774
	сч	D10773
	уиа	0(М2)
	мода	G11042
	цикл	(М4)
	сч	D10774
	рзб	D11000
	слц	ТВРЕ1
	зп	D11014
	сч	D10774
	сда	64-32
	слц	D11237
	зп	D11015
	сч	ГОД
	сда	64-13
	рзб	D11203
	слц	D11015
	зп	D11015
	сч	ГОД
	сда	64-19
	рзб	D11204
	слц	D11240
	зп	D11016
	сч	ГОД
	сда	64+16
	и	П17
	сда	64-8
	слц	D11016
	слц	ЕДИНИЦ
	зп	D11016
	уии	М2(М14)
	уиа	-14(М16)
G11071	мода	14(М16)
	сч	G11003
	мода	14(М16)
	зп	(М2)
	мода	G11071
	цикл	(М16)
	уиа	-5(М4)
	сч	D11233-П(М10)
	пв	DЕQ(М15)
	пб	G10422
G11077	сч	(М14)
	по	G11103
	сч	
	зп	(М14)
	уии	М2(М14)
	слиа	1(М2)
	уиа	-5(М4)
	пб	G11116
G11103	сч	D11220-П(М10)
	уи	М2
	сда	64+15
	уи	М4
	сч	D11233-П(М10)
	пв	ЕNQ(М15)
	сч	D11233-П(М10)
	пв	ФИЗОБМ(М16)
	сч	ГОД
	и	П7
	уи	М16
	сли	М16(М14)
	сч	D10035-П(М10)
	зп	'1761'(М16)
	сч	D11233-П(М10)
	пв	ФИЗЗП(М16)
	сч	D11233-П(М10)
	пв	DЕQ(М15)
	сч	D11233-П(М10)
	пв	ТБУФ(М15)
	сч	
	зп	D11233-П(М10)
G11116	мода	G10141
	уиа	0(М15)
	сч	D11161-П(М10)
	зп	D11163-П(М10)
	сч	D11165-П(М10)
	зп	D11167-П(М10)
	сч	D11171-П(М10)
	зп	D11173-П(М10)
	сч	D11263-П(М10)
	зп	D11171-П(М10)
	счи	М2
	зп	D11161-П(М10)
	счи	М4
	зп	D11165-П(М10)
	уиа	0(М13)
	пб	G10116
ТНЕТИН	текст	п'4НЕТ ИНТЕРВ.'
	пам	1
	конд	м40в'217'м32в'010'м24в'361'м16в'217'м8в'050'в'363'
	конд	м40в'217'м32в'110'м24в'365'м16в'217'м8в'150'в'367'
	конд	м40в'217'м32в'210'м24в'371'м16в'204'м8в'350'в'140'
	конд	м40в'206'м32в'030'м24в'153'м16в'204'м8в'270'в'100'
	конд	м40в'214'м32в'130'м24в'174'м16в'204'м8в'330'в'135'
	конд	м40в'205'м32в'310'м24в'176'м16в'205'м8в'350'в'112'
	конд	м40в'205'м32в'250'м24в'134'м16в'207'м8в'370'в'175'
	конд	м40в'207'м32в'270'м24в'114'м16в'206'м8в'350'в'172'
	конд	м40в'214'м32в'030'м24в'272'м16в'214'м8в'050'в'277'
	конд	м40в'213'м32в'310'м24в'305'м16в'216'м8в'310'в'372'
	конд	м40в'214'м32в'270'м24в'314'м16в'215'м8в'050'в'316'
	конд	м40в'215'м32в'110'м24в'310'м16в'215'м8в'150'в'334'
	конд	м40в'215'м32в'170'м24в'303'м16в'216'м8в'070'в'353'
	конд	м40в'213'м32в'350'м24в'347'м16в'213'м8в'270'в'376'
	конд	м40в'217'м32в'270'м24в'375'м16в'216'м8в'370'в'356'
	конд	м40в'217'м32в'310'м24в'270'м16в'215'м8в'330'в'304'
	конд	м40в'214'м32в'150'м24в'307'м16в'214'м8в'230'в'321'
	конд	м40в'215'м32в'070'м24в'325'м16в'215'м8в'210'в'331'
	конд	м40в'216'м32в'050'м24в'344'м16в'216'м8в'130'в'346'
	конд	м40в'216'м32в'230'м24в'155'м16в'204'м8в'310'в'156'
	конд	м40в'206'м32в'250'м24в'120'м16в'205'м8в'330'в'137'
	конд	м40в'206'м32в'010'м24в'176'м16в'206'м8в'310'в'133'
	конд	м40в'206'м32в'250'м24в'140'м16в'206'м8в'330'в'117'
	конд	м40в'207'м32в'370'м24в'175'м16в'206'м8в'370'в'175'
D11161	пам	2
D11163	пам	2
D11165	пам	2
D11167	пам	2
D11171	пам	2
D11173	пам	2
*
ДВБАЙТ НОП .             СДВИГИ ДЛЯ БАЙТОВ
 КОНД М41В’150’
 КОНД М41В’140’
 КОНД М41В’130’
 КОНД М41В’120’
 КОНД М41В’110’
 КОНД М41В’100’
*
D11203	конд	п'00003 '
D11204	конд	п'01 00 '
	пам	1
ЕДИНИЦ	конд	п'111111'
ПРОБ6	конд	п'      '
*
*       КУСЫ ЧТЕНИЯ ВЫХОДНОГО ПОТОКА
КУСАЦП НОП
 КОНД М17В’1’М2В’20’    20 ТРАКТ
 КОНД М17В’1’М2В’22’    22 ТРАКТ
*
D11212	пам	6
D11220	пам	2
D11222	пам	2
D11224	пам	1
	увв	'4100'
	пб	QQ1
	мод	ТУС+1
	пб	G10574-П
ТНАЦП КОНД П’/000ЮГ’М24В’271’М16В’272’
ТНЭВМ КОНД П’Н/0000’М16В’300’М8В’301’В’301’
ТВРЕ1 КОНД П’11 11 ’
ТВРЕ2 КОНД П’110000’М24В’32’М16В’142’М8В’32’В’177’
D11233	пам	2
D11235	конд	м40в'275'м32в'042'м24в'014'м16в'001'м8в'301'в'302'
D11236	конд	п'011110'м40в'267'в'274'
D11237	конд	п'110011'м24в'313'м16в'314'
D11240	конд	п'.00.00'
D11241	пам	1
D11242	пам	1
D11243	пам	6
	конд	п'000041'
	конд	п'00008F'
	пам	4
D11257	пам	2
D11261	пам	2
D11263	пам	2
D11265	пам	2
D11267	пам	4
	пам	8
D11303	пам	1
D11304	пам	12
D11320	пам	1
АЦПУ0 КОНД П’АЦПУ0↑’
П ЭКВ ПЕЧАТЬ
*
 АДРЕС П+’1400’
 ПАМ 256
*
 ВХОД ВЫДОПТ
*
*//////////////////////////////////
*//                              //
*//        В Н Е Ш Н И Е         //
*//                              //
*//////////////////////////////////
*
*
ВЗУ	ВНЕШ	РАЗРЕ,ФИЗОБМ,ФИЗЗП
ДИСКИ	ВНЕШ	DЕQ,ЕNQ
ДИСП70	ВНЕШ	ПЕРЕВ,ЗАНОСМ,ТБУФ13,ТБУФ,ТВ67А,ТВ67,БПУ,ТАЙМЕР
ДИСП70	ВНЕШ	БМВ,ОТКАЗН,ШЗБУДС,РЭ3,ПРЕДЕЛ,ВРЕМЯ,ЗОЧ2,АЗУ
ДИСП70	ВНЕШ	П7,ШКПЛАН,НОММЛ1,НОММБ,ШИФРАЦ,П12,Е48П37,К2013
ДИСП70	ВНЕШ	П377,П177,П140,П60,П37,П3,Е24П13,Е24П16
ДИСП70	ВНЕШ	ШГ,П17,П5,П6,П7777,ГОД,ТВ40,ШКАРУ
ДИСП70	ВНЕШ	ТУС,П77777,КСД3,СТУСТР
МОТТ	ВНЕШ	QQ1
ЗОН676	ВНЕШ	G71045,G71060,G71067,D71102,D71104,D71106,D71107
	ФИНИШ
