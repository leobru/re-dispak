шифр 419999 зс5^
ацпу 128^
лен 43(2222-зп)42(2099)^
еев1а3
*name 
*call yeslis
*bemsh
ВВД$$$
БОНБОТ	СТАРТ	'30000'
	Е
	М
	употр	БОНБОТ(М7)
 КОНД В’0’
 КОНД М41В’3’       БЛ. РЕЖ. АУ   1
 КОНД (3)В’0’       3,4,2
 КОНД М15В’3’В’3’М24В’2’ 5
 КОНД (17)В’0’
 КОНД В’0’    НЕ ЗАНИМАТЬ	пам	1
D30030	конд	в'7766777403777777'
ТЕК2	конд	п'0ЕСТЬ0'в'377'
D30032	конд	п'377737'
ОТЛТЕР	пам	1
ШНЕРОТ	пам	1
Д2047 КОНД В’20107’
ПНО	конд	м24п' -↑'
	пам	1
П7П7 КОНД М4В’7’В’7’        
	конд	в'4000000000000000'
	конд	в'0000000060000000'
О18П15 КОНД М14В’17’В’-1’
	пам	1
	конд	в'6000000001000000'
П11 КОНД В’11’         ТАНДЕМ
П7	конд	п'000007'
ЕNТRУ УИА 1027          ВХОД В НЕРЕЗИДЕНТ
	пб	A30057
D30051	пам	1
D30052	пам	5
A30057	сч	ШКРАБН
	зп	ШНЕРОТ
	сч	
	зп	ШКРАБН
КОНРАБ	сч	ОТЛТЕР
	по	A30065
	зп	ШКРАБН(М1)
	сч	
	зп	ОТЛТЕР
	сч	ШКРАБН
	или	E48(М1)
	зп	ШКРАБН
A30065	уиа	'3'
	сч	ШНЕРОТ
	по	ВЫХОД
	нед	Е15П1
	уи	М1
	сч	ШНЕРОТ
	нтж	E48(М1)
	зп	ШНЕРОТ
	уиа	0(М15)
	мода	ПЕРЕКЛ-1
	мода	(М1)
	пв	(М4)
ВЫХОД	сч	ЗАНЯТА
	и	E44
	по	ВЫХ1
	пам	0
	нтж	ЗАНЯТА
	зп	ЗАНЯТА
	сч	ШКУСТР
	или	ШКАС
	и	ШЗНКТ
	зп	РЯРОТ
	мода	D31732
	уиа	0(М16)
	мода	A30102
	уиа	0(М17)
A30102	сч	РЯРОТ
	по	ВЫХ1
	нед	Е15П1
	уи	М2
	сда	64-40
	или	УХОДИ
	зп	(М16)
	сч	РЯРОТ
	нтж	E48(М2)
	зп	РЯРОТ
ВЫДАТЬ	уиа	'3'
	уии	М32(М17)
	сч	E23
	пб	ТВ40
ВЫХ1	уиа	'2003'
	пв	ЗАНОСМ(М16)
	сч	E30
	пб	ОТКАЗН
ПЕРЕКЛ	слиа	21(М4)
	пб	ОЧТЕР
	слиа	Е48П37(М4)
	пб	ОЧТЕР
	уиа	0(М6)
	пб	A30615
	уиа	'2003'
	пб	A30740
	сч	ШКОКВД
	пб	A30263
ЗАПРОС	сч	ТСЛ(М2)
	и	E28
	пе	COMM
	сч	ТСЛ(М2)
	и	E27
	пе	ОТЛРАБ
	мода	A30155
	уиа	0(М16)
A30124	сч	ТБЛ(М2)
	зп	РЯ1
	сч	Е46Е45
	мод	ТСЛ(М2)
	зп	
	сч	ТСЛ(М2)
	зп	ТБЛ(М2)
	уи	М17
	и	E31
	пе	A30154
	сч	ШСВЯТ
	и	E48(М2)
	пе	A30155
	сч	D07025
	и	E48(М2)
	пе	A30154
	сч	ТСЛ(М2)
	сда	64+15
	и	П7
	уи	М15
	сч	'76042'(М15)
	зп	РЯРОТ
	сч	РЯ1
	по	A30146
	сч	РЯРОТ
	сда	64-24
	по	A30155
	зп	РЯРОТ
	сч	ШКУСТР
	и	ШНР
	и	E48(М2)
	по	A30146
	и	ТАЙНА
	пе	A30146
	сч	D31765
	зп	РЯРОТ
A30146	уиа	'2003'
	мод	ТСЛ(М2)
	сч	9
	сда	64+40
	нтж	ПЕОТ
	по	A30203
	сч	ШКЭ71
	и	E48(М2)
	или	ШКВЭ71
	зп	ШКВЭ71
	пб	A30203
A30154	нтж	ТСЛ(М2)
	зп	ТСЛ(М2)
A30155	уиа	'2003'
	сч	'7776'
	и	E48(М2)
	или	ТАЙНА
	зп	ТАЙНА
	уиа	'3'
	мод	ТСЛ(М2)
	сч	9
	сда	64+40
	нтж	ПЕОТ
	мода	ОТПРИМ
	уиа	0(М17)
	по	СТRLО
	сч	ШСТRLО
	или	E48(М2)
	нтж	E48(М2)
	зп	ШСТRLО
	сч	ШЗНКТ
	и	E48(М2)
	пе	A30176
	пб	A31107
СТRLО	сч	ШСТRLО
	или	E48(М2)
	зп	ШСТRLО
	пб	A31107
КУДА1	сч	ТСЛ(М2)
	сда	64+20
	и	П77
	по	(М17)
	или	E34
	уии	М16(М17)
	пб	ЗАПВЕТ
A30176	и	ШКОТЛ
	слиа	-8(М17)
	пе	A30200
	слиа	8(М17)
A30200	сч	ШКЭ71
	и	E48(М2)
	по	КУДА1
	и	ШКВЭ71
	по	КОНЭ71
	пб	ОЧТЕР
A30203	сч	E6
	зп	6(М17)
	сч	ТСЛ(М2)
	или	E27
	зп	ТСЛ(М2)
	и	E17
	по	A30210
	пв	А17263(М15)
	сч	П143+1
	увв	'144'(М2)
A30210	слиа	1(М17)
	сч	(М17)
	зп	5(М17)
	сч	Е15П2
	или	Е46Е45
	зп	(М17)
	сч	РЯРОТ
	зп	6(М17)
	сч	П60
	зп	3(М17)
	сч	
	зп	7(М17)
	уии	М17(М2)
	пб	'76502'
*
*
*
*/////////////////////////////////////////////*
*//////                                 //////*
*//////        КОММУТАЦИЯ ЛИНИЙ         //////*
*//////                                 //////*
*/////////////////////////////////////////////*
*
СОММ СЧ ШКУСТР
 ИЛИ ШЗНКТ
 И Е48(М2)
 ПЕ NОСОМ         ТЕРМИНАЛ ПЕРЕКЛЮЧАТЬ НЕЛЬЗЯ
 МОД ТСЛ(М2)
 УИА (М17)
 СЧ Н(М17)
 СДА 64+3
 ПЕ NОСОМ         НЕ ЦИФРА
 СЧ Н(М17)
 ВЧОБ П6
 ПЕ NОСОМ         N БЭСМ > 5        
 СЧ ТСЛ(М2)
 СДА 64+АТ
 УИ М15
 СЧ Н(М17)
	сда	64+3
	счмр	
	зп	РЯРОТ
 НТЖ ТАС(М15)
 И Е48П46
 НТЖ ТАС(М15)
 ЗП ТАС(М15)        
	сч	E6
	мода	
	пв	УСТПРП(М15)
 СЧ ШКВЫД
 ИЛИ Е48(М2)       ’1’ -> ШКВЫД
 ЗП ШКВЫД
 ПБ ОЧТЕР
