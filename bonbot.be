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
Н3724 КОНД М20В’77’М39В’1’М36В’1’В’-1’
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
НАЧТЕК   экв    П11
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
	по	СЛЕДР
	зп	ШКРАБН(М1)
	сч	
	зп	ОТЛТЕР
	сч	ШКРАБН
	или	E48(М1)
	зп	ШКРАБН
СЛЕДР НОП .             СЛЕДУЮЩАЯ РАБОТА
	уиа	'3'
 СЧ ШНЕРОТ
 ПО ВЫХОД
 НЕД П77777
 УИ М1            М1 := N РАБОТЫ
 СЧ ШНЕРОТ
 НТЖ Е48(М1)
 ЗП ШНЕРОТ
	уиа	0(М15)
	мода	ПЕРЕКЛ-1
	мода	(М1)
	пв	(М4)
*
*
*      В  Ы  Х  О  Д
*
*
ВЫХОД НОП ,
* УИА 1027
 СЧ ЗАНЯТА
 И Е44
 ПО ВЫХ1          НЕ БЫЛО ДИРЕК.’НЕТ ДИА’
	пам	0
 НТЖ ЗАНЯТА
 ЗП ЗАНЯТА
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
*
* ВЫДАЧА ТЕКСТА НА ЭКРАН ЧЕРЕЗ СОNSUL
* -----------------------------------
*
ВЫДАТЬ НОП
 УИА 3
 УИИ М32(М17)
 СЧ Е23
 ПБ ТВ40          ВЫЗОВ СОNSUL’А
ВЫХ1	уиа	'2003'
	пв	ЗАНОСМ(М16)
	сч	E30
	пб	ОТКАЗН
ПЕРЕКЛ	слиа	ЗАПРОС-ВЫХОД(М4)
	пб	ОЧТЕР
	слиа	ЗВОНОК-ВЫХОД(М4)
	пб	ОЧТЕР
	уиа	0(М6)
	пб	НОВТ
	уиа	'2003'
	пб	A30740
	сч	ШКОКВД
	пб	A30263
*
* РЕАКЦИЯ НА СИМВОЛ ЕТХ ( Е N D   О F   Т Е Х Т )
*
ЗАПРОС СЧ ТСЛ(М2)       ПРЕДВАРИТЕЛЬНЫЙ АНАЛИЗ
 И ЕПРИМ
 ПЕ КОМЛИН        КОММУТУЦИЯ ЛИНИИ (47.1)
 СЧ ТСЛ(М2)
 И ЕСВД
 ПЕ ОТЛРАБ        ИДЕТ <LF> ДЛЯ ОТЛОЖЕННОГО ЗАПРОСА !
	мода	ЗАПР1
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
	пе	ЗАПР4
	сч	ШСВЯТ
	и	E48(М2)
	пе	ЗАПР1
	сч	D07025
	и	E48(М2)
	пе	ЗАПР4
	сч	ТСЛ(М2)
	сда	64+15
	и	П7
	уи	М15
	сч	LINFEE(М15)
	зп	РЯРОТ
	сч	РЯ1
	по	A30146
	сч	РЯРОТ
	сда	64-24
	по	ЗАПР1
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
 МОД ТСЛ(М2)
 СЧ Н
 СДА 64+40
 НТЖ ПЕОТ
* УИА 1027
 ПО СЛУЖВК        ВОЗВРАТ КАРЕТКИ (47.2)
 СЧ ШКЭ71
 И Е48(М2)       ’Е’ ИЗ ШКЭ71 -> ШКВЭ71
 ИЛИ ШКВЭ71
 ЗП ШКВЭ71
 ПБ СЛУЖВК        ВОЗВРАТ КАРЕТКИ (47.2)
ЗАПР4 НТЖ ТСЛ(М2)       ГАШЕНИЕ ЕТАВ
 ЗП ТСЛ(М2)
ЗАПР1	уиа	'2003'
	сч	'7776'
	и	E48(М2)
	или	ТАЙНА
	зп	ТАЙНА
	уиа	'3'
 МОД ТСЛ(М2)
 СЧ Н
 СДА 64+40
 НТЖ ПЕОТ
	мода	ОТПРИМ
	уиа	0(М17)
	по	СТRLО
	сч	ШСТRLО
	или	E48(М2)
	нтж	E48(М2)
 ЗП ШСТRLО        УБРАЛИ ТЕРМ.ИЗ ШСТRLО
 СЧ ШЗНКТ
 И Е48(М2)
	пе	A30176
	пб	ВШКДОП
СТRLО	сч	ШСТRLО
	или	E48(М2)
	зп	ШСТRLО
	пб	ВШКДОП
КУДА1 НОП ,
 СЧ ТСЛ(М2)
 СДА 64+20
 И П77
	по	(М17) в тсл нет N задачи
 ИЛИ Е34
	уии	М16(М17)
 ПБ ЗАПВЕТ
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
СЛУЖВК	сч	E6
	зп	6(М17)
 СЧ ТСЛ(М2)
 ИЛИ ЕСВД          НЕ ГАСИТЬ ШЗПРИМ В КОНВЫД
 ЗП ТСЛ(М2)
	и	E17
	по	A30210
	пв	G17263(М15)
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
КОМЛИН СЧ ШКУСТР
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
	сч	E6   это что-то про АС
	пв	УСТПРП(М15)
 СЧ ШКВЫД
 ИЛИ Е48(М2)       ’1’ -> ШКВЫД
 ЗП ШКВЫД
 ПБ ОЧТЕР
NОСОМ УИИ М17(М2)       ПЕРЕКЛЮЧЕНИЕ НЕ ДЕЛАЕМ
 МОДА ОТПРИМ
 УИА (М14)
 ПБ СБРОС        
