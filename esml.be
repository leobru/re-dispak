ЕСМЛ	СТАРТ	'62000'
        E
        M
START	сч	МЛЕС
	по	G62033
	слц	E1
	зп	МЛЕС
	нтж	E17
	и	ШР+1
	по	G62062
	сч	ДОП
	пе	G62033
	сч	ШЗЗОБМ
	пе	G62033
	сч	МГЗ
	и	Е32П25
	по	G62026
G62007	зп	РЭ1
	по	G62026
	нед	Е15П1
	и	П7
	уи	М15
	нтж	П7
	уи	М16
	сч	
	увв	'110'(М16)
	уи	
	увв	'4115'
	и	E6
	по	G62024
	увв	'4115'
	сда	64+7
	нтж	E1
	пе	G62024
	сч	ШКАП
	или	E32(М15)
	зп	ШКАП
	сч	E13
	увв	'110'(М16)
	уи	
	сч	E24
	увв	'110'(М16)
G62024	сч	РЭ1
	нтж	E32(М15)
	пб	G62007
G62026	сч	ШКАП
	и	ДЛЯНБ+1
	по	G62033
	нтж	МГЗ
	зп	МГЗ
	и	Е32П25
	уиа	4(М16)
	пе	A64770
G62032	зп	МЛЕС
	пб	A64770
G62033	сч	ДОП
	по	G62061
	нтж	ДОПВР
	и	Е15П1
	по	G62061
	сч	ДОП
	слц	E1
	зп	ДОП
	нтж	ДОПВР
	пе	G62061
	сч	E1
	мода	D63575
	зп	
	сч	
	мод	КУС5
	увв	'110'
	уи	
	уи	
	увв	'4115'
	уи	
	и	E1
	пе	G62055
	сч	ДОП
	или	E48
	зп	ДОП
G62050	уиа	4(М16)
	пб	A64770
G62051	мода	D63575
	сч	
	пе	G62050
	мода	ПРСТОП
	зп	
	зп	ДОПВР
	пб	G62050
G62055	сч	КУС5
	мода	ПРСТОП
	зп	
	сч	E13
	мод	КУС5
	увв	'110'
	сч	E1
	зп	ДОП
G62061	сч	СЧПР2
	пб	U4115
G62062	сч	МГЗ
	и	Е32П25
	пе	G62065
	зп	МЛЕС
	пб	G62026
G62065	зп	МЛЕС
	нтж	МГЗ
	зп	МГЗ
	сч	МЛЕС
	или	ШКАП
	или	E48
	зп	ШКАП
	сч	
	зп	МЛЕС
	сч	ДОП
	пе	G62033
	сч	ШЗЗОБМ
	пе	G62033
	сч	
	уиа	4(М16)
	пб	G62032
ЗД	уиа	16(М10)
	пб	ЗАПДВ
МВ	сч	Е18П1
	нтж	E17
	и	ФКУС
	нтж	E5
	пе	ФЗО5
	сч	ФКУС
	зп	ЗАКАЗ
	сч	КУС5
	пе	ВХЛ
	уиа	ВХЛ(М10)
ЧТРС	уиа	'2003'
	счи	М14
	мода	ИМ14
	зп	
	уиа	-7(М16)
	уиа	7(М14)
	сч	
	мода	ПРОМ
	зп	
G62110	увв	'117'(М16)
	уи	
	уи	
	увв	'4115'
	мода	Е9Е8
	и	
	нтж	E8
	по	G62120
	нтж	E9
	по	G62120
	сч	E8(М14)
	мода	ПРОМ
	или	
	мода	ПРОМ
	зп	
	сч	
G62120	слиа	-1(М14)
	цикл	G62110(М16)
	уиа	'3'
	сч	ЗАКАЗ
	сда	64+42
	уи	М14
	мода	ПРОМ
	сч	
	сда	64-16
	мод	ТУС-1(М14)
	зп	
	сч	E48-1(М14)
	мода	
	пв	ВШГ(М15)
	мод	ЕС5017
	уиа	0(М16)
	мод	ИМ14
	уиа	0(М14)
	сч	
	зп	ЗАКАЗ
	пб	(М10)
УЗ8Е	сч	РЯО
	и	П77
	уи	М14
	нтж	П7
	и	П7
	уи	М7
	сч	ИНФСЛЭ
	сда	64-1
	и	Е43Е42
	по	УЗ1
	счи	М14
	сда	64+3
	нтж	ЕС5017
	пе	ПВЫХ
	сч	ТЗНМЛ-24(М14)
	и	E13
	пе	УЗ2
ПВЫХ	уиа	'41'(М16)
	уиа	КРАХМЛ(М17)
	пб	ВОЗЬМИ
УЗ1	сч	ТЗНМЛ-24(М14)
	и	E13
	по	УЗЩ8
УЗ2	сч	УСМ
	сда	64+41
	и	П77
	уи	М10
	сч	ИНФСЛЭ
	сда	64-1
	и	Е43Е42
	пе	СНЛ
	сч	МГЗ
	и	E16(М7)
	уиа	УЗЩ8(М11)
	пе	СНЛ
ЗАКРМ	сч	E48-1(М10)
	уии	М13(М15)
	мода	
	пв	ИЗШГП(М15)
	уии	М15(М13)
	сч	ИНФСЛЭ
	и	E29
	по	НЕ29
	сч	ИНФСЛЭ
	и	ДЛЯНБ+1
	зп	ИНФСЛЭ
НЕ29	сч	ИНФСЛЭ
	и	Е35П31
	сда	64+7
	или	Е36
	или	НЗАД(М10)
	зп	НЗАД(М10)
	уиа	'3'
	пб	(М11)
СНЛ	сч	ИНФСЛЭ
	сда	64+30
	и	П37
	нтж	П37
	уи	М13
	уиа	'2003'
	сч	'40'(М15)
	или	E48(М13)
	нтж	E48(М13)
	зп	'40'(М15)
	сч	ИНФСЛЭ
	сда	64-1
	и	Е43Е42
	пе	ФЗК
	уиа	2(М11)
	пб	ПРИМ16
