	ГБЛВ	&ОТЛ
&ОТЛ УСТВ 1
	aif	(&ОТЛ).a3400
РА	СТАРТ   '73500'
.a3400	anop
РА	СТАРТ   '73400'
	ago	.ak
.ak	anop
	Б
	М
ТАЙМЕР  мода	
	Э65	осгод
	зп	РАБ
	нтж	ГОД
	и	МАСДАТ
	по	G73506
	сч	РАБ
	зп	ГОД
	сч	ЕСМДАТ
	или	РЕЖИМЫ
	зп	РЕЖИМЫ
G73506	мода
	Э65	осврем
	зп	ВРЕМЯ
	сч	ФЛАГОШ
	нтж	ФЛОШИ
	пе	G73526
	сч	РЕЖИМЫ
	и	ЕЭВМ
	пе	G73555
	сч	ЧЖДЕNQ
	по	G73517
	сч	ВРЕМЯ
	вч	ВРЕМЧТ
	по	G73516
	сл	СУТКИ
G73516	вч	ИНТЧТ
	по	G73526
G73517	сч	РЕЖИМЫ
	и	ЕРАЗД
	по	G73525
	сч	РЕЖИМЫ
	и	ЕЖДУВТ
	по	G73525
	сч	ВРЕМЯ
	вч	ВРЕМВТ
	по	G73524
	сл	СУТКИ
G73524	вч	ИНТВТ
	по	G73526
G73525	пб	G73555
G73526	мода
	пв	ЕNQКОН(М12)
	сч	ЧТСЛУЖ
	пв	ОБММД(М14)
	зп	ЧТСЛУЖ
	уиа	(М2)
	сч	ФЛАГОШ
	нтж	ФЛОШИ
	по	G73535
	сч	
	зп	ФЛОШИ
	зп	СЧОШ(М16)
	уиа	1(М2)
G73535	сч	ГОД
	и	В7
	уи	М1
	сч	ВРЕМЯ
	зп	ВРЕМЧТ
	зп	ВРЕМВТ
	сч	Е8(М1)
	и	ДЛЯЭВМ(М16)
	по	G73545
	нтж	ДЛЯЭВМ(М16)
	зп	ДЛЯЭВМ(М16)
	уиа	1(М2)
	сч	ЕОСВО
	или	РЕЖИМЫ
	зп	РЕЖИМЫ
G73545	сч	Е15(М1)
	и	ДЛЯЭВМ(М16)
	по	G73552
	нтж	ДЛЯЭВМ(М16)
	зп	ДЛЯЭВМ(М16)
	уиа	1(М2)
	сч	ЕГТВТА
	или	РЕЖИМЫ
	зп	РЕЖИМЫ
G73552	пио	G73554(М2)
	сч	ЧТСЛУЖ
	пв	ЗАПИСЬ(М14)
G73554	сч	ЧТСЛУЖ
	пв	ОСВЗОН(М14)
G73555	сч	ЕСМДАТ
	или	ЕГТВТА
	и	РЕЖИМЫ
	по	G73561
	сч	ЕЖДУ60
	или	РЕЖИМЫ
	зп	РЕЖИМЫ
G73561	сч	НАЧКТ
	по	G73630
	сч	ВРЕМЯ
	вч	ВРЕМКТ
	по	G73564
	сл	СУТКИ
G73564	вч	МИНУТ5
	пе	G73630
	aif	(&ОТЛ).s1
	сч	РЕЖИМЫ
	и	ЕКОП
	пе	G73630
.s1	anop
	сч	ВРЕМЯ
	зп	ВРЕМКТ
	Э65	ШКРЗ
	или	Е17
	нтж	Е17
	зп	РАЯ(М7)
	сч	
	зп	РАЯ1(М7)
G73573	сч	РАЯ(М7)
	по	G73626
	нед	
	уи	М1
	сч	Е48-1(М1)
	нтж	РАЯ(М7)
	зп	РАЯ(М7)
	Э65	ТУСП-1(М1)
	уи	М2
	Э65	ЯЧКОПИ(М2)
	и	Е45
	по	G73573
	сч	УПРО-1(М1)
	и	Е24П1
	сда	64-1
	зп	РАБ
	Э65	ЯЧВР(М2)
	сда	64+39
	сда	64-16
	зп	РАБ1
	Э65	35(М2)
	сда	64+32
	или	РАБ1
	зп	РАБ1
	Э65	39(М2)
	зп	РАБ4
	сда	64-25
	слц	РАБ4
	сда	64+23
	слц	РАБ1
	зп	РАБ2
	сч	РАБ1
	вч	НАЧКТ
	пе	G73573
	Э65	33(М2)
	сда	64+23
	слц	РАБ2
	сда	64-23
	сда	64+23
	зп	РАБ2
	вч	РАБ
	вч	ИНТКТ
	пе	G73573
	сч	Е48-1(М1)
	или	РАЯ1(М7)
	зп	РАЯ1(М7)
	сч	РАБ2
	сда	64+1
	нтж	УПРО-1(М1)
	и	Е24П1
	нтж	УПРО-1(М1)
	зп	УПРО-1(М1)
	пб	G73573
G73626	сч	РАЯ1(М7)
	по	G73630
	Э50	'144'
G73630	пб	СПАСИБ
СООБЩИ  и       Е7П1
	по	(М15)
	уи	М13
	сч	ЕОСВО
	или	РЕЖИМЫ
	зп	РЕЖИМЫ
	и	ЕЭВМ
	пе	(М15)
	сч	ЧТСЛУЖ
	пв	ОБММД(М14)
	зп	ЧТСЛУЖ
	сч	ГОД
	и	В7
	уи	М17
	счи	М13
	или	ДЛЯЭВМ(М16)
	или	Е8(М17)
	нтж	Е8(М17)
	зп	ДЛЯЭВМ(М16)
	сч	ЧТСЛУЖ
	уии	М14(М15)
	пб	ЗАПОСВ
НОМБОБ  сч	ЕЖДУ60
	или	РЕЖИМЫ
	зп	РЕЖИМЫ
	пб	СПАСИБ
НАВВОД  уиа	ПОВВОД(М17)
G73647	уиа	НЗАРХ(М15)
	пб	ВЫЗНЕР
НАБОП   сч      РАБ
	зп	РАЯ5(М7)
	уиа	ПОБОП(М17)
	пб	G73647
НАКЗ    уиа     ПОКЗ(М17)
	пб	G73647
ПОЭК    сч      РАБ1
	уи	М1
	сда	64+15
	и	Е6П1
	уи	М10
БПЭ	сч	РАБ
	зп	РАЯ(М7)
	зп	ИСОБМ
	слиа    -51(М10)
	пио	G73666(М10)
	слиа    11(М10)
	пио	G74634(М10)
	слиа    -10(М10)
	пио	G75070(М10)
	слиа    -8(М10)
	пио	G75071(М10)
	слиа    15(М10)
	пио	G75067(М10)
	слиа    10(М10)
	пио	G74177(М10)
	пб	ЭКНЕТ
G73666	сда	64+42
	по	G74176
	уи	М10
	вч	В60
	по	G73737
	пио	ОШЭК(М10)
	слиа    -29(М10)
	счи	М10
	слиа    28(М10)
	и	Е15
	по	ОШЭК
	сч	РАЯ(М7)
	и	КОНКАТ+29(М10)
	пе	ОШЭК
	aif	(&ОТЛ).s2
	сч	РЕЖИМЫ
	и	ЕКОП
	по	G73700
	сч	РМР63
	пб	G73702
.s2	anop
G73700	мод	ЗАДАЧИ-1(М7)
	Э65	ТУСП-1
	уи	М16
	Э65	(М16)
G73702	зп	РАЯ1(М7)
	зп	ИСОБМ
	и	КОНКАТ+57(М10)
	пе	ОШЭК
	слиа    1(М1)
	пв	ДАЙШИФ(М17)
	сч	КОНКАТ+1(М10)
	и	Е6П1
	по	G73710
	уи	М15
	пв	ВЫЗНЕР(М17)
G73710	сч	КОНКАТ+1(М10)
	и	Е8
	по	G73713
	сч	ЕТАФ
	пв	ЗАНРЕС(М16)
G73713	сч	КОНКАТ+1(М10)
	и	Е7
	по	G73717
	пв	ЕNQ(М16)
	сч	КОНКАТ+1(М10)
	сда	64-36
	или	Е1
	пв	КОНТРА(М12)
G73717	сч	КОНКАТ+1(М10)
	и	Е9
	пе	G73735
	сч	РАЯ(М7)
	и	Е42П37
	по	G73741
	сда	64+36
	вч	В30
	пе	ЗАПВИР
	вч	Е6
	по	ЗАПВИР
	сч	РАЯ(М7)
	сда	64-6
	пв	ГДЕЛЕН(М17)
	зп	РАЯ2(М7)
	мод	СВЕДМЛ(М16)
	сч	ТАФСС
	зп	РАЯ4(М7)
	пио	МЛНЗК(М6)
G73731	сч	КОНКАТ+1(М10)
	и	Е11
	по	G73735
	сч	РАЯ4(М7)
	пв	ДАЙГКЛ(М13)
	зп	РАЯ3(М7)
	уии	М13(М15)
G73735	сч	РАЯ(М7)
	зп	ИСОБМ
	пб	G74142(М10)
G73737	уиа	НЗНЕР(М15)
	уиа	СПЕЦЭК(М17)
	пб	ВЫЗНЕР
G73741	сч	РАЯ(М7)
	и	Е4П1
	по	G74000
	пв	ДАЙИМП(М6)
	по	G73746
	зп	РАЯ5(М7)
	пио	G74142(М10)
	нтж	Е2
	по	G74007
	пб	НЕТОБЛ
G73746	сч	ПАРДЛ(М15)
	пио	G73765(М10)
	по	G74007
G73750	сч	РАЯ4(М7)
	сда	64-24
	зп	РАЯ4(М7)
	мод	АКТЛМТ
	уиа	(М6)
	пио	G73761(М6)
	мод	ЗГЛМЛ(М6)
	уиа	-1(М16)
	пио	G73761(М16)
G73755	мода    -1(М16)
	мод	СВЕДМЛ(М6)
	сч	ТАФСС
	нтж	РАЯ4(М7)
	и	Е48П25
	по	G73775
	слиа    -2(М16)
	пино    G73755(М16)