*
*
ТЕРОТЛ УИА ’2003’        УСТ.БЛПР
 СЧ Е48(М2)
 ИЛИ ШТО           ’1’ -> ШТО. Е ОТЛАДЧИКА -> ШКИВ
 ЗП ШТО
 СЧ ШКИВ
 ИЛИ ЕНРОТ
 ЗП ШКИВ
 ПБ ОЧТЕР
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
A30263	и	СЛОN
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
	нтж	Е48П17
	и	Е48П17
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
	пв	(М4)     ЗА НОМЕРОМ ТЕРМИНАЛА
 СЧ ШКВЭ71
 И Е48(М2)
 ПО ВТЕ23         ВЫДАЧА ТЕКСТОВ ОТ Е23
 И РЯРОТ
 ПО ОЧТЕР         ВЫДАЧА НЕ ОКОНЧИЛАСЬ, НО ЕСТЬ ’ШКЗАК’
	сч	ШСТRLО
	или	E48(М2)
	нтж	E48(М2)
	зп	ШСТRLО
	пб	КОНЭ71
*
* РЕАКЦИЯ НА ’БУДИЛЬНИК’ * ’1’ ШЗПРИМ УСТАНОВЛЕНА НОМБОБ-ОМ
*
ЗВОНОК УИА ’2003’        УСТ.БЛПР. ’ВЫКЛЮЧЕНИЕ БУДИЛЬНИКА’
 СЧ ТСЛ(М2)       ОСВОБОЖДЕНИЕ ТЕРМИНАЛА ОТ ПРИЕМА
 ИЛИ ЕПРИМ
 НТЖ ЕПРИМ
 ЗП ТСЛ(М2)
 СЧ ВППС(М2)
 НТЖ ВППС(М2)
 ЗП ВППС(М2)
 СЧМР
 ЗП РЯРОТ         РЯРОТ := <ВППС>
 И Е41
	пе	A30335
	сч	ТСЛ(М2)
	и	E17
	по	БУДИК
	сч	Е36(М2)
	или	E34(М2)
	пв	УСТПРП(М15)
	уиа	'3'
	сч	ШКВЫД
	и	E48(М2)
	по	БУДИК
	уии	М15(М2)
	мода	ОЧТЕР
	уиа	0(М16)
	пб	КОНВЫД
A30335	ноп
*
*************************** О Б Р Ы В   С В Я З И
*
 УИИ М15(М2)
	уиа	'2003'
 СЧ ВСЕЕД
 НТЖ Е48(М2)
 ЗП СМ
	сч	ШКВИД
	и	СМ
	зп	ШКВИД
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
	пв	(М17)     М5 := NЗАД, М3 := АДР.ИПЗ
	мода	ОТПРИМ
	уиа	0(М17)
 СЧ ШКОТЛ
 И Е48(М2)
 ПО Ц
	слиа	ТЕРОТЛ-ОТПРИМ(М17)
Ф СЧ ТСЛ(М2)
 ИЛИ КОТ
 ЗП ТСЛ(М2)
 ПБ У
Ц СЧ ШКЭ71
 И Е48(М2)
 ПО У
 НТЖ ШКЭ71
 ЗП ШКЭ71
 СЧ ШЗНКТ1
 ИЛИ Е48(М2)
 ЗП ШЗНКТ1
	слиа	'163'(М17) что-то минус что-то
 ПБ Ф
У СЧ ШЗНКТ
 И СМ
 ЗП ШЗНКТ
 МОДА У2
 ПИО (М5)
 СЧ ТЕРЕЗА(М3)
 И СМ
 ЗП ТЕРЕЗА(М3)
У2 СЧ ШКВЫД
 И СМ
 ЗП ШКВЫД
 СЧ ШКОТЛ
 И Е48(М2)
 ПЕ ТЕРОТЛ
 СЧ ТСЛ(М2)
 И Н3724
 ЗП ТСЛ(М2)
 ПБ (М17)
*************************** НЕ БЫЛО СИМВОЛА 5N СЕКУНД
*
БУДИК УИА 3             СНТ.БЛПР
	мода	ОТПРИМ
	уиа	0(М16)
 СЧ ШКЭ71
 ИЛИ ШКОТЛ
 И Е48(М2)
 ПО ВОКАР         ТЕРМИНАЛ НЕ ОТЛАДЧИКА И НЕ Э71
 И ШКЭ71
	по	A30410
 СЧ РЯРОТ
 СЛЦ Е48
 ИЛИ Е45
 ЗП РЯРОТ
 И П17
 НТЖ П17
 ПЕ БУДИК5        НЕ ЗВЕНИТ
 УИА ’2003’        НЕ БЫЛО СИМВОЛА 5 МИНУТ
 СЧ ТСЛ(М2)
 ИЛИ ЕЗВОН         КОТ:= ’01’
 ЗП ТСЛ(М2)
ВОКАР	сч	
	зп	ТБЛ(М2)
	пб	A30124
БУДИК5 НОП ,             ВОССТАНОВЛЕНИЕ ВППС
	уиа	'2003'
 СЧ РЯРОТ
 ЗП ВППС(М2)
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
*
*
* ВЫПОЛНЕНА РАБОТА ПО ЭКСТРАКОДУ 071 *
*
КОНЭ71 НОП ,
	мода	A30433
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
A30433	ноп
 СЧ ШЗНКТ1
 И Е48(М2)
 ПЕ ОТРЕК         ЗАДАЧА УЖЕ СНЯТА! ОСВОБОДИМ РЕКОРДЫ
 СЧ ШСТRLО
 И Е48(М2)
 ПЕ ОЧТЕР
 УИИ М17(М5)
     уиа        6(м12)
 МОДА ОТРЕК
 ПИО (М5)
 ПВ ЗАНПРП(М15)
 УИА 3             СНТ.БЛПР
 СЧ ТСЛ(М2)
 И Е40