ФЗК	сч	ИНФСЛЭ
	сда	64+39
	и	П7
	зп	РЯО1
	нтж	П7
	пе	НЕЗМГЗ
	уиа	0(М12)
	сч	ИНФСЛЭ
	и	E27
	пе	ЗАПКУС
	уиа	1(М12)
	пб	ЗАПКУС
НЕЗМГЗ	уи	М12
	сда	64+1
	пе	ЗАПКУС
	уиа	-1(М12)
	сч	ИНФСЛЭ
	и	E27
	по	ЗАПКУС
	уиа	-2(М12)
ЗАПКУС	сч	ИНФСЛЭ
	и	E24
	зп	ФКУС
	нтж	E24
	сда	64-1
	или	ФКУС
	сда	64-3
	зп	ФКУС
	сч	E8(М12)
	уиа	'3'
	сда	64-12
	или	E7
	или	ФКУС
	зп	ФКУС
	сч	E16(М7)
	или	E24(М7)
	и	МГЗ
	уиа	ФНАП(М11)
	по	ЗАКРМ
	сч	РЯО1
	чед	
	нтж	E2
	пе	НАЧЛ
	сч	МГЗ
	и	E24(М7)
	по	ЗАКРМ
	уиа	1(М11)
ПРИМ16	счи	М11
	мод	НЗАД(М10)
	зп	8
	пб	ВХЛ
НАЧЛ	сч	МГЗ
	и	E16(М7)
	по	ЗАКРМ
	уиа	2(М11)
	пб	ПРИМ16
ФНАП	сч	РЯО
	и	Е6П4
	сда	64-36
	или	ФКУС
	зп	ФКУС
	сч	E1
	слц	E37(М15)
	зп	E37(М15)
	сч	E3
	слц	E44(М15)
	зп	E44(М15)
	уиа	'3'
	сч	УСМ
	сда	64-1
	и	Е48П43
	или	ФКУС
	зп	ФКУС
	сч	РЯО
	и	П7
	сда	64-7
	или	ФКУС
	зп	ФКУС
	уиа	0(М2)
	сч	ИНФСЛЭ
	и	E28
	по	ФЗО5
	сч	ФКУС
	или	E30
	зп	ФКУС
	пб	ФЗО5
ЕЛЕС	сч	ИНФСЛЭ
	и	E28
	по	ФЗО1Б
	сч	ИНФСЛЭ
	и	П3777
	зп	РЯО1
	сда	64+1
	сда	64-13
	или	РЯО1
	зп	РЯО1
	сч	ТЗОНМЛ-24(М14)
	и	Е48П25
	или	РЯО1
	зп	ТЗОНМЛ-24(М14)
	сч	
	пб	ФЗО1Б
ПЕК	сч	ТЗНМЛ-24(М16)
	и	E13
	по	КОП
	сч	ИНФСЛЭ
	сда	64+39
	и	П7
	вч	E3
	пе	ПЕП
	нтж	П3
	по	ПЕП
	сч	П30
ЗИС	зп	ЗОНАМЛ
	сч	
	пб	ПР
ПЕП	сч	E1
	пб	ЗИС
ФЗО3Е	счи	М16
	сда	64+3
	нтж	ЕС5017
	пе	ФЗО3В
	сч	ТЗНМЛ-24(М16)
	и	E13
	по	ФЗО3В
	сч	ИНФСЛЭ
	и	E48
	нтж	E48
	сда	64+29
	или	ФКУС
	мода	Н2534
	и	
	зп	ФКУС
	сч	ИНФСЛЭ
	и	E28
	по	ФАБ
	сч	E30
	или	ФКУС
	зп	ФКУС
	сч	ИНФСЛЭ
	и	E40
	по	ФЗО4
	сч	ФКУС
	или	E18
	зп	ФКУС
	пб	ФЗО5
ФАБ	сч	ФКУС
	и	E19
	пе	ЗАПСЧ
	сч	ИНФСЛЭ
	и	Е26Е25
	или	ФКУС
	зп	ФКУС
ЗАПСЧ	сч	ИНФСЛЭ
	и	E24
	зп	РЯО
	нтж	E24
	сда	64-1
	или	РЯО
	сда	64-3
	или	ФКУС
	зп	ФКУС
	сч	ИНФСЛЭ
	и	E40
	сда	64+22
	или	ФКУС
	зп	ФКУС
	сч	ИНФСЛЭ
	и	E29
	или	ФКУС
	зп	ФКУС
	пб	ФЗО5
Н2534	конд	в'7777600077777777'
ПРСТОП	пам	1
ПРОМ	пам	1
ИМ14	пам	1
Е9Е8	конд	В'600'
Е27Е28	конд	М26В’3’
КОНРЗ	конд	п'РАЗМЕС'
СОСТ	пам	1
Н533	мода	
	пв	ДЛЯДИС(М10)
	уиа	'2003'
	сч	ТЗНМЛ-24(М1)
	и	E13
	пе	МГЕС
	сч	ШОЧНАП-3(М2)
	пе	ЗАПНАЧ
	или	E48-1(М14)
	зп	ШОЧНАП-3(М2)
	уиа	'3'
	уиа	ДИСП1(М11)
	сч	ШОЧНАП-3(М2)
	пб	ПОДОБМ
ЗАПНАЧ	сч	ШКНАЧ
	или	E48-1(М14)
	зп	ШКНАЧ
	пб	ВХЛ
МГЕС	сч	ОЧКУС-1(М14)
	и	E5
	по	МГИ
	сч	ОЧКУС-1(М14)
	сда	64+42
	уи	М12
	сч	E24(М15)
	или	E16(М15)
	нтж	ВСЕЕД
	и	МГЗ
	или	E48(М15)
	зп	МГЗ
	сч	E5
	мод	ТУС-1(М12)
	зп	8
	уиа	0(М1)
	мода	
	пв	СНЗКМЛ(М11)
СНМГ1	сч	'1234'(М1)
	по	ВХЛ
	нед	
	уи	М14
	сч	ОЧКУС-1(М14)
	сда	64+42
	уи	М12
	уиа	6(М7)
	сч	ОЧКУС-1(М14)
	мода	ПРФ
	и	
	нтж	E17
	по	СН
	слиа	64(М12)