NОСОМ УИИ М17(М2)       ПЕРЕКЛЮЧЕНИЕ НЕ ДЕЛАЕМ
 МОДА ОТПРИМ
 УИА (М14)
 ПБ СБРОС        
НОВТ	уиа	'2003'
	сч	E48(М2)
	или	'77015'
	зп	'77015'
	сч	ШКИВ
	или	E9
	зп	ШКИВ
	пб	ОЧТЕР
ПОСТАР	сч	(М3)
	сда	64-22
	рзб	E48E24
	сда	64(М2)
ОТКРШГ	зп	(М3)
	сч	Е48-1(М5)
	или	ШГП
	зп	ШГП
ОТПРИМ	сч	ВСЕЕД
	нтж	E48(М2)
	и	ШЗПРИМ
	зп	ШЗПРИМ
ОЧТЕР	уиа	'2003'
	сч	ШКРАБН(М1)
	по	КОНРАБ
	нед	Е15П1
	уи	М2
	сч	ШКРАБН(М1)
	нтж	E48(М2)
	зп	ШКРАБН(М1)
	уиа	'3'
	пб	(М4)
A30257	сч	ТСЛ(М2)
	или	E31
	зп	ТСЛ(М2)
ОТЛРАБ	сч	ОТЛТЕР
	или	E48(М2)
	зп	ОТЛТЕР
	пб	ОЧТЕР
A30263	и	АСОТ+1
	по	ВЫДАЧА
	зп	ШКЗАКВ
	уиа	'2003'
	нтж	ШКОКВД
	зп	ШКОКВД
	мода	A30301
	уиа	0(М14)
	мода	ОЧТЕР
	пв	(М4)
A30270	счи	М2
	сда	64+5
	по	(М14)
	уиа	'2003'
	сч	'2346'
	или	'43'(М2)
	зп	'2346'
	нтж	КОНСТ+1
	и	КОНСТ+1
	пе	(М14)
	сч	'2346'
	и	Е18П1
	сда	64-2
	пв	ТБУФ(М15)
	сч	
	зп	'2346'
	пб	(М14)
A30301	сч	ШКЗАКВ
	пе	ОЧТЕР
ВЫДАЧА	уиа	'2003'
	сч	МЫЖДЕМ
	или	ШЗН
	зп	ШЗН
	сч	ШКОКВД
	нтж	ШКОКВД
	зп	ШКОКВД
	зп	МЫЖДЕМ
	счмр	
	зп	РЯРОТ
 И ШКВЭ71        ФОРМИРОВАНИЕ РАБОЧЕЙ ШКАЛЫ:
 ИЛИ ШКЗАК         ( ШКОКВД ∧ ШКВЭ71 )
 ЗП ШКЗАКВ
 И ШКОЛА
 НТЖ ШКЗАКВ        - ОПРАШИВАЕМЫЕ АС-ТЕРМИНАЛЫ
 ЗП ШКЗАКВ
	мода	ОЧТЕР
	пв	(М4)
	сч	ШКВЭ71
	и	E48(М2)
	по	ВТЕ23
	и	РЯРОТ
	по	ОЧТЕР
	сч	ШСТRLО
	или	E48(М2)
	нтж	E48(М2)
	зп	ШСТRLО
	пб	КОНЭ71
A30320	уиа	'2003'
	сч	ТСЛ(М2)
	или	E28
	нтж	E28
	зп	ТСЛ(М2)
	сч	ВППС(М2)
	нтж	ВППС(М2)
	зп	ВППС(М2)
	счмр	
	зп	РЯРОТ
	и	E41
	пе	A30335
	сч	ТСЛ(М2)
	и	E17
	по	A30372
	сч	Е36(М2)
	или	E34(М2)
	пв	УСТПРП(М15)
	уиа	'3'
	сч	ШКВЫД
	и	E48(М2)
	по	A30372
	уии	М15(М2)
	мода	ОЧТЕР
	уиа	0(М16)
	пб	КОНВЫД
A30335	уии	М15(М2)
	уиа	'2003'
	сч	ВСЕЕД
	нтж	E48(М2)
	зп	СМ
	сч	ШКАЛ
	и	СМ
	зп	ШКАЛ
	сч	D77001
	и	СМ
	зп	D77001
	сч	D76777
	и	СМ
	зп	D76777
	сч	ШКУСТР
	и	СМ
	зп	ШКУСТР
	мода	NКАН
	мода	
	пв	(М17)
	мода	ОТПРИМ
	уиа	0(М17)
	сч	ШКОТЛ
	и	E48(М2)
	по	A30354
	слиа	-8(М17)
A30352	сч	ТСЛ(М2)
	или	КОТ
	зп	ТСЛ(М2)
	пб	A30361
A30354	сч	ШКЭ71
	и	E48(М2)
	по	A30361
	нтж	ШКЭ71
	зп	ШКЭ71
	сч	ШЗНКТ1
	или	E48(М2)
	зп	ШЗНКТ1
	слиа	ВСЕЕД(М17)
	пб	A30352
A30361	сч	ШЗНКТ
	и	СМ
	зп	ШЗНКТ
	мода	A30365
	пио	(М5)
	сч	'75'(М3)
	и	СМ
	зп	'75'(М3)
A30365	сч	ШКВЫД
	и	СМ
	зп	ШКВЫД
	сч	ШКОТЛ
	и	E48(М2)
	пе	НОВТ
	сч	ТСЛ(М2)
	и	D30030
	зп	ТСЛ(М2)
	пб	(М17)
A30372	уиа	'3'
	мода	ОТПРИМ
	уиа	0(М16)
	сч	ШКЭ71
	или	ШКОТЛ
	и	E48(М2)
	по	A30404
	и	ШКЭ71
	по	A30410
	сч	РЯРОТ
	слц	E48
	или	E45
	зп	РЯРОТ
	и	П17
	нтж	П17
	пе	A30406
	уиа	'2003'
	сч	ТСЛ(М2)
	или	E19
	зп	ТСЛ(М2)
A30404	сч	
	зп	ТБЛ(М2)
	пб	A30124
A30406	уиа	'2003'
	сч	РЯРОТ
	зп	ВППС(М2)
	уиа	'3'
A30410	сч	ТСЛ(М2)
	и	Е16Е17
	пе	ОТПРИМ
	сч	ТБЛ(М2)
	уи	М17
	сч	ТСЛ(М2)
	или	E32
	зп	ТСЛ(М2)
	слиа	2(М16)
	и	E18
	уиа	'76021'(М13)
	пе	A30417
	мода	КАВ
	уиа	0(М13)
A30417	сч	6(М17)
	сда	64+5
	и	П3
	уи	М15
	сли	М15(М13)
	сч	(М15)
	сда	64-8
	или	(М15)
	зп	РЯРОТ
	сда	64-16
	или	РЯРОТ
	сда	64-16
	зп	РЯРОТ
	пб	A30210
КОНЭ71	мода	A30433
	уиа	0(М17)
*
*
* ЗАНЕСЕНИЕ NЗАД В М5 ,АДР.ИПЗ НА М3
*
NКАН СЧ ТСЛ(М2)
 СДА 64+20
 И П77
 УИ М5
 МОД ТУСП-1(М5)
 УИА (М3)
 ПБ (М17)