* М14 = 0 :
*          ВЫДАЧА - СОБЫТИЕ ОБ ОКОН. ВЫДАЧИ
*          ПРИЕМ  - ОТНОСИТЕЛЬНЫЙ АДРЕС СЛОВА В РЕКОРДЕ
 ПО СОБМАТ       ВЫДАЧА
	уиа	0(М14)  на свс по собмат после уиа 0(м14)
* СЧ ШСБРОС
* И Е48(М2)
* ПО СОБПР        БЫЛ СБРОС С ПРИЕМА: Э62 ’0102’       
 МОД ТСЛ(М2)
 УИА (М16)
 СЧ ДЛ(М16) 3
 СДА 64+15
 УИ М17
ЛИОБ МОДА СОБПР
 УИА (М15)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 СЧИ М17
 СДА 64+10
 НТЖ П37
 УИ М15
 СЧ ШКРЗ
 И Е48-1(М5)
 ПО ОТРЕК
 СЧ 22(М3)
 НТЖ 32(М3)
 И Е48(М15)
 ПЕ ОТЛРАБ
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
 ИЛИ Е28(М14)
 ПВ ЗАПВЕТ(М16)
ОТРЕК МОД ТСЛ(М2)       ОТКАЗ ОТ БУФЕРА -
 УИА (М14)         - В О З В Р А Т   Р Е К О Р Д О В
ОРР1 МОД ВН(М14)       ( 1-Й РЕКОРД НЕ ОТДАЕМ)
 УИА (М14)         М14:= НАЧАЛО РЕКОРДА
 УИА 3
	мода	ВСЕРЕК
	пио	(М14)   ОТДАЛИ ВСЕ РЕКОРДЫ
 СЧИ М14
 СДА 64+5          М11:= N РЕКОРДА. М12:= N СТРОКИ ТРР
 И П37
 УИ М11
 УИА -КЛР+1(М12)
ОРР4 СЧИ М14           ЦИКЛ ПОИСКА СТРОКИ ТРР
 НТЖ ТРР1+КЛР-1(М12)
 И Е15П11
 ПО ОРР5          НАШЛИ СТРОКУ
	мода	ОРР4
	цикл	(М12)
СТ530	стоп	
	пб	СТ530
ОРР5 СЧ ДЛ(М14)       М13:= ЧИСЛО РЕКОРДОВ В МАКРОРЕКОРДЕ
 СЛЦ НАЧТЕК
 И П77777
 СДА 64+5
 НТЖ П77777
 СЛЦ Е1
 УИ М13
 УИА ’2003’
ОРР2 СЧ  ТРР1+КЛР-1(М12) 1 -> ТРР1
 ИЛИ Е48(М11)
 ЗП  ТРР1+КЛР-1(М12)
 И Е48П17
 НТЖ Е48П17
 ПЕ ОРР3          ЛИСТ НЕ ОСВОБОДИЛСЯ
* СЧ ТРР1+КЛР-1(М12)
* И Е16
* ПЕ ОРР3          ЛИСТ РЕНЕЛЬЗЯ ОТДАВАТЬ
 СЧ  ТРР1+КЛР-1(М12) ОТДАЕМ ЛИСТ
 И Е18П1
 СДА 64-2
 ПВ ТБУФ(М15)
 СЧ
 ЗП  ТРР1+КЛР-1(М12) 0 -> ТРР1
ОРР3 УИИ М15(М11)      ВНИМАНИЕ !
 СЛИА -’37’(М15)
	мода	ОРР3А
	пино	(М15)    ВЕРНУЛИ НЕ ’37’-Й РЕКОРД
	мода	ОРР1
	пио	(М13)     ЭТО ПОСЛЕДНИЙ Р.МАКРОРЕКОРДА
 УИА -КЛР+1(М12)
 УИА -1(М11)       ЭТО ДЛЯ МАКРОРЕК-А В СМЕЖНЫХ ЛИСТАХ
ОРР3В СЧИ М14           ЦИКЛ ПОИСКА СТРОКИ ТРР
 СЛЦ Е11
 НТЖ ТРР1+КЛР-1(М12) ТСЛ-1
 И Е15П11
 ПО ОРР3А         НАШЛИ СТРОКУ СО СМЕЖНЫМ ЛИСТОМ
 МОДА ОРР3В
 ЦИКЛ (М12)
	пб	СТ530
ОРР3А СЛИА 1(М11)        НЕ ПОСЛЕДНИЙ Р.МАКРОРЕКОРДА *
 мода ОРР2
 цикл (М13)     НЕТ
 ПБ ОРР1
ВСЕРЕК НОП ,
 МОД ТСЛ(М2)
	уиа	0(М16)
	уиа	там-тут(М14)
	пб	УСТНСР
там  ноп
 УИА ’2003’        УСТ. БЛПР
 СЧ ВСЕЕД
 НТЖ Е48(М2)
 ЗП СМ
 СЧ ШКЭ71         ’0’ -> ШКЭ71
 И СМ
 ЗП ШКЭ71
 СЧ ШКВЭ71
 И СМ
 ЗП ШКВЭ71
 СЧ ШЗНКТ1
 И Е48(М2)
 ПО ЕЕ
 НТЖ ШЗНКТ1
 ЗП ШЗНКТ1
 СЧ ШЗНКТ
 И СМ
 ЗП ШЗНКТ
