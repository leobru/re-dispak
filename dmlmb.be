ДМЛМБ	СТАРТ	'64000'
	Е
	М
*
 	ГБЛВ ∧К71
∧К71 УСТВ 1
*
	уиа	'2003'	СМ
	зп	8
	счи	М1
	зп	9
* С 11 ПО 43 ЗАНЕСТИ В М1-М33
*И ВЫТОЛКНУТЬ ИФН. ИЗ БРЗ
	уиа	-48(М1)
а	счи	'62'(М1)
	зп	'72'(М1)
	цикл	а(М1)
* ЕСЛИ МБ НЕ = 23 ТО
* ТР5 = N МБ
* ТР6 = NN
	уиа	2(М3)
	сч	5
	пе	дамп6
* 0-37 Л. ОЗУ -> 0-37 ТР. МБ. 23
дамп1	уиа	-31(М1)
	сч	кумб
дамп2	увв	(М3)
	уиа	1(М2)
дамп3	уи	
	цикл	дамп3(М2)
	слц	E3
	слц	E13
	цикл	дамп2(М1)
* ТОП. ТБД -> 2,3 ТР. МБ. 23
	уиа	-1(М1)
дамп4	сч	ЛТБД
	сбр	ПРИП+2(М1)
	рзб	ПРИП+4
	или	кукум1(М1)
	увв	(М3)
	уиа	1(М2)
дамп5	уи	
	цикл	дамп5(М2)
	цикл	дамп4(М1)
	стоп	
дамп6	и	Е24П1
	зп	кумб
	слц	E4
	зп	кукумб
	слц	E3
	зп	кукум1
	сч	5
	сда	64+39
	и	П3
	по	дамп1
	уи	М3
	пб	дамп1
ТВМБ1	сч	ШОЧНАП+44(М16)
 УИА 1(М17)
 ПО (М11)
 УИ М14
 СЧ МБЛИС-1(М14)
 ЗП ЛИС1Б-1(М16)
 СЧ МБКУС-1(М14)
 ЗП КУС1Б-1(М16)  КУС ЗАКАЗА
 СДА 64+42
 УИ М1
 СЧ КУС1Б-1(М16)
 И ЕФ
	пе	взомб3
 МОД ТУСП-1(М1)
	уиа	0(М1)
	сч	ЯЧЧП(М1)
	и	E2
	пе	сбой2
взомб3	уии	М7(М16)
	счи	М16
	слц	П5
	сда	64+3
	по	днап
	уиа	7(М7)
днап	сч	КУС1Б-1(М16)
 УИА -7(М2)
 И Е29
 ПЕ ВЗОМБ4
 СЧ КУС1Б-1(М16)
 И Е18
 ПО ВЗОМБ1   ЗП
ВЗОМБ4 МОД КНАПР-1(М7)
 ЗП 7(М2)         РОСПИСЬ СЛУЖЕБНЫХ СЛОВ
 ЦИКЛ ВЗОМБ4(М2)
 ПБ ВЫЗ
ВЗОМБ1 СЧ П3
 ПВ ПОК(М13)
 СЧ ЛИС1Б-1(М16)
 ПВ КСМ(М12)      КОНТР. СУММИР-Е
 ЗП КСУМ1Б-1(М16)
 УИА 7(М1)
 УИА -8(М2)
 ЗП РЯОМБ
 СЧ КУС1Б-1(М16)
 СБР ММБН
ВЗОМБ6	мод	КНАПР-1(М7)
 ЗП 8(М2)
 СЛЦ Е36
 ЗП РЯО2
 СЧ РЯОМБ
 СДА 64-12
 ЗП РЯОМБ
 СЧМР 0
 МОД КНАПР-1(М7)
 ЗП 9(М2)         ЗАПИСЬ КОНТРОЛЬНОЙ СУММЫ СЕКТОРА
 СЛИА 2(М2)
 СЧ РЯО2
ВЫЗ ПИНО ВЗОМБ6(М2)
 СЧ ПР13
 УИА -7(М2)
 ПВ ПОК(М13)      УСТ.ПОК
ВЗОМБ7 ЗП 1             БЛОК ВЫТАЛКИВАНИЯ
 ЦИКЛ ВЗОМБ7(М2)
ПОДГРП	уии	М7(М16)
	счи	М16
	нтж	П3
	пе	нэ256
	уиа	7(М7)
	сч	E25
	уиа	нэ256+1(М15)
	пб	ТВ67
нэ256	сч	E47(М16)
	пв	ТВ67(М15)
 СЧ КУС1Б-1(М16)
	и	оли
	зп	РЯОМБ
	счи	М16
	нтж	П3
	пе	неэле
	сч	КУС1Б-1(М16)
	и	E19
	по	ппо
	сч	E3
ппо	зп	АКТОП+7
	сч	КУС1Б-1(М16)
	и	E18
	по	тзп
	сч	АКТОП+7
	по	обэ
	сч	КУС1Б-1(М16)
	или	АКТОП+5
	зп	КУС1Б-1(М16)
	пб	обэ
тзп	сч	КУС1Б-1(М16)
	и	П3
	сда	64-1
	уи	М15
	сч	'70'(М15)
	зп	'70'
	сч	'71'(М15)
	зп	'71'
	уиа	-7(М2)
выт	зп	2
	цикл	выт(М2)
обэ	сч	E25
	пв	ТВ67(М15)
	сч	КУС1Б-1(М16)
	и	оли
	зп	РЯОМБ
	сч	КУС1Б-1(М16)
	сбр	АКТОП+3
	сда	64+35
	вч	Е12Е11
	умн	АКТОП+1
	счмр	64
	увв	'22'
	уи	
	сч	АКТОП+7
	по	неэле1
	слц	П37
	и	П37
	зп	АКТОП+7
неэле1	сч	ЛИС1Б-1(М16)
	рзб	П14037
	или	РЯОМБ
	или	E19
	нтж	E19
	увв	'7'
	уи	
	пб	педа
неэле	сч	ЛИС1Б-1(М16)
	рзб	П14037
	или	РЯОМБ
	увв	(М7)
педа	сч	РМЛ
	слц	E44
	и	Е48П43
	зп	РОСППМ+8(М16)
 ПБ (М11)
*БЛОК КОНТРОЛЬНОГО СУММИРОВАНИЯ ЛИСТА(АБЗАЦА) ОБМЕНА.
КСМ ПВ ПРИП1С(М10)
 УИА 1024(М6)
 СЧ 0
 ЗП РЯО1(М17)
 ПИО КСМ3(М17)     ОБМЕН С МЛ
 УИА (М2)          НОМЕР СЕКТОРА
 УИА -3(М1)        ЧИСЛО АБЗАЦЕВ ПРИ СУММИРОВАНИИ.
 СЧ КУС1Б-1(М16)
 И Е19
 ПЕ КСМ1          ОБМЕН ЛИСТОМ
 УИА (М1)
 СЧ КУС1Б-1(М16)
 И Е12Е11        НОМЕР АБЗАЦА
 СДА 64+2
 ИЛИ Е11
 УИ М6            АДРЕС ПЕРВОНАЧ.СУММИРОВАНИЯ.
 СЧ КУС1Б-1(М16)
 И Е2Е1
 УИ М2            НОМЕР СЕКТОРА
КСМ1 СЧ 0
 УИА -255(М4)
 ЗП РЯОМБ
 УИА 0
КСМ2 МОДА (М6)
 СЛЦ 255(М4)
 ЦИКЛ КСМ2(М4)
 УИА '2003'
ШПИК ЗП РМР
 И Е12П1
 СЛЦ РЯОМБ
 ЗП РЯОМБ
 СЧ РМР
 СДА 64+12
 ПЕ ШПИК          *С ЕСТЬ ДОПОЛН. РАЗ-ДЫ ПРИ КС
 СЧ РЯОМБ
 ЗП РМР
 СДА 64+12
 ПЕ ШЛ
 УИА 3
 СЧ РЯОМБ
 СД КСД3(М2)
 ИЛИ РЯО1(М17)
 ЗП РЯО1(М17)
 СЛИА 256(М6)
 СЛИА 1(М2)
 ЦИКЛ КСМ1(М1)
 ПБ (М12)         ВЫХОД.КОНТРОЛЬНАЯ СУММА НА СМ.
ШЛ ЗП РЯОМБ
 СЧ РМР
 И Е12П1
 ПБ ШПИК
КСМ3 УИА -1023(М4)
	уиа	0     ДЛЯ МЛ КОНТР. СУММИРОВАНИЕ
КСМ4 СЛЦ 2047(М4)
 ЦИКЛ КСМ4(М4)
 УИА 3
 ПБ (М12)
опрбэ	сч	E25
	пв	ТВ67А(М15)
	пб	пусэ
СВОБМБ	сч	E47(М16)
	пв	ТВ67А(М15) !МАЛ. ГАШЕНИЕ МАСКИ ГРП
пусэ	сч	ШЗПОМБ
	или	Е48-1(М16)
 ЗП ШЗПОМБ
	нтж	Е48-1(М16)
	пе	БМВ	!МАЛ. ПО ЗАМЕНА
	уиа	иповм+3(М15)
 СЧИ М15
	зп	ИПОБМ+3
	счи	М16
	зп	ММГРП
	сч	E42
	пб	прб      !МАЛ. ЗАПУСК ПО (УСТ. ГОТОВНОСТИ В ШГ)
ДИСПМБ	уиа	'2003'
	сч	E40
иповм	нтж	ШЗПОМБ
	зп	ШЗПОМБ
ДИСМБ2	по	вхзоб
	нед	
	уи	М16
 УИА 3
	счи	М16
	нтж	П3
	пе	нужоб
	уиа	ПРНУ+3(М11)
	уиа	7(М7)
	сч	КУС1Б-1(М16)
	и	E18
	по	тзп1
	сч	КУС1Б-1(М16)
	и	П3
	сда	64-1
 УИ М15
	сч	'70'
	зп	'70'(М15)
	сч	'71'
	зп	'71'(М15)
тзп1	сч	АКТОП+7
	по	нужоб
 СЧ КУС1Б-1(М16)
	и	E18
	пе	тчт
	сч	КУС1Б-1(М16)
	слц	АКТОП+6
	зп	КУС1Б-1(М16)
	пб	тзп
тчт	сч	КУС1Б-1(М16)
	слц	АКТОП+2
	зп	КУС1Б-1(М16)
	пб	обэ
нужоб	сч	КУС1Б-1(М16)
 УИА ИДИ2(М11)
 УИА (М15)	ОШМ
 И Е28		ТЕСТОВЫЙ РЕЖИМ
 УИА 1(М17)
	мод	ТУС+17
	пе	ТЕСТ-Р1	ТЕСТОВЫЙ РЕЖИМ МБ
	зп	РОСППМ+8(М16)
 СЧ КУС1Б-1(М16)
 И Е29
 ПЕ СНМБ
	увв	'4035'
	и	E8(М16)
	пе	ПОВКСМ
ИДИ2 СЧ КУС1Б-1(М16)
 УИА 3
 И Е18
 ПО СНМБ          ЗАПИСЬ НА МБ
*БЛОК КОНТРОЛЬНОГО СЧИТЫВАНИЯ С МБ.
 СЧ Е2Е1
 ПВ ПОК(М13)      ГАШ.ПОК
 СЧ ЛИС1Б-1(М16)
 ПВ КСМ(М12)      НА КОНТРОЛЬНОЕ СУММИРОВАНИЕ
 ЗП РЯОМБ         КОНТРОЛЬНАЯ СУММА
 СЧ КУС1Б-1(М16)
 СБР ММБН
 ЗП РЯО2
	уиа	0(М1)	НОМЕР СЕКТОРА
	уиа	-3(М2)	ЧИСЛО СЕКТОРОВ
	уии	М7(М16)
	счи	М16
	нтж	П3
	пе	обнн
	уиа	7(М7)
обнн	сч	КУС1Б-1(М16)
 И Е19
 ПЕ КСЧБ1         ОБМЕН ЛИСТОМ
 УИА (М2)          ОДИН СЕКТОР
 СЧ КУС1Б-1(М16)
 И Е2Е1
 СДА 64-1
 УИ М1            УДВОЕННЫЙ НОМЕР СЕКТОРА.
КСЧБ1 СЧИ М1
 СДА 64-34
 ИЛИ РЯО2
	мод	КНАПР-1(М7)
 НТЖ (М1)
