ЧАСЫ	СТАРТ	'50000'
	Б
	Е
	М
	употр	ЧАСЫ(М7)
	пам	1
	конд	п'.00000'
	пам	23
D50031	пам	4
	конд	п'000008'
	конд	в'0000000000714244'
	пам	1
	конд	в'0000000000100000'
D50041	конд	в'4000000000000000'
D50042	пам	6
НАЧАЛО	зп	D50170
	нед	
	зп	D50031
	мод	D50031
	сч	ТУС-1
	уи	М1
	сч	'44'(М1)
	уи	М16
	мода	D50042
	уиа	0(М17)
	слиа	-5(М16)
	мода	G50075
	пио	(М16)
	слиа	-1(М16)
	мода	G50061
	пио	(М16)
	стоп	
G50061	сч	(М1)
	зп	D50146
	сда	64+40
	уи	М16
	вч	E3
	по	G50153
	слиа	-1(М16)
	мода	G50070
	пио	(М16)
G50066	мода	G50147
	уиа	0(М16)
	сч	D50074
	пб	вызнп
G50070	сч	(М1)
	и	=в'7760000000037777'
	счм	D50031
	сда	64-15
	или	(М17)
	зп	(М1)
	пб	G50066
D50074	конд	в'0120000003000140'
G50075	сч	ПРЕДЕЛ
	и	E40
	по	G50124
	уиа	-7(М14)
	уиа	0(М13)
G50100	увв	'4152'
	зп	D50171
	увв	'4153'
	сда	64-20
	или	D50171
	зп	D50171
	и	E21
	пе	G50100
	сч	D50171
	и	E22
	по	G50116
	мода	G50113
	пино	(М13)
	уиа	1(М13)
	мода	ОШЭЧАС
	уиа	0(М16)
	мода	G50113
	уиа	0(М15)
	уии	М32(М15)
	сч	E23
	пб	ТВ40
G50113	сч	E1
	пв	ТАЙМЕР(М15)
	мода	G50100
	цикл	(М14)
	пб	G50124
G50116	сч	D50171
	сбр	=в'0017774003777777'
	рзб	=м40в'037'м32в'077'м24в'077'м16в'177'м8в'177'
G50120	зп	(М1)
	сч	D50031
	и	E6
	пе	G50153
	сч	=в'0000000201300007'
	зп	5(М1)
	пб	G50153
G50124	сч	
	зп	D50163
	сч	ВРЕМЯ
	уиа	-2(М13)
	уиа	0(М14)
G50127	зп	D50164
	мода	ЧАС+2
	вч	(М13)
	пе	G50132
	слиа	1(М14)
	пб	G50127
G50132	сч	D50163
	сда	64-16
	зп	D50163
	счи	М14
	уиа	0(М14)
	пв	ПЕРЕВ(М15)
	или	D50163
	зп	D50163
	сч	D50164
	мода	G50127
	цикл	(М13)
	сч	D50163
	сбр	ПРОБ6
	сда	64+16
	счм	ГОД
	сда	64-13
	рзб	=в'0003740000000000'
	или	(М17)
	счм	ГОД
	сда	64-19
	рзб	=в'0760000000000000'
	или	(М17)
	пб	G50120
D50146	пам	1
G50147	сч	D50146
	и	E40
	по	G50153
	сч	E47(М1)
	или	=в'0000024000000000'
	нтж	=в'0000024000000000'
	зп	E47(М1)
G50153	сч	D50170
	уиа	'2003'
	или	ШГ
	зп	ШГ
	сч	D50041
	нтж	E48
	слц	'41'(М1)
	зп	'41'(М1)
	сч	E5
	пб	БЛИСКН
ЧАС	конд	ф'180000'
	конд	ф'3000'
	конд	ф'50'
D50163	пам	1
D50164	пам	1
ОШЭЧАС	конд	п'2ОШ ЭЛ'
	конд	п' ЧАСОВ'
	конд	п'↑     '
D50170	пам	1
D50171	пам	1
        отмен   М7
        употр   ЧАСЫ(М1)
G50172	сч	(М1)
	уи	М14
	мод	'531'(М7) неясно
	уиа	0(М2)
	сч	ЧАСЫ+5
	уи	М3
	сч	E1
	пв	ТБУФ(М15)
	сда	64-8
	уи	М4
	сда	64-2
	или	НОММБ
	зп	D50243
	или	D50241
	зп	D50241
G50202	ноп
	сч	D50241
	пв	ФИЗОБМ(М16)
	уиа	'3'
	ржа	'7'
	по	G50202
	мода	(М4)
	сч	'100'(М2)
	зп	D50244
	мода	(М4)
	сч	E35(М2)
	зп	D50245
	сч	D50243
	или	D50240
	зп	D50240
G50211	сч	D50240
	пв	ФИЗОБМ(М16)
	уиа	'3'
	ржа	'7'
	по	G50211
	сч	'377'(М4)
	нтж	КЛЮЧГС
	по	G50226
	уиа	'77601'(М16) !ОТРИЦ?
	уии	М17(М4)
	сч	
G50217	ноп
	зп	(М17)
	мода	G50217
	цикл	(М16)
	сч	КЛЮЧГС
	зп	'377'(М4)
G50222	ноп
	сч	D50240
	нтж	E18
	мода	
	пв	ФИЗОБМ(М16)
	уиа	'3'
	ржа	'7'
	по	G50222
G50226	ноп
	счи	М2
	и	П17
	сда	64-3
	уи	М2
	сли	М2(М4)
	уии	М17(М14)
	слиа	'1762'(М17)
	сч	D50244
	счм	D50245
	счм	'77'(М3)
	уиа	-7(М16)
	пам	0
G50234	мода	(М2)
	счм	7(М16)
	мода	G50234
	цикл	(М16)
	счм	D50240
	пв	ТБУФ(М15)
	уиа	'3'
	пб	выхнп
D50240	конд	в'0000000000400024'
D50241	конд	в'0000000000400030'
КЛЮЧГС	конд	п'КЛЮЧГС'
D50243	пам	1
D50244	пам	1
D50245	пам	1
        литер
	пам	81
	конд	в'0000000007000175' какой-то странный мусор
	конд	в'0000000007000172'
ВЗУ	ВНЕШ	РАЗРЕ,ФИЗОБМ
ДИСП70	ВНЕШ	ПЕРЕВ,ТБУФ,БЛИСКН,ТВ40,ТАЙМЕР,ПРЕДЕЛ,ВРЕМЯ,НОММБ
ДИСП70	ВНЕШ	ШГ,П17,ГОД,ТУС
МОТТ	ВНЕШ	ПРОБ6
ХЛАМ	ВНЕШ	вызнп,выхнп
	ФИНИШ