ЕЕ СЧ ТСЛ(М2)
 И КОТ
 ПЕ ЕСТКОТ        КОД ОТВЕТА УЖЕ ЕСТЬ: <ОБРЫВ>,<БУДИЛ>
 СЧ ЕЗВОН-1       КОТ:=’10’
ЕСТКОТ ИЛИ ТСЛ(М2)       ГАШЕНИЕ ВСЕГО ЛИШНЕГО В ТСЛ
 И КГШТСЛ
 ЗП ТСЛ(М2)
 СЧ ЯЧОК(М3)
 И ЕОК
 ПО СОХРНФ        ЗАДАЧА НЕ ЗАКРЫТА ПО ОПРОСУ
 СЧ (М3)
 И Е48(М2)
 ПО СОХРНФ        ЗАКОНЧИЛ РАБОТУ НЕ ТОТ, КОГО ЖДЕМ
 СЧ ТСЛ(М2)       ЗАНЕСЕНИЕ КОДА ОТВЕТА
 И КОТ
 НТЖ ТСЛ(М2)       ГАШЕНИЕ КОТ-А В ТСЛ
 ЗП ТСЛ(М2)
 СЧМР
 СДА 64-6
 ЗП (М3)
 СЧ ЯЧОК(М3)
 НТЖ ЕОК
 ЗП ЯЧОК(М3)
	сч	'66'(М3)
	и	E27
	по	ПОСТАР
 СЧИ М2
 СЛЦ Е1
 ИЛИ (М3)          ОТВЕТ ПО НОВОМУ
 ЗП (М3)
 СЧ ТСЛ(М2)
 СДА 64-48+АТ
 СЧМР
 СДА 64-15
 ИЛИ (М3)
 ЗП (М3)
 СЧ ТСЛ(М2)
 И Q
 СДА 64-30
 ИЛИ (М3)
 ПБ ОТКРШГ
*
*
*
*
*/////////////////////////////////////////////*
*//////                                 //////*
*//////   ПОДКЛЮЧЕНИЕ НОВОГО ТЕРМИНАЛА  //////*
*//////                                 //////*
*/////////////////////////////////////////////*
*
НОВТ УИА ’2003’
 СЧ ШКИВ          ВЫЗВАТЬ ПЛАНИРОВЩИК
 ИЛИ Е36
 ЗП ШКИВ
 МОДА ОЧТЕР         ЗА НОМЕРОМ ТЕРМИНАЛА
 ПВ (М4)
 УИА (М6)
 СЧИ М2            ПОДГОТОВКА 1-ГО РЕКОРДА
 СДА 64-5
	уи	М14
 СДА 64+10
 ПО Н1            N < ’40’
 УИА 1(М6)
	сч	ТРР(М6)
	пе	A30626
	пв	ТБУФ(М15)
	сда	64-8
	или	Е48П17
A30626	нтж	'43'(М2)
	зп	ТРР(М6)
	слиа	-1024(М14)
	уиа	'3'
Н1 НОП .             А 1ГО РЕКОРДА -> ТСЛ
	уии	М17(М2)
	уии	М16(М14)
 МОД ТРР(М6)
 СЛИА (М16)
 СЧИ М16
 ИЛИ ТСЛ(М2)
 ЗП ТСЛ(М2)
	уиа	0(М14)
УСТНСР	ноп
 СЧ 0
 УИА -30(М15)
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
	пб	тут-БОНБОТ(М14)
тут	сч	ШСВЯТ
	и	E48(М2)
	пе	ОТПРИМ
	сч	ШКУСТР
	и	E48(М2)
	по	A30672
	сч	D77111
	и	E48(М2)
	пе	A30670
	сч	E18
	или	ТСЛ(М2)
	зп	ТСЛ(М2)
	сч	ШКВИД
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
	пв	(М13)
	мода	ОТПРИМ
	уиа	0(М15)
	сч	E19
	пб	ТВ67
A30670	сч	ТСЛ(М2)
	или	E17
	зп	ТСЛ(М2)
	пб	ОТПРИМ
A30672	сч	ШКОПТТ  свс: ШОТА
 И Е48(М2)
 ПО Н8            ТЕРМИНАЛ НЕ ОПЕРАТОРСКИЙ
* П О Д К Л Ю Ч Е Н И Е   О П Е Р А Т О Р С К О Г О   Т Е Р М.
* УИИ М17(М2) 
 СЛИ М17(М17)
 СЛИ М17(М2)
 СЧ АСОТ
 МОДА (М17)
 СДА 64(М17)
 И П77
 УИ М16           М16:= ФИЗ.N
 СДА 64+48-АТ
 СЧМР
 ИЛИ ТСЛ(М2)       ФИЗ.N -> ТСЛ
 ЗП ТСЛ(М2)
 СЧ ТАС(М16)
 И Е18П16        ТИП ТЕРМИНАЛА -> ТСЛ
 ИЛИ ТСЛ(М2)
 ЗП ТСЛ(М2)
	уии	М17(М2) 
	слиа	1(М17)  лог.N -> ТАС
 СЧИ М17
 ИЛИ ТАС(М16)
 ЗП ТАС(М16)
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
	пв	ДЛЯЭ71(М16)
	уиа	'3'
	мод	РЯРОТ
	уиа	0(М1)
	пб	ОЧТЕР
ЗАНТИП	ноп
 УМН Д1НА12
 УИ М16
 СЧМР 64
 УМН УП60
 УИ М15
	слиа	-3(М15)
	сч	ТАБТИП(М16)
 СДА 64(М15)
 И П17
 УИ М15
*      *-------------*
 СЧ ШКВИД
 ИЛИ Е48(М2)
 ЗП ШКВИД