*
**************************************************************
*                                                            *
*                                                            *
*                                                            *
 ПЕ ПСЧБЧ         СЛ. СЛОВА   Н Е В Е Р Н Ы Е       *
*                                                            *
*                                                            *
*                                                            *
**************************************************************
*
*
 СЧИ М1
 СДА 64+1
 УИ М3
 СЧ РЯОМБ
 СД КСД1(М3)
 И Е12П1
	мод	КНАПР-1(М7)
 НТЖ 1(М1)
*
**************************************************************
*                                                            *
*                                                            *
*                                                            *
 ПЕ ПСЧБМ         КОНТР.СУММА  Н Е В Е Р Н А        *
*                                                            *
*                                                            *
*                                                            *
**************************************************************
*
 СЛИА 2(М1)
 ЦИКЛ КСЧБ1(М2)
КСЧБ4 СЧ К2013
 ПВ ПОК(М13)      УСТ.ПОК
СНМБ МОД ЗОЧ1Б-1(М16)
 УИА (М14)
 УИА 1027
 СЧ СЧЗКМБ
 СЛЦ Е6П1
 И Е6П1
 ЗП СЧЗКМБ        УМЕНЬШЕНИЕ СЧЕТЧИКА ЗАКАЗОВ К МБ
 УИА 3
 СЧ ОЧМБ
 ИЛИ Е48-1(М14)
	зп	ОЧМБ	ОСВ-Е МЕСТА В МБКУС
	  АПУ     (&К71).ДА
	сч	МБЛИС-1(М14) !ШТАТ. РАБ.
	АПБ	.НЕТ
.ДА АНОП
***** БЛОК РАБОТЫ ДЛЯ  АППАРАТУРЫ К-71 *****
	пам	0
	сч	бсв7мб
	по	ялиск7
	мода	аялис7
	сч	
	мод	бсв7мб
	пб	вдмлмб-СВЯЗЬ7
аялис7	конд	A(ялиск7)
ялиск7  сч	ЯЛИСМБ(М14)
*****	КОН БЛОКА К-71 *****
.НЕТ АНОП

 ЗП ЯЛИСМБ
 СЧ МБКУС-1(М14)
 ЗП ЯКУСМБ
 И ССЫЛКА
 СДА 64+29
 ЗП ЗОЧ1Б-1(М16)  НОМЕР ОЧЕРЕДНОГО ЗАКАЗА
 УИА 7(М1)
 СЧИ М14
	нтж	ШОЧН2-1(М16)
	пе	ОПРБ6
	зп	ШОЧН2-1(М16)
ОПРБ6 УИА ТВМБ1(М5)
 ПВ ОПРБ6А(М11)
 УИА 1027
 СЧ ШЗПОМБ
 И Е40
	пе	ДИСПМБ
ПСЧБ1	уиа	-1(М11)
ПРНУ	сч	ШКОБП(М11)
	или	ШКМБП(М11)
	зп	ШКМБП(М11)
 СЧ 0
 ЗП ШКОМБ+П(М11)
 ЦИКЛ ПРНУ(М11)
	сч	Е48-1(М16)
	пб	иповм
ДВОЧ1 СЧ ОЧКУС-1(М14)
	пио	ОБЩМГ(М14)
	зп	ЯКУС	СОХР. КУС
 СЧ ОЧЛИС-1(М14)
 ЗП ЯЛИС
 УИА '2003'
 СЧ СЧЗАК
 ВЧ Е1
 ЗП СЧЗАК         УМЕНЬШ.НА 1 ОБЩ.ЧИСЛА ЗАКАЗОВ
 УИА 3             ГАШ.БЛПР
 СЧ ВСЕЕД
 НТЖ Е48-1(М14)
 ЗП РЯО           0 В РАЗРЯД ВЫПОЛНЕННОГО ЗАКАЗА
 УИА -42(М12)
ДВОЧ2 СЧ ШОЧНАП+44(М12)
	по	НЕТЗК
 СБР РЯО
 ЗП ШОЧНАП+44(М12)
НЕТЗК ЦИКЛ ДВОЧ2(М12)
 СЧИ М14
 НТЖ Е5
 ПО (М5)          ЗАКАЗ В ОЧЕРЕДИ ПОСЛЕДНИЙ
 УИИ М12(М14)
 СЛИА -15(М12)
ДВОЧ3 СЧ ОЧКУС+15(М12) ПЕРЕДВИЖКА ОЧЕРЕДИ КУС
 ЗП ОЧКУС+14(М12)
 СЧ ОЧЛИС+15(М12)
 ЗП ОЧЛИС+14(М12)
 СЧ ОЧКСУМ+15(М12) ПЕРЕДВИЖКА ОЧЕРЕДИ КСУМ
 ЗП ОЧКСУМ+14(М12)
 ЦИКЛ ДВОЧ3(М12)
 ПБ (М5)
*
*
ОПРБ6А СЧ ЯКУС(М17)
 СДА 64+42
 ПО оби1         НЕТ НОМЕРА ЗАДАЧИ В КУС-Е
 УИ М12
 УИА (М14)
 СЧ ЯКУС(М17)
 И ЕФ
 ПЕ СНЗК1
 ЗП РЯО(М17)
 ПИНО ДЕС(М17)
 СЧ КОДИК
 ПО ДЕС
 НТЖ ЯКУС
 И Е48П43
 ПЕ ДЕС
 СЧ КОДИК
 И П77777
 МОД ТУСП-1(М12)
 ЗП 8
 СЧ 0
 ЗП КОДИК
ДЕС	пио	СНЗК1(М1)
	сч	ЯЛИС(М17)
 ПВ ТОПСН(М7)
 ПИНО ЭТОМБ(М17)
	сч	'70'(М10)
	и	ДЛЯНБ+1
	зп	'70'(М10)
ЭТОМБ	сч	ЯЛИС(М17)
 И П37
этомб1	уи	М10
	нтж	П37
 УИ М7
 ПИО ЛИСТ57(М2)   ОКОН.ОБМ.
 СЧ 32(М2)
 НТЖ Е48(М7)       ГАШ.ЗАЩИТЫ В КОПРЗ ЗАДАЧИ МАТ-КА
 ЗП 32(М2)
 СЧИ М10
 И Е2Е1
 УИ М7            М7:N СТОЛБЦА КОПРП
 СЧИ М10
 СДА 64+2
 НТЖ Е3П1
 УИ М4            И4: N СТРОКИ КОПРП
 СЛИ М4(М2)
 СЧ ЯЛИС(М17)
 СДА 64-2
 РЗБ ПРИП(М7)
 ИЛИ 24(М4)
 ЗП 24(М4)
ЛИСТ57 ПИНО ДМБ(М17)
 УИА -П(М15)
ПРНС СЧ ШКОМЛ+П(М15)
 ИЛИ ШКМЛ+П(М15)
 ЗП ШКМЛ+П(М15)
 СЧ 0
 ЗП ШКОМЛ+П(М15)
 ЦИКЛ ПРНС(М15)
ДМБ СЧ ШКОБМ
 ИЛИ ШСЗПСЧ
 ПВ ВШГ(М15)
 СЧ ШЗЗПСЧ
 ПВ ВШГП(М15)
 СЧ 0
 ЗП ШЗЗПСЧ
	зп	ШСЗПСЧ
 ЗП ШКОБМ
 УИИ М7(М16)
 УИИ М4(М17)
 СЧИ М12
 ИЛИ Е30
 ПВ ЗАПВЕТ(М16)
 УИИ М16(М7)
 УИИ М17(М4)
 УИА 3
 ПИО СНЗК3(М2)      ОКОН.ОБМ.
 СЧ ТУСП-1(М12)
 И Е36
 ПО СНЗК3         ЗАДАЧА НЕ ЗАКРЫТА ПО ОБМЕНУ
 СЧИ М10
 СДА 64-23
 ЗП РЯО(М17)
 НТЖ ТУСП-1(М12)
 И Е35П24
 ПЕ СНЗК3         ЗАДАЧА ЖДЕТ ДРУГУЮ СТРАНИЦУ
СНЗК1А СЧ Е36
 ИЛИ РЯО(М17)
 НТЖ ТУСП-1(М12)
 ЗП ТУСП-1(М12)
СНЗК1 УИА '2003'        УСТ.БЛПР
 УИА ОТКРШГ(М10)                                                 °4
 ПИНО ГАШТАБ(М17)   МБ
 СЧ ЯКУС          МЛ
 И Е2
 ПЕ СНЗК2         ПОДВОД МЛ БЕЗ ОТВЕТА
ОТКРШГ СЧ ЯКУС(М17)
 И ЕФ
 УИА СНЗК2(М15)
 УИА ВШГ(М10)
 ПЕ СНЯТЬ
 УИА ВШГП(М10)
СНЯТЬ СЧ Е48-1(М12)
 ПБ (М10)
СНЗК3 СЧ ЯКУС(М17)
 ПИНО СНЗК4(М17)    МБ
 И Е3
 ПЕ СНЗК1
СНЗК2 СЧ ЯКУС(М17)
 ПБ (М5)
СНЗК4 УИА СНЗК2(М10)
ГАШТАБ СЧ ТАБОШ
 ПО (М10)         НЕТ СБОЕВ МБ
 СЧ ЯКУСМБ
 СБР НМБТР
 СДА 64+37
 НТЖ ТАБОШ
 И П3777
 ПЕ (М10)         ЗАКАЗ НА ДР. ТРАКТ
 ЗП ТАБОШ
 ПБ (М10)
*
*
ПСЧБЧ УИА 3(М15)        НЕВЕРНЫЕ СЛУЖ.СЛОВА
 ПБ ПСЧБО
ПСЧБМ УИА 2(М15)        КОН.СУММА
 ПБ ПСЧБО
ПСЧББ	по	ПСЧББ1
 СЧ Е5
ПСЧББ1 ЗП РЯОМБ         ПРИЗНАК НЕ НУЛЯ В ЯЧЕЙКЕ С КЧ
 СЧ И16
 УИ М16
 УИА 1(М15)
 СЧ КУС1Б-1(М16)
 И Е18
 ПЕ ПСЧБО         КЧ НА ЧТ
 СЧИ М33
 ЗП СМ
 УИА МС(М10)
 СЧИ М10
 ВЧОБ СМ
 СДА 64+1
 ПО МСУ
 УИА -255(М4)
 УИА 0
МС МОДА (М6)
 СЧ 255(М4)
 УИ 0
 ЦИКЛ МС(М4)
 УИА 1027
 ПБ КСМ1
МСУ СЧ КУС1Б-1(М16)
 УИА 4(М15)
 И ЕФ
 ПЕ ЗАККАЧ  КЧ НА ФИЗОБМ
ПСЧББ2 СЛИ М6(М4)
 СЛИА 255-1024(М6)
 СЧИ М6
 СДА 64-28
 ИЛИ РЯОМБ
 ЗП ЯЧКЧМБ        АДРЕС В ЛИСТЕ
 СЧ ЛИС1Б-1(М16)
 И Е48П37
 СДА 64-2
 ИЛИ ЯЧКЧМБ
 ЗП ЯЧКЧМБ
 СЧ ЯЧКЧ
 И П17           ВИД КЧ И НОМЕР МОЗУ
 ИЛИ ЯЧКЧМБ
 ЗП ЯЧКЧМБ
 СЧ Е7
 ИЛИ ШКИВ
 ЗП ШКИВ          ВЫЗВАТЬ В РАБОТУ 'КЧ'
 УИА 3
 СЧ КУС1Б-1(М16)
 СДА 64+42
 УИ М12	НОМЕР ЗАДАЧИ
 СЧ ЛИС1Б-1(М16)
	пв	ПРИП1С(М10)	ПРИПИСКА ПЕРВ. ЛИСТУ
	уии	М5(М12)
	пб	ЛАКЛАК
ПСЧБЕ	слиа	-4(М15)
	пио	ПСЧБ(М15)	ОШ. МУ -> УВУ
	сч	E18
	или	ТАБЛО
	зп	ТАБЛО
	увв	'147'
 СЧ КУС1Б-1(М16)
	сбр	НАПРМГ
	сда	64+42
 УИ М15
	сч	E1
	слц	СТУСТР+2(М15)
	зп	СТУСТР+2(М15)
ПСЧБ СЧ К2013
	пв	ПОК(М13)	УСТ. ПОК
	уиа	ПСЧБ1(М11)
	пб	ПОДГРП		НА ПОВТ. ВЫДАЧУ ЗАКАЗА