G73761	сч	КОНКАТ+1(М10)
	и	Е10
	уиа	(М6)
	пе	МЛНЗК
	сч	РАЯ4(М7)
	пе	G73731
	пб	G73735
G73765	уиа	УЖЕЕ(М13)
	сч	РАЯ4(М7)
ДАЙХИ   и	Е8П1
	сда	64-9
	или	ЕЕ
	или	Е34
	зп	ИСОБМ
	счи	М15
	и	Е15П11
	уи	М16
	сч	ГК+1(М16)
	сда	64-17
	или	ИСОБМ
	уии	М15(М13)
	зп	ИСОБМ
	пб	КОЗАД
G73775	мода    -1(М16)
	сч	СВЕДМЛ(М6)
	зп	РАЯ2(М7)
	мода    -1(М16)
	уиа	(М6)
	пб	G73731
G74000	уиа	(М14)
	пв	ЧТИМЯП(М17)
	сч	ИМЯ(М7)
	зп	РАЯ4(М7)
	пв	ПРССЫЛ(М17)
	сч	РАЯ4(М7)
	сда	64+24
	зп	РАЯ4(М7)
	пб	G73746
МЛНЗК   уиа	НЗКМЛ(М15)
	пб	ОШЗАД
ОШЭК    уиа     ОШЭКСТ(М15)
	пб	ОШЗАД
G74007	сч	КОНКАТ+1(М10)
	и	Е13
	пе	G73750
КТЛОБЛ  уиа	ОБЛКТЛ(М15)
	пб	КОЗАД
НЕТОБЛ  уиа	ОБЛНЕТ(М15)
	пб	КОЗАД
ЗАПВИР  уиа	ОШВИРТ(М15)
	пб	ОШЗАД
КОНТОМ  уиа	НМАРХ(М15)
	пб	КОЗАД
КОНКАТ  уиа	НМКАТ(М15)
	пб	КОЗАД
	конк    в'00000000'
	дк	0,НЗОБР+'4100'
	конк    в'00000000'
	дк	0,НЗНЕР+'16300'
	конд    п'00004F'
	конк    в'00000000'
	дк	0,НЗГИД+'2100'
	конд    п'000040'
	конк    в'00000000'
	дк	0,НЗГИД+'2000'
	конк    в'00000000'
	дк	0,НЗГИД+'12000'
	конк    в'00000000'
	дк	0,НЗОБР+'400'
	конк    в'00000000'
	дк	0,НЗОБР+'400'
	конд    в'0000000000002300'
	конк    в'00000000'
	дк	0,НЗГИД+'12000'
	конд    п'000020'
	конд    п'000020'
	конк    в'00000000'
	дк	0,НЗНЕР+'400'
	конк    в'00000000'
	дк	0,НЗНЕР+'500'
	конк    в'00000000'
	дк	0,НЗНЕР+'4500'
	конк    в'00000000'
	дк	0,НЗНЕР+'500'
	конк    в'00000000'
	дк	0,НЗНЕР+'500'
	конк    в'00000000'
	дк	0,НЗНЕР+'500'
	конк    в'00000000'
	дк	0,НЗНЕР+'400'
	конк    в'00000000'
	дк	0,НЗНЕР+'16100'
	конд    п'00004F'
	конк    в'00000000'
	дк	0,НЗНЕР+'400'
	конд    п'00006F'
	конд    п'00006F'
	конк    в'00000000'
	дк	0,НЗОБР+'4100'
	конд    п'000020'
	конд    в'0'
	конд    в'0077000000007760'
	конд    в'0077000077777760'
	конд    в'0000000000003760'
	конд    в'0000000077777760'
	конд    в'0000000077773760'
	конд    в'0000000077777760'
	конд    в'0000777777777760'
	конд    в'0077777777777740'
	конд    в'0077777777777740'
	конд    в'0000777777773760'
	конд    в'0000777777777760'
	конд    в'0000777770000000'
	конд    в'0000777777777760'
	конд    в'0077777777777777'
	конд    в'0077777700000000'
	конд    в'0077777700000000'
	конд    в'0077777400000000'
	конд    в'0060777777777777'
	конд    в'0077777777777777'
	конд    в'0030000077700000'
	конд    в'0077777777777760'
	конд    в'0000777700003760'
	конд    в'0077777777777777'
	конд    в'0000777717777760'
	конд    в'0000777777777760'
	конд    в'0000777760000000'
	конд    в'0000777777777760'
	конд    в'0000007777777777'
	конд    в'7777777720000000'
	конд    в'7777777777777777'
	конд    в'7777777777777777'
	конд    в'0000000077777774'
	конд    в'7777777777777777'
	конд    в'7777777777700000'
	конд    в'7777777777700000'
	конд    в'0000000077600000'
	конд    в'0000000077600000'
	конд    в'0000000000177777'
	конд    в'7777777777700000'
	конд    в'7777777777777777'
	конд    в'7777777777777777'
	конд    в'0000000077777777'
	конд    в'0000000077777777'
	конд    в'0000000077777777'
	конд    в'0000000077777777'
	конд    в'0000000077777777'
	конд    в'0000000077777777'
	конд    в'0000000077700000'
	конд    в'7777777777777777'
	конд    в'7777777777777777'
	конд    в'0000000007777777'
	конд    в'7777777777777777'
	конд    в'7777777777777777'
	конд    в'7777777777777777'
	конд    в'7777777777777777'
	конд    в'7777777777777777'
G74142	мода
	пв	СОЗД
	уиа	УНОБЛУ(М17)
	пб	ПРОУПР
	уиа	G74201(М10)
	пб	ХОЗПАР
	уиа	ЗАДПОЛ(М10)
	пб	ХОЗПАР
	уиа	ЗАПКПО+2(М10)
	пб	ПРАПАР
	сч	РАЯ(М7)
	пб	ЗАППОЛ
	сч	РАЯ(М7)
	пб	ЗАПСВЕ
	пв	ЗАПКТЛ
	пв	ЗАПКТЛ
	пв	G74232
	пв	ВОПИМЯ
	пв	Э63СДВ
	пв	G74452
	пв	АДМ
	пв	СМАДМ
	пв	СОЗБЮД
	пв	РЕСУРС
	пв	ГРУППА
	пв	УНБЮД
	пв	ВОПБЮД
	уиа	УНОБЛ(М15)
	пб	АДМОБЛ
	уиа	G74454(М15)
	пб	АДМОБЛ
	пв	ШИФР
	пв	G74456
	пв	G74535
	пв	ИЗМДЛ
	пв	G74576
	пв	G74604
G74176	уиа	ОТБАЦ(М17)
	пб	G73647
G74177	зп	РАЯ1(М7)
	уиа	ПРЯТКИ(М17)
	уиа	НЗОБР(М15)
	пб	ВЫЗНЕР
G74201	пио	G74202(М16)
	уиа	-12(М16)
G74202	сч	РАЯ(М7)
	и	Е24П13
	сда	64-12(М16)
	зп	РАБ
	сч	Е36П25
	сда	64(М16)
	и	ПАРДЛ(М13)
	нтж	ПАРДЛ(М13)
	или	РАБ
	зп	ПАРДЛ(М13)
ЗАПКПО  сч	РАЯ3(М7)
	уиа	НОРВЫХ(М14)
	пб	ЗАПОСВ
	пам	0
	сч	РАЯ(М7)
	и	Е12
	нтж	Е12
	сда	64+11
	уи	М1
	мод	АКТЛМТ
	уиа	(М2)
	пио	НОРВЫХ(М2)
	сч	РАЯ(М7)
	и	Е42П37
	пе	G74227
	мод	ЗГЛМЛ(М2)
	уиа	-1(М3)
	пио	НОРВЫХ(М3)
	слиа    1(М2)
G74221	мод	СВЕДМЛ(М2)
	сч	ТАФСС
	нтж	РАЯ4(М7)
	и	Е48П25
	пе	G74225
	сч	Е42(М1)
	или	СВЕДМЛ(М2)
	зп	СВЕДМЛ(М2)
G74225	слиа    -2(М3)
	слиа    2(М2)
	пино    G74221(М3)
	пб	НОРВЫХ
G74227	сли	М6(М2)
	сч	Е42(М1)
	или	СВЕДМЛ(М6)
	зп	СВЕДМЛ(М6)
	пб	НОРВЫХ
G74232	сч	РАЯ1(М7)
	и	Е48П17
	по	ВНЗН
	нед	
	уи	М2
	слиа    23(М2)
	сч	РАЯ1(М7)
	нтж	Е48-24(М2)
	зп	РАЯ1(М7)
	пв	ПРСВОБ(М17)
	пе	G74232
	сч	РАЯ3(М7)
	зп	РАЯ5(М7)
	сч	РАЯ4(М7)
	сда	64+24
	зп	РАЯ4(М7)
	счи	М2
	сда	64-42
	или	РАЯ4(М7)
	зп	РАЯ4(М7)
	уии	М15(М13)
	уии	М6(М15)
	пв	ПРОУПР(М17)
	пе	G74247
	пв	ЧЕЙШИФ(М17)
G74247	зп	РАЯ1(М7)
	по	ПРАНЕТ
	сч	РАЯ(М7)
	и	Е12
	пе	G74253
	сч	РАЯ1(М7)
	и	Е2
	по	ПРАНЕТ
G74253	уии	М11(М15)
	пв	ВТОБЛ(М13)
	пино    G74420(М15)
	Э50	'110'
	пе	НТОМ
	мод	АСВОБ
	уиа	(М3)
	мод	АКТЛМТ
	уиа	(М10)
	пино    G74271(М10)
	уии	М10(М3)
	слиа    -КОНТАФ+3(М3)
	счи	М3
	слиа    КОНТАФ-2(М3)
	и	Е15
	по	ЖДИ
	сч	Е1
	или	Е16
	зп	ЗГЛМЛ(М10)
	сч	
	зп	(М3)
	сч	АСВОБ
	или	АКТЛМТ
	зп	АКТЛМТ
	мод	ЗАДАЧИ-1(М7)
	зп	АКТЛМЛ-1
	счи	М3
	зп	АСВОБ