*      *-------------*
	сч	ТАБТИП+5
	нтж	ВСЕЕД
	пб	(М13) а не хак ли тут (м. б. по/пе)
U30733	ноп
 УИА 1027
 СЧ ШКВИД(М15)
 ИЛИ Е48(М2)
 ЗП ШКВИД(М15)
 СЧ ШVD130
 И Е48(М2)
 ИЛИ ШНР
 ЗП ШНР
 УИА 3
	пб	(М13)
A30740	уиа	'77602'(М2)
	сч	СЛОГ
	сда	64-32
	рзб	D30032
	зп	ТСЛОГ+1
	мода	ТСЛОГ
	уиа	0(М16)
	сч	ГОД
	сда	64-45
	зп	РЯРОТ
	мода	ВЫДАТЬ
	пв	(М17)
	сч	АСОШ
	сда	64+3
	по	КОНРАБ
	сч	ШКОПТТ
	и	ШКАС
	нтж	ШКАС
	зп	ШКАС
	или	СЛОN
	зп	СЛОN
	сч	ШКАС
	или	ШБУДИЛ
	зп	ШБУДИЛ
	сч	ШНЕРОТ
	или	E46
	зп	ШНЕРОТ
	сч	E7
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
	и	ТСЛ-1(М16)
	зп	ТСЛ-1(М16)
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
НУС	уиа	НЕРНУС-НЕРОТ(М10)
	пб	LOADGO
*
*/////////////////////////////////////////////*
*//////                                 //////*
*////// Д И Р Е К Т И В Ы   МАТЕМАТИКА  //////*
*//////                                 //////*
*/////////////////////////////////////////////*
*
ШКПУ УИА 1027
 СЧ ЗАНЯТА
 И Е7
	по	ОТПРИМ
 СЧ ШКПУСК
 ИЛИ Е48(М2)
 ЗП ШКПУСК
 СЧ ШКИВ
 ИЛИ ЕПУСК
 ЗП ШКИВ
 ПБ ОЧТЕР
ВТЕ23	сч	ШКУСТР
	или	ШКАС
	и	E48(М2)
 ПО ОЧТЕР   ТЕРМ.ОТБР
	сч	ТСЛ(М2)
	и	E28
 ПЕ ОЧТЕР   ТЕРМ.ЗАН.НА ПРИЕМ
	сч	ШЗПРИМ
	или	ШКНОВ
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
	пв	ЗАХЗАН(М15)
 СЧ ШЗПРИМ
 ИЛИ Е48(М2)
 ЗП ШЗПРИМ        ЗАПРЕТ ПРИЕМА
	сч	В6050
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
	сбр	D77041
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
	пв	ДЛЯЭ71(М16)
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
ВШКДОП	ноп
ДОП УИА 3
 МОДА ТР5
 УИА (М14)
ДОП1 СЧ МСЗАК
 И Е48(М2)
	по	ВЫБ4А
 СЧ 0
 УИА -6(М3)
 УИА -2(М12)
 УИА (М5)
 ЗП ТР5
 ЗП ТР4
 ЗП ТР3
 ЗП РЯ1
 ЗП РЯ2
 ЗП ЗАСЛОН       ДЛЯ ВРЕ И ДАТ
 СЧ ТСЛ(М2)
 УИ М11
 СЧ Н(М11)
 ЗП РЯ3
ПЕРВС МОДА ВС            ЕСЛИ ПЕРВЫЙ СИМВОЛ В ДИРЕКТИВЕ НЕ
 ПВ (М16)         БУКВА - ПРОПУСК СИМВОЛА
 УИА 1(М13)       ПРИЗН: СООБЩ.ВЫДАВАТЬ НА ТЕРМ.
	нтж	ПЕОТ
	по	ПЕРВС
 СЧ СИ
 ВЧ Е6
 ПЕ ПЕРВС
 СЧ СИ
 ПБ КОНС
ВЫБ1 МОДА ВС            ЗА СИМВОЛОМ
 ПВ (М16)
КОНС НТЖ П377
 ПО NЭNТ
 СЧ РЯ1
 СДА 64-8
 ИЛИ СИ
 ЗП РЯ1           СИМВОЛ В ЯЧЕЙКУ СБОРА
 МОДА ВЫБ1
 ЦИКЛ (М12)
ВЫБ3 МОДА (М12)
 СЧ ДЕШ
 ПО АNL           ПОИСК СРЕДИ ЛАТИНСКИХ
 НТЖ РЯ1
 И Е24П1
 ПО СМОТР        ТЕКСТ ДИР-ВЫ СОВПАЛ С ДЕШИФ
 СЛИА 1(М12)
 ПБ ВЫБ3
СМОТР СЧ ШКОПТТ
 И Е48(М2)
 ПЕ НАША         С ТЕРМ.ОПЕР.МОЖНО ИСП.ЛЮБУЮ ДИР-ВУ
 СЧИ М12
 ВЧ П60
	по	ДЗАПРЩ
	сч	МРДИРО
	и	E48(М12)
	пе	НАША
ДЗАПРЩ	уиа	ТЗАПР-БОНБОТ(М16)
	пб	ВЫДАЧ
НАША	сч	
	мода	ДЕШ
	пб	(М12)
ANL	уиа	НЕРАNL-НЕРОТ(М10)
LOADGO	сч	E1
	пв	ТБУФ(М15)
	уии	М16(М10)
	сда	64-8
	уи	М10
	сда	64-2
	или	НОММБ1
	или	КУСНЕР
	зп	D31157
	сли	М16(М10)
	пб	ФИЗОБМ