сбой2	сч	ШЗПОМБ
	и	E40
	по	СНМБ
	уиа	СНМБ(М10)	СНЯТЬ ЗАКАЗ
	сч	АСБОЙБ
	зп	3(М1)		М33
 СЧ ИВ25
	зп	5(М1)		М27, М21
	сч	ЯЧЧП(М1)
	или	E2
	зп	ЯЧЧП(М1)
 ПБ (М10)
ЗАККАЧ СЧ КУС1Б-1(М16)
 ЗП РЭ2
 СДА 64+42
 НТЖ ПР13
 УИА (М15)
 ПО ПСЧББ2
	уиа	6(М16)
	пб	СТ175
ДИСЛ	мода	
	пв	ДЛЯДИС(М10)
дисл1	сч	ШОЧМГ-24(М1)
	пв	ПОДОБМ(М11)	ВЫДАТЬ ЗАКАЗ НА ПОДВОД/ОБМЕН
ДИСП1 НТЖ Е1
 ПО ДИСП1А        ТРЕБУЕТСЯ ВЫБРОС ЗАКАЗА
 НТЖ Е2Е1
 ПЕ ДИСП1Б        ЗАКАЗ ВЫДАН ИЛИ ЗАНЯТО НАПРАВЛЕНИЕ
 УИА ДИСП1(М13)
 ПБ АВД           РАСП:ВКЛ.МГ,ВКЛ.ЗП; ПОВТ.ВЫП.ЗАКАЗА
ДИСП1Б УИА '2003'
 СЧ МГРП
Д1 ИЛИ МПРЛ
 ЗП МГРП          ОТКРЫТЬ МАСКУ ПРЕРЫВ.ПО ПРОХ.ЗОНЫ
 РЕГ '36'
 ПБ ВХОДМЛ
*
Д76 СЧ СОЛ-3(М16)
 И Е32(М15)
 ПО ДИ
 СЧ СОЛ-3(М16)
 ИЛИ Е40(М15)      УСТ.ПРИЗНАК: ОКОНЧИТЬ ПОДВОД
 ЗП СОЛ-3(М16)
ДИ СЧ ШОЧМГ-24(М1)
 ЧЕД 0
 СДА 64+1
 ПО Н533
 ПВ ДЛЯДИС(М10)
 СЧ ОЧКУС-1(М14)
 И Е5
	по	ВХЛ
	уиа	-42(М10)
	сч	К
	сда	64(М15)
	нтж	ВСЕЕД
	и	СОЛ-3(М16)
	зп	СОЛ-3(М16)
 СЧ ШОЧМГ-24(М1)
 НЕД 0
 УИ М11
 СЧ Е48-1(М11)
 НТЖ ВСЕЕД
 ЗП ЗОНАТР
 СЧ ВСЕЕД
 НТЖ Е48-1(М14)
 ЗП РЯО5
 УИИ М5(М15)
 УИИ М6(М16)
 УИИ М4(М17)
 СЧ Е18
 ПВ ЗАХЗАН(М15)
ДВ СЧ ШОЧНАП+44(М10)
	по	ФШ
 СБР РЯО5
 РЗБ ЗОНАТР
 ЗП ШОЧНАП+44(М10)
ФШ ЦИКЛ ДВ(М10)
 СЧ ШОЧМГ-24(М1)
 ИЛИ Е48-1(М11)
 ЗП ШОЧМГ-24(М1)
ДВ1 СЧ ОЧКУС-2(М14)
 ЗП ОЧКУС-1(М14)
 СЧ ОЧЛИС-2(М14)
 ЗП ОЧЛИС-1(М14)
 СЧ ОЧКСУМ-2(М14)
 ЗП ОЧКСУМ-1(М14)
 СЧ Е48(М14)
 НТЖ Е48+1(М11)
 ПО ДВ2
 СЛИА -1(М14)
 ПБ ДВ1
ДВ2 СЧ ФКУС
 ЗП ОЧКУС-1(М11)
 СЧ ФКУСА
 ЗП ОЧЛИС-1(М11)
 СЧ Е18
 ПВ ГАШЗАН(М15)
 УИА 3
 УИИ М15(М5)
 УИИ М16(М6)
 УИИ М17(М4)
 УИИ М14(М11)
	сч	ЕС5017
	пе	Н533
	пб	ДИСЛ
ДИСП1А	уиа	ВХЛ(М11)
 ПБ СНЗКМЛ
ДИСМ СЧ РАОБЩ
 ИЛИ Е1
 ЗП РАОБЩ
ДИСПО УИА '2003'
 СЧ ШЗЗОБМ
 НТЖ Е1
 ПО ВХСМЕ
 СЧ ШЗЗОБМ
 ИЛИ Е40
 НТЖ Е40           ГАШ.ПРИЗН.ЗАНЯТОСТИ П.О.МЛ ВЫДАЧЕЙ
 ЗП ШЗЗОБМ        ЗАКАЗА
ДИСО1А ПЕ ДИСПО3        ЕСТЬ ЗАКАЗЫ НА ОБРАБОТКУ ПРЕРЫВАНИЙ
 СЧ РАОБЩ
 И Е25
 ПО ДИ1
 НТЖ РАОБЩ
 ИЛИ Е1
 ЗП РАОБЩ
 СЧ РМЛ
 ИЛИ Е47П43
 ЗП РМЛ
ДИ1 СЧ ИВ25
 НТЖ Е19
 МОД ГУС
 ЗП 5
 СЧ ШЗЗПСЧ
 ПВ ВШГП(М15)
 СЧ ШСЗПСЧ
 ПВ ВШГ(М15)
 СЧ 0
 ЗП ШЗЗПСЧ
	зп	ШСЗПСЧ
 СЧ УКАЧАЙ
 ИЛИ УКАЧП
 ПО ВИСП16
	пб	БИНОТ2
ДИСПО3 НТЖ Е1
 ПО ВХСМЕ
 НЕД Е15П2
	и	Е15П1
	уи	М16 N НАПР. (ПО ПРИОР.) ДЛЯ ОБР. ПРЕР. -> М1
прл1	сч	E24
	мод	КНАПР-1(М16)
	увв	'50' 	ГАШ. СПРМЛ В КВУ
	сч	ВСЕЕД
	нтж	E39(М16)
	уи	
	рег	'37' 	ГАШ. ПРЕРЫВ. ПО ПРОХОДУ ЗОНЫ
	пб	н587
В587	увв	'4100'(М16)	ОПРОС СОСТОЯНИЯ МГ
	зп	СОЛ-3
	рег	'237'	ОПРОС ГРП
 И Е39(М16)
	пе	прл1	ЕСТЬ СИГНАЛ ПРЕРВЫ. ПОГАСИТЬ СПРМЛ
	зп	МПРЛ	0 -> МПРЛ
	сч	СОЛ-3
 И ОШМГ-3(М16)
 И СОЛ-3(М16)
 НТЖ СОЛ-3(М16)
 И П377
	или	УПРЯТ(М16)
	зп	ОКДВИЖ	NN МГ. ОТ К-РЫХ ПОЛУЧ. ПРЕР. -> ОКДВИЖ
	сч	
	зп	УПРЯТ(М16)
ПУЛ СЧ П377
 ЗП ОШМГ-3(М16)
 СЧ ОКДВИЖ
 УИА 3
ПРЛ2 ПО ДИСП4         ОБРАБОТАНЫ ФИКСИРОВ.ПРЕРЫВ.ОТ НАПР.
 ЗП ЗОНАТР
 СЧ Е48
 ЗП ИПЗМЛ+33
 СЧ ЗОНАТР
 ПВ ОБРПР(М11)    ОБРАБОТКА ПРЕРЫВАНИЯ
 ПЕ ДИСП5         ЗАКАЗ ВЫПОЛНЕН ИЛИ ВЫКЛ.МГ/КН.ЗП
 ПБ ПРЛ2Е
ПРЛ2В УВВ '4100'(М16)
 И Е16(М15)
ПРЛ2К ПО ПРЛЕН
 УИА 1027
 СДА 64-16
 ЗП СМ
 СЧИ М16
 ВЧ П3
 СДА 64-3
 ЗП РМР
 СЧ СМ
 МОД РМР
 СДА 64
 ИЛИ ДЛЯНБ
 ЗП ДЛЯНБ
 УИА 3
	сч	ОЧКУС-1(М14)
	и	П17
ПР10	пе	ПРЛЕН
 СЧ ОЧКУС-1(М14)
 И Е11
 ПЕ ПР
ПР1 СЧ ШОЧНАП-3(М2)
 И Е48-1(М14)
 ПО ДИСП5Б
 НТЖ ШОЧНАП-3(М2)
 ЗП ШОЧНАП-3(М2)
 СЧ 0
 ЗП КУС2-1(М2)
	счи	М16
	нтж	ЕС5017
	по	ПРЕС5
	пб	ДИСП5Б
ПР2 УИА 3
 УИИ М16(М6)
 СЧ УХО
 НТЖ Е48-5(М2)
 ЗП УХО
 СЧ 0
 ЗП ШКЗЗП-5(М2)
 ПБ ПР1
ПРЛЕН МОДА (М10)
 ПВ (М11)         ПРОДОЛЖИТЬ РАБОТУ НАД ЗАКАЗОМ
ПРЛ2А ПО ДИСП5Б        ЗАКАЗ НЕ ВЫДАН,ИДЕТ ОБРАБ.ПРЕДЫД.ЗК
 НТЖ Е2Е1
 ПО ПРЛ2Г         ПРОВЕРКА ВЫБРАН ЛИ ЗАКАЗ
 НТЖ Е2Е1
ДИСП5 НТЖ Е1
 ПО ДИСП5А ТРЕБ ВЫБРОС ЗАК
 УИА ПРЛ2А(М13)
	пб	АВД
ПРЛ2Г	счи	М16
	нтж	ЕС5017
	по	ПРЛ2Б
	сч	КУС2-1(М2)
	по	ДИСП5Б	ЗАКАЗ НЕ ВЫДАН
	пб	ПРЛ2Б
ДИСП4 УИА '2003'
 СЧ ШЗЗОБМ
 ИЛИ Е47(М16)
 НТЖ Е47(М16)
 ЗП ШЗЗОБМ
 СЧ Е39(М16)
 ИЛИ МГРП
 ПБ Д1
ДИСП5А ПВ СНЗКМЛ(М11)   ВЫБРОС ЗАКАЗА
 УИА ПРЕС7(М10)
 ПБ ДЛЯДИС
*
*
ДИСП5В СЧ ШОЧМГ-24(М1)
 ПО ДИСП5Б        НЕТ ЗАКАЗОВ К ЭТОМУ МГ
 УИА ПРЛ2А(М11)
	пб	ПОДОБМ
ДИС6 ПИНО ПРЛ2Б(М6)
 УИА 1(М6)
 СЧИ М2
 И Е1
 ПЕ ДИСП6А
 УИА -1(М6)
ДИСП6А СЧ ВСЕЕД
 МОДА (М6)
 НТЖ ШКЗЗП-5(М2)
 МОДА (М6)
 И ШОЧНАП-3(М2)
 ПО ДИС6
ДИСП7 НЕД 0
 УИ М14
 СЧИ М15
 ЗП ЯМ15
 СЧИ М16
 ЗП ЯМ16
 СЧ ОЧКУС-1(М14)
 СДА 64+39
	и	П7
	уи	М16	УСТ. В М16 НОМЕР НОВОГО НАПРАВЛ.
	нтж	ЕС5017
	по	ПРЛ2Б
	сч	ОЧКУС-1(М14)
	пв	ПРЛ17А(М2)
	пв	ДЛЯДИС(М10)
	сч	КУС2-1(М2)
	по	ДИСП7Г	 НАПРАВЛ. СВОБОДНО
	сч	ЗОЧ2-5(М2)
	пе	ДИСП7В
ДИСП7Г	мода	
	пв	ЗКМЛА(М11)
ДИСП7А НТЖ Е1
 ПО ДИСП7Б        ТРЕБУЕТСЯ ВЫБРОС ЗАКАЗА
 НТЖ Е2Е1
 ПЕ ДИСП7В        ЗАКАЗ ВЫДАН
 УИА ДИСП7А(М13)
АВД ПВ АВ(М11)
 НТЖ Е1
 ПЕ АВД1          ВЫБРОС ЗАКАЗА НЕ ТРЕБУЕТСЯ
 СЧ Е1
 ПБ (М13)