G74271	сч	ЗГЛМЛ(М10)
	уи	М1
	сли	М1(М10)
	слц	Е2
	зп	ЗГЛМЛ(М10)
	уиа	2(М15)
	пв	ВСТТАФ(М14)
	пе	G74414
	уии	М15(М6)
	сч	РАЯ5(М7)
	пв	ОСВЗОН(М14)
	сч	ПАРДЛ(М15)
	зп	РАЯ5(М7)
	сч	ХОЗ(М15)
	и	Е17
	зп	РАЯ2(М7)
	по	G74307
	сч	ХОЗ(М15)
	и	ШКЭВМ
	пе	G74413
	уиа	(М15)
	сч	ГОД
	и	В7
	Э50	'172'
	пе	G74412
G74307	сч	РАЯ1(М7)
	и	В3
	сда	64-37
	или	РАЯ4(М7)
	зп	РАЯ4(М7)
	сч	РАЯ(М7)
	и	Е12
	нтж	Е12
	сда	64-28
	или	РАЯ4(М7)
	зп	РАЯ4(М7)
	сч	РАЯ5(М7)
	и	Е48П37
	пе	G74320
	сч	Е42
	или	РАЯ4(М7)
	зп	РАЯ4(М7)
G74320	сч	РАЯ5(М7)
	и	Е36П25
	пе	G74323
	сч	Е37
	или	РАЯ4(М7)
	зп	РАЯ4(М7)
G74323	уии	М6(М1)
	сч	РАЯ4(М7)
	пв	ВКЛБОБ(М12)
	по	G74377
	ржа	19
	пе	G74337
	мод	СВЕДМЛ(М6)
	сч	ЧВН
	сда	64+36
	зп	РАБ
	сч	СВЕДМЛ(М6)
	и	Е48П43
	или	РАБ
	уии	М14(М7)
	мод	ЗАДАЧИ-1(М7)
	уиа	(М7)
	Э50	'170'
	Э65	ТУСП-1(М7)
	уи	М16
	Э65	(М16)
	уии	М7(М14)
	пе	G74357
G74337	сч	СВЕДМЛ(М6)
	и	Е48П43
	уии	М14(М7)
	мод	ЗАДАЧИ-1(М7)
	уиа	(М7)
	Э50	'170'
	уии	М7(М14)
	счи	М3
	зп	АСВОБ
	сч	РАЯ2(М7)
	по	G74355
	сч	ЧТКВВ
	пв	ОБММД(М14)
	зп	ЧТКВВ
	уиа	(М12)
	уии	М15(М16)
	сч	РАЯ4(М7)
	пв	ЗАКРИО(М11)
	сч	ЧТКВВ
	пв	ЗАПОСВ(М14)
	пв	ПРОВИО(М17)
	уиа	РАБ1(М15)
	сч	ГОД
	и	В7
	Э50	'172'
G74355	сч	СВЕДМЛ(М6)
	сда	64+42
	пб	ОТВЗАД
G74357	нтж	Е1
	уиа	НТОМ(М10)
	по	G74366
	нтж	В3
	уиа	ОБЛЗ(М10)
	по	G74366
	нтж	В5
	уиа	МНОГО(М10)
	по	G74366
G74364	зп	Х
	счи	М16
* next insn used as data
D74365	пвл	АРХОШ(М16)
	дк	0,ОШ8
G74366	мод	СВЕДМЛ(М6)
	уиа	(М3)
	сч	
	зп	ТАФСС(М3)
	зп	СВЕДМЛ(М6)
	зп	СДВМЛ(М6)
	сч	РАЯ4(М7)
	пв	ДАЙГК(М13)
	зп	РАБ
	сч	ГОД
	и	В7
	уи	М16
	сч	ХОЗ(М15)
	нтж	Е15(М16)
	зп	ХОЗ(М15)
	сч	РАБ
	уиа	G74377+1(М14)
	пб	ЗАПОСВ
G74377	уиа	ЖДИ(М10)
	пам	0
	уиа	(М15)
	сч	РАЯ2(М7)
	по	G74403
	сч	
	Э50	'172'
G74403	мод	АКТЛМТ
	уиа	(М1)
	сч	ЗГЛМЛ(М1)
	и	Е15П1
	зп	РАБ
	вч	Е2
	нтж	РАБ
	нтж	ЗГЛМЛ(М1)
	зп	ЗГЛМЛ(М1)
	мод	ЗГЛМЛ(М1)
	слиа    (М1)
	уиа	2(М15)
	уии	М14(М10)
	пб	ВЫБТАФ
G74412	уиа	ЖДИ(М10)
	пб	G74403
G74413	уиа	ОБЛЗ(М10)
	пб	G74403
G74414	сч	ЗГЛМЛ(М10)
	и	Е15П1
	зп	РАБ
	вч	Е2
	нтж	РАБ
	нтж	ЗГЛМЛ(М10)
	зп	ЗГЛМЛ(М10)
	пб	ЖДИ
G74420	сч	ЕЖДУ60
	или	РЕЖИМЫ
	зп	РЕЖИМЫ
	пб	КОЗАД
ВНЗН    уиа     ВНЗАН(М15)
	пб	КОЗАД
ЖДИ	уиа	ЖДИОБЛ(М15)
	пб	КОЗАД
НТОМ    уиа     НЕТТОМ(М15)
	пб	КОЗАД
МНОГО   дк      '24',БОЛ12(М15)
	дк	'30',КОЗАД
Э63СДВ  мод     АКТЛМТ
	слиа    (М6)
	сч	РАЯ(М7)
	сда	64+4
	зп	РАБ1
	и	Е16П1
	зп	РАБ
	сч	Е17П1
	и	СДВМЛ(М6)
	нтж	СДВМЛ(М6)
	зп	СДВМЛ(М6)
	сда	64+17
	зп	РАБ3
	и	Е16П1
	зп	РАБ2
	сч	РАБ1
	нтж	РАБ3
	и	Е17
	по	G74450
	сч	РАБ
	вч	РАБ2
	по	G74443
	сч	РАБ3
	зп	РАБ1
	сч	РАБ2
	вч	РАБ
G74443	зп	РАБ
	и	Е48П17
	уиа	ОШЭКСТ(М15)
	пе	ОШЗАД
	сч	РАБ1
	и	Е17
	или	РАБ
	или	СДВМЛ(М6)
	зп	СДВМЛ(М6)
	пб	НОРВЫХ
G74450	сч	РАБ
	слц	РАБ2
	пб	G74443
G74452	мод	АКТЛМТ
	сч	СДВМЛ(М6)
	и	Е17П1
	пб	ОТВЗАД
G74454	сч	РАЯ(М7)
	и	Е12
	уи	М16
	пб	G74201
G74456	сч	ШКЕNQ
	мод	ЗАДАЧИ-1(М7)
	и	Е48-1
	пе	G74525
G74460	мод	ЗАДАЧИ-1(М7)
	Э65	ТУСП-1
	уи	М16
	Э65	25(М16)
	и	Е27
	пе	G74525
G74463	уии	М5(М6)
	мод	АКТЛМТ
	слиа    (М5)
	сч	СВЕДМЛ(М5)
	и	Е39
	по	ПРАНЕТ
	сч	РАЯ(М7)
	и	Е24
	зп	РАЯ5(М7)
	сч	ХОЗ(М13)
	и	Е7П1
	по	G74474
	сч	РАЯ5(М7)
	пе	G74513
	сч	ПРИПОЛ(М13)
	и	Е30
	пе	G74513
G74474	сч	ГОД
	и	В7
	уи	М1
	сч	ХОЗ(М13)
	и	Е8(М1)
	зп	РАЯ1(М7)
	сч	Е8(М1)
	или	ХОЗ(М13)
	зп	ХОЗ(М13)
	мод	ЗАДАЧИ-1(М7)
	сч	Е48-1
	или	ШКЕNQ
	зп	ШКЕNQ
	сч	РАЯ5(М7)
	сда	64-6
	или	ПРИПОЛ(М13)
	зп	ПРИПОЛ(М13)
	сч	РАЯ5(М7)
	пе	G74506
	сч	Е23
G74506	или	СВЕДМЛ(М5)
	зп	СВЕДМЛ(М5)
	уи	М1
	сч	ЧВН(М1)
	слц	Е27
	зп	ЧВН(М1)
	сч	РАЯ1(М7)
	пе	НОРВЫХ
	пб	ЗАПКПО
G74513	сч	РАЯ(М7)
	и	Е23
	по	G74516
	уиа	ЗОБЛ(М15)
	пб	КОЗАД
G74516	сч	РАЯ3(М7)
	пв	ОСВЗОН(М14)
	пв	DЕQ(М16)
	сч	Е1
	слц	ЧЖДЕNQ
	зп	ЧЖДЕNQ
	сч	ЕОСВО
	и	РЕЖИМЫ
	нтж	РЕЖИМЫ
	зп	РЕЖИМЫ
	сч	ЕОСВО
	пб	ПАУЗА
G74525	сч	РАЯ(М7)
	и	Е23
	уиа	ЗАПРЭК(М15)
	пе	ОШЗАД
ОБЛЗ    уиа     ЗОБЛ(М15)
	пб	КОЗАД
НОВЕNQ  сч      ЧЖДЕNQ
	вч	Е1
	зп	ЧЖДЕNQ
	пв	ЕNQКОН(М12)
	сч	РАЯ4(М7)
	пв	ДАЙГКЛ(М13)
	зп	РАЯ3(М7)
	уии	М13(М15)
	пб	G74463
G74535	сч	ШКЕNQ
	мод	ЗАДАЧИ-1(М7)
	и	Е48-1
	по	НОРВЫХ
	сч	РАЯ(М7)
	и	Е42П37
	пе	G74551
	мод	АКТЛМТ
	уиа	(М6)
	мод	ЗГЛМЛ(М6)
	уиа	-1(М16)
	пио	G74547(М16)
	слиа    1(М6)
G74544	сч	СВЕДМЛ(М6)
	и	Е24Е23
	пе	G74554
	слиа    2(М6)
	слиа    -2(М16)
	пино    G74544(М16)
G74547	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	дк	0,ОШ9
G74551	мод	АКТЛМТ
	слиа    (М6)
	сч	СВЕДМЛ(М6)
	и	Е24Е23
	по	КЗАХВ1