D31157	пам	1
NЭNТ МОДА ВЫБ3
 ПИО (М12)
 СЧ ШКОПТТ
 И Е48(М2)
 ПЕ НАГОД
 УИА (М14)
НАГОД СЧ ГОД
 И П7
 ИЛИ ЕСТЬ
 ЗП БУФЕР
 МОДА NЭNТ1   ПОЛЬ
 ПИО (М14)
 СДА 64-40
 СДА 64+40
 ИЛИ =М40В’143’М32В’143’М24В’143’М16В’143’М8В’143’
 ЗП БУФЕР
NЭNТ1 СЧ ТСЛ(М2)
 СДА 64+АТ
 УИ М16
 СЧИ М2
 СЛЦ Е1
 СДА 64-42
 МОДА ТЕРАС
 ПИНО (М16)
 СДА 64+3
 РЗБ =П’007770’
 ИЛИ П377
 ПБ ТЕРПАС
ТЕРАС РЗБ =П’007770’
 ИЛИ ТNТЕР+1
 ЗП БУФЕР+2
 СЧ ТСЛ(М2)
 СДА 64+1
 РЗБ =П’007770’
ТЕРПАС ИЛИ ТNТЕР
 ЗП БУФЕР+1
* РИН-ов на СВС не водилось 
	сч	ШРИН
	и	E48(М2)
	уиа	E2(М16)
	пе	ИНД1
 СЧ ШVD130
 И Е48(М2)
 МОДА П15
 УИА (М16)
 ПЕ ИНД1         ЭТО VDТ-130
 СЧ ШНР
 И Е48(М2)
 ПО NТЕР4        ЭТО VТ-340
 УИА П16(М16)
ИНД1 СЧ (М16)
 СДА 64-32
 НТЖ БУФЕР+1
 ЗП БУФЕР+1      ИЗ Т СДЕЛАЕМ Э
NТЕР4 УИА БУФЕР-БОНБОТ(М16)
 ПБ ВЫДАЧ
ВЫБ4А	уиа	ОТКЛЮЧ-БОНБОТ(М16)
	пб	ВЫДАЧ
ВЫБ4	уиа	ТЕК1-БОНБОТ(М16)
*
*
ВЫДАЧ МОДА ОТПРИМ
 УИА (М17)
 СЧИ М2
 СЛИ М16(М7)
 СДА 64-40
	зп	РЯРОТ
	сч	Е48П41
	или	(М16)
	нтж	Е48П41
	или	РЯРОТ
 ЗП (М16)
 ПБ ВЫДАТЬ
ВС МОДА ВС1
 ЦИКЛ (М3)
 СЛИА 1(М11)
 УИА -5(М3)
 СЧИ М11
 НТЖ П11
 И П17
 ПО КОНБУФ        КОНЕЦ БУФЕРА
 СЧ Н(М11)
 ЗП РЯ3
ВС1 СЧ СИ
 ЗП ДСИ
 СЧ РЯ3
 СДА 64-8
 ЗП РЯ3
 СЧМР 0
ВС3 ЗП СИ            ОЧЕРЕДНОЙ СИМВОЛ
 ПБ (М16)
КОНБУФ СЧ П377
 ПБ ВС3
ВВОДА УИА (М13)
 ПБ В1
NБОБ УИИ М15(М5)
*   ПРИ ВХОДЕ СМ=0,М5=0,М13=1
 ЗП РЯ1
 УИА 5(М6)   4 ЦИФРЫ И ПРОБЕЛ
 СЛИА 1(М13)
 МОДА ВЫБЧИ1
 ПВ (М17)
 СЛИА СИ+1-*(М17)
 СЧ РЯ1
 МОДА (М13)
 ЗПМ ТР3-2
 НТЖ П377
 ПО NБОБ1   ВСЯ ИНФ
 СЧ Е24
 НТЖ Е24-5(М13)
 УИА 1(М5)
NБОБ1 ПЕ NБОБ   ЗА СЛЕД
 СЧ ТР5
 СЧМ ТР3
 ЗП ТР5
 ВЧОБ Д2047
 ПО ЭТОМЛ
 СЧ ТР5
 ПВ ИЗ10В8(М15)
 ВЧ NБЛ
ЭТОМЛ НОП
 СДА 64+40
 НТЖ Е14-5(М13)
 СЛЦ -1(М17)
 СЛЦ (М17)
 ЗП ТР3
 И Е17
 ПЕ ВЫБ4
ЗАНЕС СЧИ М12
 ЗП ТУМБ6         СОДЕРЖИМОЕ 6-ГО ТУМБЛЕРА
ЗАНЕС1 УИА ’2003’
 МОД ТСЛ(М2)
 УИА (М16)
*
 СЧ ТУМБ6
 ЗП Н+6(М16)
 СЧ ТР5
 ЗП Н+7(М16)
 СЧ ТР4
 ЗП Н+8(М16)
 СЧ ТР3
 ЗП Н+9(М16)
*
 СЧ ШПРИК
 ИЛИ Е48(М2)
 ЗП ШПРИК
 СЧ ШКСВН
 И Е25
 ПО ОЧТЕР
	сч	ШКИВ
	или	E25
	зп	ШКИВ
	уиа	'3'
 ПБ ОЧТЕР
СМЕНА УИА 1(М6)
 УИА (М15)
 МОДА ВЫБЧИ
 ПВ (М17)         ВЫБОРКА N СМЕНЫ
 МОДА ЗАНЕС
 ПИНО (М6)          ВЫДАТЬ НОМЕР СМЕНЫ
 СЧ РЯ1           СМЕНИ НОМЕР СМЕНЫ ИЛИ ВЫДАЙ ЕГО
 СДА 64-21
 УИА 8(М12)
 ПБ В1