АВД1 УИИ М11(М13)
 ПБ (М10)
ДИСП7Б ПВ СНЗКМЛ(М11)
ДИСП7В СЧ ЯМ15
 УИ М15
 СЧ ЯМ16
 УИ М16
ПРЛ2Б СЧ ОКДВИЖ
 ПБ ПРЛ2
ВЫХ1 СЧ Е1
 ПБ (М11)
ВЫКЛМГ УИА 5(М5)
 ПБ ВЫХ2
ПРЗП7	уиа	7(М5)
 ПБ ВЫХ2
ВЫХ3 СЧ Е2Е1
 ПБ (М11)
*
*
* БЛОК РЕАКЦИИ НА ПРЕРЫВАНИЯ ПО ОКОНЧАНИЮ ОБМЕНА С МЛ
*            (РАБОТАЕТ ПРИ РАЗМЕТКЕ МЛ)
*
ПРОБМ СЧ Е32(М16)
 ПВ ТВ67А(М15)    ГАШ.МАСКИ ГРП 27(26)Р
 СЧ ВСЕЕД
 НТЖ Е32(М16)
 УИ 0
 РЕГ '37'          ГАШ.ГРП 27(26)Р
 СЧ КУС2-1(М16)
 И Е4
 ПО БМВ           КУС НЕ ЗАДАЧИ РАЗМЕТКИ
 СЧ РЕЖРАЗ
 И Е48
 ПО ПРОБМ4        НЕ РАЗМЕТКА ЗОНЫ
ПРОБМ3 СЧ П5
 ПБ ПРОБМ2
ПРОБМ1 РЖА 3
 СЧ Е2Е1
 УВВ '141'         УСТ.РЕЖИМ РАЗМЕТКИ В КВУ
 СЧ РЕЖРАЗ
 СДА 64+39
 И П7
 ПО ПРОБМ3        К-ВО УДЛИНЕНИЙ=0
 ИЛИ Е48
 УМН П30
 СЧМР 64
ПРОБМ2 ЗП ЗТРАЗМ        УСТ.ВЕЛИЧИНУ УДЛИНЕНИЯ
ПРОБМ5 СЧ 0
 ЗП ТРАЗМ         СБРОС СЧЕТЧИКА
 СЧ РЕЖРАЗ
 ИЛИ Е35           УСТ.ПРИЗНАК: ЕСТЬ ПРЕРЫВАНИЕ
 ЗП РЕЖРАЗ        ПО ОКОНЧАНИЮ ОБМЕНА
 ПБ БМВ
ПРОБМ4 СЧ РЕЖРАЗ
 И Е46
 ПО ПРОБМ1        НЕ СТИРАНИЕ
 ПБ ПРОБМ5
*
* БЛОК РЕАКЦИИ НА ПРЕРЫВАНИЯ ПО ПРОХОДУ ЗОНЫ
*
прл	сч	E39(М16)
	пв	ТВ67А(М15)	ГАШ. МАСКИ ГРП (36-33РР.)
	сч	ШКПРЕ
	или	E39(М16)
	нтж	E39(М16)
	зп	ШКПРЕ
	счи	М16
	нтж	РСЧРАЗ
	и	П7
	пе	прлб	НЕТ РАЗМ. НА НАПРАВЛЕНИИ
	увв	'4100'(М16)
	и	СОЛ-3(М16)
	нтж	СОЛ-3(М16)
	и	П377
	сда	64-40
	нед	П7
	нтж	П7
	нтж	РЕЖРАЗ
	и	П7
	пе	прлб	НЕТ РАЗМ. НА МГ
	сч	РЕЖРАЗ
	сда	64+22
	и	П377
	пе	прлб	ВРЕМЯ ПРОХОДА ЗОНЫ ЗАФИКСИРОВАНО
	сч	ТРАЗМ
	сда	64+8
	по	прлр	ВРЕМЯ ПРОХ. ЗОНЫ > 1 СЕК.
	сч	E8
прлр	или	ТРАЗМ
	и	П377
	сда	64-22 ВРЕМЯ ПРОХ. ЗОНЫ -> ЗАДАЧЕ РАЗМЕТКИ
	или	РЕЖРАЗ
	зп	РЕЖРАЗ
	и	E45
	по	прлб НЕ КОНТРОЛЬНОЕ ЧТЕНИЕ
	счи	М16
	слц	П23
	сда	64+2
	уи	М15
	рег	'237'
	и	E32(М15)
	по	прлб	ОБМЕН НЕ ОКОНЧЕН
	сч	РЕЖРАЗ
	или	E35
	зп	РЕЖРАЗ	УСТ. ПРИЗНАК: ОБМЕН ОКОНЧЕН
	сч	E2
	зп	ТРАЗМ
	увв	'141'	УСТ. В КВУ РЕЖИМ СТИРАНИЯ
прлб1	сч	ШЗЗОБМ
	и	E47(М16)
D65021	пе	БМВ ИДЕТ ОБРАБ. ПРЕР. ОТ ЭТОГО НАПР-Я
	сч	ШЗЗОБМ
	или	E47(М16) УСТ. ПРИЗНАК: ОБРАБОТАТЬ ПРЕРЫВАНИЕ
	зп	ШЗЗОБМ
	нтж	E47(М16)
	пе	БМВ	П.О. МЛ ЗАНЯТА
	уиа	прл1(М15)
	счи	М15
	зп	ипзмл3
	счи	М16
	зп	дляди1
	сч	E39
прб	уиа	БПУ(М15)
	пб	ВШГ
ВЫХОД1 СЧ ОЧКУС-1(М14)
 И ПР14
 ПЕ ОБХОДР        *С ЗАКАЗ ОТ РАЗМЕТКИ
 ПБ ОБХОД2
ЗКМЛ СЧ Е16(М15)
 ИЛИ Е24(М15)
	пв	ГАШСОЛ(М10) ПОГАСИТЬ ПРИЗНАКИ ПОДВОДА
	пв	ДЛЯДИС(М10)
	сч	ТЗНМЛ-24(М1)
	и	E39
	пе	зкмлоч
	сч	ТЗНМЛ-24(М1)
	и	E40
	по	зкмлоч
	сч	ОЧКУС-1(М14)
	и	E5
	по	ВЫХ0
зкмлоч	счи	М16
	нтж	ЕС5017
	по	ЗКМЛА
	сч	ШОЧНАП-3(М2)
	или	Е48-1(М14)	ПОСТАНОВКА ЗАКАЗА
	зп	ШОЧНАП-3(М2)	В ОЧЕРЕДЬ К НАПРАВЛЕНИЮ
	и	ШКЗЗП-5(М2)
	нтж	ШОЧНАП-3(М2)
	чед	0		НАПРАВЛЕНИЕ СВОБОДНО
	сда	64+1
	по	зкн
	сч	ОЧКУС-1(М14)
	и	E5
	по	ВЫХ0
	сч	КУС2-1(М2)
	пе	ВЫХ0
зкн	сч	КУС2-1(М2)
	по	ЗКМЛА	ОБМЕН С НАПРАВЛЕНИЕМ РАЗРЕШЕН
	и	E4
	по	ВЫХ0	НАПРАВЛЕНИЕ ЗАНЯТО НЕ РАЗМЕТКОЙ
ЗКМЛА	мода	
	пв	ДЛЯДИС(М10)
	сч	ОЧКУС-1(М14)
	и	E4
	пе	зкмла6	*С ЗАКАЗ ОТ РАЗМЕТКИ
 СЧ ОЧКУС-1(М14)
 И Е18
 ПЕ ЗАКМЛ         БУДЕТ ЧТ
 СЧ УХО
 И Е48-5(М2)
 ПО ЗАКМЛ         ЗП РАЗРЕШЕНА
 СЧ Е48-1(М14)
 ИЛИ ШКЗЗП-5(М2)
 ЗП ШКЗЗП-5(М2)
ВЫХ0 СЧ 0
 ПБ (М11)
ЗАКМЛ	сч	КУС2-1(М2)
 УИА 0(М17)
	и	E4
	по	зкмла2 НАПРАВЛЕНИЕ НЕ ЗАНЯТО РАЗМЕТКОЙ
	сч	РСЧРАЗ
	по	зкмла2 *С РСЧРАЗ = 0
	сч	
	увв	'141'
	зп	КУС2-1(М2)
	пб	зкмла2
зкмла6	сч	РЕЖРАЗ
	уиа	'2003'
	и	E48
	по	зкмла3 	НЕ РАЗМЕТКА ЗОНЫ
	сч	РЕЖРАЗ
	и	E43
	по	ЗКМЛА4	НЕ РАЗМЕЧАЕТСЯ 1-Я ЗОНА
	сч	E4
	зп	ТРАЗМ
	пб	зкмла1
зкмла1	сч	П13
	вч	ТРАЗМ
зкмла3	зп	РЯР
	уиа	0(М17)
зкмла2  НОП
 СЧ Е48-1(М14) ЗАПОМИН. МЕСТА ЗАКАЗА В ОЧЕРЕДИ К НПР.
 ЗП ЗОЧ2-5(М2)
 СЧ ОЧКУС-1(М14)  ЗАПОМИН.КУС ЗАКАЗА ПОСЛЕ ЕГО ВЫДАЧИ
 И Е48П43
	пе	дмлзак
	сч	ОЧЛИС-1(М14)
	пе	обч
	уии	М10(М16)
	уии	М6(М15)
	пв	ТБУФ(М15)
	уиа	'3'
	пб	общмлх
дмлзак	сч	ОЧКУС-1(М14)
 ЗП КУС2-1(М2)
 СЧ ОЧЛИС-1(М14)
 ЗП ЛИС2-1(М2)
 ПВ ПРИП1С(М10)
 СЧ КУС2-1(М2)
	и	E18
	пе	ЗКМЛ1А	ЗП НА МЛ*
 СЧ КУС2-1(М2)		НЕТ СЧ. С МЛ.
	и	Е34П25
	сда	64+23
ЗАК2	зп	РЯО3	2*ЗОНА*10*ДЕЛЬТА
 СДА 64-12
 ИЛИ РЯО3
 ЗП ТЗОНМЛ-24(М1)
ЗКМЛ1 СЧ КНАПР-1(М2)
 УИ М10
 СЧ КУС2-1(М2)
 И Е6
 СДА 64+5
 ПЕ ЗКМЛА5
ЗКМЛБ СЧ КУС2-1(М2)
 И Е4
 ПО ЗКМЛА5        КУС НЕ ЗАДАЧИ РАЗМЕТКИ
 СЧ РЕЖРАЗ
 И Е38           ВЫДЕЛЕНИЕ ПРИЗНАКА НЕЧЕТНОСТИ ЗОНЫ
 СДА 64+37
ЗКМЛА5 ИЛИ ТЗОНМЛ-24(М1)
 ЗП ТЗОНМЛ-24(М1)
 ИЛИ КЛЮЧ
 ЗП 3(М10)
 ЗП 6(М10)
 СЧ ВРЕМЯ
 ЗП 4(М10)
 СЧ ОЧКСУМ-1(М14)
 ЗП 7(М10)
 СЧ КУС2-1(М2)
 СБР НАПРМГ
 ЗП (М10)
 СЧ ГОД
	и	П277+1
 ИЛИ (М10)
 ЗП (М10)
 СЧ КУС2-1(М2)
 СДА 64+42
 ПО ОБЛ
 УИ М6
 МОД ТУСП-1(М6)
 СЧ ШИФРМ
ОБЛ1 ЗП 1(М10)
 СЧ ТЗНМЛ-24(М1)
 И Е12П1
 ЗП РЯО3
 СДА 64-30
 ИЛИ РЯО3
 ИЛИ Е24П16
 ЗП 2(М10)
 УИА 0
 СЧ ТБД-1
 УИА 3
 ЗП 5(М10)
 СЧ ТЗНМЛ-24(М1)
 И Е13
 ПЕ МГНОР     ЛЕНТА ЕС
 СЧ ВСЕ6
 УИА 0
 ЗП ТБД-1
 УИА 3
ЗКМЛ4	сч	КУС2-1(М2)
	и	E4
	пе	ЗКМЛ4К
	сч	E8(М2)
	увв	'31'	ИМИТ. КОНЦА ОБМ.
	пб	ЗКМЛ4К
ОБЛ СЧ КУС2-1(М2)
 СДА 64+6
 И Е1
 УИ М6
 СЧ ШИМЛ(М6)
 ПБ ОБЛ1