A30433	сч	ШЗНКТ1
	и	E48(М2)
	пе	ОТРЕК
	сч	ШСТRLО
	и	E48(М2)
	пе	ОЧТЕР
	уии	М17(М5)
	уиа	6(М12)
	мода	ОТРЕК
	пио	(М5)
	мода	
	пв	ЗАНПРП(М15)
	уиа	'3'
	сч	ТСЛ(М2)
	и	E40
	по	СОБМАТ
	уиа	0(М14)
	мод	ТСЛ(М2)
	уиа	0(М16)
	сч	3(М16)
	сда	64+15
	уи	М17
ЛИОБ	мода	СОБПР
	уиа	0(М15)
	счи	М15
	пв	ЗАПВЫХ(М15)
	счи	М17
	сда	64+10
	нтж	П37
	уи	М15
	сч	ШКРЗ
	и	Е48-1(М5)
	по	ОТРЕК
	сч	22(М3)
	нтж	'40'(М3)
	и	E48(М15)
	пе	ОТЛРАБ
ПРП3 СЧ КОТ           ’БУДИЛЬНИК’ ИЛИ ’ОБРЫВ СВЯЗИ’
 ИЛИ Е37           ИЛИ ’ТЕСТОВЫЙ РЕЖИМ’
 И ТСЛ(М2)
 ПО ПРП6          НЕ ТО, НЕ ДРУГОЕ, НЕ ТРЕТЬЕ
 УИА (М12)         ИСКАТЬ ЕТХ НЕЛЬЗЯ - ЕГО НЕТ
 ПБ ПЕРЕСЛ
ПРП6 МОДА (М16)         ***** П О И С К   Е Т Х *****
 СЧ Н(М14)
 СЛИА -1(М12)
 И БАЙТ(М12)
 НТЖ БАЙТ(М12)
 ПО ПРП4          ’377’
 МОДА Т
 НТЖ (М12)
 ПЕ ПРП5          НЕ ’145’
ПРП4 УИА -1(М12)       М12:
 ПБ ПЕРЕСЛ
ПРП5 МОДА ПРП6          НЕ ВСЕ СЛОВО
 ПИНО (М12)
ПЕРЕСЛ НОП ,             ПЕРЕПИСЬ СЛОВА К МАТЕМ.
	сч	'3001'
	и	E48(М2)
	пе	A30473
	слиа	1(М17)
	пб	A30475
A30473	ноп
 МОДА (М16)
 СЧ Н(М14)
 УИА ’2000’
 ЗП (М17)         МАГАЗИН !
A30475  ноп 
 УИА 3
 СЧИ М14
 НТЖ ДЛ(М16)
 И П77777
 ПЕ ПРП2          РЕКОРД НЕ ИСЧЕРПАН
	мод	1(М16)
	уиа	0(М16)
	мода	СОБПР1
	пио	(М16)
	уиа	-1(М14)
ПРП2	мода	СОБПР1
	пино	(М12)
	слиа	1(М14)
	уиа	6(М12)
	счи	М17
	и	П1777
	пе	ПРП3
	пб	ЛИОБ
СОБПР	сч	'3001'
	или	E48(М2)
	нтж	E48(М2)
	зп	'3001'
	пб	ПЕРЕСЛ
СОБПР1	уиа	1(М14)
	уиа	'2003'
	сч	'3001'
	или	E48(М2)
	зп	'3001'
	пб	A30515
СОБМАТ	уиа	0(М14)
A30515	счи	М5
	по	ОТРЕК
	или	E28(М14)
	пв	ЗАПВЕТ(М16)
ОТРЕК	мод	ТСЛ(М2)
	уиа	0(М14)
ОРР1	мод	1(М14)
	уиа	0(М14)
	уиа	'3'
	мода	ВСЕРЕК
	пио	(М14)
	счи	М14
	сда	64+5
	и	П37
	уи	М11
	уиа	-13(М12)
ОРР4	счи	М14
	нтж	'2364'(М12)
	и	Е15П11
	по	ОРР5
	мода	ОРР4
	цикл	(М12)
СТ530	стоп	
	пб	СТ530
ОРР5	сч	3(М14)
	слц	П11
	и	Е15П1
	сда	64+5
	нтж	Е15П1
	слц	E1
	уи	М13
	уиа	'2003'
ОРР2	сч	'2364'(М12)
	или	E48(М11)
	зп	'2364'(М12)
	и	КОНСТ+1
	нтж	КОНСТ+1
	пе	ОРР3
	сч	'2364'(М12)
	и	Е18П1
	сда	64-2
	пв	ТБУФ(М15)
	сч	
	зп	'2364'(М12)
ОРР3	уии	М15(М11)
	слиа	-31(М15)
	мода	ОРР3А
	пино	(М15)
	мода	ОРР1
	пио	(М13)
	уиа	-13(М12)
	уиа	-1(М11)
ОРР3В	счи	М14
	слц	E11
	нтж	'2364'(М12)
	и	Е15П11
	по	ОРР3А
	мода	ОРР3В
	цикл	(М12)
	пб	СТ530
ОРР3А	слиа	1(М11)
	мода	ОРР2
	цикл	(М13)
	пб	ОРР1
ВСЕРЕК	мод	ТСЛ(М2)
	уиа	0(М16)
	уиа	-58(М14)
	пб	УСТНСР
A30557  уиа     '2003'
        сч      ВСЕЕД
        нтж     E48(М2)
        зп      СМ
        сч      ШКЭ71
        и       СМ
        зп      ШКЭ71
        сч      ШКВЭ71
        и       СМ
        зп      ШКВЭ71
        сч      ШЗНКТ1
        и       E48(М2)
        по      ЕЕ
        нтж     ШЗНКТ1
        зп      ШЗНКТ1
        сч      ШЗНКТ
        и       СМ
        зп      ШЗНКТ
ЕЕ	сч	ТСЛ(М2)
	и	КОТ
	пе	ЕСТКОТ
	сч	E20
ЕСТКОТ	или	ТСЛ(М2)
	и	КГШТСЛ
	зп	ТСЛ(М2)
	сч	'66'(М3)
	и	E28
	по	ОТПРИМ
	сч	(М3)
	и	E48(М2)
	по	ОТПРИМ
	сч	ТСЛ(М2)
	и	КОТ
	нтж	ТСЛ(М2)
	зп	ТСЛ(М2)
	счмр	
	сда	64-6
	зп	(М3)
	сч	'66'(М3)
	нтж	E28
	зп	'66'(М3)
	сч	'66'(М3)
	и	E27
	по	ПОСТАР
	счи	М2
	слц	E1
	или	(М3)
	зп	(М3)
	сч	ТСЛ(М2)
	сда	64-8
	счмр	
	сда	64-15
	или	(М3)
	зп	(М3)
	сч	ТСЛ(М2)
	и	Е18П16
	сда	64-30
	или	(М3)
	пб	ОТКРШГ
A30615	уиа	'2003'
	сч	ШКИВ
	или	Е36
	зп	ШКИВ
	мода	ОЧТЕР
	пв	(М4)
	уиа	0(М6)
	счи	М2
	сда	64-5
	уи	М14
	сда	64+10
	по	A30630
	уиа	1(М6)
	сч	ТРР(М6)
	пе	A30626
	пв	ТБУФ(М15)
	сда	64-8
	или	КОНСТ+1
A30626	нтж	'43'(М2)
	зп	ТРР(М6)
	слиа	-1024(М14)
	уиа	'3'
A30630	уии	М17(М2)
	уии	М16(М14)
	мод	ТРР(М6)
	слиа	0(М16)
	счи	М16
	или	ТСЛ(М2)
	зп	ТСЛ(М2)
	уиа	0(М14)
УСТНСР	сч	
	уиа	-30(М15)
