ЭКО	СТАРТ	'10000'
	Б
	Е
	М
*
* ДОПОЛНИТ. МОДУЛЬ УПРАВЛЕНИЯ АППАРАТУРОЙ ДКС К-71
*
* ЭКО - ЭКСТРАКОД ОБМЕНА (С ЭВМ "ЭЛЕКТРОНИКА-60")
* ПРЕДСТАВЛЯЕТ СОБОЙ "РАСШИРЕНИЕ" МОДУЛЯ "СВЯЗЬ7",
* ДЛЯ ОБСЛУЖ. СПЕЦ. РЕЖИМОВ СВЯЗИ С ДКС
* ПРИ ПОМОЩИ Э50 '133' (ЧТ/ЗП С УДАЛ. НОСИТЕЛЯ),
* Э52 '777' И Э52 '3333'(?).
* ИСП. ЕСЛИ NНАПР КРК <>0.
*** РЕГИСТРЫ ***
* ПРИ "ХОЛОДНОМ СТАРТЕ" НЕ ЗАГР.
* НУЖНО ДОП. СОБЫТИЕ (В КОНФУС?).
*
*М4 - СВЯЗЬ7
*М15,М17 - КОНФУС
*/ИЛЬИН/
*
*
	ГБЛВ ∧К71
∧К71 УСТВ 1
*
	АПУ     (&К71).ДА
	АПБ	.НЕТ
*
.ДА АНОП
	употр	ЭКО(М6)
*ДЛЯ Э50 '133' С МАСКАМИ 3700-3703
*
* СМ: 37XX FINI 0000 0000 (МАСКА ДЛЯ Э50 '133')
* FI(35:31) - ФИЗ. ЛИСТ
* NI(29:25) - МАТ. ЛИСТ.
	уиа	-2(М15)
эковхо	мода	п247 !ПОВТ. ВХОД ЧЕРЕЗ КОНФУС
	сч	2(М15)
	слц	базэко !ИСП. ВЗУ
	мода	п247
	зп	2(М15)
	мода	эковхо
	цикл	(М15)
	сч	(М3)
	сда	64+12
	и	П77777
	зп	экояч
	уи	М5  АНАЧ. МАТЕМАТИЧ. ?
	мода	уход
	уиа	0(М15)
	счи	М15
	пв	ЗАПВЫХ(М15) В БОЭК1
	уиа	-3(М15)
зпшку7	уиа	'2000'
	сч	(М5)
	уиа	'2003'
	слиа	-1(М5)
	мода	зпшку7
	цикл	(М15)
	сч	Е48-1(М12)
	или	шкаэко  - !ВЗУ АС К-71
	зп	шкаэко
	счи
	пб	вых133-СВЯЗЬ7(М4) !В СВЯЗЬ7 ВЫХОД
уход	уиа	'72'(М6) ЧЛИСТ
	пб	МДР(М7) !ИПЗ ДИСП70
*
*** РАЗДЕЛ "СВЯЗЬ7" .
*** ОСОБ. РЕЖ. РАБОТЫ С ТЕРМ. ЧЕРЕЗ ДКС
*
прцес1	сч	АЗУ(М4) ПРИ ПОДКЛ. ТЕРМ.
	сда	64+24
	кк	26,'70002'(М16) !КОМАНДА 132
	пам	0
прцс1а	сч	базэко
	уи	М6
	сч	п1
	зп	единиц
	мод	единиц
	мод	единиц
	уиа	0(М17)
	сч	НЗАД(М2)
	уи	М15
	сч	5(М15)
	и	К2013
	пе	трмдкс-СВЯЗЬ7(М4)
	сч	62(М15) М17 - КТОМ+2
	сда	64-9
	нтж	40(М15) М15 - ГУС
	и	E34
	пе	трмдкс-СВЯЗЬ7(М4)
	сч	40(М15)
	или	E34
	нтж	E34
	зп	40(М15)
	сч	(М15)
	уиа	'3'
	уиа	-20(М16)
G10037	мода	(М15)
	счм	21(М16)
	мода	G10037
	цикл	(М16)
	счим
	сч	3(М15)
	зп	ряэко+2
	сч	5(М15)
	зп	ряэко+8
	сч	7(М15)
	зп	ряэко+1
	сч	9(М15)
	зп	ряэко
	сч	(М15)
	зп	ряэко+5
	сч	1(М15)
	зп	ряэко+9
	сч	2(М15)
	зп	ряэко+4
	сч	8(М15)
	зп	ряэко+7
	сч	6(М15)
	зп	ряэко+6
	мода	экозап !ЕСТЬ ЛИ ПЕРЕД. УПРАВЛ.?
	уиа	0(М17)
	счи	М17
	зп	3(М15)
	сч	5(М15)
	и	Е48П16
	или	К2013
	зп	5(М15)
	уиа	'2003'
	сч	Е48-1(М2)
	или	МШГП
	зп	МШГП
	пб	трмдкс-СВЯЗЬ7(М4) !В СВЯЗЬ7
***************************
        отмен   (М6) 	!СМЕНА РАБ. РЕГИСТРА
        употр   ЭКО(М16)
***************************
*
*** РАЗДЕЛ "ДИСП70"(БВЗ)
*
э1в	сч	базэко
	уи	М16
	счрж	'7777'
	зп	ряэко+9
	счи	М15
	зп	ряэко
	счи	М17
	зп	ряэко+1
	сч	СМ
	нтж	Е48П43
	сда	64-12
	счмр
	уи	М15
	слиа	-6(М15)
	мода	режим1
	пио	(М15)
	слиа	-1(М15)
	мода	режим2
	пио	(М15)
	слиа	6(М15)
	мода	режим3
	пио	(М15)
	слиа	-4(М15)
	мода	режим4
	пио	(М15)