ЗКМЛ1А СЧ КУС2-1(М2)
 И Е3
 ПЕ ЗКМЛ4         ТЕСТОВЫЙ РЕЖИМ
 СЧ КУС2-1(М2)
 И Е23
 ПО ЗКМЛ4         *С НЕ НАЛОЖЕНИЕ
 СЧ ОЧЛИС-1(М14)
 СЛЦ Е16
 ЗП ОЧЛИС-1(М14)
 И Е16Е17
 НТЖ Е16Е17        ЧИСЛО НАЛОЖ.=3
 ПО ЗКМЛ2         *С ЧИСЛО НАЛОЖЕНИЙ =3
 И Е16
 ПО ЗКМЛ4
 СЧ ТЗНМЛ-24(М1)
 И Е25
 ПО ЗКМЛ4
 СЧ Е26
 ИЛИ ТЗНМЛ-24(М1)
 ПБ ЗКМЛ3
ЗКМЛ2 СЧ КУС2-1(М2)
 НТЖ Е23           ГАШ.ПРИЗНАКА НАЛОЖЕНИЯ
 ЗП КУС2-1(М2)
 СЧ ОЧЛИС-1(М14)
 НТЖ Е16Е17
 ЗП ОЧЛИС-1(М14)   ГАШ.СЧК
 СЧ ТЗНМЛ-24(М1)
 СЛЦ Е25
ЗКМЛ3 ЗП ТЗНМЛ-24(М1)  ГАШ.СЧ-КА ОБР-НИЙ К МЛ
 ПБ ЗКМЛ4
ЗКМЛ4К УИА -7(М6)
 СЧИ М16
 И Е1
 СДА 64-10
 НТЖ Е11
 ЗП РЯО3
 СЧ КУС2-1(М2)
 И Е18
 ПО ЗКМЛ4А        ЗАПИСЬ
 СЧ КУС2-1(М2)
 И Е23
 ПО ЗКМЛ4З
 УИА ЗКМЛ4И(М10)
 ПБ ОЧ3И6         ОЧИСТИТЬ 3-Е И 6-Е СС
ЗКМЛ4З МОД КНАПР-1(М2)
	зп	7(М6)
 ЦИКЛ ЗКМЛ4З(М6)
	уиа	-7(М6)
ЗКМЛ4И	зп	1	ВЫТАЛКИВАНИЕ С БРЗ
	цикл	ЗКМЛ4И(М6)
	пб	Н1193
зкмл4м	сч	КУС2-1(М2)
	и	о28511
 ИЛИ РЯО3
	зп	РЯО3
 СЧ ЛИС2-1(М2)
	рзб	П14037
ЗКМЛ4П  ноп
	или	РЯО3
	или	E20
	нтж	E20
	увв	(М2)
	уиа	'2003'	УСТ. БЛПР
	сч	ВСЕЕД
	нтж	E32(М2)
	уи	0	ГАШ. В ГРП РАЗРЯДА КОНЦА ОБМЕНА
	рег	'37'	С ДАННЫМ НАПРАВЛЕНИЕМ
	сч	КУС2-1(М2)
	и	E4
	пе	ЗКМЛ4Л	КУС ЗАДАЧИ РАЗМЕТКИ
	сч	РАЗМГ	В РАБОТЕ ЗАДАЧА РАЗМЕТКИ
	пе	зкмл4д	ГАШ. РЕГИСТРА РАЗМЕТКИ
	увв	'141'
	пб	зкмл4д
ЗКМЛ4Л СЧИ М16
 ЗП РСЧРАЗ        РАЗРЕШ.РАБОТЫ СЧ-КА РАЗМ
 СЧ РЕЖРАЗ
 И Е47
 ПО ЗКМЛ4Е        НЕ УДЛИНЕНИЕ ЗОНЫ
 ПБ ЗКМЛ4Ж
ЗКМЛ4Е СЧ РЕЖРАЗ
 И Е46
 ПО ЗКМЛ4Б НЕ СТИРАН
 СЧ 0
ЗКМЛ4В ИЛИ РСЧРАЗ
 ЗП РСЧРАЗ ПР ФОРМИР БЛАНКА ПРИ РАЗМ
 СЧ Е2
 УВВ '141'
ЗКМЛ4Ж СЧ Е32(М2)
 ИЛИ МГРП
 ЗП МГРП          ОТКРЫТИЕ МАСКИ ПРЕРЫВ.ПО КОНЦУ ОБМ.
 РЕГ '36'
 СЧ РЯР
 ПБ ЗКМЛ4Г
ЗКМЛ4А СЧ КУС2-1(М2)
 И Е4
 ПЕ ЗКМЛ4И
	пв	ТАБЗОН(М10)
зкмл4н	пб	н1241
В1241 УВВ '4100'(М16)
 И Е16(М15)
 ПЕ ВЫКЛМГ        ВЫКЛЮЧЕН МГ
 УВВ '4100'(М16)
 И Е24(М15)
 ПО ЗКМЛ4И
ВЫКЛЗП УИА 6(М5)
 СЧ ТЗНМЛ-24(М1)
 СЛЦ Е25
 ЗП ТЗНМЛ-24(М1)
ВЫХ2 СЧ Е2
 ПБ (М11)
ЗКМЛ4Б СЧ РЕЖРАЗ
 И Е48
 ПО ЗКМЛ4Г        КОНТР. ЧТЕНИЕ ЗОНЫ
 ПБ ЗКМЛ4В
*
ОБРПР НЕД Е3П1          ВЫДЕЛЕНИЕ СТАРШЕГО МГ НАПР.ОКОНЧИВШ.
 И Е3П1          ДВИЖЕНИЕ
 УИ М15
 НТЖ Е3П1
 УИ М17           НОМЕР МГ
 УИА ДЛЯДИС(М2)
 УИА Г(М10)
 ПБ ПРЛ17
Г СЧ ШОЧМГ-24(М1)
 ПЕ ПРУСТ
ЛОЖПР СЧ ОКДВИЖ
 ИЛИ Е8(М15)
 НТЖ Е8(М15)
 ЗП ОКДВИЖ
 ПБ ПРЛ2
Б61	НОП
Б62	увв	'4100'(М16)
	и	E16(М15)
	уиа	ВЫКМГ(М10)
	по	ОБРПР1
 СЧ ВСЕЕД
 НТЖ Е27
 НТЖ Е26Е25
 И ТЗНМЛ-24(М1)
 ЗП ТЗНМЛ-24(М1)
 ПБ ГАШСМ1
ОБРПР1 СЧ ТЗНМЛ-24(М1)
 ПО ВЫКМГ         *С ТАБЛИЦА С НОМЕРОМ БОБИНЫ = 0
 СЧ СТМГ-24(М1)   СТАТИСТИКА МЛ: НАКОПЛЕНИЕ НАРАБОТКИ
 ПО НРБ           МГ БЫЛ СВОБОДЕН
 СДА 64+6
 НТЖ ТЗНМЛ-24(М1)
 И П7777
 ПО НРБ1          *С БОБИНА НА МГ ПРЕЖНЯЯ
НРБ2 СЧ СТМГ-24(М1)
 ПВ ДСЛ(М3)
 ПО Н1314
НРБ СЧИ М1
 ЗП СТМГ-24(М1)   N МГ
 СЧ ТЗНМЛ-24(М1)
 И П7777
 СДА 64-6          N БОБИНЫ
НРБ1 ИЛИ СТМГ-24(М1)
 СЛЦ Е25
 ЗП СТМГ-24(М1)
 И Е36
 ПО Н1314
 ПБ НРБ2
ВЫКМГ УИА 0(М17)
 СЧ СОЛ-3(М16)
 И Е16(М15)
 ПЕ ВЫКМГ1        МЛ УЧАСТВУЕТ В ПОДВОДЕ
 СЧ КУС2-1(М2)
 И Е4
 ПО ВЫКМГ1        НЕ РЕЖИМ РАЗМЕТКИ
 СЧ РЕЖРАЗ
 И Е46
 ПЕ ПРЛ3Б         *С Е46 В РЕЖРАЗ
ВЫКМГ1 СЧ СОЛ-3(М16)
 И Е24(М15)
	по	прл3а ПРЯМОЕ НАПРАВЛЕНИЕ
 СЧ Е2
прл3а	уи	М10
 СЧ ТЗОНМЛ-24(М1)
	слц	E1(М10)
	или	E12
	нтж	E12
 ЗП ТЗОНМЛ-24(М1)
 ПВ ТАБЗОН(М10)   УСТ.ЗОНАТР И ЗОНАМЛ
ПРЛ3Б СЧ ШОЧМГ-24(М1)
 НЕД 0
 УИ М14           НОМЕР ЗАКАЗА
 СЧ ОКДВИЖ
 НТЖ Е8(М15)
 ЗП ОКДВИЖ
 СЧ Е8(М15)
 УИА 11(М5)
 ИЛИ Е24(М15)
	пв	ГАШСОЛ(М10) ПОГАСИТЬ ПРИЗН. ДВИЖ. И ОБРАТНОГО НАПР.
прл3в	сч	МГНЕИС
	и	Е32-24(М1)
	пе	АВ
	пб	н1348
НОРМА СЧ СОЛ-3(М16)
 И Е16(М15)
 ПЕ ОХТЫ          *С ПОДВОД
 ПБ Н1351
НОРМА2 СЧ КУС2-1(М2)
 ПО ПР10
 СЧ ЛИС2-1(М2)
 ПВ ПРИП1С(М10)
 СЧ КУС2-1(М2)
 И Е18
 ПЕ ПРЛСЧ         СЧИТЫВАНИЕ С МЛ
 СЧ КУС2-1(М2)
	и	П14
	по	норма1 КУС ЗАДАЧИ РАЗМЕТКИ
 УИА 5(М10)
 ПВ ПРЛСЧА(М5)
 ПВ ВОС1(М10)     ВОССТ.ПОСЛ.СЛОВО
 УВВ '4107'
 И П17
 СДА 64-30
ОБХОД1 ЗП РЯО5
 СЧ ЗОЧ2-5(М2)
 НЕД 0
 УИ М14
обход4	увв	'4100'(М16)
 СДА 64+8
 СДА 64-6
 ИЛИ РЯО5          СОСТ.'УХО',ВКЛ.МГ,КН.ЗП
 ЗП РЯО5          ДЛЯ ОТВЕТА ЗАДАЧЕ-ТЕСТУ ИЛИ РАЗМ.
 СЧИ М1
 ИЛИ РЯО5          НАПР.И МГ ФИЗ
 ЗП РЯО5
 СЧ ОЧКУС-1(М14)
	сда	64+42
	уи	М10
	сч	ОЧКУС-1(М14)
	и	E3
	по	прл5 РЕЖИМ РАЗМЕТКИ
	увв	'4035'	СОСТ. ОШМ И ОШВУ
	сда	64-34
прл6	или	РЯО5
	мод	ТУСП-1(М10)
	зп	0	ОТВЕТ В ПОЛЕ СУММАТОРА ЗАДАЧИ РАЗМ.
	сч	ОЧКУС-1(М14)
 И Е4
 ПЕ ОБХОД
 СЧ ОЧКУС-1(М14)
 И Е21Е1
 НТЖ Е1
 ПО ОБХОД         ТОЛЬКО ПОДВОД
 СЧ 0
 ЗП КУС2-1(М2)
ОБХОД УИА ОБХ3(М10)
 ПБ ГАШСЧК
ЗН УИИ М15(М3)
 УИИ М16(М6)
 УИИ М3(М10)
 ПБ (М5)
прл5	сч	РЕЖРАЗ
	пб	прл6
В1404 УВВ '4100'(М16)
	и	E16(М15)	МГ ВКЛЮЧЕН*
	пе	ВЫКЛМГ		ВЫКЛЮЧЕН МГ
	увв	'4100'(М16)
	и	E24(М15)	ЗП НА МГ ВКЛ*
 ПЕ ВЫКЛЗП			ВЫКЛЮЧЕНА КН. ЗП
	рег	'237'
	и	E32(М2)
	по	ПРЗП7		НЕ ОКОНЧЕН ОБМЕН
	увв	'4035'
	и	E8(М2)
	пе	ПРЗП7		ОШМ
 СЧ ТЗОНМЛ-24(М1)
 ИЛИ Е45    ПРОПУСК УХО=1 ПРИ ЗАПИСИ В ЗОНУ
 ЗП ТЗОНМЛ-24(М1)
 СЧ ТЗОНМЛ-24(М1)
 СЛЦ Е48
	пе	ПРЛЗП4
 ЗП ТЗОНМЛ-24(М1)
 СЧ КНАПР-1(М2)
 УИ М10
 СЧ 6(М10)
 СЛЦ Е1            +1 К N ЗОНЫ В 6-М И 3-М СЛУЖ.СЛОВАХ
 ЗП 6(М10)
 ЗП 3(М10)
 УИА ЗКМЛ4(М10)
	пб	ВЫХ0 ТРЕБУЕТСЯ ЗАПИСЬ ДУБЛЬ-ЗОНЫ