ПР МОДА (М16)         РОСПИСЬ
 ЗП 31(М15)
	мода	ПР
	цикл	(М15)
	сли	М14(М7)
 СЧ Е46Е45        УСТ. НАЧ. ЗНАЧЕНИЯ СЧЕТЧИКА
 ЗП (М16)
	сч	ТСЛ(М2)
	и	E16
	уиа	15(М15)
	по	A30645
	сч	ТСЛ(М2)
	и	E18
	уиа	19(М15)
	пе	A30645
	уиа	12(М15)
A30645	счи	М15
	или	E48
	зп	3(М16)
	сч	П60
	зп	4(М16)
	сч	ТСЛ(М2)
	зп	ТБЛ(М2)
	пб	'651'(М14)
A30651	сч	ШСВЯТ
	и	E48(М2)
	пе	ОТПРИМ
	сч	ШКУСТР
	и	E48(М2)
	по	A30672
	сч	КЛЮЧТМ+39
	и	E48(М2)
	пе	A30670
	сч	E18
	или	ТСЛ(М2)
	зп	ТСЛ(М2)
	сч	ШКАЛ
	и	E48(М2)
	по	ОТПРИМ
	сч	ТСЛ(М2)
	или	E16
	зп	ТСЛ(М2)
	сч	П23
	или	E48
	зп	3(М16)
	счи	М2
	слц	E1
	мода	ЗАНТИП
	мода	
	пв	(М13)
	мода	ОТПРИМ
	уиа	0(М15)
	сч	E19
	пб	'4405'
A30670	сч	ТСЛ(М2)
	или	E17
	зп	ТСЛ(М2)
	пб	ОТПРИМ
A30672	сч	ШКОПТТ
	и	E48(М2)
	по	Н8
	сли	М17(М17)
	сли	М17(М2)
	сч	АСОТ
	мода	(М17)
	сда	64(М17)
	и	П77
	уи	М16
	сда	64+8
	счмр	
	или	ТСЛ(М2)
	зп	ТСЛ(М2)
	сч	ТАС(М16)
	и	Е18П16
	или	ТСЛ(М2)
	зп	ТСЛ(М2)
	уии	М17(М2)
	слиа	1(М17)
	счи	М17
	или	ТАС(М16)
	зп	ТАС(М16)
Н8	сч	ТСЛ(М2)
	и	E16
	по	A30712
	сч	ТСЛ(М2)
	сда	64+40
	слц	П30
	мода	ЗАНТИП
	пв	(М13)
A30712	мода	ЕСТЬ
	уиа	0(М13)
	сч	ГОД
	и	П7
	или	(М13)
	зп	(М13)
	сч	
	зп	D30052
	счи	М13
	слц	П7
	зп	D30051
	счи	М1
	зп	РЯРОТ
	пв	U7275(М16)
	уиа	'3'
	мод	РЯРОТ
	уиа	0(М1)
	пб	ОЧТЕР
ЗАНТИП	умн	Д1НА12
	уи	М16
	счмр	64
	умн	УП60
	уи	М15
	слиа	-3(М15)
	сч	ТАБТИП(М16)
	сда	64(М15)
	и	П17
	уи	М15
	сч	ШКАЛ
	или	E48(М2)
	зп	ШКАЛ
	сч	ТАБТИП+5
	нтж	ВСЕЕД
	пб	(М13)
A30733	уиа	'2003'
	сч	ШКАЛ(М15)
	или	E48(М2)
	зп	ШКАЛ(М15)
	сч	ШVD130
	и	E48(М2)
	или	ШНР
	зп	ШНР
	уиа	'3'
	пб	(М13)
A30740	уиа	'77602'(М2)
	сч	КЛЮЧТМ+32
	сда	64-32
	рзб	D30032
	зп	D31725
	мода	СЛОГ
	уиа	0(М16)
	сч	ГОД
	сда	64-45
	зп	РЯРОТ
	мода	ВЫДАТЬ
	пв	(М17)
	сч	'77163'
	сда	64+3
	по	КОНРАБ
	сч	ШКОПТТ
	и	ШКАС
	нтж	ШКАС
	зп	ШКАС
	или	АСОТ+1
	зп	АСОТ+1
	сч	ШКАС
	или	D77021
	зп	D77021
	сч	ШНЕРОТ
	или	E46
	зп	ШНЕРОТ
	сч	E7
	мода	
	пв	ГАШПРП(М15)
A30757	мод	ШЗЗ-1(М2)
	уиа	0(М16)
	мода	A30767
	пио	(М16)
	сч	ШКОПТТ
	и	Е48-1(М16)
	по	A30765
	сч	Е48П41
	или	Е18П1
	и	'2364'(М16)
	зп	'2364'(М16)
	пб	A30767
A30765	сч	ШЗЗ-1(М2)
	и	Е18П16
	или	РЯРОТ
	зп	ШЗЗ-1(М2)
A30767	мода	A30757
	цикл	(М2)
	мода	A30772
	уиа	0(М4)
	уиа	'2003'
	пб	A30775
A30772	уиа	'2003'
	сч	ВППС(М2)
	или	E41
	зп	ВППС(М2)
	мода	A30270
	пв	(М14)
A30775	сч	ШКАС
	пе	ОЧТЕР
	сч	ЗАНЯТА
	или	E42
	зп	ЗАНЯТА
	пб	КОНРАБ
НУС	уиа	SQ1(М10)
	пб	A31151
A31001	уиа	'2003'
	сч	ЗАНЯТА
	и	E7
	по	ОТПРИМ
	сч	ШКПУСК
	или	E48(М2)
	зп	ШКПУСК
	сч	ШКИВ
	или	E34
	зп	ШКИВ
	пб	ОЧТЕР
ВТЕ23	сч	ШКУСТР
	или	ШКАС
	и	E48(М2)
 ПО ОЧТЕР   ТЕРМ.ОТБР
	сч	ТСЛ(М2)
	и	E28
 ПЕ ОЧТЕР   ТЕРМ.ЗАН.НА ПРИЕМ
	сч	ШЗПРИМ
	или	D77022
	или	D77012
	или	ШКВЫД
	и	E48(М2)
	пе	ОЧТЕР
	сч	ШСТRLО
	и	E48(М2)
	пе	ВДОП1
	сч	ШКЭ71
	и	E48(М2)
	пе	ОЧТЕР    СВС: ОТЛРАБ
ВДОП1	сч	E17
	и	ЗАНЯТА
 ПЕ ОТЛРАБ  ЗАНЯТ БУФ.ВЫВОДА
	сч	E17
	мода	
	пв	ЗАХЗАН(М15)
 СЧ ШЗПРИМ
 ИЛИ Е48(М2)
 ЗП ШЗПРИМ        ЗАПРЕТ ПРИЕМА
	сч	В6050
	мода	
	пв	ТБУФ(М15)
	уиа	'3'
	уиа	1(М5)
	уиа	0(М12)
	сда	64-8
	уи	М6
	мода	ШОЧ+13(М6)
	сч	(М2)
	сда	64+15
	уи	М14
	и	Е33
	по	A31103
	сч	В6050
	слц	E1
	пв	ТБУФ(М15)
	уиа	'3'
	сда	64-8
	уи	М12
	сли	М14(М12)
A31040	уии	М13(М14)
	сч	13(М13)
	сбр	'77041'
	рзб	D77040
	зп	РЯ1
	сч	13(М13)
	и	E31
	по	A31104
	мода	ШОЧ+13(М6)
	сч	(М2)
	или	D77040
	нтж	D77040
	или	РЯ1
A31047	мода	ШОЧ+13(М6)
	зп	(М2)
	мода	A31053
	пио	(М12)
	счи	М6
	сда	64-2
	или	D77037
	пв	ТБУФ(М15)
