ЭК7	СТАРТ	'11400'
	Б
	Е
	М
	употр	ЭК7-768(М7)
Э133	сч	БАЗАДР
	пе	G11405
	мода	0
	пв	ТБУФ(М15)
	сда	64-8
	зп	БАЗАДР
	сда	64-2
	или	КУС577
	слц	НОММЛ1
	пв	ФИЗОБМ(М16)
G11405	мод	БАЗАДР
	пб	'577'
G11406	уиа	'3'
	сч	0(М3)
	сда	64-12
	счмр	
	и	П7
	уи	М15
	мода	G11424
	пио	0(М15)
	слиа	-1(М15)
	мода	G11501
	пио	0(М15)
	слиа	-1(М15)
	мода	G11474
	пио	0(М15)
	слиа	-1(М15)
	мода	G11503
	пио	0(М15)
	слиа	-1(М15)
	мода	G11520
	пио	0(М15)
	слиа	-1(М15)
	мода	G11530
	пио	0(М15)
	слиа	-1(М15)
	мода	G11547
	пио	0(М15)
	уиа	'44'(М6)
	пб	G11517
G11424	мод	'77503'
	сч	0
	пе	G11473
	мод	'77504'
	сч	0
	пе	G11471
	мода	0
	пв	ТБУФ(М15)
	сда	64-8
	уи	М15
	сч	0(М3)
	сда	64+23
	и	П17
	уи	М17
	мода	D77505(М17)
	уиа	(М16)
	счи	М16
	зп	'77503'
	слц	E1
	зп	'77504'
	счи	М15
	мод	'77504'
	зп	0
	счи	М17
	сда	64-6
	уи	М5
	сли	М5(М15)
	счи	М15
	сда	64-2
	или	КУС644
	слц	НОММЛ1
	пв	ФИЗОБМ(М16)
	уиа	'77601'(М15)
G11445	мода	0(М5)
	сч	СТЗОН(М15)
	уиа	'2003'
	рег	'101'
	мода	G70600
	зп	СТЗОН(М15)
	рег	'107'
	уиа	'3'
	мода	G11445
	цикл	0(М15)
	мод	'77504'
	сч	0
	уи	М16
	слц	'77532'
	зп	'77522'
	уиа	'76001'(М15)
	счи	
G11456	мода	0(М16)
	зп	'1777'(М15)
	мода	G11456
	цикл	0(М15)
	сч	ГОД
	зп	0(М16)
	сч	ВРЕМЯ
	зп	1(М16)
	уиа	-2(М15)
	сч	'77522'
G11463	зп	'77521'(М15)
	мода	2(М16)
	зп	2(М15)
	слц	'77535'(М15)
	зп	'77525'(М15)
	сч	'77540'(М15)
	мода	5(М16)
	зп	2(М15)
	сч	'77525'(М15)
	мода	G11463
	цикл	0(М15)
G11471	мод	'77504'
	сч	0
	мод	'77503'
	зп	0
G11473	пб	КОНЕЦ1-Э(М7)
G11474	уиа	'2003'
	мод	'77504'
	сч	0
	сда	64-2
	или	E19
	пв	ТБУФ(М15)
	счи	
	мод	'77504'
	зп	0
G11501	счи	
	мод	'77503'
	зп	0
	пб	G11473
G11503	сч	0(М3)
	сда	64+14
	уи	М5
	сда	64+16
	сда	64-10
	уи	М16
	уиа	'72'(М6)
	мода	G11517
	уиа	(М15)
	счи	М15
	мода	0
	пв	ЗАПВЫХ(М15)
	уиа	'76001'(М15)
G11512	мода	0(М16)
	сч	'1777'(М15)
	уиа	
	мода	0(М5)
	зп	'1777'(М15)
	уиа	'3'
	мода	G11512
	цикл	0(М15)
	пб	G11473
G11517	пб	АВОС1-Э(М7)
G11520	сч	0(М3)
	и	E4
	пе	G11526
	сч	0(М3)
	и	П7
	зп	D77545
	уиа	-15(М15)
	счи	
G11524	зп	'77565'(М15)
	мода	G11524
	цикл	0(М15)
G11526	уиа	D77545(М15)
	счи	М15
	зп	0(М3)
	пб	G11473
G11530	сч	0(М3)
	и	П1777
	уи	М15
	нтж	0(М3)
	сда	64+10
	и	КОНФИЛ+1
	уи	М16
	и	П37
	сда	64-5
	зп	D11604
	счи	М16
	сда	64-38
	рзб	Е34Е30
	или	D11604
	зп	D11604
	пв	УПРИ1(М10)
	мода	G11546
	уиа	(М16)
	сч	К2003
	уи	М21
	счи	М16
	сда	64-24
	зп	4(М7)
	уиа	'2002'
	сч	ТОП(М15)
	уиа	'2003'
G11545	зп	0(М3)
	пб	G11473
G11546	сч	СМ
	пб	G11545
G11547	сч	0(М3)
	сда	64+24
	и	П77
	уи	М15
	сч	Е48-1(М2)
	зп	D71664
	сч	0(М3)
	и	Е33
	или	'50'(М3)
	зп	'50'(М3)
	мода	G11603
	пио	0(М15)
	сч	ШКРЗ
	и	Е48-1(М15)
	по	G11603
	мод	НЗАД(М15)
	уиа	(М17)
	сч	27(М17)
	сда	64+21
	и	П77
	пе	G11603
	сч	0(М3)
	сда	64+6
	и	П77
	нтж	П77
	по	G11601
	уиа	'2003'
	сч	E40(М3)
	или	Е48-1(М15)
	зп	E40(М3)
	сч	ШКОК
	нтж	Е48-1(М15)
	зп	ШКОК
	сч	ОСПОД
	или	Е48-1(М15)
	зп	ОСПОД
	счи	М2
	сда	64-21
	или	27(М17)
	зп	27(М17)
G11573	сч	'44'(М17)
	и	Е41П1
	или	Е48П42
	зп	'44'(М17)
	сч	Е48-1(М15)
	нтж	ВСЕЕД
	и	МШГП
	зп	МШГП
	уиа	'71604'(М17)
	счи	М17
	пб	G11545
G11601	сч	ПАК
	или	Е48-1(М15)
	зп	ПАК
	пб	G11573
G11603	счи	
	пб	G11545
D11604	пам	1
КУС644	конд	м24в'644'м17в'1'
G70600	экв	'70600'
D71664	экв	'71664'
D77505	экв	'77505'
D77545	экв	'77545'
БОЭК1	ВНЕШ	ЗАПВЫХ
ВЗУ	ВНЕШ	ФИЗОБМ
ДИСП70	ВНЕШ	ТБУФ,Е41П1,НЗАД,СМ,МШГП,ОСПОД,ВРЕМЯ,П7,НОММЛ1
ДИСП70	ВНЕШ	П37,П17,ПАК,ШКОК,П1777,ГОД,К2003,СТЗОН,П77,ВСЕЕД
ЗОН676	ВНЕШ	БАЗАДР,КУС577
КАЧКА	ВНЕШ	ШКРЗ,КОНФИЛ
КИТ	ВНЕШ	Е48П42,Е34Е30
СОСТАВ	ВНЕШ	ТОП
ХЛАМ	ВНЕШ	УПРИ1
ЭКВВОД	ВНЕШ	(Э,ЭКВВОД),КОНЕЦ1,АВОС1
	ВХОД	Э133
	ФИНИШ