G74554	мод	СВЕДМЛ(М6)
	сч	ТАФСС
	нтж	РАЯ4(М7)
	и	Е48П25
	пе	КЗАХВ1
	сч	Е24Е23
	и	СВЕДМЛ(М6)
	нтж	СВЕДМЛ(М6)
	зп	СВЕДМЛ(М6)
	уи	М1
	сч	ШКЕNQ
	мод	ЗАДАЧИ-1(М7)
	нтж	Е48-1
	зп	ШКЕNQ
	сч	ЧВН(М1)
	и	Е36П27
	зп	РАБ
	вч	Е27
	нтж	РАБ
	нтж	ЧВН(М1)
	зп	ЧВН(М1)
	и	Е36П27
	пе	НОРВЫХ
	сч	Е30
	и	ПРИПОЛ(М13)
	нтж	ПРИПОЛ(М13)
	зп	ПРИПОЛ(М13)
	сч	ГОД
	и	В7
	уи	М1
	сч	ХОЗ(М13)
	нтж	Е8(М1)
	зп	ХОЗ(М13)
	сч	Е7П1
	уиа	ЗАПКПО(М15)
	пб	СООБЩИ
G74576	мод	АКТЛМТ
	слиа    (М6)
	мод	СВЕДМЛ(М6)
	сч	СЧЭ70
	и	Е16П1
	зп	РАБ
	сч	СВЕДМЛ(М6)
	сда	64-6
	и	Е48П46
	сда	64+29
	или	РАБ
	пб	ОТВЗАД
G74604	сч	РАЯ(М7)
	сда	64+30
	и	Е6П1
	уи	М15
	Э65	НОМАРС+1
	нтж	ЗАДАЧИ-1(М7)
	и	Е6П1
	пе	ОШЭК
	Э65	Ш1М
	и	Е48-1(М15)
	по	ОШЭК
	мод	АКТЛМЛ-1(М15)
	уиа	(М15)
	пио	G74623(М15)
	мод	ЗГЛМЛ(М15)
	уиа	-1(М16)
	пио	G74623(М16)
	слиа    1(М15)
	сч	РАЯ(М7)
	сда	64-6
	зп	РАЯ2(М7)
G74617	сч	СВЕДМЛ(М15)
	нтж	РАЯ2(М7)
	и	Е48П43
	по	G74624
	слиа    2(М15)
	слиа    -2(М16)
	пио	G74617(М16)
G74623	сч	
	пб	ОТВЗАД
G74624	мод	СВЕДМЛ(М15)
	сч	ТАФСС
	зп	РАЯ2(М7)
	рзб	МАСКАЗ
	или	ЧТЗОНА
	пв	ОБМАН(М14)
	сч	ГК+1(М16)
	сда	64-17
	зп	РАЯ3(М7)
	сч	РАЯ2(М7)
	и	Е32П25
	сда	64+15
	или	ЕЕ
	или	Е34
	или	РАЯ3(М7)
	пб	ОТВЗАД
G74634	мода
	пв	ДАЙШИФ(М17)
	слиа    '77673'(М1)
	пио	G74653(М1)
	слиа    -8(М1)
	пио	G74677(М1)
	слиа    -1(М1)
	пио	G74733(М1)
	слиа    -11(М1)
	пио	G74744(М1)
	слиа    8(М1)
	пио	G75033(М1)
	слиа    -6(М1)
	пио	G75053(М1)
	слиа    13(М1)
	пио	G74665(М1)
	слиа    -1(М1)
	пио	G74672(М1)
	слиа    '76705'(М1)
	пио	G74651(М1)
	слиа    '1066'(М1)
	пио	G75011(М1)
	слиа    -3(М1)
	пио	G75052(М1)
	пб	ЭКНЕТ
G74651	уиа	НЗГИД(М15)
	уиа	Э1206(М17)
	пб	ВЫЗНЕР
G74653	сч	РАЯ(М7)
	сда	64-30
	пв	ГДЕЛЕН(М17)
	пио	НОРВЫХ(М6)
	мод	СВЕДМЛ(М16)
	сч	ТАФСС
	сда	64+24
	зп	РАЯ4(М7)
	пв	ОПРГКП(М15)
	сч	РАЯ4(М7)
	и	Е7П1
	зп	РАЯ4(М7)
	счи	М5
	сда	64-8
	или	РАЯ4(М7)
	сда	64-9
	или	Е34
	или	ЕЕ
	пб	ОТВЗАД
G74665	сч	РАЯ(М7)
	сда	64-30
	пв	ГДЕЛЕН(М17)
	пио	НОРВЫХ(М6)
	сч	РАЯ(М7)
	и	Е12П1
	сда	64-4
	зп	РАЯ(М7)
	пб	Э63СДВ
G74672	сч	РАЯ(М7)
	сда	64-30
	пв	ГДЕЛЕН(М17)
	пио	НОРВЫХ(М6)
	сч	СДВМЛ(М16)
	и	Е17П1
	сда	64-24
	пб	ОТВЗАД
G74677	мода
	пв	ЕNQКОН(М12)
	сч	РАЯ(М7)
	зп	РАЯ4(М7)
	уиа	D74731(М15)
	счи	М15
	или	АДРОШ(М7)
	зп	АДРОШ(М7)
	пв	ПРССЫЛ(М17)
	сч	РАЯ4(М7)
	пв	ДАЙГКЛ(М13)
	уии	М13(М15)
	зп	РАЯ3(М7)
	мод	АКТЛМТ
	уиа	(М5)
	пио	МЛНЗК(М5)
	мод	ЗГЛМЛ(М5)
	уиа	-1(М16)
	пио	МЛНЗК(М16)
	слиа    1(М5)
	уиа	1(М6)
	уиа	НЗКМЛ(М15)
G74713	мод	СВЕДМЛ(М5)
	сч	ТАФСС
	нтж	РАЯ4(М7)
	и	Е48П25
	по	G74721
G74716	слиа    2(М5)
	слиа    2(М6)
	слиа    -2(М16)
	пино    G74713(М16)
	пб	ОШЗАД
G74721	сч	СВЕДМЛ(М5)
	и	Е24
	пе	НОРВЫХ
	уиа	ЗАПРЭК(М15)
	сч	ШКЕNQ
	мод	ЗАДАЧИ-1(М7)
	и	Е48-1
	пе	G74716
	сч	Е24
	зп	РАЯ(М7)
	сч	СВЕДМЛ(М5)
	и	Е48П43
	сда	64+6
	или	РАЯ(М7)
	зп	РАЯ(М7)
	пб	G74460
* next insn used as data
D74731	пио	НОРВЫХ(М15)
КЗАХВ1  уиа	ЗАПРЭК(М15)
	пб	ОШЗАД
G74733	мода
	пв	ЕNQКОН(М12)
	сч	РАЯ(М7)
	зп	РАЯ4(М7)
	уиа	D74731(М15)
	счи	М15
	или	АДРОШ(М7)
	зп	АДРОШ(М7)
	пв	ПРССЫЛ(М17)
	сч	РАЯ4(М7)
	пв	ДАЙГКЛ(М13)
	уии	М13(М15)
	зп	РАЯ3(М7)
	сч	
	зп	РАЯ(М7)
	пб	G74535
G74744	уиа	D74764(М15)
	счи	М15
	или	АДРОШ(М7)
	зп	АДРОШ(М7)
	сч	ЕТАФ
	пв	ЗАНРЕС(М16)
	пв	ЕNQКОН(М12)
	сч	РАЯ(М7)
	или	Е17
	нтж	Е17
	зп	РАЯ4(М7)
	пв	ПРССЫЛ(М17)
	сч	РАЯ(М7)
	сда	64+42
	уи	М16
	сч	Е48-24(М16)
	и	Е48П17
	по	ЗАПВИР
	зп	РАЯ1(М7)
	сч	РАЯ(М7)
	сда	64+5
	и	Е12
	зп	РАЯ(М7)
	сч	РАЯ4(М7)
	пв	ДАЙГКЛ(М13)
	зп	РАЯ3(М7)
	уии	М13(М15)
	пб	G74232
* next insn used as data
D74764	уии	М16(М15)
	пино    G75005(М17)
	пио	G75010(М16)
	уиа	5(М15)
	слиа    -ОШИМЯО(М16)
	пио	G75010(М16)
	слиа    ОШИМЯО-ОБЛНЕТ(М16)
	пио	G75010(М16)
	слиа    ОБЛНЕТ-ОБЛКТЛ(М16)
	пио	G75010(М16)
	слиа    ОБЛКТЛ-ОШШИФР(М16)
	пио	G75010(М16)
	уиа	2(М15)
	слиа    ОШШИФР-ЗОБЛ(М16)
	пио	G75010(М16)
	уиа	1(М15)
	слиа    ЗОБЛ-НЕТТОМ(М16)
	пио	G75010(М16)
	слиа    НЕТТОМ-ЖДИОБЛ(М16)
	пио	G75010(М16)
	уиа	ЧУЖИНФ(М15)
	слиа    ЖДИОБЛ-НЕТПРА(М16)
	пио	ОШЗАД(М16)
	уиа	3(М15)
	слиа    НЕТПРА-ВНЗАН(М16)
	пио	G75010(М16)
	уиа	7(М15)
	слиа    ВНЗАН-БОЛ12(М16)
	пио	G75010(М16)
	пам	0
	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	дк	0,ОШ8
G75005	уиа	6(М15)
	слиа    -ОШВИРТ(М16)
	пио	G75010(М16)
	уии	М15(М16)
	слиа    ОШВИРТ(М15)
	пб	ОШЗАД
G75010	счи	М15
	пб	ОТВЗАД
G75011	мода
	пв	ЕNQКОН(М12)
	уиа	G75011+16(М15)
	счи	М15
	или	АДРОШ(М7)
	зп	АДРОШ(М7)
	сч	РАЯ(М7)
	зп	РАЯ4(М7)
	и	Е48П37
	сда	64+12
	зп	РАЯ(М7)
	пв	ПРССЫЛ(М17)
	сч	РАЯ4(М7)
	пв	ДАЙГКЛ(М13)
	зп	РАЯ3(М7)
	уии	М13(М15)
	мод	ЗАДАЧИ-1(М7)
	Э65	ТУСП-1
	уи	М16
	Э65	9(М16)
	зп	РАБ
	и	Е15
	сда	64+3
	зп	РАБ1
	сч	РАБ
	и	Е12П1
	сда	64-12
	или	РАБ1
	или	РАЯ(М7)
	зп	РАЯ(М7)
	уиа	G74201(М10)
	пб	ХОЗПАР
	счи	М15
	по	ОТВЗАД
	уиа	ЧУЖИНФ(М15)
	пб	ОШЗАД