СН	счи	М7
	мод	ТУС-1(М12)
	зп	8
	уиа	0(М1)
	сч	ОЧКУС-1(М14)
	и	E7
	пе	СНМГ
	уиа	9(М1)
СНМГ	уиа	СНМГ1(М11)
	пб	СНЗКМЛ
МГИ	сч	МГЗ
	и	E48(М15)
	по	G62404
	мода	D63601
	сч	
	сда	64(М15)
	нтж	ВСЕЕД
	и	МГЗ
	зп	МГЗ
	пб	СНМГ1
G62404	сч	ОЧКУС-1(М14)
	и	Е7Е21
	нтж	Е7Е21
	пе	G62425
	сч	КУС5
	по	G62411
	сч	ТР5(М2)
	или	E48-1(М14)
	зп	ТР5(М2)
	пб	ВХЛ
G62411	сч	ШКЗЗП(М2)
	или	E48-1(М14)
	зп	ШКЗЗП(М2)
	сч	МГНЕИС
	и	'73'(М1)
	пе	ОБХОД
	увв	'50'(М1)
	уи	
	уиа	ДИСП1(М11)
	сч	ОЧКУС-1(М14)
	мода	Е27Е28
	и	
	сда	64+16
	зп	ПЛОТН
	сч	МГЗ
	или	E32(М15)
	зп	МГЗ
	сч	ОЧКУС-1(М14)
	мода	D63567
	и	
	сда	64+12
	или	E1
	или	ПЛОТН
	пб	ДВИЖМЛ
G62425	сч	ШОЧНАП-3(М2)
	или	E48-1(М14)
	зп	ШОЧНАП-3(М2)
	нтж	E48-1(М14)
	пе	ВХЛ
	уиа	'3'
	уиа	ДИСП1(М11)
МГНАЧ	сч	МГНЕИС
	и	'73'(М1)
	пе	ОБХОД
	сч	E48-1(М14)
	зп	'1317'(М2)
	сч	ОЧКУС-1(М14)
	зп	КУС2-1(М2)
	сч	ФКУСАД(М14)
	зп	ЛИС2-1(М2)
	сч	E8(М2)
	увв	'31'
	сч	КУС2-1(М2)
	мода	Е27Е28
	и	
	сда	64+16
	зп	ПЛОТН
	сч	КУС2-1(М2)
	и	E7
	пе	ДВИЖЕС
	уиа	0(М17)
	сч	ЛИС2-1(М2)
	пв	ПРИП1С(М10)
	сч	КУС2-1(М2)
	и	E30
	пе	ЗКМЛ1
МГНОР	сч	ЛИС2-1(М2)
	рзб	П14037
	зп	РЯО3
	сч	ВСЕЕД
	нтж	E11
	нтж	Е26Е25
	и	КУС2-1(М2)
	мода	Р
	зп	
	сч	КУС2-1(М2)
	и	Е26Е25
	сда	64+24
	или	E4
	или	РЯО3
	зп	РЯО3
	сч	КУС2-1(М2)
	и	E30
	по	ОБ1
	мода	
	пв	G63040(М10)
G62460	мода	Е9Е8
	и	
	нтж	E8
	по	G62463
	уиа	0(М7)
	пб	ФСУМ
G62463	мода	СОСТ
	сч	
	и	E5
	пе	ВД
	уиа	1(М7)
ФСУМ	сч	КУС2-1(М2)
	сда	64+42
	уи	М12
	сч	E48(М7)
	мод	НЗАД(М12)
	зп	
	пб	ПРЛСЧД
ВД	сч	РЯО3
	нтж	E4
	зп	РЯО3
	пб	ОБ
ОБ1	сч	КУС2-1(М2)
	и	E18
	пе	ОБ
	пв	G63040(М10)
	и	E5
	по	ВЫКЛЗП
ОБ	мода	Р
	сч	
	пб	ЗКМЛ4П
ДВИЖЕС	сч	КУС2-1(М2)
	и	E30
	по	СДВ
	пв	G63040(М10)
	и	E5
	пе	СДВ
	уиа	1(М7)
	пб	ФСУМ
СДВ	сч	КУС2-1(М2)
	и	E21
	по	ВЫДДВ
	сч	E14
	зп	ДОПВР
	сч	МГЗ
	или	E32(М15)
	зп	МГЗ
	пб	ВЫДДВА
ВЫДДВ	сч	E9
	зп	ДОПВР
ВЫДДВА	сч	КУС2-1(М2)
	мода	D63567
	и	
	сда	64+12
	или	E1
	зп	КУСДВ
	или	ПЛОТН
	пб	ДВИЖМЛ
G62517	сч	'2115'
	и	Е48П43
	или	П6
	зп	ШИФРПЛ
	пб	G62671
G62522	уиа	'2003'
	пв	ДЛЯДИС(М10)
	уиа	START(М13)
	сч	ШКАП
	зп	СТМД+5(М13)
	по	G62601
	сда	64+24
	и	П377
	зп	ОКДВИЖ
	сч	
	зп	ШКАП
	уиа	'3'
	сч	ОКДВИЖ
G62531	нед	Е15П1
	и	П7
	уи	М15
	нтж	П7
	уи	М17
	сч	ЕС5017
	сда	64-3
	уи	М1
	сли	М1(М17)
	сч	'1234'(М1)
	нед	
	уи	М14
	сч	ОКДВИЖ
	нтж	E8(М15)
	зп	ОКДВИЖ
	сч	E8(М15)
	или	E24(М15)
	пв	ГАШСОЛ(М10)
	сч	E16(М15)
	нтж	ВСЕЕД
	уиа	'2003'
	и	МГЗ
	или	E24(М15)
	зп	МГЗ
	сч	ОЧКУС-1(М14)
	сда	64+42
	уи	М12
	сч	ОЧКУС-1(М14)
	мода	ПРФ
	и	
	нтж	E17
	по	G62553
	слиа	64(М12)
	сч	
	мод	ТУС-1(М12)
	зп	