ПРЛЗП4	мода	
	пв	ПРЛВОС(М10)	ВОССТ. ПОСЛ. СЛОВО
 УИА 10(М5)
 СЧ ТЗОНМЛ-24(М1) НЕТ
 И Е45
 ПО ПРЛСЧМ
АВ УИИ М6(М16) !МАЛ. ОТ НОМБОБ
 УИИ М10(М15)
	сч	ИПЗМЛ+31
	зп	сохпри
 СЧ ЛЕНТА
 ПВ ТБУФ(М15)
	зп	СМ
	сч	сохпри
	зп	ИПЗМЛ+31
	рег	'20'
	сч	СМ
 СДА 64-8
 УИ М7
 УИА 3
 ПБ (М7)
ОХТЫ СЧ ОЧЛИС-1(М14)
 И Е19
 УИА ПОДВ82(М10)
 ПО ВЫХ0
 НТЖ ОЧЛИС-1(М14)     РЕВЕРС
 ЗП ОЧЛИС-1(М14)
 ПБ НЕОХ
ОХ5017 УИА ПОДВ90(М10)
 ПЕ ВЫХ0          МГ ВЫКЛЮЧЕН
 УИА ЗКМЛ(М10)
 ПБ ВЫХ0
ПРЛ17А СДА 64+7
 И Е3П1
 УИ М17
 НТЖ Е3П1
 УИ М15
ПРЛ17 МОД КНАПР-1(М16)
 УИА (М1)
 СЛИ М1(М17)
 ПБ (М2)
ПРЛСЧ УИА ПРЛСЧВ(М5)
	сч	E8(М2)
	увв	'31'	ИМИТАЦИЯ ОКОНЧАНИЕ ОБМЕНА С МЛ
	пб	н1469
ПРЛСЧ7 УИА 6(М10)
 УИА '2003'        УСТ.БЛПР
ПРЛСЧА СЧ К2003         *С СЧИТЫВАНИЕ СЛУЖ.СЛОВ ПО М10
 ПВ ПОК(М13)      ГАШ.ПОК
 МОД КНАПР-1(М2)
 СЧ (М10)
 УИ 0
 ЗП СМ
ВЫХ СЧ К2013
 ПВ ПОК(М13)      УСТ.ПОК
 СЧ СМ
 ПБ (М5)
ПРЛСЧБ МОД И16
 УИА (М16)
 ПБ ВЫХ
ПРЛСЧВ ЗП РЯО5
 УИА 3(М10)        *С ЗА 3-М СЛУЖ.СЛОВОМ
 ПВ ПРЛСЧА(М5)
 ИЛИ РЯО5
 ЗП РЯО5          6-Е ∨ 3-Е СЛУЖ.СЛОВА
 СЧ КУС2-1(М2)
 И ПР14
 УИА 64(М5)
 ПЕ АВ
 УИА 2(М10)        *С ЗА 2-М СЛУЖ.СЛОВОМ
 ПВ ПРЛСЧА(М5)
 ЗП БОБ
 УИА 3
 УИА 5(М5)
	пб	наб70
набоб3	увв	'4100'(М16)
	и	E16(М15)
	пе	АВ	МГ ВЫКЛЮЧЕН
	пб	ПРЛЧП
ПРЛКЛ УИА 1(М5)
 СЧ РЯО5
	и	Е24П1
	по	АВ
 СДА 64+12
 НТЖ РЯО5
	и	П3777
 СДА 64+1
 ПЕ АВ            NN ЗОН ОТЛИЧАЮТСЯ В СТАРШИХ РАЗРЯДАХ
 УИА 12(М5)
 СЧ КУС2-1(М2)
 И Е5
 ПЕ АВ            ЗАКАЗ ОТ НОМБОБА
 СЧ ТЗНМЛ-24(М1)
 И Е39
 ПЕ ПРЛСЧО        БОБИНА НАЗВАНА ПО 7-МУ ПРИКАЗУ
 УИА -2(М5)
 УИА 64(М10)
НАБОБ1 СЧ БОБ
 СДА (М10)
 ПИО НАБОБ2(М5)
 ИЛИ БОБ
НАБОБ2 НТЖ ТЗНМЛ-24(М1)
 И Е12П1
 ПО ПРЛСЧО        НОМЕР БОБИНЫ ПРАВИЛЬНЫЙ
 УИА 64+30(М10)
 ЦИКЛ НАБОБ1(М5)
 УИА 3(М5)
 СЧ ТЗНМЛ-24(М1)
 И Е40
 ПЕ АВ            БОБ.ИЗМЕНЕНА ПО ДИРЕКТИВЕ
 СЧ КУС2-1(М2)
 И Е21
 ПЕ АВ
ПРЛСЧО СЧ РЯО5
 СЛЦ Е1
 НТЖ ЗОНАМЛ
	и	П3777
 УИА 2(М5)
 ПЕ АВ            ДРУГАЯ ЗОНА
 СЧ ЛИС2-1(М2)
 ПВ ПРИП1С(М10)   НА УСТ.ПРИП. 1-ОЙ СТР.
 СЧ КУС2-1(М2)
 И Е21           БЫЛО СЧ.СЛУЖ.СЛОВ*
 ПО ПРЛСЧ1        *С НЕ СЧИТ. СЛУЖ. СЛОВ
 СЧ КУС2-1(М2)
 И Е11
	пе	прлр11
	сч	Е21Е18
 НТЖ ОЧКУС-1(М14)
 ЗП ОЧКУС-1(М14)
 ЗП КУС2-1(М2)
 УИА 9(М5)
 ПВ ГАШСМ1(М10)   ГАШЕНИЕ СМЕЩЕНИЯ
 СЧ ОЧЛИС-1(М14)
 И Е18
 ПЕ АВ            ПРИ ЧТ.СС ПРЕДЗОНЫ УЖЕ БЫЛА ОШИБКА
 СЧ УХО
 И Е48-5(М2)
 УИА ЗКМЛА(М10)
 ПО ВЫХ0          ЗП ПО НАПРАВЛЕНИЮ РАЗРЕШЕНА
 СЧ 0
 ЗП КУС2-1(М2)    ОСВОБОЖДЕНИЕ НАПРАВЛЕНИЯ
 СЧ Е48-1(М14)    ЗАКАЗ НЕ МОЖЕТ ВЫПОЛНЯТЬСЯ, НАПРАВЛ.
 ИЛИ ШКЗЗП-5(М2)
 ЗП ШКЗЗП-5(М2)
ДИСП5Б УИА (М6)
 ПБ ДИСП6А
ПРП ПАМ 0
 УИА -1023(М12)
 УИА ПРП3(М5)
ПРПА СЧ П3
 ПВ ПОК(М13)      ГАШ.ПОК
 СЧ 0
 УИ '21'          ГАШ.БЛЗ,БЛП
ПРП1 СЧ ТБД-1(М12)
 УИ 0
 ЦИКЛ ПРП1(М12)
 УИА '2003'
 ПИО ПРП11(М4)
 ЗП 2(М4)
ПРП11 ПАМ 0
 СЧ ПР13
 ПВ ПОК(М13)      УСТ.ПОК
 УИА 5(М10)
 ПВ ПРЛСЧА(М5)
 ПВ ВОС1(М10)
 РЕГ '101'
 СЧ ТЗНМЛ-24(М1)
 И Е13
	пе	БЛИСХ1	РАЗМЕТКА ЕС
ПРП2	сч	
 ПБ ОБХОД1
ПРП3 УИА '2000'
 ЗП ТБД-1(М12)
 УИА '2003'
 ПБ ПРПА
ПРЛСЧ1	уиа	5(М10)	ЗА 5-М СЛУЖ. СЛОВОМ
	пв	ПРЛСЧА(М5)	ВЫБОР 5-ГО СЛУЖ. СЛОВА
	пв	ВОС1(М10) ВОССТАНОВИТЬ ПОСЛ. СЛОВО СТРАНИЦЫ
прлр11	увв	'4035'
	и	E15(М2)	ЕСТЬ ОШВУ
 УИА 13(М5)
 ПЕ ПРЛСЧ4		*С ЕСТЬ ОШВУ
	увв	'4035'
	и	E8(М2)	ОШМ
	по	ПРЛСЧ5	*С ОШМ
ПРЛСЧ4 ЗП ОШМЛ
 СЧ КУС2-1(М2)
 И Е23           ЕСТЬ ПРИЗНАК НАЛОЖЕНИЯ
 ПО АВ            ОШМ ИЛИ ОШВУ (НЕТ ПРИЗНАКА НАЛОЖ.)
ПРЛСЧ5 ЗП ОШМЛ
 УИА -1023(М12)
 УИА ПРЛСЧ2(М5)
 СЧ 0
 ПВ ПОК(М13)      ГАШ.ПОК
ПРЛСЧС СЛЦ ТБД-1(М12)   КОНТР.СУММ-Е СТР.ОБМ.
 ЦИКЛ ПРЛСЧС(М12)
 УИА '2003'
 ЗП РЯО5
 УИА 7(М10)        *С ЗА 7-М СЛУЖ.СЛОВОМ
 ПВ ПРЛСЧА(М5)    ЗА КОНТР-ОЙ СУММОЙ 7 СЛУЖ.СЛОВА
 НТЖ РЯО5
 УИА 3
 ПЕ ПРЛСЧ6        НЕТ СОВП.КОНТР.СУММ
 СЧ КУС2-1(М2)
 И Е11
 ПО ПРЛСЧМ        НЕ КОНТР. ЧТ
 СЧ КУС2-1(М2)
 И Е21
 ПЕ ПРЛСЧМ        ЧТ СЛ СЛОВ ПОСЛЕ ЗП
 СЧ РЯО5
 НТЖ СУММА-5(М2)
 УИА 8(М5)
 ПЕ АВ            НЕ ПРОХОДИТ ЗАПИСЬ (КС НЕ СОВПАЛИ)
 ЗП ШКЗЗП-5(М2)
 СЧ ВСЕЕД
 НТЖ Е48-5(М2)
 И УХО
	зп	УХО
ПРЛСЧМ	сч	ЗОЧ2-5(М2)
	по	ОБЩМГ
 НЕД 0
 УИ М14           М14: N ВЫПОЛНЕННОГО ЗАКАЗА
 УИА 3
 СЧ 0
 ЗП КУС2-1(М2)    ОСВ.НАПР-ИЯ
 СЧ ОЧЛИС-1(М14)
 ИЛИ Е16Е17
 НТЖ Е16Е17
 ЗП ОЧЛИС-1(М14)
 ПБ ОБХОД
ПРЛСЧ2 СЧ Е1            ОШИБКА МЛ
 ЗП ОШМЛ
ПРЛСЧ6 УИА 4(М5)
 ПБ АВ
ВЫБМГ	уиа	'45'(М16)
	пб	ЗАПЭКС
*
*
*
ДЛЯДИС СЧИ М16
 СЛЦ П7
 СДА 64+1
 УИ М2
 ПБ (М10)
мдч	сда	64-43
	рзб	мстр
	или	ФКУСМБ
	зп	ФКУСМБ
 СЧИ М12
	сда	64-36
 ЗП 2(М15)
	пб	МАЧТЗП
ОЧ3И6 СЧ 0
 МОД КНАПР-1(М2)   ОЖКСТИТЬ 3-Е И 6-Е СС
 ЗП 3
 МОД КНАПР-1(М2)
 ЗП 6
 ПБ (М10)
*
ГАШСОЛ НТЖ ВСЕЕД         ПОГАСИТЬ В СОЛ РАЗРЯДЫ,
 И СОЛ-3(М16)    ЗАДАННЫЕ НА СМ.
 ЗП СОЛ-3(М16)
 ПБ (М10)
*
ПРЛВОС МОД КНАПР-1(М2)
 СЧ 5
 ПБ ВОС1