G75033	уиа	G75033+14(М15)
	счи	М15
	или	АДРОШ(М7)
	зп	АДРОШ(М7)
	сч	РАЯ(М7)
	зп	РАЯ4(М7)
	пв	ПРССЫЛ(М17)
	сч	РАЯ4(М7)
	пв	ДАЙГКЛ(М13)
	уии	М13(М15)
	мод	ЗАДАЧИ-1(М7)
	Э65	ТУСП-1
	уи	М16
	Э65	9(М16)
	зп	РАБ
	и	Е15
	сда	64+3
	зп	РАЯ(М7)
	сч	РАБ
	и	Е12П1
	сда	64-24
	или	РАЯ(М7)
	зп	РАЯ(М7)
	уиа	ЗАПКПО+2(М10)
	пб	ПРАПАР
	пам	0
	пио	КОЗАД(М15)
	пб	НПАРОЛ
G75052	пб	ЭКНЕТ
G75053	уиа	G75065+1(М16)
	счи	М16
	или	АДРОШ(М7)
	зп	АДРОШ(М7)
	сч	РАЯ(М7)
	зп	РАЯ4(М7)
	пв	ПРССЫЛ(М17)
	сч	РАЯ4(М7)
	пв	ДАЙГКЛ(М13)
	уиа	(М16)
	сч	ПАРДЛ(М15)
	и	Е48П37
	по	G75063
	слиа    1(М16)
G75063	сч	ПАРДЛ(М15)
	и	Е36П25
	по	G75065
	слиа    2(М16)
G75065	счи	М16
	пб	ОТВЗАД
	пио	КОЗАД(М15)
	пб	ОШЭК
G75067	уиа	Э53(М17)
	пб	G73647
G75070	уиа	Э62(М17)
	пб	G73647
G75071	уиа	Э72(М17)
	пб	G73647
ЭКНЕТ   уиа	СНЯПОЛ(М15)
	пб	ОШЗАД
ВТВЫТ   сч      РЕЖИМЫ
	и	ЕСМДАТ
	по	G75101
	нтж	РЕЖИМЫ
	зп	РЕЖИМЫ
	сч	СРОКХР
	по	G75101
	уиа	НЗАРХ(М15)
	уиа	РСМДАТ(М17)
	пб	ВЫЗНЕР
ВТВЫТ1  мода	
	пв	ВЫХНЕР(М16)
G75101	мода
	пв	ЕNQКОН(М12)
	сч	ЧТТВТ
	пв	ОБММД(М14)
	зп	ЧТТВТ
	мода    НВТ(М16)
	уиа	(М2)
G75105	сч	ВТТОМ(М2)
	и	Е48П37
	по	G75134
	сч	СВЕВТ(М2)
	сда	64+16
	и	Е4П1
	пе	G75134
	сч	ВТТОМ(М2)
	и	Е32
	по	G75134
	сч	ВТТОМ(М2)
	сда	64+36
	или	ДЗКВТО
	уиа	32(М7)
	Э50	'170'
	уиа	НКАН60(М7)
	пе	G75134
	сч	ЧТВТОР
	пв	ОБМАН(М14)
	уии	М3(М16)
	уиа	НКЛЮ(М1)
	сч	КЛЮВ(М3)
	нтж	КЛКОБ
	пе	G75125
	уиа	ДРВЛАД(М1)
	сч	ВЛАМАШ(М3)
	нтж	ВЛЭВМ
	пе	G75125
	сч	ВЛАМАШ+1(М3)
	нтж	ВЛЭВМ+1
	по	G75267
G75125	сч	Е32
	нтж	ВТТОМ(М2)
	зп	ВТТОМ(М2)
	сда	64+36
	пв	ИЗ8В10(М15)
	сда	64-16
	или	ПОДТОМ
	зп	1(М1)
	Э71	ИСОПТТ
	Э71	ИСОПТТ
	сч	ЧТВТОР
	пв	ГАШНУ(М14)
G75134	слиа    LВТ(М2)
	счи	М2
	и	Е10П1
	пе	G75105
	сч	ЧТТВТ
	пв	ОСВЗОН(М14)
	пв	DЕQ(М16)
	сч	РЕЖИМЫ
	и	ЕГТВТА
	по	G75262
	уиа	НЗАРХ(М15)
	пв	ВЫЗНЕР(М17)
	пв	ЕNQКОН(М12)
	уиа	(М12)
	сч	ЧТКВВ
	пв	ОБММД(М14)
	зп	ЧТКВВ
	уии	М1(М16)
	уии	М2(М16)
	пв	ЧИСТВВ(М13)
	сч	ЧТБК
	пв	ОСВЗОН(М14)
	пв	ВЫХНЕР(М16)
	уиа	'77602'(М3)
	слиа    8(М2)
G75153	сч	ВРЕВВ(М2)
	и	Е6П1
	по	G75255
	уи	М4
	сч	ШКОВВ(М2)
	и	Е48П25
	по	G75255
	уиа	(М10)
	сч	КВВОД+7(М2)
	сда	64+6
	и	Е10П1
	или	ЧТЗОНС
	пв	ОБММД(М14)
	зп	РАЯ(М7)
	уии	М5(М16)
	мода    ИМЕНА(М16)
	уиа	(М6)
G75164	сч	МАСВВ(М6)
	и	Е48П43
	по	G75236
	сч	МАСВВ(М6)
	и	Е18
	по	G75235
	счи	М4
	сда	64+1
	уи	М11
	счмр
	уиа	24(М17)
	пе	G75173
	уиа	(М17)
	слиа    -1(М11)
G75173	сли	М11(М2)
	сч	КВВОД(М11)
	сда	64(М17)
	и	МАССС
	по	G75235
	пв	ДАЙГКО(М13)
	сч	БОББЮД(М15)
	и	Е12П1
	по	G75235
	уиа	1(М10)
	зп	РАЯ1(М7)
	сч	Е48-1(М4)
	и	ШКОВВ(М2)
	нтж	ШКОВВ(М2)
	зп	ШКОВВ(М2)
	сч	Е18
	и	МАСВВ(М6)
	нтж	МАСВВ(М6)
	зп	МАСВВ(М6)
	уиа	-1(М16)
G75205	мода    (М5)
	сч	ЯЧМЛ+1(М16)
	уиа	-5(М17)
	сда	64-2
G75207	зп	РАБ
	нтж	МАСВВ(М6)
	и	Е48П43
	по	G75215
	сч	РАБ
	сда	64-8
	цикл    G75207(М17)
	цикл    G75205(М16)
	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	дк	0,ОШ10
G75215	уиа	1(М14)
	слиа    2(М17)
	счи	М17
	и	Е15
	по	G75221
	слиа    3(М17)
	уиа	(М14)
G75221	мода    1(М16)
	мода    1(М16)
	слиа    (М14)
	слиа    -2(М17)
	счи	М17
	сда	64-4
	уи	М15
	сч	Е16П1
	нтж	Е15
	сда	64(М15)
	зп	РАБ1
	сч	РАЯ1(М7)
	или	Е16
	или	Е14
	или	Е13
	сда	64(М15)
	зп	РАБ
	мода    (М14)
	сч	МАСВВ+3(М5)
	или	РАБ1
	нтж	РАБ1
	или	РАБ
	мода    (М14)
	зп	МАСВВ+3(М5)
G75235	слиа    -1(М4)
	пио	G75241(М4)
G75236	сч	МАСВВ(М6)
	сда	64+24
	и	Е6П1
	уи	М16
	сли	М6(М16)
	пб	G75164
G75241	пио	G75243(М10)
	сч	ЧТКВВ
	пв	ЗАПИСЬ(М14)
G75243	уии	М15(М5)
	счи	М2
	сда	64+3
	и	Е7П1
	уи	М14
	сч	ШКОВВ(М2)
	или	Е12П1
	нтж	Е12П1
	пе	G75251
	сч	ЕВКЛ
	пб	Т62132
G75251	и	Е48П25
	по	Т62132
	уиа	1(М12)
	сч	
Т62132	мода
	Э62	'132'
	сч	РАЯ(М7)
	пв	ОСВЗОН(М14)
G75255	слиа    8(М2)
	цикл    G75153(М3)
	сч	РЕЖИМЫ
	или	ЕЖДУВТ
	пино    G75260(М12)
	нтж	ЕЖДУВТ
G75260	зп	РЕЖИМЫ
	сч	ВРЕМЯ
	зп	ВРЕМВТ
G75262	мода
	пв	ОСВВСЕ(М6)
	пв	DЕQ(М16)
	сч	ЕЖДУ60
	и	РЕЖИМЫ
	нтж	РЕЖИМЫ
	зп	РЕЖИМЫ
	сч	ЕЖДУ60
	пб	ПАУЗА
G75267	сч	ВТТОМ(М2)
	или	Е32
	нтж	Е32
	зп	ВТТОМ(М2)
	зп	ПВТТОМ
	сч	ЗГЛВТО(М3)
	зп	ПЗГЛВТ
	сч	РАЗМЕР(М3)
	зп	ПРАЗМ
	сч	ГОД
	и	В7
	сда	64-17
	или	СВЕВТ(М2)
	зп	СВЕВТ(М2)
	зп	ПСВЕВТ
	сч	ЧТТВТ
	пв	ЗАПОСВ(М14)
	пв	DЕQ(М16)
	сч	ПСВЕВТ
	и	Е24
	по	G75305
	уиа	НЗГИД(М15)
	уиа	ЧИСТКА(М17)
	пб	ВЫЗНЕР
ГТЧИСТ  мода	
	пв	ВЫХНЕР(М16)
G75305	сч	
G75306	или	ЧТВТОР
	пв	ОБММД(М14)
	зп	РАЯ5(М7)
	мода    НКОБ(М16)
	уиа	(М10)
	уиа	'200'(М11)