G10076	мода	G10101
	пв	(М15)
	счи	М32
	уи	М33
	уиа	'42'(М16) !ЗАПР. ЭКСТ.
	пб	ЗАПЭКС
*
G10101	счи	М15
	зп	ряэко+3
	сч	ряэко+1
	уи	М17
	сч	ряэко
	уи	М15
	рж	ряэко+9
	сч	СМ
	мод	ряэко+3
	пб
***
G10106	сч	ряэко+1
	зп	И17
	сч	ряэко
	зп	И15
	сч	ряэко+9
	зп	РК
	пб	(М15)
режим2	уии	М27
	сч	СМ
	сда	64+12
	сда	64-12
	или	E9
	мода	-1
	кк	26,'70000'
	мода	G10101
	пв	(М15)
	выпр	(М2)
режим4	уии	М27
	сч	ГУС
	и	E48
	пе	G10123
	сч	К2013
	уи	М27
G10123	сч	шкаэко !ВЗУ
	и	Е16П1
	или	туsaб+21 !РАБ ЯЧ. АС
	зп	туsaб+21
	сч	E45
	пв	завобм(М15)
	мода	G10101
	пв	(М15)
	счи	М32
	уи	М33
	выпр	(М3)
режим1	сч	СМ
	и	П3
	уи	М17
	по	G10076
	нтж	E1
	по	G10076
	мода	п1
	сч	-1(М17)
	уи	М17
	мода	п247
	сч	-1(М17)
	уи	М17
	сч	5(М17)
	сда	64+15
	по	G10076
	сч	экояч
	уи	М15
	сч
	уиа	'2000'
	зп	-2(М15)
	уиа	'2003'
	сч	3(М17)
	уи	М15
	уиа	'2000'
	сч	(М15)
	уиа	'2003'
	сч	21(М17)
	уиа	-11(М15)
	слиа	21(М17)
G10150	уим	М14(М15)
	мода	G10150
	цикл	(М15)
	уим	М15
	уим	М16
	уим	М20
	уим	М20
	уи	М27
	сда	64+15
	уим	М21
	уим	М32
	уим	М33
	зпм	РМР
	зпм	РК
	зп	СМ
	сч	7(М17)
	уи	М17
	сч	РМР
	нтж
	сч	СМ
	рж	РК
	выпр	(М3)
*
вхэко	сч	базэко !НЕТ ПЕРЕД. УПР. ИЗ КОНФУС
*ПРОЦЕДУРА В КОНФУС НЕ ИСПОЛЬЗ.
	уи	М16
	мод	ГУС
	уиа	0(М17)
	сч	62(М17)
	сда	64-9
	и	E34
	или	40(М17)
	зп	40(М17)
	мод	экояч
	уиа	0(М17)
	сч	туsaб+1
	и	Е48П25
	мод	базсв7
	или	экояч1-СВЯЗЬ7
	уиа	'2000'
	зп	-1(М17)
	сч	-2(М17)
	уи	М15
	пе	G10210
	сч	-3(М17)
	уи	М15
	сда	64+1
	по	G10210
	зп	-2(М17)
	уиа	'2003'
	счи	М15
	и	П3
	уи	М15
	сч	экояч
	уи	М33
	уии	М27
	мода	п1
	сч	-1(М15)
	зп	п1
	сч	единиц
	мода	п1
	зп	-1(М15)
	сч	ряэко+2
	зп	ряэко
	пб	G10213
G10210	уиа	'2003'
	сч	ряэко+2
	уи	М33
	сч	ряэко+8
	уи	М27
G10213	сч	ряэко
	зп	И15
	сч	ряэко+1
	зп	И17
	сч	ряэко+6
	зп	И20
	сч	ряэко+5
	зп	СМ
	сч	ряэко+4
	зп	РМР
	сч	ряэко+9
	зп	РК
	сч	ряэко+7
	зп	И16
	пб	БМВ1
режим3	мода	G10106
	пв	(М15)
	счи	М32
	уи	М33
	уии	М27
	пб	ОБВНП3+24-6     ПРП 6
ряэко	пам	10
п1	конд	в'1'
	конд	в'2'
	конд	в'3'
единиц	пам	1
п247	конд	в'247'
	конд	в'275'
	конд	в'323'
*шкаэко	экв	'7044'
*экозап	экв	'71454'
*экояч	экв	'71461'
БОЭК1	ВНЕШ	ЗАПВЫХ
ВЗУ	ВНЕШ	ЗАПЭКС,шкаэко
ДИСКИ	ВНЕШ	Е16П1
ДИСП70	ВНЕШ	БМВ1,Е48П25,НЗАД,И20,И17,И16,И15,РМР,РК,СМ,МШГП
ДИСП70	ВНЕШ	Е48П16,АЗУ,Е48П43,П3,ГУС,Е21Е18,НАПРМГ,ШКОК,ШЗНМБО
ДИСП70	ВНЕШ	АПСЧБ,П1777,П7777,Е24П13,Е36П25,П77777,ОБВНП3
ДИСП70	ВНЕШ	К2013
МОТТ	ВНЕШ	шас01
КОНФУС	ВНЕШ	базсв7,туsaб,базэко,завобм,экояч
КОНФУС	ВНЕШ	КОНФУС,экозап
СВЯЗЬ7	ВНЕШ	СВЯЗЬ7,экояч1,вых133,трмдкс
СОСТАВ	ВНЕШ	МДР
	ВХОД    вхэко,э1в,прцес1,прцс1а

.НЕТ АНОП
	ФИНИШ