*
ЗОНТАБ СЧ ЗОНАТР        УСТ.В ТЗОНМЛ ЗОНАТР И ЗОНАМЛ
 СДА 64-12
 ИЛИ ЗОНАМЛ
 ЗП ТЗОНМЛ-24(М1)
 ПБ (М10)
*
ТАБЗОН СЧ ТЗОНМЛ-24(М1) УСТ.ЗОНАТР И ЗОНАМЛ ПО <ТЗОНМЛ>
 СДА 64+12
	и	П3777
 ЗП ЗОНАТР
 СЧ ТЗОНМЛ-24(М1)
	и	П3777
 ЗП ЗОНАМЛ
 ПБ (М10)
*
ГАШСЧК СЧ П7
 СДА 64-24
 НТЖ ВСЕЕД
 И ТЗНМЛ-24(М1)
 ЗП ТЗНМЛ-24(М1)
ГАШСМ1	сч	СМЕЩ
	или	Е48-24(М1)
	нтж	Е48-24(М1)
	зп	СМЕЩ
	пе	(М10)	КАЧ. НОМ. НУЖНО ДЛЯ ДРУГИХ МГ.
	сч	ТАБЛО
	или	E15
	нтж	E15
	зп	ТАБЛО
	увв	'147'	СБРОС КАЧ. НОМ.
 ПБ (М10)
ПОВКСМ СЧ КУС1Б-1(М16)
 И Е18
 ПЕ ПСЧБО         ПОВТОРИТЬ ОБМЕН ПРИ ЧТ
 СЧ ЛИС1Б-1(М16)
	уиа	ПСЧБ1(М11)
 ПВ КСМ(М12)
 УИА 4(М15)
 ПБ ПСЧБО1
ПСЧБО СЧ ПР13
 ПВ ПОК(М13)      УСТ.ПОК
 СЧ ЛИС1Б-1(М16)            ПОВТОРЕНИЕ ЗАКАЗА
 ПВ ПРИП1С(М10)
	сч	КУС1Б-1(М16)
	сда	64+2
	и	П37
	уи	М10	N ТРАКТА
	сч	КУС1Б-1(М16)
	сбр	НАПРМГ
	сда	64-2
	сда	64+44
	нтж	E4
	уи	М5	N НАПР. N МБ
	сч	СБОИМБ(М5)
	или	E48(М10)
	зп	СБОИМБ(М5)
*
	 АПУ     (&К71).ДА1
	АПБ	.НЕТ1
.ДА1 АНОП
*
***  РАБОТА К-71 ***
*
	пам	0
	сч	бсв7мб
	по	ПСЧБО1
	мода	апсчб1
	сч	
	мод	бсв7мб
	пб	св7мб-СВЯЗЬ7 !В СВЯЗЬ7
апсчб1	конд	A(ПСЧБО1)
*
*** КОНРАБ К-71 ***
*
.НЕТ1 АНОП
ПСЧБО1 СЧ КУС1Б-1(М16)
 СДА 64+42
	уи	М5
	сда	64-41
	уиа	0(М10)
	нтж	ТУС+10
 И Е48П42
 ПО ПС
 СЧ КУС1Б-1(М16)
 СДА 64+П
 НТЖ ТУС
 И Е48П42
 ПО ПС
 СЧ КУС1Б-1(М16)
 И ЕФ
 ПО ПС
 СЧ ОБМОТВ
 И Е48-1(М5)
 ПО ПСЧБЕ ПОВТОРЯТЬ БЕСКОНЕЧНО
ПС СЧ КУС1Б-1(М16)
 СБР НМБТР
 СДА 64+37
 ЗП ЯКУСМБ НАПР,МБ,ТРАКТ
 НТЖ ТАБОШ
 И П3777
 ПЕ ТРЦИКЛ        ПЕРВЫЙ СБОЙ ИЛИ ДР. ТРАКТ
 СЧ ТАБОШ
СИСТ2 СЛЦ Е45    НА 8 ОШИБОК
 ЗП ТАБОШ
 ПЕ ПСЧБЕ
ЛАКЛАК	сч	КУС1Б-1(М16)
 И ЕФ
 ПЕ СИ
 СЛИА ПЗ(М5)
СИ МОД ТУС-1(М5)
 УИА (М12)
 СЧ КУС1Б-1(М16)
 И ЕФ
 ПЕ ЛАК
ОШМБ	уиа	ЗАПЭКС(М10)
 СЧИ М10
 ЗП 3(М12)
 СЧ 5(М12)
 И Е16П32
 ИЛИ П2007
 ЗП 5(М12)
 УИА 48(М10)
 СЧИ М15
 НТЖ Е3
 ПЕ БЕРУМ1        НЕ ОШ. МОЗУ->УВУ
 СЛИА 17(М10)       СБОЙ МАШИНЫ
БЕРУМ1 СЧИ М10
 ЗП 8(М12)
ЛАК УИА -1023(М10)
 СЧ КУС1Б-1(М16)
 И ЕФ
 ПО ПОР
 СЧ 0
 ЗП (М12)         ОТВЕТ ПОДКАЧКЕ
 СЧ ОБМОТВ
 И Е48-1(М5)
 ПЕ НЕНУЛИ
ПОР СЧ КУС1Б-1(М16)
 И Е18
 ПЕ НАНУЛИ   ЧТЕНИЕ
 СЧ ТУС-1(М5)
 НТЖ ТУС+10
 И Е48П42
 ПО НЕНУЛИ   КАЧКА
НАНУЛИ НОП
 СЧ П377
 УИА
НУЛИ ЗП 2047(М10)
 ЦИКЛ НУЛИ(М10)
НЕНУЛИ УИА 3
 СЧИ М15
	нтж	E3
	по	КСЧБ4
	счи	М15
 СДА 64-30
 ИЛИ Е35         ДЛЯ КОНТ
 ЗП ЯКУСМБ        ПРИЧ. СБОЯ
 СЧ КУС1Б-1(М16)
 СБР КМБТТ
 ПВ ФП(М5) СТАРШ Р-Д НАПР.,МБ,ТРАКТ,СЕКТОР
 СДА 64-2
 И Е43Е42 МЛАДШ.Р-ДЫ НАПР
 СДА 64+13
 ПВ ФП(М5)
	уиа	8(М10)
 УИИ М2(М16)
	счи	М16
	нтж	П3
	пе	ДАЙСТ
	слиа	4(М2)
ДАЙСТ СЛИА -2(М10)
 СЧ ИПЗМЛ+4
 ЗП ИПОБМ+4
 ПВ ПРЛСЧА(М5)
дайст1	уиа	3
 СДА 64+35
 ЗП РЯОМБ
	и	Е2Е1	СЕКТОР
	сда	64-16(М10)
 ПВ ФП(М5)
 СЧ АПСЧБ
 ЗП ИПОБМ+4
 СЧ РЯОМБ
 СДА 64+10
	сда	64-8(М10)
	пв	ФП(М5) СЧЕТЧ. ЗП. (ИЗ СЛ. СЛ.)
 СДА 64+24
	и	Е2Е1
 ПВ ФП(М5)
	пино	ДАЙСТ(М10)	СЕКТОР
 СЧ РЯОМБ
 СДА 64+2
 И П377
	сда	64-18
 ПВ ФП(М5)        МБ,ТРАКТ ИЗ СЛ. СЛОВА
 СЧ ЯКУСМБ
 ЗП 34(М12)       СЛОВО ДЛЯ ПЕЧАТИ ПО КЗ
 СЧ КУС1Б-1(М16)
 И ЕФ
 ПЕ СНМБ
	сч	ЯЧЧП(М12)
	или	E2
	зп	ЯЧЧП(М12)
	сч	ЯЧЧП(М12)
	или	E3
	зп	ЯЧЧП(М12)
 ПБ СНМБ
ФП ИЛИ ЯКУСМБ
 ЗП ЯКУСМБ
 СЧ КУС1Б-1(М16)
 ПБ (М5)
ТРЦИКЛ СЧ ТАБОШ
 ПЕ ПСЧБЕ
 СЧ ЯКУСМБ
 ПБ СИСТ2
ОБЩМГ	уиа	31(М16)
	пб	СТ175
БУДИЛ	уиа	-3(М16)
лп	сч	СОЛ+3(М16)
	и	П377
	по	пп
	сч	ошмг+3(М16)
	слц	E41
	зп	ошмг+3(М16)
	пе	пп
	сч	СОЛ+3(М16)
	и	П377
	зп	окдвиб+3(М16)
	нтж	СОЛ+3(М16)
	зп	СОЛ+3(М16)
	сч	ШКПРЕ
	или	Е33(М16)
	зп	ШКПРЕ
	сч	
	зп	ошмг+3(М16)
пп	цикл	лп(М16)
	пб	будилс
ЗКМЛ4Г ЗП ЗТРАЗМ
 СЧ 0
 ЗП ТРАЗМ
 ЗП РЯР
зкмл4д	уиа	'3'
	счи	М16
	нтж	ЕС5017
	по	ЗКМ4Д
	сч	E1
	пб	ДВИЖМЛ
СМЕ1 УИА 1027
 СЧ ШЗЗОБМ
 НТЖ Е1
 ЗП ШЗЗОБМ
 ПБ ВХОДМЛ
фи5	мода	
	пв	фф(М16)
фи56	уиа	'2002'
	сч	ТБД-1(М6)
	уиа	'3'
	сбр	ТОБ+2
	сда	64+22
	пб	фзокм1 ЗАНЗАК
ффф	сч	35(М15)
	и	Е16П32
	нтж	Е16П32
	по	счмбпр СЧМБПР
	сч	35(М15)
	пб	счмб СЧМБ
счмбпр	сч	43(М15)
	слц	E46
	по	фтк ФТК
	зп	43(М15)
	сч	35(М15)
	нтж	Е16П32
счмб	слц	E16
	зп	35(М15)
фтк	уиа	(М6)
	уиа	'2003'
	сч	41(М15)
	сда	64+16
фтб1	и	Е15П1   -- ФТБ1
	уи	М10
	уиа	'3'
	пе	фтб ФТБ
	уии	М10(М6)
ФТА	сч	42(М15)
	и	E41
	пе	фтн1 ФТН1 ИСЧЕРПАН РЕСУРС ТРАКТОВ
	сч	ИНФМБ
	и	E40
	по	ужезп УЖЕЗП
	нтж	ИНФМБ
	и	Е47П1
	зп	ИНФМБ
ужезп	уиа	1(М1)
	уиа	-14(М4)
	уиа	'2003'
тво	сч	ТЗФСТР(М1)
	и	Е48П17
	нтж	Е48П17
	пе	воп ТР. В ОП.
	слиа	1(М1)
	цикл	тво(М4)
	уиа	'3'
	сч	ТМБ
	вч	П12
	пе	фт4
	сч	ПРЕДЕЛ
	и	E40
	по	выборт
	уиа	16(М1)
	сч	ГРАНЬБ
	вч	E5
	вчоб	
	уи	М4
пт	сч	ШЗНМБО(М1)
	и	Е48П17
	пе	фт3
	слиа	1(М1)
	цикл	пт(М4)
выборт	уиа	(М1)
	уиа	-15(М4)
	сч	ИНФМБ
	и	E1
	уи	М3
	по	фт2
	уиа	8(М1)
	уиа	-7(М4)
	пб	фт2
воп	нед	Е15П1
	уи	М4
	сч	E48(М4)
	или	ТЗФСТР(М1)
	зп	ТЗФСТР(М1)
	сч	ФКУСМБ
	или	E20
	зп	ФКУСМБ
	счи	М1
	сда	64-5
	уи	М6
	сли	М6(М4)
	слиа	-1023(М6)
	сч	42(М15)
	сда	64+16
	и	Е15П1
	уи	М10
	уиа	фтзи(М16)
	пб	ш
фтн1	уиа	ФТН(М17)
	пб	фи
фт4	уиа	16(М1)
	уиа	-30(М4)
фт2	сч	ШЗНМБО(М1)
	и	Е48П17
	пе	фт3
	слиа	1(М1)
	цикл	фт2(М4)
	пио	фт4(М3)
	уиа	(М3)
	уиа	(М1)
	уиа	-7(М4)
	пб	фт2
фтв	счи	М6
	уиа	'2002'
	или	ТБД-1(М10)
	зп	ТБД-1(М10)
	уиа	'2003'
фтв1	счи	М6
	сда	64-16
	нтж	42(М15)
	и	Е31П17
	нтж	42(М15)
	зп	42(М15)
	пб	(М16)
