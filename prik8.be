ПРИК8	СТАРТ	'11400'
	Б
	Е
	М
	употр	ПРИК8(М1)
	сч	ТР5-П(М7)
	и	П77
	уи	М2
	сда	64+3
	по	ПНЕТ-П(М7)
	вч	П3
	по	ПНЕТ-П(М7)
	счи	М2
	сда	64-42
	рзб	НАПРМГ
	зп	D11515
	нтж	НОММБ
	по	ПНЕТ-П(М7)
	сч	D11515
	нтж	НОММБ1
	по	ПНЕТ-П(М7)
	сч	E1
	пв	ТБУФ(М15)
	сда	64-8
	уи	М4
	сда	64-2
	или	МАЛКАТ
	зп	РЯ1-П(М7)
	пв	ФИЗОБМ(М16)
	мода	0(М4)
	сч	'300'(М2)
	зп	D11516
	сч	РЯ1-П(М7)
	уиа	-31(М5)
	пв	ТБУФ(М15)
	сч	D11516
	и	Е48П17
	пе	ПНЕТ-П(М7)
	мода	G11500
	уиа	(М15)
	счи	М15
	сда	64-24
	зп	4(М7)
	сч	0
	пв	ТБУФ(М15)
	сда	64-8
	уи	М4
	сда	64-2
	или	D11515
	или	E19
	зп	D11515
G11427	уиа	-1(М6)
	уиа	-1(М3)
G11430	сч	'501'(М3)
	зп	0(М4)
	сч	D11515
	пв	ФИЗОБМ(М16)
	сч	0
	зп	0(М4)
	сч	D11515
	или	E18
	или	E29
	пв	ФИЗОБМ(М16)
	уиа	'3'
	уиа	-1023(М14)
	сч	К2003
	пв	ПОК(М13)
G11437	мода	'1777'(М14)
	сч	0(М4)
	уи	
	мода	G11437
	цикл	0(М14)
	сч	П13
	мода	0
	пв	ПОК(М13)
	сч	'501'(М3)
	нтж	0(М4)
	пе	G11504
	мода	G11430
	цикл	0(М3)
	сч	E17(М5)
	или	D11516
	зп	D11516
G11447	сч	D11515
	слц	E3
	зп	D11515
	мода	G11427
	цикл	0(М5)
G11452	сч	0
	зп	4(М7)
	сч	E8
	пв	ЗАХЗАН(М15)
	сч	ТЗФСТР+8(М2)
	и	Е16П1
	или	D11516
	зп	ТЗФСТР+8(М2)
	и	Е48П17
	чед	0
	уи	М15
	слц	ТОБ
	зп	ТОБ
	счи	М15
	слц	ТМБ
	зп	ТМБ
	счи	М15
	слц	ОЗУ
	зп	ОЗУ
	счи	М4
	сда	64-2
	или	МАЛКАТ
	зп	D11515
	пв	ФИЗОБМ(М16)
	сч	D11516
	мода	0(М4)
	зп	'300'(М2)
	сч	D11515
	нтж	E18
	пв	ФИЗОБМ(М16)
	сч	E8
	пв	ГАШЗАН(М15)
	сч	D11515
	или	E19
	мода	0
	пв	ТБУФ(М15)
	счи	М2
	сда	64-42
	рзб	D11514
	или	D11513
	зп	D11512
	уиа	ТПОДКЛ-ПРИК8(М16)
	пб	КОНВЫД-П(М7)
G11500	мода	'1777'(М14)
	зп	0(М4)
	уиа	'3'
	пб	G11437
G11502	мода	G11430
	цикл	0(М6)
	пб	G11447
G11504	нтж	'501'(М3)
	пе	G11502
	слиа	28(М5)
	счи	М5
	по	G11452
	слиа	-28(М5)
	пб	G11502
ТПОДКЛ	текст	п'2ПОДКЛЮЧЕН М'
D11512	пам	1
D11513	конд	п'Б00↑00'
D11514	конд	п'077000'
D11515	пам	1
D11516	пам	1
ВЗУ	ВНЕШ	ПОК,ФИЗОБМ
ДИСКИ	ВНЕШ	Е16П1
ДИСП70	ВНЕШ	ЗАХЗАН,ГАШЗАН,ТБУФ,МАЛКАТ,ТОБ,ОЗУ,ТМБ,НОММБ1
ДИСП70	ВНЕШ	НОММБ,П3,НАПРМГ,П13,К2003,П77,ТЗФСТР
КАЧКА	ВНЕШ	Е48П17
ПРИКАЗ	ВНЕШ	(П,ПРИКАЗ),ТР5,КОНВЫД,ПНЕТ,РЯ1
	ФИНИШ