A31053	счи	М13
	зп	РЯ2
 СЛЦ П15
 ЗП 41(М7)        КОНЕЧНЫЙ АДРЕС
	счи	М1
	зп	РЯ1
	сч	(М13)
	нтж	ПНО
 ПЕ ПОДГВ1        НЕ ’-’ ОТЛАДЧИКА
 СЧ ТСЛ(М2)
 ИЛИ ЕСЛВ          ЕСЛВ -> ТСЛ
 ИЛИ ЕПРИГ
 ЗП ТСЛ(М2)        
ПОДГВ1	сч	ТСЛ(М2)
	зп	ТБЛ(М2)
	уи	М17
	слиа	4(М17)
	уиа	-27(М6)
	сч	ШСТRLО
	и	E48(М2)
	пе	A31067
	зп	-3(М17)
A31067	сч	
	зп	D30052
У0РЕК	зп	(М17)
	мода	У0РЕК
	цикл	(М6)
	сч	Е46Е45
	зп	-32(М17)
	сч	П60
	зп	-28(М17)
	пв	U7275(М16)
	уиа	'3'
	сч	РЯ1
	уи	М1
	сч	
	мод	РЯ2
	зп	
	сч	РЯ2
	сда	64-2
	или	D77037
	пв	ТБУФ(М15)
	мода	ОЧТЕР
	уиа	0(М15)
	сч	E17
	пб	ГАШЗАН
A31103	сли	М14(М6)
	пб	A31040
A31104	сч	E48(М2)
	пам	0
	нтж	ШКЗАК
	зп	ШКЗАК
	сч	
	пб	A31047
A31107	уиа	'3'
	мода	ТР5
	уиа	0(М14)
	пам	0
	сч	ЕОТКЛМ
	и	E48(М2)
	по	A31214
	сч	
	уиа	-6(М3)
	уиа	-2(М12)
	уиа	0(М5)
	зп	ТР5
	зп	ТР4
	зп	ТР3
	зп	РЯ1
	зп	РЯ2
	зп	D31762
	сч	ТСЛ(М2)
	уи	М11
	сч	9(М11)
	зп	РЯ3
ПЕРВС	мода	ВС
	пв	(М16)
	уиа	1(М13)
	нтж	ПЕОТ
	по	ПЕРВС
	сч	СИ
	вч	E6
	пе	ПЕРВС
	сч	СИ
	пб	КОНС
ВЫБ1	мода	ВС
	пв	(М16)
КОНС	нтж	П377
	по	NЭNТ
	сч	РЯ1
	сда	64-8
	или	СИ
	зп	РЯ1
	мода	ВЫБ1
	цикл	(М12)
ВЫБ3	мода	(М12)
	сч	ДЕШ
	по	ANL
	нтж	РЯ1
	и	Е24П1
	по	СМОТР
	слиа	1(М12)
	пб	ВЫБ3
СМОТР	сч	ШКОПТТ
	и	E48(М2)
	пе	НАША
	счи	М12
	вч	П60
	по	ДЗАПРЩ
	сч	МРДИРО
	и	E48(М12)
	пе	НАША
ДЗАПРЩ	уиа	ШОЧ+18(М16)
	пб	ВЫДАЧ
НАША	сч	
	мода	ДЕШ
	пб	(М12)
ANL	уиа	РАSIN1(М10)
A31151	сч	E1
	пв	ТБУФ(М15)
	уии	М16(М10)
	сда	64-8
	уи	М10
	сда	64-2
	или	НОММБ1
	или	'77176'
	зп	D31157
	сли	М16(М10)
	пб	ФИЗОБМ
D31157	пам	1
NЭNТ	мода	ВЫБ3
	пио	(М12)
	сч	ШКОПТТ
	и	E48(М2)
	пе	НАГОД
	уиа	0(М14)
НАГОД	сч	ГОД
	и	П7
	или	ЕСТЬ
	зп	РЯ1
	мода	NЭNТ1
	пио	(М14)
	сда	64-40
	сда	64+40
	или	П143х5
	зп	РЯ1
NЭNТ1	сч	ТСЛ(М2)
	сда	64+40
	уи	М16
	счи	М2
	слц	E1
	сда	64-42
	мода	ТЕРАС
	пино	(М16)
	сда	64+3
	рзб	П07770
	или	П377
	пб	ТЕРПАС
ТЕРАС	рзб	П07770
	или	D31764
	зп	РЯ3
	сч	ТСЛ(М2)
	сда	64+1
	рзб	П07770
ТЕРПАС	или	ТNТЕР
	зп	РЯ2
	сч	ШРИН
	и	E48(М2)
	уиа	E2(М16)
	пе	ИНД1
	сч	ШVD130
	и	E48(М2)
	мода	П15
	уиа	0(М16)
	пе	ИНД1
	сч	ШНР
	и	E48(М2)
	по	NТЕР4
	уиа	П16(М16)
ИНД1	сч	(М16)
	сда	64-32
	нтж	РЯ2
	зп	РЯ2
NТЕР4	уиа	СБОИМБ+1(М16)
	пб	ВЫДАЧ
A31214	уиа	ОБРМБ+3(М16)
	пб	ВЫДАЧ
ВЫБ4	уиа	ШОЧ+17(М16)
ВЫДАЧ	мода	ОТПРИМ
	уиа	0(М17)
	счи	М2
	сли	М16(М7)
	сда	64-40
	зп	РЯРОТ
	сч	Е48П41
	или	(М16)
	нтж	Е48П41
	или	РЯРОТ
	зп	(М16)
	пб	ВЫДАТЬ
ВС	мода	ВС1
	цикл	(М3)
	слиа	1(М11)
	уиа	-5(М3)
	счи	М11
	нтж	П11
	и	П17
	по	КОНБУФ
	сч	9(М11)
	зп	РЯ3
ВС1	сч	СИ
	зп	ДСИ
	сч	РЯ3
	сда	64-8
	зп	РЯ3
	счмр	
ВС3	зп	СИ
	пб	(М16)
КОНБУФ	сч	П377
	пб	ВС3
ВВОДА	уиа	0(М13)
	пб	В1
NБОБ	уии	М15(М5)
	зп	РЯ1
	уиа	5(М6)
	слиа	1(М13)
	мода	ВЫБЧИ1
	пв	(М17)
	слиа	'454'(М17)
	сч	РЯ1
	мода	(М13)
	зпм	РЯ3
	нтж	П377
	по	NБОБ1
	сч	E24
	нтж	E29(М13)
	уиа	1(М5)
NБОБ1	пе	NБОБ
	сч	ТР5
	счм	ТР3
	зп	ТР5
	вчоб	Д2047
	по	ЭТОМЛ
	сч	ТР5
	пв	ИЗ10В8(М15)
	вч	NБЛ
ЭТОМЛ	сда	64+40
	нтж	E19(М13)
	слц	-1(М17)
	слц	(М17)
	зп	ТР3
	и	E17
	пе	ВЫБ4
ЗАНЕС	счи	М12
	зп	D31761
	уиа	'2003'
	мод	ТСЛ(М2)
	уиа	0(М16)
	сч	D31761
	зп	15(М16)
	сч	ТР5
	зп	16(М16)
	сч	ТР4
	зп	17(М16)
	сч	ТР3
	зп	18(М16)
	сч	ШПРИК
	или	E48(М2)
	зп	ШПРИК
	сч	ШКСВН
	и	E25
	по	ОЧТЕР
	сч	ШКИВ
	или	E25
	зп	ШКИВ
	уиа	'3'
	пб	ОЧТЕР