фт3	нед	Е18П1
	уи	М3
	счи	М1
	сда	64-5
	уи	М6
	сли	М6(М3)
	пб	(М7)
фтб	сч	ФКУСМБ
	уиа	'2'
	нтж	ТБД-1(М10)
	уиа	'3'
	уии	М6(М10)
	и	ТОПЛИС
	по	фт1бе
	уиа	'2'
	сч	ТБД-1(М10)
	уиа	'3'
	пб	фтб1
ФТ1	слиа	1(М6)
	уиа	'2003'
	уиа	(М17)
	счи	М1
	вч	ГРАНЬБ
	пе	фт1б
	уиа	1(М17)
фт1б	сч	ШЗНМБО(М1)
	нтж	E48(М3)
	зп	ШЗНМБО(М1)
	сч	ВСЕЕД
	нтж	КДД
	уиа	'2002'
	и	ТБД-1(М6)
	зп	ТБД-1(М6)
	уиа	'2003'
	сч	ТМБ(М17)
	вч	E1
	зп	ТМБ(М17)
	уиа	фта1(М16)
	пино	ш(М17)
	сч	E1
	зп	БЯК
ш	сч	42(М15)
	слц	E32
	зп	42(М15)
	сч	УСММБ
	и	Е48П42
	или	ФКУСМБ
	уиа	'2002'
	или	ТБД-1(М6)
	зп	ТБД-1(М6)
	уиа	'2003'
	сч	41(М15)
	и	Е31П17
	пе	фтв
	счи	М6
	сда	64-16
	или	41(М15)
	зп	41(М15)
	пб	фтв1
фт1бе	счи	М6
	вчоб	АКТБД
	пе	фтзи ТР. В ОП.
	счи	М6
	вч	E1
	сда	64+5
	уи	М1
	счи	М10
	вч	E1
	и	П37
	уи	М3
фта1	уиа	фтзи(М16)
	сч	ИНФМБ
	сда	64-8
	или	ИНФМБ
	и	E48
	пе	фтз
фф	уиа	'2'
	сч	ТБД-1(М6)
	уиа	'3'
	и	ТОБ+2
	нтж	ТОБ+2
	по	фти
	сч	ТОБ+1
	уиа	'2'
	слц	ТБД-1(М6)
	зп	ТБД-1(М6)
	уиа	'3'
	пб	фтз
фти	сч	ВСЕЕД
	нтж	ТОБ+2
	уиа	'2'
	и	ТБД-1(М6)
	зп	ТБД-1(М6)
	уиа	'3'
фтз	уиа	1(М17)
	пб	(М16)
*
 ЭКВИВ (П,1)
*
*
СОСТАВ ВНЕШ ТБД,ЯЧЧП
РЕСУРС ВНЕШ (Р1,РЕСУРС),ТЕСТ
БОЭК1 ВНЕШ ВХСМЕ,ПР,оби1
ВЗУ ВНЕШ ПОДОБМ,ПРИП1С,ДВИЖМЛ
ВИСП ВНЕШ ВШГ,ВШГП
ЕСМЛ ВНЕШ МГНОР,ПРЕС5,БЛИСХ1,ЗКМ4Д
ХЛАМ ВНЕШ фтзи,фи,прлб,СНЗКМЛ,ПРЛЧП,ПРЕС7,Н1351,н1348
ХЛАМ ВНЕШ ПРУСТ,Н1193,Н1314,НЕОХ,ВОС1,ТОПСН,ОБХ3,Н533,ПРЛ2Е
ХЛАМ ВНЕШ норма1,наб70,н1469,н587,общмлх,обч,н1241
КИТ ВНЕШ АКТОП,Е48П42,ЕС5017,ММГРП,ШИМЛ
СОСТАВ ВНЕШ ТОП,ШИФРМ
КАЧКА ВНЕШ Е48П17
КИТ ВНЕШ АКТБД,ТОПЛИС,ШОЧН2,кумб,кукумб,кукум1
ВЗУ ВНЕШ фзокм1,ФТН,ВХОДМЛ,ПОДВ82,ПОДВ90,ЗКМЛА4,обход2
ВЗУ ВНЕШ ВХЛ,ЗАПЭКС,ПОК,ВХЗОБ,ЕФ,ДСЛ,МАЧТЗП,обходр
ДИСКИ ВНЕШ РАОБЩ,мстр
ДИСП70 ВНЕШ БЯК,ИНФМБ,П12,ПРЕДЕЛ,ТЗФСТР,ТМБ,ТОБ,УСММБ,ШЗНМБО
ДИСП70 ВНЕШ ШИФРПЛ,ГРАНЬБ,Е47П1,дляди1,о28511,СМЕЩ,КДД
ДИСП70 ВНЕШ ТВ67А,АСБОЙБ,БМВ,БОБ,БПУ,БУДГРА,ВИСП16,ВРЕМЯ
ДИСП70 ВНЕШ ВСЕ6,ВСЕЕД,ГАШЗАН,ГОД,ГУС,СТ175,Е12Е11,Е15П1
ДИСП70 ВНЕШ Е15П2,Е16П32,Е21Е18,Е21Е1,Е24П16,Е24П1,Е26Е25
ДИСП70 ВНЕШ Е34П25,Е43Е42,Е47П43,Е48П37,Е48П43,ЗАПВЕТ,ЗАХЗАН
ДИСП70 ВНЕШ ЗОНАМЛ,ЗОНАТР,И16,ИВ25,ИПЗМЛ,КЛЮЧ,КНАПР,КУС1Б
ДИСП70 ВНЕШ КУС2,ЛИС1Б,ЛИС2,МБКУС,МГНЕИС,МГРП,МПРЛ,НАПРМГ
ДИСП70 ВНЕШ НМБТР,ОКДВИЖ,ОЧКСУМ,ОЧКУС,ОЧЛИС,ОЧЛИСД,ОЧМБ,ОШМЛ
ДИСП70 ВНЕШ П13,П14037,П14,П17,П2007,П23,П30,П3777,П377,П37
ДИСП70 ВНЕШ П3,П5,П77,П7,ПРИП,РАЗМГ,РЕЖРАЗ,РМЛ,РМР,ТВ67,О22П16
ДИСП70 ВНЕШ РОСППМ,РСЧРАЗ,РЭ2,РЯО3,РЯО5,РЯО,РЯОМБ,РЯР,СМ,СОЛ
ДИСП70 ВНЕШ ССЫЛКА,СТМГ,СЧЗАК,СЧЗКМБ,ТАБЛО,ТБУФ,ТЗНМЛ,ТЗОНМЛ
ДИСП70 ВНЕШ ТРАЗМ,ТУС,ТУСП,УКАЧАЙ,УКАЧП,УПРЯТ,УХО,ФКУС,ФКУСА
ДИСП70 ВНЕШ ФКУСАБ,ФКУСМБ,ШЗЗОБМ,ШЗЗПСЧ,ШЗПОМБ,ШКЗЗП,КСД1,ЛТБД
ДИСП70 ВНЕШ ШКИВ,ШКОБМ,ШКПРЕ,ШОЧМГ,ШОЧНАП,ЯКУС,ЯКУСМБ,ЯЛИС
ДИСП70 ВНЕШ ЯЛИСМБ,ЯМ15,ЯМ16,ИПОБМ,РЯО1,ЯЧКЧ,(Е6П1,П77),оли
ДИСП70 ВНЕШ ипзмл3,(Е2Е1,П3),(Е3П1,П7),ЗОЧ1Б,ШКОМБ,ЯЧКЧМБ
ДИСП70 ВНЕШ (ПР14,П14),(ПР13,П13),П7777,МБЛИС,(Е12П1,П7777)
ДИСП70 ВНЕШ (КОДИК,ШИФРПЛ),(П77777,Е15П1),Е31П17,Е18П1,СУММА
ДИСП70 ВНЕШ сохпри,окдвиб,будилс,ошмг,ТАБОШ,ШСЗПСЧ,СБОИМБ
ДИСП70 ВНЕШ КМБТТ,зоч2,обмотв,П277,СТУСТР,ДЛЯНБ,К2013,ЗТРАЗМ
ДИСП70 ВНЕШ ШКОБП,ЛЕНТА,Е16Е17,РЯО2,ШКОМЛ,ШКМЛ,ШКМБП,К,ПЗ
ДИСП70 ВНЕШ БИНОТ2,АПСЧБ,ММБН,К2003,КСУМ1Б,Е35П24,КСД3
 ВХОД фи56,фи5,ффф,ФТ1,СМЕ1,ЗКМЛ,ДИСПМБ,ПРЛСЧА,ОЧ3И6
 ВХОД прл,ОБЩМГ,БУДИЛ,КСМ,КСЧБ4,ПРЛСЧБ,СНМБ,ГАШСОЛ,ДЛЯДИС
 ВХОД ЗОНТАБ,ВЫХ1,ДВОЧ1,ПР1,ПР2,АВ,ДИСП5В
 ВХОД ДИСО1А,ДИСМБ2,ДИСПО,ВЫБМГ,ПРЛ2В,обход4
 ВХОД ДИСП1,ПУЛ,ПРЛ2К,ПРЛЕН,ПРЛ2А,ДИСП4,ВЫКЛМГ,ПРЗП7,ВЫХ3
 ВХОД ВЫХ0,ЗКМЛ1,ЗКМЛ4И,В1241,ВЫКЛЗП,ДИСМ,МДЧ
 ВХОД Б61,ВЫКМГ,ПРЛ3Б,НОРМА,ПРОБМ,опрбэ
 ВХОД НОРМА2,ОБХОД,В1404,ОХ5017,ПРЛ17А
 ВХОД ПРЛСЧ7,ПРЛСЧМ,ТАБЗОН,ЗН,Б62,Д76,ТВМБ1
 ВХОД ЗКМЛ4П,ПРЛВОС,ЗКМЛ4,ПРП2,ПРП,зкмла1
 ВХОД ЗКМЛ1А,ВЫХОД1,СВОБМБ,ДИСЛ,В587,дмлзак
 ВХОД зкмл4м,набоб3,ПРЛКЛ,ОПРБ6А,прлб1

	АПУ     (&К71).ДА2
	АПБ	.НЕТ2
.ДА2 АНОП
***** ВХОД И ВНЕШ ДЛЯ РАБОТЫ К-71 *****
МОТТ ВНЕШ бсв7мб
СВЯЗЬ7 ВНЕШ СВЯЗЬ7,вдмлмб,св7мб
***************************************
.НЕТ2 АНОП
* ВРЕМЕННО
*ТАБОШ ЭКВ '1140'
*ЛИСТМБ ЭКВ '100'
*АПСЧБ ЭКВ '232'
*Е16Е17 ЭКВ '462'
*ЛЕНТА ЭКВ '610'
*ШСЗПСЧ ЭКВ '1344'
*ШКОБП ЭКВ '3377'
*ШКМПБ ЭКВ '3375'
*ММБН ЭКВ '171'
*К2013 ЭКВ '437'
*ШКМЛП ЭКВ '3405'
*ДЛЯНБ ЭКВ '3052'
*ЗКМЛА4 ЕQU '6121'
*МАЧТЗП ЕQU '6170'
*будилс ЕQU '3714'
*БИНОТ2 ЕQU '4477'
*СБОИМБ ЕQU '1751'
*КМБТТ ЕQU '330'
*К2003 ЕQU '00216'
*ЗТРАЗМ ЕQU '00460'
*ДСЛ ЕQU '07106'
*ПОДВ82 ЕQU '07227'
*ПОДВ90 ЕQU '07215'
*ОБХОДР ЕQU '06126'
*ОБХОД2 ЕQU '07232'
*СТУСТР ЕQU '01737'
*Е35П24 ЕQU '02071'
*П277 ЕQU '03056'
*ШКМБП ЕQU '03375'
*вхзоб ЕQU '05632'
*оби1 ЕQU '17456'
*ОШМГ ЕQU '2773'
*ПР ЕQU '17404'
*К ЕQU '1347'
*КСД3 ЕQU '00535'
*РЯО2 ЭКВ '1142'
*КСУМ1Б ЭКВ '2106'
*ЕФ ЭКВ Е17
*П ЭКВ 1
*ШКОМЛ ЭКВ '3406'
*ШКМЛ ЭКВ '3404'
*зоч2 экв '1324'
*обмотв экв '3235'
*ПЗ экв 64
	ФИНИШ