G75311	сч	ССЫЛКА(М10)
	по	G75321
	и	Е8
	пе	G75321
	сч	ССЫЛКА(М10)
	и	МАССС
	пв	ДГКП(М15)
	пв	ДАЙГКО(М13)
	сч	БОББЮД(М15)
	сда	64-24
	нтж	ПЗГЛВТ
	и	Е48П37
	по	G75321
	пв	ВВОВ(М12)
G75321	слиа    LКОБ(М10)
	счи	М10
	и	Е10П1
	пе	G75311
	сч	РАЯ5(М7)
	пв	ОСВЗОН(М14)
	сч	ЗГЛВТО-'2000'(М10)
	и	Е17
	пе	G75327
	сч	РАЯ5(М7)
	слц	Е1
	пб	G75306
G75327	мода
	пв	ЕNQКОН(М12)
	сч	ЧТГК
G75331	или	ЧТЗОНА
	пв	ОБММД(М14)
	зп	РАЯ(М7)
	сбр	МАСКАЗ
	сда	64+24
	зп	РАЯ4(М7)
	мода    ДГК(М16)
	уиа	(М1)
	сч	ГК+1(М16)
	уи	М5
	пе	G75341
	пам	0
	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	дк	0,ОШ7
G75341	уиа	-2(М2)
G75342	сч	ХОЗ(М1)
	по	G75527
	нтж	ПСВЕВТ
	и	Е23П21
	пе	G75527
	сч	ПАРДЛ(М1)
	и	Е24П22
	пе	G75527
	сч	ДАТЫ(М1)
	и	Е16
	пе	G75527
	сч	ДАТЫ(М1)
	и	Е17
	пе	G75563
	сч	ДАТЫ(М1)
	и	Е18
	по	G75527
	сч	БОББЮД(М1)
	и	Е24П13
	пе	G75527
	сч	ХОЗ(М1)
	и	Е19
	по	G75527
	сч	БОББЮД(М1)
	и	Е12П1
	пе	G75361
	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	дк	0,ОШ9999
G75361	или	ДЗКПЕР
	уиа	32(М7)
	Э50	'170'
	уиа	НКАН60(М7)
	пе	G75527
	сч	ПАРДЛ(М1)
	и	Е16П1
	пв	ВВМВ(М17)
	ржа	11
	по	G75526
	зп	РАЯ1(М7)
	сч	ГОД
	и	В7
	сда	64-21
	или	ПАРДЛ(М1)
	зп	ПАРДЛ(М1)
	сч	РАЯ(М7)
	пв	ЗАПОСВ(М14)
	пв	DЕQ(М16)
	уиа	(М11)
	сч	
	зп	РАЯ2(М7)
	сч	ЧТВТОР
G75376	мода
	пв	ОБММД(М14)
	зп	РАЯ5(М7)
	мода    НКОБ(М16)
	уиа	(М10)
G75401	сч	ССЫЛКА(М10)
	по	G75415
	и	Е8
	по	G75421
	сч	ССЫЛКА(М10)
	нтж	РАЯ4(М7)
	и	Е7П1
	пе	G75410
	счи	М5
	сда	64-8
	нтж	ССЫЛКА(М10)
	и	Е24П9
	по	G75411
G75410	сч	РАЯ1(М7)
	по	G75421
G75411	сч	ПАРОЛИ(М10)
	и	Е16П1
	вчоб    РАЯ1(М7)
	по	G75414
	сч	
G75414	зп	РАЯ1(М7)
	пв	ВВОВ(М12)
G75415	сч	РАЯ2(М7)
	пе	G75421
	сч	РАЯ5(М7)
	сбр	МАСКАЗ
	зп	РАЯ2(М7)
	счи	М10
	или	РАЯ2(М7)
	зп	РАЯ2(М7)
G75421	слиа    LКОБ(М10)
	счи	М10
	и	Е10П1
	пе	G75401
	сч	РАЯ5(М7)
	пв	ОСВЗОН(М14)
	сч	ЗГЛВТО-'2000'(М10)
	и	Е17
	пе	G75427
	сч	РАЯ5(М7)
	слц	Е1
	пб	G75376
G75427	сч	РАЯ2(М7)
	пе	G75444
	сч	РАЯ5(М7)
	сбр	МАСКАЗ
	слц	Е33
	сда	64+16
	нтж	ПРАЗМ
	и	Е32П17
	по	G75515
	сч	РАЯ5(М7)
	пв	ОБММД(М14)
	зп	РАЯ5(М7)
	сч	Е17
	нтж	ЗГЛВТО(М16)
	зп	ЗГЛВТО(М16)
	сч	РАЯ5(М7)
	пв	ЗАПОСВ(М14)
	сч	РАЯ5(М7)
	слц	Е1
	сбр	МАСКАЗ
	зп	РАЯ2(М7)
	уиа	НКОБ(М16)
	счи	М16
	или	РАЯ2(М7)
	зп	РАЯ2(М7)
G75444	сч	РАЯ2(М7)
	зп	РАЯ1(М7)
	и	Е10П1
	уи	М12
	сч	РАЯ2(М7)
	рзб	МАСКАЗ
	или	ЧТВТОР
	пв	ОБММД(М14)
	зп	РАЯ5(М7)
	сли	М12(М16)
	пв	ВВЗВ(М10)
	сч	РАЯ4(М7)
	и	МАССС
	зп	РАЯ4(М7)
	пв	ВВПВ(М6)
	пе	G75676
	пв	ЕNQ(М16)
	сч	Е48
	пв	КОНТРА(М12)
	сч	РАЯ4(М7)
	пв	ДАЙГК(М13)
	зп	РАЯ5(М7)
	сч	ПАРДЛ(М15)
	и	Е24П22
	по	G75664
	уии	М3(М15)
	сч	РАЯ5(М7)
	пв	ЗАПБУЗ(М13)
	уии	М15(М3)
	сч	ПВТТОМ
	и	Е48П37
	сда	64+24
	или	БОББЮД(М15)
	зп	БОББЮД(М15)
	сч	РАЯ1(М7)
	и	Е48П33
	сда	64+26
	или	ДАТЫ(М15)
	зп	ДАТЫ(М15)
	сч	РАЯ1(М7)
	и	Е10П1
	сда	64+4
	или	ДАТЫ(М15)
	зп	ДАТЫ(М15)
	сч	РАЯ5(М7)
	пв	ЗАПОСВ(М14)
	сч	РАЯ4(М7)
	сда	64-24
	уиа	НЗНЕР(М15)
	уиа	ВВОА(М17)
	пв	МОНСТР(М16)
	сч	
	пв	КОНТРА(М12)
	пв	DЕQ(М16)
	сч	РАЯ1(М7)
	рзб	МАСКАЗ
	или	ЧТВТОР
	пв	ОБММД(М14)
	зп	РАЯ1(М7)
	сч	НОВО(М16)
	сда	64-4
	и	Е10П1
	уи	М3
	сли	М3(М16)
	сч	ГОД
	сбр	МАСДАТ
	сда	64+24
	или	ВРЕК(М3)
	зп	ВРЕК(М3)
	сч	ВРЕМЯ
	сда	64+14
	или	ВРЕК(М3)
	зп	ВРЕК(М3)
	сч	
	зп	НОВО(М16)
	сч	РАЯ1(М7)
	пв	ЗАПОСВ(М14)
G75515	мода
	пв	ЕNQКОН(М12)
G75516	сч	РАЯ4(М7)
	пв	ДАЙГК(М13)
	зп	РАЯ(М7)
	уии	М1(М15)
	сч	ПАРДЛ(М15)
	и	Е24П22
	пе	G75524
	пам	0
	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	дк	0,ОШ9999
G75524	нтж	ПАРДЛ(М15)
	зп	ПАРДЛ(М15)
	сч	РАЯ(М7)
	пв	ЗАПИСЬ(М14)
G75526	сч	ЧТПЕРВ
	пв	ГАШНУ(М14)
G75527	сч	РАЯ4(М7)
	слц	Е6
	зп	РАЯ4(М7)
	слиа    LСВЯЗ(М1)
	цикл    G75342(М2)
	слиа    1(М1)
	нтж	Е7Е6
	слц	Е1
	зп	РАЯ4(М7)
	счи	М1
	и	Е10П1
	пе	G75341
	сч	РАЯ(М7)
	пв	ОСВЗОН(М14)
	сч	ГК-'2000'(М1)
	рзб	МАСКАЗ
	пе	G75331
	сч	ЧТВТОР
	пв	ГАШНУ(М14)
	сч	ЧТТВТ
	пв	ОБММД(М14)
	зп	ЧТТВТ
	мода    НВТ(М16)
	уиа	(М2)
G75544	сч	ВТТОМ(М2)
	нтж	ПВТТОМ
	и	Е48П37
	по	G75552
	слиа    LВТ(М2)
	счи	М2
	и	Е10П1
	пе	G75544
	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	дк	0,ОШ9999
G75552	сч	ВТТОМ(М2)
	и	Е32
	или	ПВТТОМ
	зп	ВТТОМ(М2)
	сч	ПСВЕВТ
	или	Е24
	нтж	Е24
	или	Е20П18
	нтж	Е20П18
	зп	СВЕВТ(М2)
	сч	
	зп	ПСВЕВТ
	зп	ПВТТОМ
	зп	ПЗГЛВТ
	зп	ПРАЗМ
	сч	ЧТТВТ
	уиа	G75134(М14)
	пб	ЗАПИСЬ
G75563	сч	БОББЮД(М1)
	и	Е12П1
	пе	G75527
	сч	БОББЮД(М1)
	сда	64-24
	нтж	ПВТТОМ
	и	Е48П37
	пе	G75527
	сч	Е48
	пв	КОНТРА(М12)
	сч	РАЯ(М7)
	пв	ЗАПБУЗ(М13)
	сч	ГОД
	и	В7
	сда	64-21
	или	ПАРДЛ(М1)
	зп	ПАРДЛ(М1)
	и	Е16П1
	зп	РАЯ1(М7)
	сч	РАЯ(М7)
	пв	ЗАПОСВ(М14)
	сч	РАЯ4(М7)
	зп	РАЯ2(М7)
	сч	ПЗГЛВТ
	и	Е23П21
	сда	64+1
	или	Е18
	или	РАЯ1(М7)
	или	Е36
	уиа	ДАЙМ(М17)
	уиа	НЗОБР(М15)
	пв	МОНСТР(М16)
	по	G75612
	сч	Е32
	или	ПВТТОМ
	зп	ПВТТОМ
	сч	Е1
	пв	КОНТРА(М12)
	сч	РАЯ4(М7)
	пв	ДАЙГК(М13)
	зп	РАЯ(М7)
	уии	М1(М15)
	пб	G75526
