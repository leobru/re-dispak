ДОПРЕЗ	СТАРТ	'10000'
	Б
	Е
	М
	употр	ДОПРЕЗ(М13)
	счи	М13
	мод	АДЭК
	зп	E16
	мод	АДЭК
	уиа	0(М13)
	счрж	'77'
	зп	D10011
	ржа	'3'
	счи	М16
	зп	И16
	вчоб	D10010
	пе	G10012
	рж	D10011
	мода	(М16)
	пб	G10015
D10010	конд	п'8'
D10011	пам	1
G10012	сч	
	зп	
	рж	D10011
G10014	пам	0
	уиа	'44'(М16)
	пб	ЗАПЭКС
G10015	сч	СМ
	пб	G10025
	сч	
	пб	G11632
	зп
	пб	G10025
	зп
	пб	G10025
	зп
	пб	G10025
	зп
	пб	G10025
	зп
	пб	G10025
	зп
	пб	G10025
G10025	уиа	'2000'
	сч	(М15)
	уиа	'3'
	зп	D10135
	и	Е15П1
	уи	М16
	счи	М14
	зп	D10136
	уиа	
	сч	(М14)
	слиа	'1776'(М14)
	сч	(М14)
	уиа	'3'
	сч	D10135
	сда	64+45
	уиа	0(М16)
	по	G10036
	уиа	1(М16)
G10036	уиа	'2003'
	рег	'101'
	сч	обвнп1+6(М16)
	зп	D10144
	сч	D10145
	зп	обвнп1+6(М16)
	уиа	'3'
	счи	М16
	зп	D10137
	уиа	-767(М14)
	сч	E1
	зп	D10140
	сч	
	зп	D10134
G10045	мода	'1377'(М14) !ШТАТНО
	зп	БУФЕР
	мода	G10045
	цикл	(М14)
G10047	мода	G11546
	уиа	0(М16)
	уиа	'2003'
	счи	М16
	уи	М33
	счи	М15
	зп	И15
	мод	D10136
	уиа	0(М14)
	счи	М17
	зп	И17
	сч	ИВ25
	уи	М27
	сч	D11647
	пе	G10102
	сч	E3
	мод	D10137
	увв	'10'
	сч	E3
	пв	ТАЙМЕР(М15)
	сч	ГУС
	и	E48
	по	ВИСП3
	сч	ЭКБУД
	мод	НЗАД
	или	Е48-1
	зп	ЭКБУД
	зп	D11647
	пб	ВИСП3
G10066	сч	БУФЕР+1
	сда	64+24
	и	П77
	сда	64-29
	зп	БУФЕР
	сч	БУФЕР+1
	сда	64+2
	и	Е35П31
	сда	64+6
	или	БУФЕР
	зп	БУФЕР
	сч	БУФЕР+1
	сда	64+40
	и	П17
	сда	64-20
	или	БУФЕР
	зп	БУФЕР
	по	G11621
	сч	ГОД
	и	D11634
	или	БУФЕР
	зп	ГОД
	пб	G11564
G10102	сч	E6
	пв	ТАЙМЕР(М15)
	мод	D10137
	сч	E42
	мода	
	пв	ТВ67(М15)
	сч	П5
	мод	D10137
	увв	'10'
	сч	
	зп	D11647
	сч	ГУС
	и	E48
	по	ВИСП3
	сч	ЭКБУД
	мод	НЗАД
	или	Е48-1
	зп	ЭКБУД
	пб	ВИСП3
	отмен	(М13)
G10114	пам	0
	мод	АДЭК
	уиа	0(М17)
	употр	ДОПРЕЗ(М17)
	мод	D10137
	увв	'4014'
	зп	D10142
	пе	G10120
	сч	БУФЕР+1
	по	G10132
G10120	сч	D10140
	уи	М16
	нтж	D10141
	по	БМВ
	сли	М16(М17)
	сч	D10142
	мод	D10134
	сда	64-40
	или	БУФЕР-ДОПРЕЗ(М16)
	зп	БУФЕР-ДОПРЕЗ(М16)
	сч	D10134
	слц	E4
	зп	D10134
	нтж	П60
	пе	G10132
	зп	D10134
	сч	D10140
	слц	E1
	зп	D10140