G62553	счи	М15
	нтж	П7
	уи	М11
	сч	
	увв	'110'(М11)
	уи	
	увв	'4115'
	и	E6
	уиа	'3'
	сда	64+5
	уи	М11
	по	G62562
	сч	
	зп	ШИФРПЛ
G62562	сч	ШИФРПЛ
	по	G62565
	сч	ОЧКУС-1(М14)
	и	Е48П43
	или	ШИФРПЛ
	зп	ШИФРПЛ
G62565	сч	ТЗОНМЛ-24(М1)
	мода	К2529
	и	
	зп	ТЗОНМЛ-24(М1)
	счи	М11
	пе	G62571
	уиа	6(М11)
G62571	счи	М11
	мод	ТУС-1(М12)
	зп	8
	сч	Е36
	или	Е35П24
	нтж	ВСЕЕД
	и	ТУС-1(М12)
	зп	ТУС-1(М12)
	уиа	0(М1)
	пв	СНЗКМЛ(М11)
	уиа	'3'
	пв	ДЛЯДИС(М10)
	сч	ОКДВИЖ
	пе	G62531
	уиа	'2003'
	пб	G62522
G62601	сч	МГЗ
	и	Е32П25
	по	G62620
G62603	зп	СМ
	по	G62657
	нед	Е15П1
	и	П7
	уи	М15
	нтж	П7
	уи	М11
	сч	
	увв	'110'(М11)
	уи	
	увв	'4115'
	и	E6
	по	G62616
	сч	ШКАП
	или	E32(М15)
	зп	ШКАП
	сч	E13
	увв	'110'(М11)
	уи	
	сч	E24
	увв	'110'(М11)
G62616	сч	СМ
	нтж	E32(М15)
	пб	G62603
G62620	зп	МЛЕС
G62621	сч	ДОП
	по	G62625
	сч	СТМД+4(М13)
	по	ДИСП4
	сч	
	зп	СТМД+4(М13)
	пе	ДИСП4
G62625	сч	ТР5(М2)
	по	G62662
	нед	
	уи	М14
	сч	ТР5(М2)
	нтж	E48-1(М14)
	зп	ТР5(М2)
	сч	ШКЗЗП(М2)
	или	E48-1(М14)
	зп	ШКЗЗП(М2)
	сч	ОЧКУС-1(М14)
	сда	64+7
	и	П7
	уи	М17
	нтж	П7
	уи	М15
	сч	ОЧКУС-1(М14)
	мода	Е27Е28
	и	
	сда	64+16
	зп	ПЛОТН
	уиа	'2003'
	сч	МГЗ
	или	E32(М15)
	зп	МГЗ
	сч	ОЧКУС-1(М14)
	мода	D63567
	и	
	сда	64+12
	или	E1
	или	ПЛОТН
	зп	СМ
	мод	'523'(М16)
	уиа	0(М1)
	сли	М1(М17)
	сч	
	увв	'50'(М1)
	уи	
	уи	
	сч	СМ
	уиа	'3'
	увв	'50'(М1)
	уи	
	уиа	-7(М14)
G62653	уи	
	цикл	G62653(М14)
	сч	'1442'(М16)
	или	E8(М15)
	зп	'1442'(М16)
	сч	E1
	зп	МЛЕС
	пб	G62625
G62657	сч	ШКАП
	и	ДЛЯНБ+1
	по	G62621
	нтж	МГЗ
	зп	МГЗ
	пб	G62522
G62662	сч	КУС5
	по	ДИСП4
	нтж	П7
	уи	М15
	сч	МГЗ
	и	E32(М15)
	по	НАН
	мод	КУС5
	увв	'110'
	уи	
	уи	
	увв	'4115'
	и	E6
	по	G62517
G62671	сч	E32(М15)
	нтж	МГЗ
	зп	МГЗ
НАН	сч	E8(М15)
	зп	ОКДВИЖ
	счи	М15
	нтж	П7
	уи	М17
	мод	'523'(М16)
	уиа	0(М1)
	сли	М1(М17)
	сч	
	мод	КУС5
	увв	'110'
	сч	E13
	мод	КУС5
	увв	'110'
	уи	
	сч	E24
	мод	КУС5
	увв	'110'
	мода	ПРСТОП
	сч	
	по	ПУЛ
	сч	ДОП
	пе	ПРЕС
	пб	ПУЛ
G62707	сч	E10
	зп	ДОП
	пб	ДИСП4
G62711	счи	М16
	нтж	ЕС5017
	пе	'65020'
	сч	ШЗЗОБМ
	и	E47(М16)
	по	G62716
	сч	
	мода	ПРСТОП
	зп	
G62716	сч	ДОП
	и	ДОПВР
	пе	'65020'
	мода	ПРСТОП
	сч	
	зп	ДОП
	сч	
	мода	ПРСТОП
	зп	
	пб	'65020'
ПОДВЕС	счи	М16
	нтж	ЕС5017
	пе	ПОДВ80
	уиа	'2003'
	зп	КУС5
	сч	ЗАКАЗ
	по	СК
	пв	ЧТРС(М10)
СК	сч	ОЧКУС-1(М14)
	и	E11
	пе	СКОЧ
	сч	СКЛАД
	или	E48-1(М14)
	зп	СКЛАД
	сч	E48-1(М14)
	или	ШОЧНАП-3(М2)
	нтж	E48-1(М14)
	зп	ШОЧНАП-3(М2)
	пе	СКОЧ
	сч	ШКНАЧ
	по	СКОЧ2
	нед	
СКОЧ5	уи	М14
	сч	E48-1(М14)
	зп	ШОЧНАП-3(М2)
	нтж	ШКНАЧ
	зп	ШКНАЧ
	уиа	ПРЛ2А(М11)
	сч	ОЧКУС-1(М14)
	пв	ПРЛ17А(М2)
	пв	ДЛЯДИС(М10)
	сч	E48-1(М14)
	уиа	'3'
	пб	ПОДОБМ
СКОЧ2	сч	СКЛАД
	зп	ШОЧНАП-3(М2)