СМЕНА	уиа	1(М6)
	уиа	0(М15)
	мода	ВЫБЧИ
	пв	(М17)
	мода	ЗАНЕС
	пино	(М6)
	сч	РЯ1
	сда	64-21
	уиа	8(М12)
	пб	В1
ВЫБЧ	сч	E1
	зп	D31762
ВЫБЧИ	сч	
	зп	РЯ1
A31303	сч	D31762
	пе	ВЫБЧИ1
	сч	РЯ1
	пе	(М17)
ВЫБЧИ1	мода	ВС
	пв	(М16)
A31306	нтж	П377
	по	(М17)
	мода	П11
	сч	(М15)
	вч	СИ
	пе	A31303
	сч	РЯ1
	сда	64-4(М15)
	или	СИ
	зп	РЯ1
	слиа	-1(М6)
	мода	(М17)
	пио	(М6)
	пб	ВЫБЧИ1
ДАТА	уиа	4(М6)
	уиа	0(М15)
	мода	ВЫБЧ
	пв	(М17)
	сч	РЯ1
	зп	ТР5
	пб	ЗАНЕС
НОМ УИА 4(М6)
 УИА (М15)
 МОДА ВЫБЧИ         ВЫБОР 4-Х ЦИФР ШИФРА
 ПВ (М17)
 СЧ ДСИ
	нтж	БУКВАВ
	по	НОМВ
	нтж	D31771
	по	A31340
	нтж	D31772
	по	A31341
	нтж	D31773
	по	A31342
 СЧ П377
 СДА 64-8
 И РЯ1
 ПЕ ПР21А         ВЫДАТЬ НОМЕР В КАТАЛОГЕ
 ЗП ТР5
 МОДА ТР4
 УИА (М14)
 СЧ РЯ1
 СБР П7П7
 СДА 64+42         ЧИСЛО ЗАДАЧ
В1 ЗП (М14)
 ПБ ЗАНЕС
НОМВ	или	E48
	зп	ТР4
	пб	В1
A31340	сч	E47
	пб	НОМВ
A31341	сч	E46
	пб	НОМВ
A31342	сч	E45
	пб	НОМВ
АДРЕС	уиа	5(М6)
	уиа	1(М15)
	пб	ПР21Б
УСТ	уиа	10(М12)
	зп	ТР5
	уиа	1(М6)
	уиа	1(М15)
	мода	ВЫБЧИ
	пв	(М17)
	сч	РЯ1
	по	УСТ2
УСТ1	или	ТР4
ДД	зп	ТР4
	пб	ЗАНЕС
УСТ2	сч	СИ
	по	УСТ1
	сч	П17
	пб	УСТ1
В11	ноп
ОЧЕР	уиа	3(М6)
	уиа	1(М15)
	мода	ВЫБЧИ
	пв	(М17)
	сч	РЯ1
	зп	ТР5
	мода	ТР4
	уиа	0(М14)
	пб	НОМКАН
ВМД	сч	E1
	уиа	5(М12)
НОММГ	зп	ТР4
	уиа	2(М6)
	уиа	1(М15)
	мода	ВЫБЧИ
	мода	
	пв	(М17)
	сч	ТР4
	пе	ПР21А
	мода	ВЫБ4
	пино	(М6)
	мода	ПР21А
	пио	(М5)
	пб	ВЫБ4
РЕ1	сч	П23
	пб	ДИ30
РУ1	уиа	27(М12)
	счи	М12
	пб	ДИ30
РУ2	сч	П13
	пб	ДИ30
РЗЕ	сч	П3
	пб	ДИ30
РЗД	сч	E2
	пб	ДИ30
ПАК	уиа	1(М6)
	уиа	1(М15)
	мода	ВЫБЧИ
	пв	(М17)
	сч	РЯ1
	зп	ТР4
	сч	E1
ДИ30	уиа	24(М12)
	зп	ТР5
ПР30	уиа	0(М13)
	пб	ЗАНЕС
ВОС	сч	E1
	зп	ТР4
СПЕЦ	уиа	30(М12)
	пб	НОМКАН
УПР	уиа	'41'(М12)
	пб	НОМКАН
КТЧ	уиа	'53'(М12)
	пб	НОМКАН
НОМКАН	ноп
ПР21	уиа	3(М6)
	уиа	1(М15)
ПР21Б	мода	ВЫБЧИ
	пв	(М17)
ПР21А	сч	РЯ1
	пе	В1
	уии	М6(М12)
	слиа	-5(М6)
	мода	В1
	пио	(М6)
	слиа	-1(М6)
	мода	В1
	пио	(М6)
	слиа	-13(М6)
	мода	В1
	пио	(М6)
	слиа	-14(М6)
	мода	ЗАНЕС
	пио	(М6)
	пб	ВЫБ4
ПОДК	уиа	'42'(М12)
	пб	НОМКАН
ЕСМ	уиа	7(М12)
	сч	E24
	зп	ТР4
ПР7	уиа	4(М6)
	уиа	0(М15)
	мода	ВЫБЧИ
	пв	(М17)
	сч	РЯ1
	или	ТР4
	зп	ТР4
	пб	НОМКАН
СВМГ	сч	E1
	пб	ПРОВО
СВД	сч	E2
	уиа	10(М12)
ПРОВО	зп	(М14)
	мода	ВС
	мода	
	пв	(М16)
	нтж	П377
	по	ЗАНЕС
	сч	E1
	пб	ДД
*
*
ОСТН УИА 2(М12)
 УИА 1(М15)
 УИА 1(М5)    ПР ОСТ
 ПБ ОСТ1
ПРИО УИА -7(М15)
 СЧ 0
ОСТ1 ЗП РЯ1
ПРИО1 МОДА ВС
 ПВ (М16)
 НТЖ П377
 ПО ПРИ
 НТЖ П377
 НТЖ П17
 ПО ПРИО1
 СЧ РЯ2
 СДА 64-3
 ЗП РЯ2
 СЧ СИ
 И П7
 ИЛИ РЯ2
 ЗП РЯ2
 МОДА ПРИО1
 ЦИКЛ (М15)
 И Е20
 СДА 64+4
 ЗП РЯ1
ПРИ МОДА ПРИ1
 ПИНО (М5)
 СЧ Е40(М15)
 И Е46Е45
 ПЕ СТАНД          1-2 ЦИФРЫ В "ПРТ"
ПРИ1 СЧ РЯ2
 И Е18П16
 СЛЦ РЯ1
 СДА 64+1
 ЗП РЯ1
 СЧ РЯ2
 И О18П15
 ИЛИ РЯ1
 ПБ В1
СТАНД СЧ Е13
 ИЛИ РЯ2
 ЗП РЯ2
 ПБ ПРИ1
ФС5	сч	E3
ФС	зп	(М14)
	уиа	1(М12)
	уиа	1(М6)
	уиа	1(М15)
	мода	ВЫБЧИ
	пв	(М17)
	уиа	0(М13)
	сч	РЯ1
	по	ЗАНЕС
	сч	E1
	или	(М14)
	пб	В1
ФС8	сч	E4
	пб	ФС
*
НЕТ СЧ Е1
УСТМ5 УИА ’10’(М12)
ОБЩВХ ИЛИ Е48
 ЗП ТР4           ПРИЗНАК ОТМЕНЫ
 УИА -2(М17)
ВДОПР МОДА ВС            ВЫБОР СИМВОЛА
 ПВ (М16)
 НТЖ П377
 ПО ВЫБ40       ПРОВЕРКА НА ’ПРО’
 СЧ СИ
 НТЖ П17
 ПЕ ВДОПР         ПРОПУСК СИМВОЛОВ ДО ПРОБЕЛА