G75612	сч	
	пв	КОНТРА(М12)
	пв	DЕQ(М16)
	пв	ВВПА(М6)
	пе	G75706
	сч	РАЯ4(М7)
	и	МАССС
	зп	РАЯ4(М7)
	пв	ЕNQКОН(М12)
	сч	ЧТСЛУЖ
	пв	ОБММД(М14)
	зп	ЧТСЛУЖ
	уии	М4(М16)
	сч	РАЯ4(М7)
	пв	ДАЙГК(М13)
	зп	РАЯ(М7)
	сч	ГОД
	и	В7
	уи	М16
	сли	М4(М16)
	сч	ПАРДЛ(М15)
	и	Е24П22
	пе	G75631
	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	дк	0,ОШ9999
G75631	нтж	ПАРДЛ(М15)
	зп	ПАРДЛ(М15)
	сч	ТОМ1(М4)
	нтж	БОББЮД(М15)
	и	Е24П1
	нтж	БОББЮД(М15)
	зп	БОББЮД(М15)
	сч	ДАТЫ(М15)
	и	Е15П1
	зп	РАЯ1(М7)
	нтж	ДАТЫ(М15)
	или	Е17
	нтж	Е17
	зп	ДАТЫ(М15)
	сч	РАЯ(М7)
	пв	ЗАПИСЬ(М14)
	сч	
	зп	ТОМ1(М4)
	сч	ЧТСЛУЖ
	пв	ЗАПОСВ(М14)
	сч	РАЯ1(М7)
	сда	64-26
	рзб	МАСКАЗ
	или	ЧТВТОР
	пв	ОБММД(М14)
	зп	РАЯ5(М7)
	сч	РАЯ1(М7)
	сда	64-4
	и	Е10П1
	уи	М10
	сли	М10(М16)
	уиа	'200'(М11)
	пв	ВВОВ(М12)
	сч	РАЯ5(М7)
	пв	ОСВЗОН(М14)
	сч	РЕЖИМЫ
	и	ЕРАЗД
	по	G75662
	сч	ЧТСЛУЖ
	пв	ОБММД(М14)
	зп	ЧТСЛУЖ
	сч	Е14П8
	нтж	ШКЭВМ
	или	ДЛЯЭВМ(М16)
	зп	ДЛЯЭВМ(М16)
	сч	ЧТСЛУЖ
	пв	ЗАПОСВ(М14)
G75662	сч	ЕГТВТА
	или	РЕЖИМЫ
	зп	РЕЖИМЫ
	пб	G75526
G75664	сч	РАЯ5(М7)
	пв	ОСВЗОН(М14)
	сч	
	пв	КОНТРА(М12)
G75666	уиа	(М11)
	пв	DЕQ(М16)
	сч	РАЯ1(М7)
	рзб	МАСКАЗ
	или	ЧТВТОР
	пв	ОБММД(М14)
	зп	РАЯ5(М7)
	сч	РАЯ1(М7)
	и	Е10П1
	уи	М10
	сли	М10(М16)
	сч	
	зп	НОВО(М16)
	уиа	G75515(М12)
	пб	ВВОВ
G75676	мода
	пв	ЕNQКОН(М12)
	сч	РАЯ4(М7)
	пв	ДАЙГК(М13)
	зп	РАЯ5(М7)
	сч	Е24П22
	и	ПАРДЛ(М15)
	нтж	ПАРДЛ(М15)
	зп	ПАРДЛ(М15)
	сч	Е16
	или	ДАТЫ(М15)
	зп	ДАТЫ(М15)
	сч	РАЯ5(М7)
	пв	ЗАПОСВ(М14)
	пб	G75666
G75706	мода
	пв	ЕNQ(М16)
	сч	Е48
	пв	КОНТРА(М12)
	сч	ЧТСЛУЖ
	пв	ОБММД(М14)
	зп	ЧТСЛУЖ
	пв	ЗАПБУЗ(М13)
	сч	ГОД
	и	В7
	уи	М12
	сли	М12(М15)
	сч	РАЯ4(М7)
	пв	ДАЙГК(М13)
	зп	РАЯ5(М7)
	уии	М11(М15)
	пв	ЗАПБУЗ(М13)
	сч	ТОМ1(М12)
	и	Е12П1
	или	БОББЮД(М11)
	зп	БОББЮД(М11)
	сч	
	зп	ТОМ1(М12)
	сч	ЧТСЛУЖ
	пв	ЗАПОСВ(М14)
	сч	РАЯ5(М7)
	пв	ЗАПОСВ(М14)
	сч	РАЯ4(М7)
	сда	64-24
	уиа	(М15)
	уиа	ВВОА(М17)
	пв	МОНСТР(М16)
	сч	
	пв	КОНТРА(М12)
	пб	G75516
	aif	(not &ОТЛ).skip
УНОБЛУ  уиа	НЕРЕЗА(М10)
	по	ХОЗПАР
	сч	РАЯ3(М7)
	пв	ОСВЗОН(М14)
	пв	ДАЙЛИС(М16)
	уи	М4
	уии	М5(М4)
	сда	64-15
	или	Е48
	зп	РАБ1
	мод	ЗАДАЧИ-1(М7)
	Э65	ТУСП-1
	уи	М14
	Э65	9(М14)
	зп	РАБ
	Э65	10(М14)
	сда	64-30
	или	РАБ1
	или	РАБ
	уии	М14(М7)
	мод	ЗАДАЧИ-1(М7)
	уиа	0(М7)
	Э62	'104'
	уии	М7(М14)
	нтж	Е15П1
	по	G77505
	пам	0
	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	дк	'0',ОШ9999
G77505	сч	УАДМИН(М4)
	зп	АДМИНТ
	мод	ЗАДАЧИ-1(М7)
	зп	АДМИН-1
	сч	ШИФРЗТ
	и	Е24П1
	или	УШИФРЗ(М4)
	зп	ШИФРЗТ
	мод	ЗАДАЧИ-1(М7)
	зп	ШИФРЗ-1
	слиа    УСВЕВН(М5)
	мод	АСВОБ
	уиа	0(М3)
G77514	сч	ТАФУОБ(М5)
	нтж	ВСЕЕД
	по	G77540
	мод	АКТЛМТ
	уиа	0(М1)
	пио	G77555(М1)
	сч	ЗГЛМЛ(М1)
	слц	Е2
	зп	ЗГЛМЛ(М1)
	мод	ЗГЛМЛ(М1)
	слиа    -2(М1)
	уиа	2(М15)
	пв	ВСТТАФ(М14)
	пе	G77565
G77524	уии	М6(М1)
	сч	СВЕУОБ(М5)
	и	Е41
	сда	64+4
	или	СВЕУОБ(М5)
	и	МАСБОП
	зп	РАБ
	сч	ТАФУОБ(М5)
	сда	64+24
	или	РАБ
	зп	РАБ
	и	Е24П1
	нтж	РАБ
	и	МАСУПР
	пв	ВКЛВОС(М12)
	по	G77565
	счи	М3
	зп	АСВОБ
	сч	СДВУОБ(М5)
	зп	СДВМЛ(М6)
	слиа    LУОБЛ(М5)
	пб	G77514
G77540	счи	М4
	сда	64-20
	пв	ОСВЗОН(М14)
	мод	ЗАДАЧИ-1(М7)
	уиа	0(М13)
	Э65	ШККТ
	и	Е48-1(М13)
	по	G77550
	сч	РАЯ4(М7)
	нтж	УПРО-1(М13)
	и	Е48П25
	нтж	УПРО-1(М13)
	зп	УПРО-1(М13)
	пб	ОТВЗАД
G77550	сч	УПРО-1(М13)
	и	Е24П1
	зп	УПРО-1(М13)
	сч	РАЯ4(М7)
	пв	ДАЙГКЛ(М13)
	зп	РАЯ3(М7)
	уии	М13(М15)
	пб	НЕРЕЗА
G77555	уии	М1(М3)
	уиа	3(М15)
	пв	ВСТТАФ(М14)
	пе	ЖДИ
	сч	В3
	или	Е16
	зп	ЗГЛМЛ(М1)
	слиа    1(М1)
	сч	АСВОБ
	или	АКТЛМТ
	зп	АКТЛМТ
	мод	ЗАДАЧИ-1(М7)
	зп	АКТЛМЛ-1
	пб	G77524
G77565	мод	АКТЛМТ
	уиа	0(М16)
	сч	ЗГЛМЛ(М16)
	вч	Е2
	зп	ЗГЛМЛ(М16)
	пб	ЖДИ
	ago	.a
.skip	anop
УНОБЛУ  ВНЕШН   НЕРЕЗА.УНОБЛУ
.a	anop
АВОСТ   зп      Х
	сч	ИПЗСОБ+3
	зп	D75753
	мод	ГУС
	Э65	36
	сда	64+41
	уи	М16
	зп	D75771
	слиа    -СНОПЕР(М16)
	пино    G75740(М16)
	Э65	ТРЕГ1
	и	Е23
	по	КОНЕЦ
G75740	счи	М17
	зп	D75772
	уиа	(М17)
	пб	G75747
КОНЕЦ   мода	
	Э74	
АРХОШ   зп      D75771
	счи	М16
	зп	D75753
	счи	М17
	зп	D75772
	мод	-1(М16)
	уиа	(М17)
G75747	мода
	Э53	'13'
	Э70	ЧТГИД
	пб	ОШАРЬ
Х	конд    в'0'
D75753	конд    в'0'
	конд    в'0'
	конд    в'0'
	конд    в'0'
	конд    в'0'
	конд    в'0'
	конд    в'0'
	конд    в'0'
	конд    в'0'
	конд    в'0'
	конд    в'0'
	конд    в'0'
	конд    в'0'
	конд    в'0'