СКОЧ3	сч	
	зп	СКЛАД
СКОЧ	уиа	'3'
	сч	ШОЧНАП-3(М2)
	по	ВЫХ3
	нед	
	уи	М14
	сч	ОЧКУС-1(М14)
	пв	ПРЛ17А(М2)
	сч	ТЗНМЛ-24(М1)
	и	E13
	по	СКОЧ4
	пв	ДЛЯДИС(М10)
	уиа	ПРЛ2А(М11)
	пб	МГНАЧ
СКОЧ4	пв	ТАБЗОН(М10)
	пв	ДЛЯДИС(М10)
	пб	ПОДВ80
ПРЕС	уиа	'2003'
	сч	ЗАКАЗ
	по	ПРЕС2
	пв	ЧТРС(М10)
ПРЕС2	сч	'1234'(М1)
	пе	ПРЕС1
	сч	ШОЧНАП-3(М2)
	пб	АНКОБ
ПРЕС1	нед	
	уи	М14
	сч	E48-1(М14)
	или	ШКНАЧ
	зп	ШКНАЧ
	сч	ШОЧНАП-3(М2)
АНКОБ	уиа	ПРЛ2А(М11)
	пе	СКОЧ
	сч	ШКНАЧ
	по	ПРЕС3
	нед	
	пб	СКОЧ5
ПРЕС3	сч	СКЛАД
	по	ЗПК5
	зп	ШОЧНАП-3(М2)
	пб	СКОЧ3
ЗПК5	зп	КУС5
	пб	ДИСП4
ПРЕС5	уиа	'2003'
	сч	МГЗ
	или	E8(М15)
	зп	МГЗ
	сч	ЗАКАЗ
	по	ПРЕС6
	пв	ЧТРС(М10)
ПРЕС6	сч	ШОЧНАП-3(М2)
	пб	АНКОБ
G63003	счи	М16
	нтж	ЕС5017
	пе	В1404
	пв	G63040(М10)
	уиа	В1404+3(М10)
G63006	мода	СОСТ
	сч	
	и	E8
	по	ВЫКЛМГ
	мода	СОСТ
	сч	
	и	E5
	по	ВЫКЛЗП
	пб	(М10)
G63013	счи	М16
	нтж	ЕС5017
	пе	G65211
	пам	0
	зп	РЯО3
	сч	МГЗ
	и	E8(М15)
	по	G65211
	сч	E6
	зп	ДОПВР
	сч	E5
	пам	0
	зп	КУСДВ
	пб	ДВИЖМЛ
G63022	счи	М16
	нтж	ЕС5017
	пе	В1241
	пв	G63040(М10)
	уиа	ЗКМЛ4И(М10)
	пб	G63006
Н1241	сч	ТЗНМЛ-24(М1)
	и	E13
	пе	ПРЛ3Б
	уиа	ПРЛ3Б(М10)
	сч	'1442'(М16)
	и	E16(М15)
	пе	АНПР
	сч	МГЗ
	и	E8(М15)
	по	ТАБЗОН
	пб	ВЫКМГ
АНПР	мода	ПРОП
	сч	
	по	ВЫКМГ
	сч	
	мода	ПРОП
	зп	
	пб	ТАБЗОН
ПРОП	пам	1
G63040	сч	
	увв	'50'(М1)
	уи	
	увв	'4115'
	мода	СОСТ
	зп	
	пб	(М10)
Н1351	сч	КУС2-1(М2)
	и	E5
	пе	ПРКЕС
	сч	ТЗНМЛ-24(М1)
	и	E13
	по	ПРКОБ
	увв	'4115'
	мода	Е9Е8
	и	
	нтж	E8
	по	ПРКЕС
	сч	
	зп	ДОП
	уиа	0(М7)
	сч	КУС2-1(М2)
	и	E30
	пе	ФСУМ
	сч	E16(М15)
	пб	ПРЛ2К
ПРКЕС	сч	КУС2-1(М2)
	сда	64+42
	уи	М12
	сч	КУС2-1(М2)
	мода	ПРФ
	и	
	нтж	E17
	по	АНВЫП
	сч	
	слиа	64(М12)
	мод	ТУС-1(М12)
	зп	
АНВЫП	сч	ДОП
	и	E48
	пе	G63076
	сч	ДОП
	по	G63107
	пам	0
	сч	E3
	мод	ТУС-1(М12)
	зп	8
	сч	
	зп	ДОП
	уиа	0(М1)
	сч	КУС2-1(М2)
	и	E5
	пе	ВЫХ1
	сч	КУС2-1(М2)
	и	E7
	пе	ВЫХ1
	уиа	9(М1)
	пб	ВЫХ1
G63076	сч	КУС2-1(М2)
	и	E30
	по	G63103
	сч	E48
	мод	ТУС-1(М12)
	зп	
	сч	
	зп	ДОП
	пб	ПРЛСЧД
G63103	уиа	11(М5)
	сч	
	зп	ДОП
	сч	КУС2-1(М2)
	и	E5
	по	АВ
	уиа	5(М5)
	пб	АВ
G63107	сч	КУС2-1(М2)
	и	E5
	по	АНВ1
	сч	
	мод	ТУС-1(М12)
	зп	8
	пб	ПРКОБ
АНВ1	сч	E24(М15)
	или	E16(М15)
	и	МГЗ
	по	ПРАН
	уиа	1(М7)
	и	E16(М15)
	по	ЗИМ16
	уиа	2(М7)
ЗИМ16	счи	М7
	мод	ТУС-1(М12)
	зп	8
	сч	КУС2-1(М2)
	и	E7
	по	ПРЛСЧМ
	сч	ТУС-1(М12)
	или	Е35П24
	нтж	Е35П24
	нтж	Е36
	зп	ТУС-1(М12)
	сч	ТЗОНМЛ-24(М1)
	мода	К2529
	и	
	зп	ТЗОНМЛ-24(М1)
	пб	ПРЛСЧД