ВЫБЧ СЧ Е1
 ЗП ЗАСЛОН       ДЛЯ ВРЕ И ДАТ
ВЫБЧИ СЧ 0
 ЗП РЯ1
ВЫБЧИ2 СЧ ЗАСЛОН
 ПЕ ВЫБЧИ1
 СЧ РЯ1
 ПЕ (М17)
ВЫБЧИ1 МОДА ВС            ВЫБОРКА ОЧЕРЕДНОГО СИМВОЛА
 ПВ (М16)
 НТЖ П377
 ПО (М17)         КОНЕЦ ИНФОРМАЦИИ
 МОДА П11
 СЧ (М15)
 ВЧ СИ
	пе	ВЫБЧИ2
 СЧ РЯ1
 СДА 64-4(М15)
 ИЛИ СИ
 ЗП РЯ1           СИМВОЛ В ЯЧЕЙКУ СБОРА
 СЛИА -1(М6)
 МОДА (М17)         НУЖНЫЕ ЦИФРЫ ВЫБРАНЫ
 ПИО (М6)
 ПБ ВЫБЧИ1
*
*
ДАТА УИА 4(М6)
 УИА (М15)
 МОДА ВЫБЧ
 ПВ (М17)
 СЧ РЯ1
 ЗП ТР5
 ПБ ЗАНЕС
*
*
НОМ УИА 4(М6)
 УИА (М15)
 МОДА ВЫБЧИ         ВЫБОР 4-Х ЦИФР ШИФРА
 ПВ (М17)
 СЧ ДСИ
	нтж	=П'В'
	по	НОМВ
	нтж	=П'В'П'И'
	по	НОМИ
	нтж	=П'И'П'Л'
	по	НОМЛ
	нтж	=П'Л'П'О'
	по	НОМО
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
НОМВ ИЛИ Е48          ПРИЗН.НОМВ
 ЗП ТР4
 ПБ В1 
НОМИ	сч	E47
	пб	НОМВ
НОМЛ	сч	E46
	пб	НОМВ
НОМО	сч	E45
	пб	НОМВ
АДРЕС УИА 5(М6)
 УИА 1(М15)
 ПБ ПР21Б         ВЫБОР ПЯТИ ЦИФР N ЯЧЕЙКИ
УСТ УИА 10(М12)
 ЗП ТР5
 УИА 1(М6)
 УИА 1(М15)
 МОДА ВЫБЧИ
 ПВ (М17)
 СЧ РЯ1
 ПО УСТ2
УСТ1 ИЛИ ТР4
ДД ЗП ТР4
 ПБ ЗАНЕС
УСТ2 СЧ СИ
 ПО УСТ1          УСТ 0
 СЧ П17
 ПБ УСТ1          УСТ
*
В11	ноп
ОЧЕР УИА 3(М6)
 УИА 1(М15)
 МОДА ВЫБЧИ
 ПВ (М17)
 СЧ РЯ1
 ЗП ТР5           N ЗАДАЧИ В КАТАЛОГАХ ВВОДА
 МОДА ТР4
 УИА (М14)
	пб	НОМКАН
ВМД СЧ Е1            ДИСКИ
 УИА 5(М12)
НОММГ ЗП ТР4
 УИА 2(М6)
 УИА 1(М15)
 МОДА ВЫБЧИ         ВЫБОР НОМЕРА МГ
 ПВ (М17)
 СЧ ТР4
 ПЕ ПР21А         ВЫБРОС ПО МД
 МОДА ВЫБ4          ОШИБКА В ЗАДАНИИ
 ПИНО (М6)
 МОДА ПР21А         ПРИКАЗ О СНЯТИИ МГ
 ПИО (М5)
 ПБ ВЫБ4
РЕ1 СЧ П23
 ПБ ДИ30
РУ1 УИА ’33’(М12)
 СЧИ М12
 ПБ ДИ30
РУ2 СЧ П13
 ПБ ДИ30
РЗЕ СЧ П3
 ПБ ДИ30
РЗД	сч	E2
	пб	ДИ30
ПАК УИА 1(М6)
 УИА 1(М15)
 МОДА ВЫБЧИ
 ПВ (М17)
 СЧ РЯ1
 ЗП ТР4          ПАР-Р ДЛЯ НПАК
 СЧ Е1
ДИ30 УИА 24(М12)
 ЗП ТР5
ПР30	уиа	0(М13)
	пб	ЗАНЕС
ВОС СЧ Е1
 ЗП ТР4
СПЕЦ УИА ’36’(М12)
 ПБ НОМКАН
УПР УИА ’41’(М12)
 ПБ НОМКАН
КТЧ УИА ’53’(М12)
 ПБ НОМКАН
ПР21    ноп
НОМКАН УИА 3(М6)        ВКН,ВЫД,СКВ,ВЫБ.
 УИА 1(М15)
ПР21Б МОДА ВЫБЧИ
 ПВ (М17)
ПР21А СЧ РЯ1
 ПЕ В1
 УИИ М6(М12)
 СЛИА -5(М6)
 МОДА В1
 ПИО (М6)
 СЛИА -1(М6)
 МОДА В1
 ПИО (М6)
 СЛИА -13(М6)
 МОДА В1
 ПИО (М6)          23 ПРИКАЗ
 СЛИА -’16’(М6)
 МОДА ЗАНЕС
 ПИО (М6)
 ПБ ВЫБ4
ПОДК УИА ’42’(М12)
 ПБ НОМКАН
ЕСМ УИА 7(М12)
 СЧ Е24
 ЗП ТР4