G10132	пам	0
	сч	П5
	мод	D10137
	увв	'10'
	пб	БМВ
D10134	пам	1
D10135	пам	1
D10136	пам	1
D10137	пам	1
D10140	пам	1
D10141	конд	в'1375'
D10142	пам	1
D10143	пам	1
D10144	пам	1
D10145	мод     АДЭК
        пб	G10114-ДОПРЕЗ
БУФЕР	пам	768
	отмен	(М17)
	употр	ДОПРЕЗ(М13)
G11546	сч	D11647
	пе	G10047
	сч	ГУС
	и	E48
	по	G10066
	счи	М15
	зп	D10136
	сч	D10134
	сда	64-15
	или	D10140
	зп	D10134
	мод	D10140
	уиа	0(М15)
	мод	D10135
	уиа	0(М16)
	уиа	
	зп	(М16)
	уиа	'3'
G11557	мода	G11564
	пио	(М15)
	мода	(М15)
	сч	БУФЕР
	уиа	
	мода	(М15)
	зп	(М16)
	уиа	'3'
	слиа	-1(М15)
	пб	G11557
G11564	сч	3
	и	E13
	по	G11621
	сч	БУФЕР+1
	уиа	-5(М15)
	сда	64-24
	рзб	D11635
	зп	БУФЕР
	сда	64+8
	и	П17
	ржа	'3'
	вчоб	D11636
	пе	G11621
	сч	БУФЕР
	сда	64+12
	и	П17
	вчоб	П5
	пе	G11621
	сч	БУФЕР
	сда	64+16
	и	П17
	вчоб	D11636
	пе	G11621
	сч	БУФЕР
	вчоб	D11645
	пе	G11621
G11601	сч	БУФЕР
	и	П17
	уи	М16
	сч	БУФЕР
	сда	64+4
	зп	БУФЕР
G11604	сч	D11647
	мода	G11613
	пио	(М16)
	мода	D11637
	слц	5(М15)
	зп	D11647
	слиа	-1(М16)
	пб	G11604
G11610	уиа	'2003'
	сч	ЗАНЯТА
	или	E7
	зп	ЗАНЯТА
	уиа	'3'
	пб	G11620
G11613	мода	G11601
	цикл	(М15)
	зп	БУФЕР
	сч	ЗАНЯТА
	и	E7
	по	G11610
	сч	БУФЕР
	вч	ВРЕМЯ
	вч	D11641
	пе	G11621
G11620	сч	БУФЕР
	зп	ВРЕМЯ
G11621	уиа	'2003'
	рег	'101'
	сч	D10144
	мод	D10137
	зп	обвнп1+6
	мод	D10137
	сч	E42
	пв	ТВ67А(М15)
	сч	ГУС
	и	E48
	по	(М12)
G11627	мод	D10136
	уиа	0(М15)
	мод	D10143
	уиа	0(М13)
	пб	ЭКВЫХ
G11632	мод	D10137
	увв	'10'
	пб	G11627
D11634	конд	в'7000000077777777'
D11635	конд	в'0000000017677577'
D11636	конд	п'000009'
D11637	конд	п'00000Т'
	конд	в'0000000000000764'
D11641	конд	в'0000000000005670'
	конд	в'0000000000072460'
	конд	в'0000000000537440'
	конд	в'0000000006673500'
D11645	конд	в'0000000010654400'
        пам     1
D11647  пам     1        
*Е15П1	экв	'166'
*Е35П31	экв	'1422'
ВЗУ	ВНЕШ	ЗАПЭКС,РАЗРЕ,АДЭК
ДИСП70	ВНЕШ	ЭКВЫХ,ТВ67А,ТВ67,ТАЙМЕР,БМВ,ВИСП3,ИВ25,ЭКБУД
ДИСП70	ВНЕШ	НЗАД,И17,И16,И15,СМ,ОСПОД,ВРЕМЯ,П60,ГУС,ЗАНЯТА
ДИСП70	ВНЕШ	П17,П5,ГОД,П77,Е35П31,Е15П1,обвнп1
КИТ	ВНЕШ	ИПЗ56
	ФИНИШ