ВЫБОП МОДА ВС
 ПВ (М16)
 НТЖ П377
 ПО ПРОБЕЛ        КОНЕЦ ДИРЕКТИВЫ
ВЫБОП1 СЧ РЯ1
 СДА 64-8
 ИЛИ СИ
 ЗП РЯ1
 МОДА ВЫБОП
 ЦИКЛ (М17)
ПОИСК СЧ ТР4
 И Е48
 ПЕ НЕТУМ
 МОДА (М5)
 СЧ (М15)
 НТЖ РЯ1
 И Е24П1
 ПО СОВП          ДОПУСТ. ДИРЕКТИВА
 МОДА ПОИСК
 ЦИКЛ (М15)
 ПБ ВЫБ4
НЕТУМ СЧ РЯ1
 И Е24П1
* ЗП ТР5
 ПБ ЗПТР5
*
ПРОБЕЛ СЧ П17
 ЗП СИ
 УИА (М17)
 ПБ ВЫБОП1
СОВП МОДА (М5)
 СЧ (М15)
 СДА 64+24
 ПБ ЗПТР5
ВЫБ40 УИИ М16(М12)
 СЛИА -’20’(М16)
 МОДА ВЫБ4
 ПИО (М16)
 ПБ ЗАНЕС
ВЦП МОДА ВС            ВЫБОР ОЧЕРЕДНОГО СИМВОЛА
 ПВ (М16)
ВЦ ЗП ТР4
 УИА (М12)
 НТЖ П377
 ПО ЗАНЕС
 МОДА ДАЙПАР
 ПВ (М14)
 ПБ ЗАНЕС
КТО СЧ буквак
 ПБ ВЦ
НОТТ УИА ’37’(М12)
 ПБ НОТ
ПУЛЬТ МОДА ВС
 ПВ (М16)
 НТЖ букваВ
 ПЕ ПУЛЬТТ        ПЕРЕВОД ТЕРМ.ПУЛЬТА
 МОДА NТЕРМ
 ПВ (М5)         N ОЧЕРЕДИ
 ЗП ТР5
 УИА ’40’(М12)
 МОДА NТЕРМ
 ПВ (М5)         N ЭВМ
 СДА 64-3
 ЗП ТР4
 МОДА NТЕРМ
 ПВ (М5)         N АЦПУ
 И П3
 ИЛИ Е48
 ПБ УСТ1
ПУЛЬТТ МОДА NТЕРМ
 ПВ (М5)          ДАЙ НОМЕР ТЕРМ
 ЗП ТР4
 УИА ’40’(М12)
НОТ МОДА NТЕРМ
 ПВ (М5)
 ПЕ ЗПТР5
 УИИ М5(М12)
 СЛИА -’37’(М5)
 МОДА НОТ1
 ПИО (М5)
 СЧ ТР4
 ЗП ТР5
 СЧИ М2
 СЛЦ Е1
 ПБ ДД
НОТ1 СЧИ М2
 СЛЦ Е1
ЗПТР5 ЗП ТР5
 ПБ ЗАНЕС
NТЕРМ УИА 2(М6)
 УИА 1(М15)
 МОДА ВЫБЧИ
 ПВ (М17)
 СЧ РЯ1
 ПБ (М5)
*
МИН СЧ 0
 ЗП РЯ1
МИН1 МОДА ВС
 ПВ (М16)
 ВЧОБ Е4
 УИ М12
 ПЕ МИН2
 СЧ Е9(М12)
 ИЛИ РЯ1
 ЗП РЯ1   УСТ КЛ
МИН2 СЧ СИ
 НТЖ П377
 ПЕ МИН1
 СЧ РЯ1
 ПЕ МИН3
 СЧ П17    УСТ.0-3КЛ
МИН3 ЗП КМИН
 ПБ НОПТТ
ДЕШ ПБ ВЦП
 КОНК П’ВЦП’        0 ПР.
 ПБ ВВОДА
 КОНК П’ВВД’        1 ПР.
 ПБ ПРИО
 КОНК П’ПРТ’        2 ПР.
 ПБ АДРЕС
 КОНК П’АДР’        3 ПР.
 ПБ СМЕНА
 КОНК П’СМЕ’        4 ПР.
 ПБ НОММГ
 КОНК П’ВМГ’        5 ПР.
 ПБ НОМКАН
 КОНК П’ВКН’        6 ПР.
 ПБ ПР7
 КОНК П’БОБ’        7 ПР.
 ПБ УСТМ5
 КОНК П’ДАЙ’       10 ПР
 ПБ ЗАНЕС
 КОНК П’СБВ’        11ПР.
 ПБ СВМГ
 КОНК П’СВМ’        12ПР.
 ПБ НОМКАН
 КОНК П’ВЫД’        13ПР.
 ПБ ОБЩВХ
 КОНК П’ПОВ’        14ПР.
 ПБ СПЕЦ
 КОНК П’СПЕ’       36 ПР
 ПБ ДАТА
 КОНК П’ВРЕ’        16 ПР.
 ПБ ПУЛЬТ
 КОНК П’ПУЛ’
 ПБ ОБЩВХ
 КОНК П’ПРО’        20 ПР.
 ПБ ПР21
 КОНК П’ВЫБ’        21 ПР.
 ПБ НОМ
 КОНК П’НОМ’        22 ПР.
 ПБ НОМКАН
 КОНК П’СКВ’        23 ПР.
 	пб	NБОБ
	конк	п'ЗРА'
	пб	ЗАНЕС
	конк	п'РЕЖ'
	пб	В11
	конк	п'ПОР'
	пб	ДАТА
	конк	п'ДАТ'
	пб	ПР30
	конк	п'РАЗ'
	пб	ЗАНЕС
	конк	п'КЛК'
	пб	ОБЩВХ
	конк	п'СБО'
	пб	ФС5
	конк	п'ФС5'
	пб	ФС8
	конк	п'ФС8'
 ПБ УСТ
 КОНК П’УСТ’
 ПБ НОТТ
 КОНК П’НОТ’        ПОДКЛЮЧЕНИЕ НОВОГО ОП. ТТ
 ПБ ОСТН
 КОНК П’ОСТ’       3 ПР
 ПБ НЕТ
 КОНК П’НЕТ’        БЛОКИРОВКА ВЫДАЧ
 ПБ КТО
 КОНК П’КТО’       0 ПР
ДНУС ПБ НУС
 КОНК П’НУС’
 ПБ ВМД
 КОНК П’ВМД’
 ПБ СВД           ВЫДАТЬ СВОБОДНЫЕ ДИСКИ
 КОНК П’СВД’
 ПБ ПАК
 КОНК П’ПАК’
 ПБ рзд
 КОНК П’РЗД’
 ПБ МИН
 КОНК П’МИН’
 ПБ КВАНТ
 КОНК П’КВА’
 ПБ ПОДК
 КОНК П’ПОД’       МРДИР0 - М12=’51’
 ПБ НАЙ
 КОНК П’НАЙ’       МРДИРО - М12=’52’
 	пб	ВЫБ4
	конк	п'ПУС'
	пб	ВЫБ4
	конк	п'ИСК'
	пб	ВЫБ4
	конк	п'ВКЛ'
	пб	ВЫБ4
	конк	п'ОПР'
 ПБ УПР
 КОНК П’УПР’
 ПБ КТЧ
 КОНК П’КТЧ’
 ПБ ВОС
 КОНК П’ВОС’
 ПБ ЕСМ
 КОНК П’ЕСМ’
	пб	РЗЕ
	конк	п'РЗЕ'
 КОНД В’0’