ПР7 УИА 4(М6)
 УИА (М15)
 МОДА ВЫБЧИ         ВЫБОР НОМЕРА
 ПВ (М17)
 СЧ РЯ1
 ИЛИ ТР4
 ЗП ТР4
 ПБ ПР21
*
*
СВМГ СЧ Е1            ВЫДАТЬ СВОБОДНЫЕ МГ
 ПБ ПРОВО
СВД СЧ Е2
	уиа	10(М12)
ПРОВО ЗП (М14)
 МОДА ВС
 ПВ (М16)     ЗА СИМВОЛОМ
 НТЖ П377
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
КТО СЧ =П'К'
 ПБ ВЦ
НОТТ УИА ’37’(М12)
 ПБ НОТ
ПУЛЬТ МОДА ВС
 ПВ (М16)
 НТЖ =П'В'
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
СИ КОНД В’0’
ТЕК1 КОНД М32П’!’М24В’377’
ТЗАПР ТЕКСТ П’0ВАМ НЕЛЬЗЯ↑’
МРДИРО	конд	в'4440106500060140'
Д1НА12	конд	в'4001252525252525'
УП60	конд	в'4000000000000060'
ТСЛОГ	конд	п'2СЛОГ:'
	пам	1
	конд	п'ОШ.АС↑'
ЕСТЬ	конд	м40в'143'п'ЭВМ-0'
	конд	п'↑00000'
УХОДИ	конд	п'0КОНЧА'
D31732	текст	п'0КОНЧАЙТЕ↑'
ОТКЛЮЧ	текст	п'0ТЕРМ.ОТКЛЮЧ'
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
РЯ1 КОНД В’0’
РЯ2 КОНД В’0’
РЯ3 КОНД В’0’
ДСИ ПАМ 1
ТР3 ПАМ 1
ТР4 ПАМ 1
ТР5 ПАМ 1
ТУМБ6 ПАМ 1
ЗАСЛОН	пам	1
ТNТЕР	конд	п',Т0000'в'143'
D31764	конд	м40в'143'м8п'(00)'в'021'
D31765	конд	в'5160657000000000'
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
ШЗЗ	экв	'2645'
П16	экв	'72027'
П143	экв	'76015'
КЛР     экв     14      на СВС всего 5
 ЭКВИВ (ДАЙ2Ц,NТЕРМ),(ЕНРОТ,Е9),(БУФЕР,РЯ1),(СОХРНФ,ОТПРИМ)
 ВХОД РЯ1,РЯ2,NТЕРМ,ЗАНЕС,ВЫДАЧ,СИ,ВЫБ4,ТР4,ТР5,ВС,ШКПУ,ДЕШ
 ВХОД МРДИРО,ДЗАПРЩ,D31157
СОСТАВ ВНЕШ АТ,ЕПУСК
КАЧКА ВНЕШ ШКРЗ,Е48П17
ДИСП70 ВНЕШ ВСЕЕД,ГОД,ЗАНПРП,ЗАНЯТА,ЗАПВЕТ,ЗАХЗАН,КМИН,НЗАД
ДИСП70 ВНЕШ НОММБ1,П13,П1777,П17,П23,П30,П377,П37,П3,П60,П6
ДИСП70 ВНЕШ П77,СМ,ТАС,ТБУФ,ТВ40,ТРР,ТСЛ,УСТПРП,ШГП,ШЗН,ШКИВ
ДИСП70 ВНЕШ ШКСВН,NБЛ,Е15П1,(П77777,Е15П1),ТУСП,ГАШПРП,ТВ67
ДИСП70 ВНЕШ ТЕРЕЗА,ТАБТИП,ГАШЗАН,ОТКАЗН,ЗАНОСМ,МСЗАК,ЯЧОК,ЕОК
ДИСП70 ВНЕШ (Q,Е18П16),ТРР1,ИЗ10В8
ДИСП70 ВНЕШ Е15П11,Е15П2,Е16Е17,Е18П16,Е18П1,Е24П1,Е44П41
ДИСП70 ВНЕШ Е46Е45,Е46П48,(Е48П46,Е46П48),Е48П37,ШКПУСК,ШПРИК
МОТТ ВНЕШ КОНВЫД,ПЕОТ,ТАЙНА,ШЗНКТ1,ШЗНКТ,ШЗПРИМ,ШКВИД,ШКАС,ДЛ
МОТТ ВНЕШ ШКВЫД,ШКОКВД,ШКУСТР,ШКЭ71,ШНР,ШРИН,ШVD130,ЕСЛВ,Н
МОТТ ВНЕШ D77001,D77037,D77040,Е48Е24,(ШКРАБН,ШКОРАБ),ЕПРИГ
МОТТ ВНЕШ АСОШ,D77111,СЛОГ,ШКОЛА,ШСВЯТ,МЫЖДЕМ,ШСТRLО,КОТ,СЛОN
МОТТ ВНЕШ ШКОПТТ,(СБРОС,СБРОСБ),ВН,ШТО,ЕПРИМ,ЕСВД,ЕЗВОН,LINFEE
МОТТ ВНЕШ АСОТ,ШКОТЛ,ШКВЭ71,ШКЗАК,ШКЗАКВ,В6050,D77041,ШБУДИЛ
МОТТ ВНЕШ КУСНЕР,ШКНОВ,D76777,D77012
НЕРОТ ВНЕШ НЕРОТ,(НЕРАNL,АNL),(НЕРНУС,НУС)
ВЗУ ВНЕШ ФИЗОБМ,D07025
БОЭК1 ВНЕШ ЗАПВЫХ,G17263
КИТ ВНЕШ ВППС,(БАЙТ,КОНСБР),ТБЛ,Е48П41
ТЕРМ ВНЕШ ДЛЯЭ71
	ФИНИШ