ПРЛСЧМ	сч	КУС2-1(М2)
	и	E30
	пе	ПРЛСЧД
	сч	КУС2-1(М2)
	и	E18
	по	ПРЛСЧД
	сч	КУС2-1(М2)
	и	E29
	по	ПРЛСЧД
	увв	'4177'
	по	ПРЛСЧД
	мод	ТУС-1(М12)
	или	
	мод	ТУС-1(М12)
	зп	
	пб	ПРЛСЧД
ПРАН	сч	КУС2-1(М2)
	и	E7
	по	АНОБМ
	сч	КУС2-1(М2)
	и	E30
	по	G63144
	увв	'4117'
	мод	ТУС-1(М12)
	зп	
G63144	сч	КУСДВ
	мода	D63570
	и	
	пе	G63151
	увв	'4117'
	и	E11
	по	G63151
	уиа	3(М7)
	пб	ЗИМ16
G63151	уиа	0(М7)
	пб	ЗИМ16
АНОБМ	сч	ТЗНМЛ-24(М1)
	и	E14
	по	ДАН
	нтж	ТЗНМЛ-24(М1)
	зп	ТЗНМЛ-24(М1)
	пб	ПОДВЕС
ДАН	сч	КУС2-1(М2)
	и	E30
	по	ДАН1
	увв	'4117'
	мод	ТУС-1(М12)
	зп	
	увв	'4035'
	и	E8(М2)
	сда	64+2
	мод	ТУС-1(М12)
	или	
	мод	ТУС-1(М12)
	зп	
	уиа	64(М5)
	пб	АВ
ДАН1	увв	'4117'
	пам	0
	по	БЛИСХ1
	и	Е12Е11
	по	ПРОШ
	уиа	3(М7)
	и	E12
	по	ЗИМ16
	уиа	5(М7)
	пб	ЗИМ16
ПРОШ	увв	'4117'
	нтж	E13
	пе	ПРОШ2
	сч	КУС2-1(М2)
	и	E18
	по	БЛИСХ1
	увв	'4117'
	пб	ПРОШ5
ПРОШ2	увв	'4117'
	или	E13
	нтж	E13
ПРОШ5	мода	МСК
	сбр	
	мода	П15
	нед	
	уи	М5
	пб	АВ
ПРОШ1	сч	3
	и	E9
	пе	ПП
	сч	ТЗОНМЛ-24(М1)
	слц	E25
	зп	ТЗОНМЛ-24(М1)
	и	E28
	по	ПРОШ3
ПП	сч	ТЗОНМЛ-24(М1)
	мода	К2529
	и	
	зп	ТЗОНМЛ-24(М1)
	увв	'4012'
	пам	0
	сда	64-5
	или	П7
	уи	М7
	увв	'4117'
	уиа	'2003'
	зп	СМ
	сч	КУС2-1(М2)
	и	E29
	по	G63223
	сч	СМ
	сда	64-34
G63220	мод	ТУС-1(М12)
	или	
	мод	ТУС-1(М12)
	зп	
	пб	ЗИМ16
G63223	сч	СМ
	пб	G63220
ПРОШ3	сч	ТЗНМЛ-24(М1)
	или	E14
	зп	ТЗНМЛ-24(М1)
	сч	П11
	зп	КУСДВ
	уиа	ПРЛ2А(М11)
	пб	ДВИЖМЛ
БЛИСХ1	увв	'4012'
	сда	64-5
	уи	М7
	сч	КУС2-1(М2)
	сда	64+42
	уи	М12
	сч	КУС2-1(М2)
	и	E17
	пе	ЗИМ16
	слиа	64(М12)
	пб	ЗИМ16
ПРКОБ	сч	МГЗ
	и	E8(М15)
	пе	G63245
	сч	ДОП
	по	НОРМА4
	сч	МГЗ
	или	E8(М15)
	зп	МГЗ
	пб	ПРЗП7
НОРМА4	уиа	-7(М6)
	уиа	ЗКМЛ4И(М10)
	пб	ВЫХ0
G63245	сч	ДОП
	по	НОРМА2
	сч	КУС2-1(М2)
	и	E18
	пе	НОРМА2
	пб	ПРЗП7
G63250	мода	
	пв	G63040(М10)
	мода	Е9Е8
	и	
	нтж	E8
	пе	АВН
	мода	СОСТ
	сч	
	и	П140
	по	ГАШНК
	и	E7
	сда	64+3
	уи	М10
	нтж	E4
	уи	М7
	сч	МГЗ
	мода	(М10)
	или	E24(М15)
	мода	(М7)
	или	E24(М15)
	мода	(М7)
	нтж	E24(М15)
	зп	МГЗ
	сч	ТЗНМЛ-24(М1)
	и	E13
	пе	НОРМА
	сч	'1442'(М16)
	и	E16(М15)
	пе	ВДВ
	сч	КУС2-1(М2)
	и	E5
	по	ВДВ
	сч	МГЗ
	или	E8(М15)
	зп	МГЗ
	пб	НОРМА
ВДВ	мода	СОСТ
	сч	
	и	E7
	по	КУСТ
	сч	ЗОНАТР
	слц	E2
	и	П3777
КУСТ	зп	ЗОНАМЛ
	уиа	ПОДВ80(М10)
	пб	ЗОНТАБ
АВН	сч	'1442'(М16)
	и	E16(М15)
	пе	ГАШНК
	сч	КУС2-1(М2)
	и	E5
	по	ГАШНК
	уиа	5(М5)
	сч	МГЗ
	или	E8(М15)
	зп	МГЗ
	пб	АВ
ГАШНК	сч	E24(М15)
	или	E16(М15)
	нтж	ВСЕЕД
	и	МГЗ
	зп	МГЗ
	пб	НОРМА
Н1469	счи	М16
	нтж	ЕС5017
	пе	ПРЛСЧ7
	увв	'4117'
	и	E11
	по	ПРЛСЧ7
	уиа	ПРЛ2А(М11)
	пб	ЗКМЛ
G63315	счи	М16
	нтж	ЕС5017
	пе	ПОДВ80
	сч	ЗОНАТР
	вч	ЗОНАМЛ
	по	НЕС1
	сч	МГЗ
	и	E8(М15)
	пе	ПОДВ80
	сч	ВСЕЕД
	мода	ПРОП
	зп	
	пб	ПОДВ80