*
*     *------------*
*    ДАЙ ПАР-РЫ
*
ДАЙПАР МОДА ДАЙ2Ц
 ПВ (М5)
 УИ М13
 ВЧОБ П60
 ПЕ ВЫБ4
 СЧ СИ
 НТЖ П377
 ПО (М14)
ДА1 СЧ ТР5
 ИЛИ Е48-1(М13)
 ЗП ТР5
ДА3 МОДА ВС
 ПВ (М16)
 НТЖ П377
 ПО (М14)
 НТЖ =В’364’
 ПЕ ДАЙПАР
 МОДА ДАЙ2Ц
 ПВ (М5)
ДА2 СЧИ М13
 ВЧОБ РЯ1
 ПЕ ДА3
 СЧ ТР5
 ИЛИ Е48-1(М13)
 ЗП ТР5
 СЛИА 1(М13)
 ПБ ДА2
*
*
НАЙ НОП ---
 УИА 4(М6)
 УИА (М15)
 МОДА ВЫБЧИ
 ПВ (М17)
 УИА ’44’(М12)
 СЧ РЯ1
 ЗП ТР5
 ПБ ЗАНЕС
КВАНТ СЧ 0
 ЗП КМИН
НОПТТ УИА ТЕК2-БОНБОТ(М16)
 ПБ ВЫДАЧ
КГШТСЛ	конд	в'7762000377777777'
СИ	пам	1
D31716	конд	м32п'!'м24в'377'
ТЗАПР	текст	п'0ВАМ НЕЛЬЗЯ↑'
МРДИРО	конд	в'4440106500060140'
Д1НА12	конд	в'4001252525252525'
УП60	конд	в'4000000000000060'
СЛОГ	конд	п'2СЛОГ:'
D31725	пам	1
	конд	п'ОШ.АС↑'
ЕСТЬ	конд	п'0ЭВМ-0'м40в'143'
	конд	п'↑00000'
УХОДИ	конд	п'0КОНЧА'
D31732	конд	п'0КОНЧА'
	конд	п'ЙТЕ↑  '
	текст	п'0ТЕРМ.ОТКЛЮЧ'
	конд	п'ЕН0000'м24в'377'
КАВ	конд	в'33'
	конд	п'00000:'
	конд	п'00000А'
П15	конд	п'00000,'
Т	конд	A(АПСЧБ)
	конд	в'0000000000115000'
	конд	в'0000000046400000'
	конк	A(АПСЧБ)
	конк	в'00000000'
	конд	в'0011500000000000'
D31750	конд	в'4640000000000000'
РЯРОТ	пам	1
РЯ1	пам	1
РЯ2	пам	1
РЯ3	пам	1
ДСИ	пам	1
ТР3	пам	1
ТР4	пам	1
ТР5	пам	1
D31761	пам	1
D31762	пам	1
ТNТЕР	конд	п',Т0000'в'143'
D31764	конд	м40в'143'м8п'(00)'в'021'
D31765	конд	в'5160657000000000'
П143х5	конд	м40в'143'м32в'143'м24в'143'м16в'143'м8в'143'
П07770	конд	п'007770'
БУКВАВ  конд    п'В'
D31771	конд	п'00000+'
D31772	конд	п'000003'
D31773	конд	п'000005'
БУКВАК  конд    п'К'
КЛМК	экв	'20'
ЯЧАВТ	экв	'23'
ТБДТР	экв	'24'
ЯЧПРИ	экв	'30'
ЧФОНЛ	экв	'31'
СДТ	экв	'37'
ЧСВОИХ	экв	'41'
СДВМЛ	экв	'42'
СДФЛИ	экв	'44'
УПОТ	экв	'45'
ЯЧИ220	экв	'54'
СМЕ	экв	'62'
ЯЧНОМ	экв	'70'
СОБЫТ	экв	'76'
МДР	экв	'101'
АПСЧБ	экв	'232'
ШОЧ	экв	'1675'
ОБРМБ	экв	'1731'
СБОИМБ	экв	'1751'
ШЗЗ	экв	'2645'
ЕОТКЛМ	экв	'3003'
ТАБТИП	экв	'3424'
ОТКАЗН	экв	'3462'
ГАШПРП	экв	'4413'
ЗАНОСМ	экв	'4603'
ГАШЗАН	экв	'4607'
П16	экв	'72027'
КОНСТ	экв	'72047'
П143	экв	'76015'
КОТ	экв	'76767'
ШСТRLО	экв	'76770'
МЫЖДЕМ	экв	'76772'
ШКОЛА	экв	'76773'
АСОТ	экв	'76774'
ШКОТЛ	экв	'77002'
ШКВЭ71	экв	'77006'
ШКЗАК	экв	'77016'
ШКЗАКВ	экв	'77024'
ШСВЯТ	экв	'77031'
В6050	экв	'77036'
КЛЮЧТМ	экв	'77042'
 ЭКВИВ (ДАЙ2Ц,NТЕРМ)
СОСТАВ ВНЕШ АТ
КАЧКА ВНЕШ ШКРЗ
ДИСП70 ВНЕШ ВСЕЕД,ГОД,ЗАНПРП,ЗАНЯТА,ЗАПВЕТ,ЗАХЗАН,КМИН,НЗАД
ДИСП70 ВНЕШ НОММБ1,П13,П1777,П17,П23,П30,П377,П37,П3,П60,П6
ДИСП70 ВНЕШ П77,СМ,ТАС,ТБУФ,ТВ40,ТРР,ТСЛ,УСТПРП,ШГП,ШЗН,ШКИВ
ДИСП70 ВНЕШ ШКСВН,NБЛ,Е15П1,(П77777,Е15П1),ТУСП
МОТТ ВНЕШ КОНВЫД,ПЕОТ,ТАЙНА,ШЗНКТ1,ШЗНКТ,ШЗПРИМ,ШКАЛ,ШКАС
МОТТ ВНЕШ ШКВЫД,ШКОКВД,ШКУСТР,ШКЭ71,ШНР,ШРИН,ШVD130,ЕСЛВ
МОТТ ВНЕШ D77001,D77037,D77040,Е48Е24,(ШКРАБН,ШКОРАБ),ЕПРИГ
ВЗУ ВНЕШ ФИЗОБМ,D07025
БОЭК1 ВНЕШ ЗАПВЫХ
КИТ ВНЕШ ВППС,(БАЙТ,КОНСБР),ТБЛ
ТЕРМ ВНЕШ U7275
A17263 ЭКВ '17263'
Е15П11 ЭКВ '00464'
Е15П2 ЭКВ '00170'
Е16Е17 ЭКВ '00462'
Е18П16 ЭКВ '00222'
Е18П1 ЭКВ '00506'
Е24П1 ЭКВ '02650'
Е44П41 ЭКВ '00167'
Е46Е45 ЭКВ '00542'
Е46П48 ЭКВ '00220'
Е48П46 ЭКВ '00220'
Е48П37 ЭКВ '00225'
Е48П41 ЭКВ '72116'
ИЗ10В8 ЭКВ '04644'
РАSIN1 ЭКВ '00275'
СБРОСБ ЭКВ '76453'
СБРОС  ЭКВ '76453'
ШКОПТТ ЭКВ '77030'
ШКПУСК ЭКВ '01526'
ШПРИК ЭКВ '01525'
D76777 ЭКВ '76777'
D77012 ЭКВ '77012'
D77021 ЭКВ '77021'
D77022 ЭКВ '77022'
SQ1 ЭКВ '00247'
Н ЭКВ 9
ДЛ ЭКВ 3
	ФИНИШ
КВЧ$$$
ТРН$$$
ЧТКОМП420070
1-1
БТМАЛФ
ЗОНМОД430164  0004
КНЦ$$$
*end file
``````
ЕКОНЕЦ