D75771	конд    в'0'
D75772	конд    в'0'
	ВХОД    КОНЕЦ,АВОСТ,ГТЧИСТ,Т62132,ВТВЫТ1,ВТВЫТ,КЗАХВ1,НОВЕNQ
	ВХОД    АРХОШ,Х,МНОГО,ОБЛЗ,ЖДИ,НТОМ,ВНЗН,ЗАПКПО,Э63СДВ,КОНКАТ
	ВХОД    КОНТОМ,КТЛОБЛ,ДАЙХИ,НЕТОБЛ,МЛНЗК,ЗАПВИР,ОШЭК,ЭКНЕТ,БПЭ
	ВХОД    ПОЭК,НАКЗ,НАБОП,НАВВОД,НОМБОБ,СООБЩИ,ТАЙМЕР
АРХИН   ВНЕШ	Э62,Э72,РСМДАТ,ЧИСТВВ,ПОБОП,ПОВВОД,ПОКЗ,Э53,ОТБАЦ
АРФА    ВНЕШ	НОРМА,ОБЛНЕТ,ОШИМЯО,БОБАРХ,НВИРТН,ОШШИФР,УЖЕЕ
АРФА    ВНЕШ	НЕТБЮД,ЗОБЛ,НМКАТ,НЕТТОМ,БОЛ12,ОШДАТ,ОШДЛИН,ОШБОБ
АРФА    ВНЕШ	БЮДМАЛ,ИЕРАРХ,НЕТРЕС,НМАРХ,НЕТПРА,ОБЛКТЛ,ШКАГРУ
АРФА    ВНЕШ	ЖДИОБЛ,ОШВИД,БЮДАРХ,НЕТПАР,ВНЗАН,ЛИСОБМ,НОРВЫХ
АРФА    ВНЕШ	ОТВЗАД,ОШИМЯ,ВЕРШИ2,БЮДНЕТ,И10В8В,НЕТЗОН,ПРАНЕТ
АРФА    ВНЕШ	ОШГРУ,ОШВИДА,СНОПЕР,НЗКМЛ,ОШЭКСТ,ЗАПРЭК,СНЯПОЛ
АРФА    ВНЕШ	ДРАБЭК,ОШВИРТ,НЕВПАР,ДАЙЗП,ИСВЧЛ,ЧУЖИНФ,СБОЙВВ
АРФА    ВНЕШ	НПАРОЛ,КОЗАД,ОШЗАД,ОБММД,ОБМАН,ОСВЗОН,ЗАПИСЬ
АРФА    ВНЕШ	ЗАПОСВ,LЗГЛВВ,ЧТГИД,ПАУЗА,СПАСИБ,ОСВВСЕ,ЗАНРЕС
АРФА    ВНЕШ	ДАЙЛИС,ЕNQ,DЕQ,ГАШНУ,МОНСТР,ВЫЗНЕР,ВЫХНЕР,ЗАПБУЗ
АРФА    ВНЕШ	ЕNQКОН,КОНТРА,ВСТТАФ,ВЫБТАФ,ВКЛБОБ,ВКЛВОС,ГДЕЛЕН
АРФА    ВНЕШ	ПРСВОБ,ДАЙГК,ДАЙГКЛ,ДАЙГКО,ДАЙИМП,ДАЙИМУ,ПРССЫЛ
АРФА    ВНЕШ	ЗАКРИО,ПРОВИО,ВТОБЛ,ДАЙШИФ,ЧЕЙШИФ,ХОЗПАР,ПРАПАР
АРФА    ВНЕШ	ДАЙСЕГ,АДМОБЛ,ЧТИМЯП,ИЗ8В10,ПРОУПР,ВВМВ,ВВЗВ,ВВОА
АРФА    ВНЕШ	ВВОВ,ВВПА,ВВПВ,ДГКП,ОПРГКП
В3В4	ВНЕШ    ИМЕНА
СОСТАВ  ВНЕШ	ТРЕГ1,ЯЧВР
НЕРЕЗА  ВНЕШ	СПЕЦЭК,УНОБЛ,НЕРЕЗА,АДМ,СМАДМ,СОЗБЮД,РЕСУРС
НЕРЕЗА  ВНЕШ	ГРУППА,УНБЮД,ВОПБЮД,ШИФР
КАЧКА   ВНЕШ	ШКРЗ
КОМАР   ВНЕШ	ФЛАГОШ,ФЛОШИ,СЧОШ,Е48,Е47,Е46,Е45,Е44,Е43,Е42,Е41
КОМАР   ВНЕШ	Е40,Е39,Е38,Е37,Е36,Е35,Е34,Е33,Е32,Е31,Е30,Е29
КОМАР   ВНЕШ	Е28,Е27,Е26,Е25,Е24,Е23,Е22,Е21,Е20,Е19,Е18,Е17
КОМАР   ВНЕШ	Е16,Е15,Е14,Е13,Е12,Е11,Е10,Е9,Е8,Е7,Е6,Е5,Е4,Е3
КОМАР   ВНЕШ	Е2,Е1,ВСЕЕД,Е48П16,Е48П17,Е48П25,Е48П32,Е48П33
КОМАР   ВНЕШ	Е48П34,Е48П37,Е48П41,Е48П43,Е48П46,Е42П37,Е42П16
КОМАР   ВНЕШ	Е42Е41,Е40П1,Е38П24,Е36П16,Е36П25,Е36П27,Е35П21
КОМАР   ВНЕШ	Е35П31,Е32П1,Е32П17,Е32П25,Е32П29,Е28П13,Е26П17
КОМАР   ВНЕШ	Е24П1,Е24П9,Е24П13,Е24П15,Е24П16,Е24П17,Е24П21
КОМАР   ВНЕШ	Е24П22,Е24Е23,Е23П21,Е22П1,Е21П18,Е20П18,Е19Е18
КОМАР   ВНЕШ	Е18П1,Е18П13,Е17П1,Е17Е16,Е16П1,Е16Е15,Е16Е1
КОМАР   ВНЕШ	Е15П1,Е15П11,Е14П1,Е14П8,Е12П1,Е11П1,Е10П1,Е9П1
КОМАР   ВНЕШ	Е8П1,Е7П1,Е7Е6,Е6П1,Е5П1,Е4П1,В3,В5,В6,В7,В12,В16
КОМАР   ВНЕШ	В30,В37,В55,В60,В66,ООПППП,ООООВВ,П017,П166,П200
КОМАР   ВНЕШ	ОППППО,Е15Е14,РАЯ,РАЯ1,РАЯ2,РАЯ3,РАЯ4,РАЯ5,ИМЯ
КОМАР   ВНЕШ	ИМЯ1,РАБ,РАБ1,РАБ2,РАБ3,РАБ4,РАБ5,ГУС,ИПЗСОБ
КОМАР   ВНЕШ	ДЗКПЕР,ДЗКВТО,ЕЕ,СУТКИ,МАСДАТ,МАСКАЗ,МИНУТ5
КОМАР   ВНЕШ	ЧТЗОНС,ЧТЗОНА,ЧТПЕРВ,ЧТВТОР,ИСОПТТ,ДРВЛАД,НКЛЮ
КОМАР   ВНЕШ	ПОДТОМ,ЗАДАЧИ,НКАН60,ШКЭВМ,СРОКХР,ГРУБА,ИНТЧТ
КОМАР   ВНЕШ	ИНТВТ,ВРЕМЧТ,ВРЕМВТ,ГОД,ВРЕМЯ,ВЛЭВМ,НАЧКТ,ИНТКТ
КОМАР   ВНЕШ	ВРЕМКТ,ЧТКВВ,ЧТБК,МАСБОП,МАСУПР,КВВОД,ШКОВВ,ВРЕВВ
КОМАР   ВНЕШ	ЕВКЛ,МАСВВ,ЯЧМЛ,ЧТСЛУЖ,ДЛЯЭВМ,ТОМ1,ЧТГК,ГК,ХОЗ
КОМАР   ВНЕШ	ПАРДЛ,ПРИПОЛ,БОББЮД,ДАТЫ,LСВЯЗ,ДГК,МАССС,ЧТТВТ
КОМАР   ВНЕШ	ВТТОМ,СВЕВТ,НВТ,LВТ,КЛЮВ,ЗГЛВТО,РАЗМЕР,ВЛАМАШ
КОМАР   ВНЕШ	НОВО,ССЫЛКА,ПАРОЛИ,ВРЕК,НКОБ,LКОБ,КЛКОБ,ПВТТОМ
КОМАР   ВНЕШ	ПСВЕВТ,ПЗГЛВТ,ПРАЗМ,РЕЖИМЫ,ЕЭВМ,ЕСМДАТ,ЕТАФ,ЕОСВО
КОМАР   ВНЕШ	ЕЖДУ60,ЕЖДУВТ,ЕГТВТА,ЕРАЗД,НЗАРХ,НЗОБР,НЗГИД
КОМАР   ВНЕШ	НЗНЕР,ШИФРЗ,АКТЛМЛ,ШИФРЗТ,АКТЛМТ,АДМИН,АДМИНТ
КОМАР   ВНЕШ	ФИЗОБТ,ШКУПР,ШКЕNQ,ЧЖДЕNQ,УПРО,ЕКОП,РМР63,АДРОШ
КОМАР   ВНЕШ	ИСОБМ,ТАФСС,СЧЭ70,ЧВН,СЛСЛ,LЗГТАФ,ЗГЛМЛ,СВЕДМЛ
КОМАР   ВНЕШ	СДВМЛ,КОНТАФ,АСВОБ,УАДМИН,УШИФРЗ,УСВЕВН,ТАФУОБ
КОМАР   ВНЕШ	СВЕУОБ,СДВУОБ,LУОБЛ
ОБРАЗ   ВНЕШ	СОЗД,ДАЙМ,ЗАПКТЛ,ИЗМДЛ,ПРЯТКИ
ГИДРА   ВНЕШ	ЗАДПОЛ,ЗАППОЛ,ЗАПСВЕ,ЧИСТКА,Э1206,ВОПИМЯ,ОШАРЬ
ГИДРА   ВНЕШ	ОШ9999,ОШ5,ОШ7,ОШ8,ОШ9,ОШ10,ОШ11
ДИСП70  ВНЕШ	ТУСП,ПРЕДЕЛ,(осврем,ВРЕМЯ),(осгод,ГОД),НОМАРС
ДИСП70  ВНЕШ	Ш1М,ШККТ,ЯЧКОПИ
	ФИНИШ