НЕС1	сч	МГЗ
	и	E8(М15)
	по	ПОДВ80
	мода	ПРОП
	зп	
	пб	ПОДВ80
ЗПМГ	зп	ПЛОТН
	сч	МГЗ
	и	E32(М15)
	по	G63333
	сч	E1
	зп	МЛЕС
	пб	ВЫХ3
G63333	счи	М1
	и	П7
	или	E18
	зп	КУС5
	сч	E1
	зп	ДОП
	пб	ВЫХ3
ЗАПДВ	сч	E8
	зп	ДОПВР
	счи	М10
	зп	КУСДВ
	пб	ПОДВ91
G63342	счи	М16
	нтж	ЕС5017
	пе	Б61
	пам	0
	уиа	Б61+1(М10)
	сч	ТЗНМЛ-24(М1)
	и	E13
	пе	ГОТМГ
	сч	МГЗ
	или	E8(М15)
	зп	МГЗ
	сч	КУСДВ
	и	П30
	по	ГОТМГ
	сч	МГЗ
	нтж	E8(М15)
	зп	МГЗ
	сч	
ГОТМГ	увв	'50'(М1)
	уи	
	увв	'4115'
	и	E8
	нтж	E8
	пб	(М10)
НАБ70	счи	М16
	нтж	ЕС5017
	пе	G65451
	увв	'50'(М1)
	уи	
	увв	'4115'
	и	E8
	по	АВ
	пб	ПРЛЧП
ЗКМЛ4Д	уиа	'3'
	счи	М16
	нтж	ЕС5017
	пе	НЕОХ1
	сч	E8
	зп	ДОПВР
	сч	РЯО3
	и	E4
	по	СЧ3
	сч	КУС2-1(М2)
	и	E18
	пе	НЕПР
	сч	КУС2-1(М2)
	и	E29
	по	НЕПР
	сч	КУС2-1(М2)
	сда	64+42
	уи	М12
	сч	КУС2-1(М2)
	и	E17
	пе	G63376
	слиа	64(М12)
G63376	мод	ТУС-1(М12)
	сч	10
	слц	Е15П1
	и	Е15П1
	уиа	'2003'
	зп	СМ
	увв	'177'
	увв	'4177'
	нтж	СМ
	пе	НЕПР
	сч	СМ
	слц	Е15П1
	и	Е15П1
	увв	'177'
НЕПР	сч	E1
	уиа	'3'
СЧ3	или	E3
	зп	КУСДВ
	или	ПЛОТН
	пб	ДВИЖМЛ
НЕОХ1	сч	E1
	пб	ДВИЖМЛ
НЕОХ	уиа	ОХ5017(М10)
	пб	ГОТМГ
G63412	сч	РМЛ
	мода	D63571
	и	
	мода	D63572
	или	
	мода	D63577
	зп	
	сч	ЕС5017
	сда	64-39
	или	E5
	мода	
	пв	ФИЗОБМ(М16)
	мода	D63574
	или	
	мода	D63572
	зп	
	мода	D63577
	сч	
	мода	D63571
	и	
	мода	D63572
	или	
	зп	РМЛ
	пб	'1510'(М7)
G63426	мода	ОБРМБ+1(М7)
	пио	(М16)
	счи	М16
	нтж	E5
	по	E7(М7)
	сч	ТЗНМЛ-24(М3)
	и	ПРСВЛ
	пе	ОБРМБ+1(М7)
	сч	E13
	или	ТЗНМЛ-24(М3)
	зп	ТЗНМЛ-24(М3)
	счи	М3
	и	П7
	нтж	П7
	уи	М1
	сч	E8(М1)
	или	МГЗ
	зп	МГЗ
	уиа	7(М1)
	счи	М4
	сда	64-42
	мода	D63475
	рзб	
	уиа	D63477(М16)
	или	-1(М16)
	зп	(М16)
	мода	(М7)
	уиа	E7(М15)
	уии	М32(М15)
	сч	E23
	пб	ТВ40
ПОЕС	сч	ФКУС
	и	П3
	уи	М13
	мод	РЯО
	сч	'71'(М15)
	сд	КТОМ-1(М13)
	сда	64+3
	и	П7
	нтж	ЕС5017
	пе	БИБ
	сч	ИНФСЛЭ
	сда	64+39
	и	П7
	по	БИБ
	уиа	1(М13)
	нтж	П7
	по	'5757'
	пб	G06002
ПРЛЕС	увв	'4115'
	мода	Е9Е8
	и	
	нтж	E8
	по	ПРЛЕН
	сч	E16(М15)
	пб	ПРЛ2К
ЕСМ1	уи	М15
	мода	D63601
	сч	
	или	E8
	сда	64(М15)
	уиа	'2003'
	зп	СМ
	сч	МГЗ
	сбр	СМ
	сда	64+33
	или	8(М3)
	зп	8(М3)
	пб	E13(М1)
К2529	конд	в'7777774077777777'
МСК	конд	п'0000У0'
П15	конд	п'00000,'
D63475	конд	п'000077'
D63476	конд	п'1МГ-00'
D63477	текст	п'1МГ-00 ЛЕНТА ЕС.ДАЙ НОМЕР↑0000'
СМИ1	сч	ОЧКУС-1(М14)
	и	E7
	по	И7И1
	уиа	0(М7)
И7И1	уии	М1(М7)
	пб	ВЫХ1
G63507	сч	РЗМГЕС
	и	'73'(М13)
	по	E8(М7)
	уиа	'2003'
	сч	РЗМГЕС
	сда	64+32
	или	E13
	зп	26(М7)
	и	П7777
	вчоб	NБЛ
	по	G63516
	сч	26(М7)
	или	E44
	зп	26(М7)
G63516	сч	ТЗНМЛ-24(М3)
	пе	E13(М7)
	сч	'2072'
	нед	
	уи	М1
	счи	М3
	мода	ПРОМ
	зп	
	сч	26(М7)
	и	П7777
	сда	64-6
	мода	ПРОМ
	или	
	мод	НЗАД(М1)
	зп	
	уии	М13(М3)
	уиа	-2(М16)
	пб	СТМГ+13(М7)
G63527	пино	G63536(М16)
	сч	'2072'
	по	G63532
	сч	E48
	зп	СМ
	пб	ЭКВЫХ
G63532	мод	НЗАД
	уиа	0(М16)
	сч	E48-1(М16)
	зп	'2072'
	счи	М32
	уи	М33
	пб	АНВО9Б
G63536	слиа	-1(М16)
	пио	G63540(М16)
	слиа	1(М16)
	пб	G05415
G63540	сч	РЗМГЕС
	сда	64-24
	нед	П7
	и	П7
	нтж	П7
	уи	М16
	слиа	'40'(М16)
	сч	ВСЕЕД
	нтж	E13
	нтж	ПРСВЛ
	и	ТЗНМЛ-24(М16)
	зп	ТЗНМЛ-24(М16)
	сч	
	зп	'2072'
	зп	РЗМГЕС
	пб	ЭКВЫХ
G63550	мода	D63572
	сч	
	и	E24(М15)
	уиа	'1655'(М16)
	по	E3(М1)
	уиа	'1615'(М16)
	сч	'2072'
	по	E3(М1)
	уиа	'1626'(М16)
	сч	РЗМГЕС
	пе	E3(М1)
	сч	ТР5(М7)
	сда	64-32
	сда	64+32
	зп	'46'(М7)
	по	E3(М1)
	мода	
	пв	ИЗ10В8(М15)
	сда	64-36
	зп	'47'(М7)
	сч	'47'(М7)
	сда	64+4
	или	'73'(М3)
	зп	РЗМГЕС
	уиа	-1(М4)
	уиа	'2003'
	пб	Е15П2(М1)
	конд	в'0000000000077776'
D63567	конд	в'7777776377777777'
D63570	конд	A(E3)
D63571	конд	в'0000037700177777'
D63572	пам	1
	конд	в'0077777777777777'
D63574	конд	в'0000037700000000'
D63575	пам	1
D63576	пам	1
D63577	пам	1
Р	пам	1
D63601	конд	в'4010020040100000'
ПРФ	конд	п'00010F'
КИТ ВНЕШ ДОП,ДОПВР,ЕС5017,ЗАКАЗ,КУС5,КУСДВ,МГЗ,ПЛОТН,РЗМГЕС
ВЗУ ВНЕШ ВХЛ,ФЗО5,ФИЗОБМ,ДВИЖМЛ,ПРИП1С,КРАХМЛ,УЗЩ8,ФЗО3В
ВЗУ ВНЕШ ПОДОБМ,ВОЗЬМИ,ПР,ФЗО1Б,БИБ,АНВО9Б
ДИСКИ ВНЕШ КТОМ
ДИСП70 ВНЕШ ВСЕЕД,ЗОНАМЛ,ЗОНАТР,ИНФСЛЭ,КУС2,МГНЕИС,НЗАД
ДИСП70 ВНЕШ ОКДВИЖ,П140,П30,П3777,П377,П37,П3,П6,П7777,П77
ДИСП70 ВНЕШ П7,РМЛ,РЭ1,РЯО3,РЯО,СКЛАД,СМ,СЧПР2,ТВ40,ТЗНМЛ
ДИСП70 ВНЕШ ТЗОНМЛ,УСМ,ФКУС,ФКУСАД,ШЗЗОБМ,ШИФРАЦ,ШИФРПЛ,ШКАП
ДИСП70 ВНЕШ ШКЗЗП,ШКНАЧ,РЯО1,ТУС,NБЛ,U4115,ОЧКУС,МЛЕС
ХЛАМ ВНЕШ ПОДВ80,СНЗКМЛ,ПРЛЧП
КИТ ВНЕШ Е32П25
ДИСП70 ВНЕШ ДИСП70,Е12Е11,Е15П1,Е15П2,Е18П1,Е26Е25,Е43Е42
ДИСП70 ВНЕШ Е48П25,Е48П43,Е6П4,ИЗ10В8,Е35П31
ДМЛМБ ВНЕШ ЗКМЛ,A64770,ГАШСОЛ,ЗОНТАБ,ВЫХ1,ДЛЯДИС,ДМЛМБ
ДМЛМБ ВНЕШ ДИСП1,ПУЛ,ПРЛ2К,ПРЛЕН,ПРЛ2А,ДИСП4,ВЫКЛМГ,ПРЗП7
ДМЛМБ ВНЕШ ВЫХ3,ВЫХ0,ЗКМЛ1,ЗКМЛ4И,В1241,ВЫКЛЗП,Б61,ВЫКМГ
ДМЛМБ ВНЕШ ПРЛ3Б,НОРМА,НОРМА2,ОБХОД,В1404,ОХ5017,ПРЛ17А
ДМЛМБ ВНЕШ ПРЛСЧ7,(ПРЛСЧД,ПРЛСЧМ),ТАБЗОН,АВ,ЗКМЛ4П
        вход    G63507,G63550,ЕСМ1,G63412,G63426,ПРОШ1
ШОЧНАП	экв	'1260'
ТР5	экв	'1327'
СТМГ	экв	'1531'
СТМД	экв	'1571'
ОБРМБ	экв	'1731'
ДЛЯНБ	экв	'3052'
ШР	экв	'3054'
ЛИС2	экв	'3172'
П14037	экв	'3227'
ПРСВЛ	экв	'3360'
ЭКВЫХ	экв	'5000'
ПОДВ91	экв	'7220'
ВШГ	экв	'17760'
ИЗШГП	экв	'17773'
G05415 ЭКВ '05415'
G06002 ЭКВ '06002'
ФЗО4 ЭКВ '06263'
G65211 ЭКВ '65211'
G65451 ЭКВ '65451'
Е35П24 ЭКВ '02071'
Е7Е21 ЭКВ '00472'
П11 ЭКВ '73445'
КОП ЭКВ '6103'
 ФИНИШ
