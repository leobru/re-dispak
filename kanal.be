КАНАЛ СТАРТ ’20000’
 Б
 УПОТР КАНАЛ(М5)
*    ПОЛЕ УПРЯТЫВАНИЯ ДЛЯ ГЛАВНОЙ
А63 И П77777
 ЗП Р
 УИ М16
 УИА 0
 СЧ (М16)
 УИА 1027
 СЧ ШПЭГ(М12)
 И Е48П16
 ИЛИ Р
 ЗП ШПЭГ(М12)
НОР СЧ П77777
 ПБ ВЫХОД-Э(М1)
*    УСТ-КА МАСКИ В ПОД.ДЛЯ ГЛАВНОЙ
А64 УИ М16
 УИА 0
 СЧ (М16)
 УИА 1027
 СДА 64-24
 ЗП Р
 СЧ Е48П25
 И МАСГЛ(М12)
 НТЖ МАСГЛ(М12)
 ИЛИ Р
ЗАА ЗП МАСГЛ(М12)
 УИА 3
 СЧИ М11
 МОДА НОР
 УИА (М16)
 ПБ ЗАПВЕТ
*    ДАЙ СОБЫТИЯ ДЛЯ ГЛАВНОЙ
А65 СЧ МАСГЛ(М12)
 И Е24П1
 ЗП Р
 НТЖ МАСГЛ(М12)
 ЗП МАСГЛ(М12)
 СЧ Р
ОКО СДА 64-24
 ЗП Р
 СЧ ШПЭГ(М12)
 И П77777
 ИЛИ Р
 ЗП Р
 СЧ ЯЧК(М12)
 И ЕКА
 СДА 64+СДКА
 ИЛИ Р
 ИЛИ Е16
 ПБ ВЫХОД-Э(М1)
*    ДАЙ МАСКУ ШКАЛЫ СОБ-Й ДЛЯ ГЛАВНОЙ
А66 СДА 64+24
 ПБ ОКО
*    ОБ’ЯВИ ИЛИ ПОГАСИ СОБЫТИЯ ДЛЯ ГЛАВНОЙ
А67 УИ М16
 УИА 0
 СЧ (М16)
 УИА 1027
 ЗП Р
 И Е48
 ПО ААА
 СЧ Р
 И Е24П1
 И МАСГЛ(М12)
 НТЖ МАСГЛ(М12)
 ПБ ЗАА
ААА СЧ Р
 И Е24П1
 ИЛИ МАСГЛ(М12)
 ПБ ЗАА
G20040 ноп 
     сч Е4
     ПБ ВЫХОД-Э(М1)
ПЛПЕ СЧ П7
 ПБ ВЫХОД-Э(М1)
А70 МОДА ЕСПОД-Э(М1)
 ПВ (М17)
 СЧ ШГП
 И Е48-1(М11)
 ПО G20040 было НЛП-Э(М1)
 И ОСПОД
 ПЕ ИИ
НЕОСТ СЧ П3
 ПБ ВЫХОД-Э(М1)
СВЗА УИИ М11(М6)
 УИИ М12(М10)
ИИ МОД 9(М10)
 УИА (М16)
 УИА 0
 СЧ -5(М16)
 УИА 1027
 И Е27
 ПО ПЛПЕ
 УИИ М15(М10)
 СЧ ЛПРОЦ
 ПВ УПРИ1(М10)
 УИИ М10(М15)
 УИА 1024(М14)
 СЧИ М11
 ИЛИ Е48
 УМН П12
 СЧМР 64
 УИ М16
 СЛИ М16(М14)
	сч	Е48-1(М6)
	нтж	Е48-1(М11)
 ПО ВСЕ
 СЛИА 480(М16)
 СЛИА 1(М14)
ВСЕ УИА 2
 СЧ 1022(М14)
 УИА 3
 И Е48-1(М11)
 УИА -2(М15)
 ПЕ ЕСН
ОШП СЧ П5
 ПБ ВЫХОД-Э(М1)
ЕСН УИИ М17(М12)
 СЧ 5(М17)
 И Е48П16
 ЗП РФ
ПЕРС УИА 2
 МОДА (М16)
 СЧ 2(М15)
 УИА 3
 ЗП (М17)
 МОДА ПЕРС
 ЦИКЛ (М15)
 УИА 2
 СЧ 3(М16)
 УИА 3
 И Е24П1
 ЗП (М17)
 УИА 2
 СЧ 3(М16)
 СДА 64+24
 УИА 3
 ЗП (М17)
 УИА -4(М15)
ПЕ8 УИА 2
 МОДА 4(М16)
 СЧ 4(М15)
 УИА 3
 ЗП (М17)
 МОДА ПЕ8
 ЦИКЛ (М15)
 СЧ РФ
 ИЛИ КК
 ЗП 5(М12)
 СЧ 36(М12)
 СДА 64+21
 СДА 64-21
 ЗП 36(М12)
 СЧ 6(М12)
 СДА 64+27
 ИЛИ 36(М12)
 ЗП 36(М12)
 УИА 2
 СЧ 9(М16)
 УИА 1027
 ЗП 37(М12)
 СЧ 6(М12)
 И Е26
 СДА 64-СДКА+2
 ИЛИ ЯЧК(М12)
 ЗП ЯЧК(М12)
 УИА 3
 СЧ 9(М12)
 И Е48П25
 ЗП ИНФСЛП(М12)
 СЧ 7(М12)
 СДА 64+24
 ИЛИ ИНФСЛП(М12)
 ЗП ИНФСЛП(М12)
 И П77777
 ЗП 3(М12)
 СЧИ М11
 ПВ ЗАПВЕТ(М16)
 СЧ ОСПОД
 И Е48-1(М11)
 ПО НЕО
 НТЖ ОСПОД
 ЗП ОСПОД
 СЧ 36(М12)
 И Е41П1
 ЗП 36(М12)
 СЧ МШГП
 ИЛИ Е48-1(М11)
 ЗП МШГП
 ПБ НОР
*   УСТ-КА ШКАЛЫ ПЕРЕХ.ЭК-ДОВ ГЛАВ.У ПОДЧ
А71 СЧ Е26П16
 ИЛИ ШПЭГ(М12)
 НТЖ Е26П16
 ЗП ШПЭГ(М12)
 СЧ 9(М10)
 И П3777
 СДА 64-15
 ИЛИ ШПЭГ(М12)
 ЗП ШПЭГ(М12)
 ПБ НЕО
А72 УИ М16
 УИА 0
 СЧ (М16)
 УИА 1027
 ЗП Р
 СЧ ОСПОД
 И Е48-1(М11)
 ПО НЕОСТ
 НТЖ ОСПОД
 ЗП ОСПОД
 СЧ И(М12)
 И Н22П27
 ЗП И(М12)
 СЧ ПОДЧ(М10)
 НТЖ Е48-1(М11)
 ЗП ПОДЧ(М10)
 СЧ ШКОК
 ИЛИ Е48-1(М11)
 ЗП ШКОК
 СЧ Е48-1(М11)
 ИЛИ МШГП
 ЗП МШГП
 СЧ 36(М12)
 СДА 64-7
 СДА 64+7
 ЗП 36(М12)
 СЧ ВСЕЕД
 НТЖ Е26П16
 НТЖ П77777
 И ШПЭГ(М12)
 ЗП ШПЭГ(М12)
 СЧ 0
 ЗП МАСГЛ(М12)
 УИА 3
 СЧ Р
 ПО НЕО
 УИА -МЧПЗ(М17)
НЗ СЧ ШКРЗ
 И Е48+МЧПЗ(М17)
 ПО НЗ1
 МОД ТУСП+МЧПЗ(М17)
 СЧ ШИФРМ
 НТЖ Р
 ПЕ НЗ1
 СЛИА ЧПЗ(М17)
 СЧИ М17
 ЗП Р
 СЧИ М11
 НТЖ Р
 ПО ЛКВ
 УИА 1027
 СЧ Е48-1(М11)
 МОД ТУСП-1(М17)
 ИЛИ ПОДЧ
 МОД ТУСП-1(М17)
 ЗП ПОДЧ
 СЧИ М17
 СДА 64-21
 ИЛИ И(М12)
 ЗП И(М12)
 СЧИ М17
 ИЛИ Е35
 ПВ ЗАПВЕТ(М16)
 СЧ ШКОК
 НТЖ Е48-1(М11)
 ЗП ШКОК
 ПБ НОР
НЗ1 МОДА НЗ
 ЦИКЛ (М17)
ЛКВ СЧ Е1
 ПБ ВЫХОД-Э(М1)
*    СОСТОЯНИЕ ЛИСТА ПОДЧ.ЗАД
А73 НОП 0
 И П37
 НТЖ П37
 УИ М17
 СЧ ЛИСТМБ(М12)
 И Е48(М17)
 ПЕ А73А
 СЧ 22(М12)
 НТЖ 32(М12)
 И Е48(М17)
 ПЕ ЛКВ
 СЧ Е2
 ПБ ВЫХОД-Э(М1)
А73А СЧ ШЗНМБ+Л(М12)
 И Е28
 ПО НЕОСТ
 ПБ ПЛПЕ
А74 СДА 64+20
 И П177
 ЗП Р
 И Е7
 ПО НЕО
 СЧ Р
 ПБ ВЫХОД-Э(М1)
А75 УИ М16
 СЧ ТЕРЕЗА(М12)
 УИА 0
 ЗП (М16)
 УИА 3
 ПБ НЕО
А76 МОДА ЕСПОД-Э(М1)
 ПВ (М17)
СЛГ УИА 1027
 СЧ ШЗНМБ(М12)
 И Е46
 ПЕ НОР
 СЧ АВОС(М12)
 ИЛИ Е3230
 НТЖ Е3230
 ЗП АВОС(М12)
 ПБ НЕО
ТГ УИИ М12(М10)
 ПБ СЛГ
*   ВЫБРОС ЗАДАЧИ ИЗ КАТАЛОГА ВВОДА
А100 НОП 0
 ПЕ ОШЭК
 СЧ 9(М10)
 И П377
 УИА 1027
 ЗП ТР5
 СЧИ М6
 НТЖ КЛЮЧРЗ
 И Е24П1
 НТЖ КЛЮЧРЗ
 ЗП ТР4
 СЧ ШКИВ
 ИЛИ Е25
 ЗП ШКИВ
 СЧ П21
 ЗП ТР6
 ПБ НЕО
А102 ПО ВЫХОД-Э(М1)
 УИ М13
 ВЧОБ П60
 ПЕ НЕТЗАД-Э(М1)
 СЧ ШКЭ71
 И ТЕРЕЗА(М10)
 И Е48-1(М13)
 ПО ОШ1-Э(М1)
 УИА ’2003’
 И ШКВЫД
 ПО П
 СЧ ТСЛ-1(М13)
 И Е33
 ПО ВЫХОД-Э(М1)
П СЧ ШСБРОС
 ИЛИ Е48-1(М13)
 НТЖ Е48-1(М13)
 ЗП ШСБРОС
 УИИ М17(М13)
 СЛИА -1(М17)
 СЧ ЕЗАКП   КНЦ ВВОДА
 ИЛИ ШКОРАБ
 ЗП ШКОРАБ
 СЧ Е48(М17)
 ИЛИ ШКЗАПР
 ЗП ШКЗАПР
 СЧ ШЗПРИМ
 ИЛИ Е48(М17)
 ЗП ШЗПРИМ
 СЧ 0
 ЗП ВППС(М17)    ГАШ БУД
 СЧ ТСЛ(М17)
 ИЛИ Е19
 ИЛИ Е31
 ИЛИ Е28
 НТЖ Е28
 ЗП ТСЛ(М17)
 СЧ ШКВЭ71
 ИЛИ Е48(М17)
 НТЖ Е48(М17)
 ЗП ШКВЭ71
 ПБ ХОРОШО-Э(М1)
А60 ПАМ
 ИЛИ ШКАС
 НТЖ ШЗНКТ
 НТЖ ШКОПТТ
 ПБ ВЫХОД-Э(М1)
А600 УИИ М11(М6)
 УИИ М12(М10)
 ПБ ЭЛ
А601 МОДА ЕСПОД-Э(М1)
 ПВ (М17)
ЭЛ СЧ 9(М10)
 УИ М16
 СЛИА 15(М16)  ВРЕМЕН 16 ПЗ
 ПБ МУЗА-Э(М1)
G20300	пе	МС
	уии	М11(М6)
	уии	М12(М10)
	пб	А77
МС МОДА ЕСПОД-Э(М1)
 ПВ (М17)
 УИА 1027
 СЧ ОСПОД
 И Е48-1(М11)
 ПО НЕОСТ
 НТЖ ОСПОД
 ЗП ОСПОД
 СЧ МШГП
 ИЛИ Е48-1(М11)
 ЗП МШГП
    уиа         3
А77 ноп
	сч	2(М10)
	нтж	КЛЮЧ
	сда	64+7
	пе	МР
	сч	2(М10)
	сда	64-41
	нтж	'44'(М12)
	и	Е48П42
	нтж	'44'(М12)
	зп	'44'(М12)
МР УИА АВРАСП(М17)
 СЧИ М17
 ЗП 3(М12)
 СЧ 5(М12)
 И Е48П16
 ИЛИ КК
 ЗП 5(М12)
 ПБ НЕО
*   ДАЙ ОСТАНОВ.ЗАД-ЧИ ПОДЧИН
А101А НОП ---
 ПО Ф
 И П77
 УИ М15
 СЧ ШКРЗ
 И Е48-1(М15)
 ПО ВЫХОД-Э(М1)
Ф МОД ТУСП-1(М15)
 СЧ ПОДЧ
 И ОСПОД
 ПБ ВЫХОД-Э(М1)
АМ103 ПАМ
 СЧ ШКАС
 ПБ ВЫХОД-Э(М1)
А103 И П377
 УИ М15
 СЧ ТАС(М15)
 ПБ ВЫХОД-Э(М1)
А104 ноп
* ВЧ МИНЗ
* ПЕ НЕОСТ
* ВЧ МАКЗ
	по	НЕОСТ
	уи	М13
	вч	П60
 ПО НЕОСТ
 СЧ 0
 ЗП РП-РЕ(М7)
 СЧ ШКРЗ
 И Е48-1(М13)
 ПО НЕОСТ
 МОД ТУСП-1(М13)
 УИА (М2)
 СЧ Е48-1(М6)
 НТЖ ЗНМ свс: НОМАРС
 ПЕ НЕМАР
 СЧ СИГН
 И Е48-1(М13)
 ПО НЕОСТ
 ПБ СН
НЕМАР СЧ Е48-1(М6)
 НТЖ ЕЗАР
 ПЕ НЕАР
 СЧ Ш1
 И Е48-1(М13)
 ПО НЕОСТ
СН СЧ (М10)
 И ТИГ
 ЗП Р
 СДА 64+30
 СЛЦ П7777
 И П3777
 ЗП РФ
 СДА 64-15
 ИЛИ РФ
 СЛЦ Р
 И ТУГ
 ПЕ ПЛПЕ
 СЧ (М10)
* СДА 64+10
* И П37
* НТЖ П37
* УИ М14
* СЧ 32(М2)
* НТЖ 22(М2)
* И Е48(М14)
* ПЕ ВЫХОД-Э(М1)   ЛИСТ ПОД.ЗАДАЧИ В ОБМЕНЕ
* СЧ (М10)
 СДА 64+47
 УИ М14
 СЧ (М10)
 СДА 64+15
 УИИ М12(М10)
 МОДА КР
 ПВ (М15)
 УИИ М3(М4)
 УИИ М17(М13)
 УИИ М12(М2)
 ПВ ЗАНПРП(М15)
 СЧИ М14
 НТЖ Е1
 УИ М14
 СЧ (М10)
 МОДА КР
 ПВ (М15))
 СЧ ГУС
* СВС:
* И КРОМЕ
* ЗП ГУС
* БЭСМ:
	сда	64+41
 УИ М17           М17 := АДРЕС ИПЗ РЕСУРС-А
* УИА 1027
 ПВ ЗАНПР(М15) свс: БИЗОН1
 СЧ (М10)
 И П1777
 МОДА РОК
 ПИНО (М14)
 УИ М15
 СЧ (М10)
 СДА 64+15
 И П1777
 УИ М17
 ПБ Щ
РОК УИ М17
 СЧ (М10)
 СДА 64+15
 И П1777
 УИ М15
Щ СЛИА 2048(М17)
 СЧ Е48
 ИЛИ ФФ(М7)
 ЗП ФФ(М7)
 СЧ (М10)
 СДА  64+30
 РЕГ 65
 И П3777
 УИ М16
 УИА 0
ЩИ СЧ 1024(М15)
 ЗП (М17)
 СЛИА 1(М15)
 СЛИА -1(М16)
 МОДА ЩИ
 ПИНО (М16)
 УИА 1027
 СЧ Е48
 НТЖ ФФ(М7)
 ЗП ФФ(М7)
 СЧ 32(М12)
 НТЖ Е48(М4)
 ЗП 32(М12)
 СЧ 32(М10)
 НТЖ Е48(М3)
 ЗП 32(М10)
 ПБ НОР
НЕАР СЧ ШКГР
 И Е48-1(М6)
 ПЕ СН
 СЧ ОСПОД
 И Е48-1(М13)
 ПО НЕОСТ
 И ПОДЧ(М10)
 ПО ОШП
 ПБ СН
КР ПАМ 0
 И Е15П11
 УИ М11
 СДА 64+10
 УИ М17
 НТЖ П37
 УИ М4
	сч	'40'(М12)
	нтж	22(М12)
G20425	и	E48(М4)
	пе	ВЫХОД-Э(М1)
 СЧИ М17
 И П3
 УИ М16
 СЧИ М4
 СДА 64+2
 УИ М17
 УИА 1024
 СЧ 20(М11)
 УИА 1027
 СЧ 32(М12)
 ИЛИ Е48(М4)
 ЗП 32(М12)
 УИА 3
 МОДА (М17)
 СЧ 24(М12)
 СБР ПРИП(М16)
 РЗБ ПРИП+1(М14)
 ИЛИ РП-РЕ(М7)
 ЗП РП-РЕ(М7)
 ПБ (М15)
А105 НОП 0
 ЗП Р
 СЧ (М10)
 И П77
 УИ М15
 ВЧ П30
 ПЕ G20040 было НЛП-Э(М1)
 ВЧ Е6
 ПО G20040 было НЛП-Э(М1)
 СЧ АРХМЛ(М10)
 И Е48-24(М15)
 ПЕ САРСМ-РЕ(М7)
 СЧ (М10)
 СДА 64+1
 УИ М16
 СЧМР
 СДА 64+45
 УИ М15
 МОДА (М16)
 СЧ ШЗНМБ-12(М10)
 СДА 64+8(М15)
 И П17
 ПО G20040 было НЛП-Э(М1)
 ЗП (М10)
 И П3
 УИ М15
 СЧ (М10)
 СДА 64+2
 УИ М16    СЛОВО
 ВЧОБ
 УИ М17
 СЛИ М17(М17)
 СЧ П3
 СДА 64-20(М17)
 ЗП (М10)
 УИИ М11(М15)
 СЛИ М11(М10)
 И 27(М11)
 ЗП РФ
 УИА 1027
 НТЖ 27(М11)
 ЗП 27(М11)
 УИА 3
 СЧИ М15
 ВЧОБ Е1
 СДА 64-3
 УИ М17
 СЛИА -24(М17)
 СЧ РФ
 СДА 64+20(М17)
 ЗП РФ
 СЧ (М10)
 СДА 64+20(М17)
 ЗП РП-РЕ(М7)
 И ШП(М10)
 ЗП (М10)
 УИА 1027
 НТЖ ШП(М10)
 ЗП ШП(М10)
 СЧИ М16
 ВЧОБ
 УИ М17
 СЛИ М17(М17)
 СЧ (М10)
 СБР РП-РЕ(М7)
 СДА 64+26(М17)
 ЗП (М10)
 СЧ Р
 ПЕ ВОССТ
 СЧ РФ
 ИЛИ ШП(М10)
 ЗП ШП(М10)
 ПБ НОР
ВОССТ СЧ (М10)
 ИЛИ 27(М11)
 ЗП 27(М11)
 ПБ НОР
А107 ИЛИ ЕЗАР
 И Е48-1(М6)
 ПО ОШП
 СЧ 15(М10)
 УИ М11
 ПО ОШП
 СЧ ШКРЗ
 И Е48-1(М11)
 ПО ОШП
 СЧ (М10)
 СДА 64+6
 И П37
 УИ М3
 НТЖ П37
 УИ М2
 МОДА ОШП
 УИА (М15)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 СЧ (М10)
 И П37
 УИ М4
 НТЖ П37
 УИ М14
 МОД ТУСП-1(М11)
 УИА (М12)
 СЧИ М4
 СДА 64-10
 УИ М15
 УИА 1024
 СЧ 20(М15)
 УИА 1027
 СЧ 32(М10)
 ИЛИ Е48(М14)
 ЗП 32(М10)
 УИИ М17(М11)
 ПВ ЗАНПРП(М15)
 УИА 3
 СЧИ М3
 СДА 64-10
 УИ М15
 УИА 1024
 СЧ 20(М15)
 УИА 1027
 СЧ 32(М12)
 ИЛИ Е48(М2)
 ЗП 32(М12)
 СЧ Е5
 ПВ ЗАХЗАН(М15)
 СЧИ М4
 И П3
 УИ М16
 СЧИ М14
 СДА 64+2
 УИ М4
 СЛИ М4(М10)
 СЧ 24(М4)
 И ПРИП(М16)
 ЗП Р
 НТЖ 24(М4)
 ЗП 24(М4)
 СЧИ М3
 И П3
 УИ М17
 СЧИ М2
 СДА 64+2
 УИ М3
 СЛИ М3(М12)
 СЧ 24(М3)
 И ПРИП(М17)
 ЗП РФ
 НТЖ 24(М3)
 ЗП 24(М3)
 СЧ Р
 СБР ПРИП(М16)
 ЗП Р
 РЗБ ПРИП(М17)
 ИЛИ 24(М3)
 ЗП 24(М3)
 СЧ РФ
 СБР ПРИП(М17)
 ЗП РФ
 РЗБ ПРИП(М16)
 ИЛИ 24(М4)
 ЗП 24(М4)
 СЧ 32(М12)
 НТЖ Е48(М2)
 ЗП 32(М12)
 СЧ 32(М10)
 НТЖ Е48(М14)
 ЗП 32(М10)
 ПБ ПРОКАН
КАН НОП
 УИА НЕТЛ-Э(М15)
 СЛИ М15(М1)
 СЧИ М15
  ПВ ЗАПВЫХ(М15)
 СЧ ПР-Я(М7)
 ПО Э63
 СЧ (М10)
 МОД 36(М10)
 ПБ З-48
З СЧ ШКУСТР
 ПБ А60
 ПО А600
 ПБ А601    61
 СЧ 0
 ПБ ВЫХОД-Э(М1)
 СЧ 9(М10)
 ПБ А63
 СЧ 9(М10)
 ПБ А64
 УИА 1027
 ПБ А65
 СЧ МАСГЛ(М12)
 ПБ А66
 СЧ 9(М12)
 ПБ А67
 ПО СВЗА
 ПБ А70
 УИА 1027
 ПБ А71
 СЧ 9(М10)
 ПБ А72
 СЧ 9(М10)
 ПБ А73
 СЧ ИЗАХВ(М12)
 ПБ А74
 СЧ 9(М10)
 ПБ А75
 ПО ТГ
 ПБ А76
 зп 0 (возм хак) было ПЕ МС
 ПБ G20300 было А77
 НТЖ Е24П16
 ПБ А100
 УИИ М15(М6)
 ПБ А101А
 ЗП 0
 ПБ А102
 ПО АМ103
 ПБ А103
 СЧ 15(М10)   М7
 ПБ А104
 И Е48
 ПБ А105
 СЧ Е48-1(М6)
 ПБ НОР           ЭК-КОД СВОБОДЕН
 СЧ ЗНМ свс: НОМАРС
 ПБ А107
 СЧ 0
 ПБ НОР
 СЧ 9(М10)
 ПБ А111
 СЧ 9(М10)
 ПБ Э112
 УИА 1(М14)
 ПБ А1134         113
 УИА 0(М14)
 ПБ А1134         114
 СЧИ М11
 ПБ А115
 мода , было СЧ Е48-1(М6)
 ПБ ОШЭК свс: НОР          ЭК-КОД СВОБОДЕН
 СЧ ЕОПР
 ПБ А117
 И П377
 ПБ ИЗМПРТ
 ПО А121
 ПБ ПЗ
 ПО А122
 ПБ З1
 И ЕПИ
 ПБ А123
 И П7777
 ПБ А124
 СЧ (М10)
 ПБ А125
 СЧ ПРЕДЕЛ
 ПБ А126
 ЗП ИНФ(М10)
 ПБ Э127
 СЧ (М10)
 ПБ А130
 СЧ НОММЛ2
 ПБ А131
 УИА (М12)
 ПБ А132
 СЧ 0
 ПБ ВЫХОД-Э(М1)
 УИА 1(М12)
 ПБ А132
 СЧ 0
 ПБ А135
 УИА 1027
 ПБ А136
А1134 НОП
 СЧ 9(М10)
 НТЖ КЛ71
 ПЕ ХОРОШО-Э(М1)
 СЧ (М10)
 по G20655 свс: ПЕ МЕТ1
    мода      ОБЩ134
    уиа       (М17)
    пб        ЕСПОД-Э(М1)
G20655 ноп    
 УИИ М12(М10)
 УИИ М11(М6)
* ПБ ОБЩ134
* МЕТ1 МОДА ЕСПОД-Э(М1)
* ПВ (М17)
ОБЩ134 СЧ ЯЧЗФ(М12)
 ИЛИ ЕЗФ
 МОДА ЗПЗФ
 ПИНО (М14)
 НТЖ ЕЗФ
ЗПЗФ ЗП ЯЧЗФ(М12)
 ПБ НОР
КЛ71 КОНД В’71717’
А136 СЧ ПАК
 ПО ХОРОШО-Э(М1)
 ЗП Р
 ИЛИ ПОДЧ(М10)
 ЗП ПОДЧ(М10)
 СЧ 0
 ЗП ПАК
 СЧ ШКОК
 НТЖ Р
 ЗП ШКОК
 СЧ ОСПОД
 ИЛИ Р
 ЗП ОСПОД
 СЧ Р
РИР ЗП Р
 НЕД 0
 УИ М15
 СЧ ШКРЗ
 И Е48-1(М15)
 ПО РИР1
 МОД ТУСП-1(М15)
 УИА (М17)
 СЧИ М6
 СДА 64-21
 ИЛИ И(М17)
 ЗП И(М17)
РИР1 СЧ Р
 НТЖ Е48-1(М15)
 ПО ХОРОШО-Э(М1)
 ПБ РИР
А135 ЗП НРЕ
 ПБ ХОРОШО-Э(М1)
А131 СБР НАПРМГ
 УИИ М11(М1)
 УИА 1027
 ЗП РЯОД
 ПВ ПРКА(М3)
 СЧ ТЗНМД(М16)
 И П7777
 ПВ ПЕРЕВ(М15)
 РЖА 3
 ЗП 2(М10)
 СЧ НОММЛ2
 И Е36П25
 ВЧ Е27
 СДА 64-8
 ИЛИ 2(М10)
 ЗП 2(М10)
 УИА 1027
 СЧ НОММЛ1
 СБР НАПРМГ
 ЗП РЯОД
 ПВ ПРКА(М3)
 УИИ М1(М11)
 СЧ ТЗНМД(М16)
 И П7777
 ПВ ПЕРЕВ(М15)
 ПБ ВЫХОД-Э(М1)
А130 И П37
 ЗП Р
 СЧ Е5   ЗАХ.ТБД
 ПВ ЗАХЗАН(М15)
 УИИ М16(М10)
 ПВ УПРИ(М10)
 УИИ М10(М16)
 УИА 3
 МОДА ВБЦМБ
 ПВ (М17)
 СЧ КОЛТР
 ЗП (М10)
 ПО ПЕРМБ1
 СДА 64-СДТ
 ЗП КОЛТР
 УИА 1027
 СЧ ЯЧЧТР(М10)
 НТЖ ДТ
 СЛЦ КОЛТР
 НТЖ ДТ
 ЗП ЯЧЧТР(М10)
 УИА 3
А1301 СЧ НАЧЦМБ
 И П77777
 ПО ПЕРМБ1
 УИ М11
 УИА 1026
 СЧ ТБД-1(М11)
 ПРЕ 1027
 ЗП НАЧЦМБ
 СЧ ВСЕЕД
 НТЖ КДД
 УИА 1026
 И ТБД-1(М11)
 ЗП ТБД-1(М11)
 ПРЕ 3
 УИА (М12)
 СЧИ М11
 ВЧОБ АКТБД
 СЛИА ТБД-ТОП-1(М11)
 УИА 1027
 ПЕ ВОП1
 СЛИА ТОП-ТБД(М11)
 СЧИ М11
 ЗП Р
 И П37
 УИ М16
 СЧ Р
 СДА 64+5
 УИ М11
 АIF (∧ВS ЕQ 1).А1301
 СДА 64+5
 ПО А1302
 АGО .А1302
.А1301 АNОР
 ВЧ ГРАНЬБ
 ПЕ А1302
.А1302 АNОР
 УИА 1(М12)  ДИСК
А1302 СЧ Е48(М16)
 ИЛИ ШЗНМБО(М11)
 ЗП ШЗНМБО(М11)
 СЧ ТМБ(М12)
 СЛЦ Е1
 ЗП ТМБ(М12)
ВРЕС1 УИА 3
 ПБ А1301
ВОП1 СЧИ М11
 И П37
 УИ М16
 СЧИ М11
 СДА 64+5
 УИ М11
 СЧ ТЗФСТР(М11)
 НТЖ Е48(М16)
 ЗП ТЗФСТР(М11)
* СЧ ОЗУ
* СЛЦ Е1
* ЗП ОЗУ
 ПБ ВРЕС1
А126 И П777
 ЗП ПРЕДТР
 МОДА ЕСПОД-Э(М1)
 ПВ (М17)
 СЧ  Е48-1(М11)
  И ОСПОД
 ПЕ ОКЕЙ
 СЧ ШКГР
 И Е48-1(М6)
 ПО ВЫХОД-Э(М1)
ОКЕЙ СЧ 9(М10)
 УИИ М13(М11)
 И Е15
 ПО ПЕРМБ
*ПЕРЕДАЧА ТРАКТОВ
 СЧ 9(М10)
 И П777
 ЗП Р
 СДА 64-СДТ
 ЗП КОЛТР
 УИИ М15(М10)
 УИИ М16(М12)
 СЧ 9(М10)
  И Е14
 ПО ПЕРТР
 УИИ М15(М12)
 УИИ М16(М10)
ПЕРТР СЧ ЯЧЧТР(М15)
 СДА 64+СДТ
 И П1777
 СЛЦ Р
 ВЧОБ Е10
 ПО ПЕРТР1
 СЧ Е47      НЕТ НУЖНОГО КОЛ. ТРАКТОВ
 ПБ ВЫХОД-Э(М1)
ПЕРТР1 СЧ ЯЧТР(М16)
 И ДЛЯТР
 СЛЦ КОЛТР
 СДА 64+СДТ
 ВЧОБ ПРЕДТР
 ПО ПЕРТР2
 СЧ Е46     КОЛ. ТРАКТОВ >ПРЕДЕЛ
 ПБ ВЫХОД-Э(М1)
ПЕРТР2 УИА 1027
 СЧ ЯЧТР(М15)
 НТЖ ДЛЯТР
 СЛЦ КОЛТР
 НТЖ ДЛЯТР
 ЗП ЯЧТР(М15)   ТР В ПАСП
 СЧ КОЛТР
 СЛЦ ЯЧЧТР(М15)
 ЗП ЯЧЧТР(М15) ОСТ ТРАК В ОБР КОДЕ ОТД З
 СЧ ЯЧТР(М16)
 СЛЦ КОЛТР
 ЗП ЯЧТР(М16) +ТРАК В ПАСП ПРИН ЗАД
 СЧ ЯЧЧТР(М16)
 НТЖ ДТ
 СЛЦ КОЛТР
 НТЖ ДТ
 ЗП ЯЧЧТР(М16) +ТРАК В ОБР КОДЕ ПРИН З
 УИА 3
 СЧ Е45
 ПБ ВЫХОД-Э(М1)
ПЕРМБ СЧ 9(М10)
 И П37
 ЗП Р
 СЧ Е5
 ПВ ЗАХЗАН(М15)
 УИИ М16(М10)
 ПВ УПРИ(М10)
 УИА 3
 УИИ М10(М16)
 МОДА ВБЦМБ
 ПВ (М17)
 СЧ КОЛТР
 ЗП (М10)
 СЧ НАЧЦМБ
 ЗП РАБ
 СЧ КОНЦМБ
 ЗП РАБ1
 УИИ М16(М12)
 РЖА 3
 МОДА ВБЦМБ
 ПВ (М17)
 СЧ КОЛТР
 СДА 64-6
 ИЛИ Е45
 ИЛИ (М10)
 ЗП (М10)
 УИИ М15(М10)    В М16 УЖЕ М12
 УИИ М11(М10)
 И П77
 ВЧ КОЛТР
 ПО ПЕРГП    М10>М15
 ВЧАБ 0
 УИИ М17(М15)
 УИИ М15(М16)
 УИИ М16(М17)
ПЕРГП СДА 64-СДТ
 ЗП Р
 СЧ ЯЧТР(М16)
 УИА 1027
 И ДЛЯТР
 СЛЦ Р
 СДА 64+СДТ
 ВЧОБ ПРЕДТР
 ПО КОРПАС
 СЧ (М10)
 НТЖ Е45
 ИЛИ Е46    КОЛ.ТР>ПРЕДЕЛ
 ЗП (М10)
 УИИ М11(М12)
 УИИ М12(М10)
 ПБ ПЕРМБО
КОРПАС СЧ ЯЧТР(М15)
 НТЖ ДЛЯТР
 СЛЦ Р
 НТЖ ДЛЯТР
 ЗП ЯЧТР(М15)
 СЧ ЯЧТР(М16)
 СЛЦ Р
 ЗП ЯЧТР(М16)
ПЕРМБО УИА 3
 СЧ КОЛТР
 ПО ПЕРПЗ
 УИИ М16(М11)
 СЧИ М6
 МОДА ИСПНЗ
 ПВ (М17)    ПЕР.ТР.МБ В ГЗ
    мода     КОРЦЗД
    пв       (М17)
ПЕРПЗ СЧ РАБ
 ЗП НАЧЦМБ
 СЧ РАБ1
 ЗП КОНЦМБ
 УИИ М16(М12)
 СЧ (М10)
 И П77
 ПО ПЕРМБ1
 СЧИ М13
 МОДА ИСПНЗ
 ПВ (М17)    ПЕР.ТР.МБ В ПЗ
	мода	КОРЦЗД
	пв	(М17)
*свс: ВДТМБ3 НОП
ПЕРМБ1 СЧ Е5
 ПВ ГАШЗАН(М15)
ВДТМБ3 НОП а не здесь
 СЧ ЯЧЧТР(М10)
 СДА 64+СДТ
 НТЖ П1777
 СЛЦ Е1
 И П1777
 ЗП 8(М10)
 СЧ (М10)
 ПБ ВЫХОД-Э(М1)
ИСПНЗ МОД НАЧЦМБ
 УИА (М15)
 СДА 64-41
 ЗП ПОСОСТ
ЕСТРА УИА 2
 НТЖ ТБД-1(М15)
 УИА 3
 И Е48П42
 УИА 2
 НТЖ ТБД-1(М15)
 ЗП ТБД-1(М15)
 УИА 3
 И П77777
 УИ М15
 ПО (М17) свс: КОРЦЗД
 СЧ ПОСОСТ
 ПБ ЕСТРА
*ПЕРЕДАЧА М Б
*ПОДПР-МА КОРРЕКЦИЯ ЦЕПОЧКИ ЗАДАЧИ В  Т Б Д
*В Х О Д: М16 -АДР ИПЗ ЗАДАЧИ;НАЧЦМБ;КОНЦМБ
КОРЦЗД СЧ ШЗНМБ+1(М16)
 СДА 64+ССТБД
 И П77777
 УИ М11
 СЧ КОНЦМБ
 СДА 64-ССТБД
 УИА 1027
 нтж ШЗНМБ+1(М16)
 И Е31П17 свс: ОССТБД
 нтж ШЗНМБ+1(М16)
 ЗП ШЗНМБ+1(М16)
 СЧ НАЧЦМБ
 МОДА КОРЦЗ1
 ПИО (М11)
 УИА 1026
 ИЛИ ТБД-1(М11)
 ЗП ТБД-1(М11)
 ПРЕ 1027
 ПБ (М17)
КОРЦЗ1 СДА 64-ССТБД
 ИЛИ ШЗНМБ(М16)
 ЗП ШЗНМБ(М16)
 ПБ (М17)
*ПОДПР-МА ВЫБОРА ИЗ  Т Б Д  ЗАДАЧИ
*ЦЕПОЧКИ ТРАКТОВ ОДНОГО  М Б
*В Х О Д: М16-АДР ИПЗ ЗАДАЧИ; Р-N МБ
*В Ы Х О Д ПО М17:НАЧЦМБ,КОНЦМБ,КОЛТР;
ВБЦМБ СЧ 0
 ЗП ПОСОСТ
 ЗП КОЛТР
 СЧ ШЗНМБ(М16)
 СДА 64+ССТБД
 И П77777
 ЗП СЛСВ
 УИА 1027
 СЧ ШЗНМБ+1(М16)
 И ОССТБД
ВБ ЗП ШЗНМБ+1(М16)
 УИА 3
ВБЦ1 СЧ СЛСВ
 ПО (М17)
 УИ М11
 ЗП ВСЛСВ
 УИА 2
 СЧ ТБД-1(М11)
 ПРЕ 3
 ЗП Н
 И П77777
 ЗП СЛСВ
 СЧ Н
 СДА 64+ТБДМБ
 И П37
 НТЖ Р         МБ
 ПО ВБЦ10
*КОРРЕКЦИЯ КОНЦА ЦЕПОЧКИ ЗАДАЧИ
 СЧ ВСЛСВ
 ЗП ПОСОСТ
 СДА 64-ССТБД
 УИА 1027
 нтж ШЗНМБ+1(М16)
 И Е31П17
 нтж ШЗНМБ+1(М16)
 ПБ ВБ
*ТРАКТ НУЖНОГО  М Б
ВБЦ10 СЧ Н
 И КОК
 УИА 2
 ЗП ТБД-1(М11)
 ПРЕ 3
 СЧ КОЛТР
 ПЕ ВБЦ2
 СЧ ВСЛСВ
 ЗП НАЧЦМБ
 ПБ ВБЦ3
ВБЦ2 СЧ КОНЦМБ
 УИ М11
 СЧ ВСЛСВ
 УИА 2
 ИЛИ ТБД-1(М11)
 ЗП ТБД-1(М11)
ВБЦ3 ноп
 ПРЕ 1027 свс: 3
 СЧ ВСЛСВ
 ЗП КОНЦМБ
 СЧ КОЛТР
 СЛЦ Е1
 ЗП КОЛТР
* ИЗМЕНЕНИЯ ЦЕПОЧКИ ЗАДАЧИ
 СЧ ПОСОСТ
 ПЕ ВБЦЗ1
 СЧ СЛСВ
 СДА 64-ССТБД
* ИЛИ ШЗНМБ(М16)
	нтж	шзнмб(М16)
	и	Е31П17
	нтж	шзнмб(М16)
 ЗП ШЗНМБ(М16)
 УИА 3
 ПБ ВБЦ1
ВБЦЗ1 УИ М11
 ПРЕ 2 свс: 0
 СЧ ТБД-1(М11)
 ПРЕ 3
 И КОК
 ИЛИ СЛСВ
 ПРЕ 2  свс: 0
 ЗП ТБД-1(М11)
 ПРЕ 3
 ПБ ВБЦ1
ДЛЯТР КОНД М31В’777’
ДТ КОНД М31В’1777’
ПРЕДТР КОНД В’0’
РАБ КОНД В’0’
РАБ1 КОНД В’0’
ПОСОСТ КОНД В’0’
СЛСВ КОНД В’0’
ВСЛСВ КОНД В’0’
КОЛТР КОНД В’0’
НАЧЦМБ КОНД В’0’
КОНЦМБ КОНД В’0’
А125 УИИ М12(М10)
 ПО ВДТМБ
 УИ М15
 СЧ 0
 ЗП (М10)
 СЧИ М15
 ВЧ МИНЗ
 ПЕ ВДТМБ3
 ВЧ МАКЗ
 ПО ВДТМБ3
 СЧ ШКРЗ
 И Е48-1(М15)
 ПО ВДТМБ3
 СЧ ТУСП-1(М15)
 УИ М12
ВДТМБ СЧ Е5
 ПВ ЗАХЗАН(М15)
 УИИ М16(М10)
 ПВ УПРИ(М10)
    сч '4401' неясно
 УИИ М10(М16)
 СЧ ШЗНМБ(М12)
 СДА 64+ССТБД
ВДТМБ1 И П77777
 УИА 3
 УИ М11
 ПО ПЕРМБ1 свс: ВДТМБ3
 УИ М16
 УИА 2
 СЧ ТБД-1(М16)
 ПРЕ 3
 ЗП Р
 СДА 64+ТБДМБ
 НТЖ 9(М10)
 И П37
 ПЕ ВДТМБ2
 СЧ Р
 СДА 64+ТБДТР
  И П37
 УИ М17
 СЧ (М10)
 ИЛИ Е48(М17)
 ЗП (М10)
ВДТМБ2 СЧ Р
 ПБ ВДТМБ1
А124 И П7777
 ЗП 2(М10)
 МОДА ТЗЧ
 УИА (М12)
СЛЗ2 СЧ (М12)
 ПО ВЫХОД-Э(М1)
СЛЗ1 ЗП Р
 И П7777
 ВЧ 2(М10)
 ПЕ СЛЗ
 СЧ Р
 СДА 64+12
 И П7777
 ВЧОБ 2(М10)
 ПО МО
 СЧ Р
 СДА 64+24
 ПЕ СЛЗ1
СЛЗ МОДА СЛЗ2
 ЦИКЛ (М12)
ТЗЧ КОНД В’6705400542’
 КОНД В’545055007100712’
 КОНД В’0736073607500751’
 КОНД В’17351743’ свс: 500050017351743
 ПАМ 1
МО СЧ (М10)
 СДА 64+12
 И П77
 УИ М12
 ВЧ П30
 ПЕ ВЫХОД-Э(М1)
 ВЧОБ П37
 ПЕ ВЫХОД-Э(М1)
 СЧ (М10)
 И Е40
 ПО ВЫХОД-Э(М1)
 СЧ УКАЗД(М10)
 И Е32-24(М12)
 ПО ВЫХОД-Э(М1)
 УИА 1027
 СЧ ШЗНМБ(М10)
 ИЛИ Е48
 ЗП ШЗНМБ(М10)
 УИА АНВО1Е(М15)
 СЧИ М15
 ЗП 3(М10)
 СЧ 5(М10)
 И Е48П16
 ИЛИ П2007
 ЗП 5(М10)
 ПБ ВЫХСМ
А111 УИ М16
 УИА 0
 СЧ (М16)
 УИА 3
 ЗП Р
 УИ М14
 УИА НЛП-Э(М15)
 СЛИ М15(М1)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 УИИ М17(М11)
 ПВ ЗАНПРП(М15)
 УИА 1024
 СЧ (М14)
 УИА 1027
 ЗП РФ
 РЕГ 71
 СЧ Р
 И Е31
 ПЕ Е
 РЕГ 65
Е СЧ РФ
 УИА 1024
 ЗП (М14)
    уиа         3
 ПБ ХОРОШО-Э(М1) свс: МЕТ2
Э112 И Е1
 СДА 64-СДКА-23
 ИЛИ ЯЧК(М12)
 ЗП ЯЧК(М12)
* МЕТ2 УИА 3
 ПБ ХОРОШО-Э(М1)
А115 НОП
* ИЛИ ЕП
 ЗП ЭКО
 СЧ 0
 УИА 1027
 ЗП ЭКО+1
 СЧ 36(М12)
 И Е41П1
 ЗП 36(М12)
 СЧ ОСПОД
 И Е48-1(М11)
 ИЛИ МШГП
 ЗП МШГП
 СЧ ВСЕЕД
 НТЖ Е48-1(М11)
 И ОСПОД
 ЗП ОСПОД
 ПБ ХОРОШО-Э(М1)
А117 НТЖ ВСЕЕД
 УИА 1027
 И ЯЧОПР(М12)
 ЗП ЯЧОПР(М12)
 СЧ 9(М12)
 И Е1
 СДА 64-СДОП
 ИЛИ ЯЧОПР(М12)
 ЗП ЯЧОПР(М12)
 ПБ ХОРОШО-Э(М1)
ИЗМПРТ ПАМ 0
 ЗП Р      КВАНТ
 СЧ (М10)
 СДА 64+15
     и          П77
 УИ М16  НОМЕР КАНАЛА
 ПО ОШЭК
 ВЧ П60
 ПО ОШЭК МНОГО
 СЧ Е48-1(М16)
 НТЖ ЕЗАР
 ПО ОШЭК АРХИВУ НЕ МЕНЯЕМ
 СЧ ШКРЗ
 И Е48-1(М16)
 ПО ОШЭК
 МОД ТУСП-1(М16)
 УИА (М11)
 СЧ Р
 СДА 64+7
 ПЕ ОПРОС  КВАНТ ВЕЛИК - ОПРОС
 СЧ КВНЗАД(М10) свс: М11
 И Е14
 ПЕ ИЗМКВ   ИЗМЕН КВАНТ
ОПРОС СЧ КВНЗАД(М11)
 И П77777   РАЗР,ГРУППА,КВАНТ
 ПБ ВЫХОД-Э(М1)
ИЗМКВ СЧ КВНЗАД(М11)
 И Е12П9
 ИЛИ Р
 ЗП Р  ДОБАВИЛИ N СТАР ГРУППЫ
 СДА 64+8
 ВЧОБ Е4
 УИ М15
 И Е15
 ПЕ ВЫХОД-Э(М1)
 СЧ ГРУП(М15)
 ИЛИ Е48-1(М16)
 НТЖ Е48-1(М16)
 ЗП ГРУП(М15)  УДАЛИЛИ
 СЧ (М10)
 И КВНЗАД(М11)
 И Е14+1
 ПО СТАРГ  ГРУППУ НЕ МЕНЯЕМ
 СЧ (М10)
 И П7777
 ЗП Р   N НОВ ГРУППЫ
СТАРГ СЧ Р
 НТЖ КВНЗАД(М11)
 И П7777
 НТЖ КВНЗАД(М11)
 ЗП КВНЗАД(М11)
 И П177
 ПО ВЫХОД-Э(М1)
 СЧ Р
 СДА 64+8
 И П17
 ВЧОБ Е4
 УИ М15   N НОВ ГРУППЫ
 И Е15
 ПЕ ВЫХОД-Э(М1)
 СЧ ГРУП(М15)
 ИЛИ Е48-1(М16)
 ЗП ГРУП(М15)   ВПИСАЛИ В НОВУЮ ГРУППУ
 ПБ ВЫХОД-Э(М1)
Е12П9 КОНД М8В’17’
А123 ПАМ 0
 УИА 1027
 ИЛИ УКАЗД(М10)
 ЗП УКАЗД(М10)
 СЧ (М10)
 СДА 64-27
 НТЖ ШПЭГ(М10)
 И ЕПИ
 НТЖ ШПЭГ(М10)
 ЗП ШПЭГ(М10)
 ПБ ХОРОШО-Э(М1)
А121 НОП
 УИИ М12(М10)
	сч	9(М10)
	и	E2
	пе	ОШП
 ПБ ПИ1
ПЗ НОП
 МОДА ЕСПОД-Э(М1)
 ПВ (М17)
ПИ1 СЧ 9(М10)
 И П3
 УИ М11
 МОД 7(М10)
 УИА (М16)
 УИА НЛП-Э(М15)
 СЛИ М15(М1)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 УИА 1024
 СЧ (М16)
 УИА 1027
 И Е48П17
 ЗП Р
 МОДА (М11)
 СЧ ШЗНМБ+Т(М12)
 И Е16П1
 ИЛИ Р
 МОДА (М11)
 ЗП ШЗНМБ+Т(М12)
 ПБ ХОРОШО-Э(М1)
А122 НОП
 УИИ М12(М10)
 ПБ З7
З1 МОДА ЕСПОД-Э(М1)
 ПВ (М17)
З7 СЧ 9(М10)
 И П3
 УИ М17
 МОДА (М17)
 СЧ ШЗНМБ+Т(М12)
 И Е48П17
 ИЛИ Е7
 ПБ ВЫХОД-Э(М1)
Э127 СЧ ШКРЗ
 И ЗНМ свс: НОМАРС
 ПО НЕОСТ
 СЧ СИГН свс: Ш1М
 ИЛИ Е48-1(М6)
 ЗП СИГН свс: Ш1М
 СЧ ЧОМБМЛ свс: НОМАРС+1
 ИЛИ Е40
 ПВ ЗАПВЕТ(М16)
 СЧ ШЗНМБ(М10)
 ИЛИ ЕМАРС
 ЗП ШЗНМБ(М10)
 ПБ ВЫХРЕС-РЕ(М7)
А132 СЧ Е48-1(М6)
 НТЖ ЕЗАР
 ПЕ ВЫХОД-Э(М1)
 ПВ ТБУФ(М15)
 СДА 64-8
 УИ М2
 СЧ НОММЛ1
 ПВ ЕNQ(М15)
 СЧ 10(М10)
 И П177
 СДА 64-3
 УИ М4
 СЧ 10(М10)
 СДА 64+7
 И Е1
 УИ М16
 МОДА (М16)
 СЧ КАТ-Э(М1)
 ЗП КШ-Э(М1)
* СЧИ М2
 МОДА ЧТК-Э(М1)
 ПВ (М13)
 МОДА НЕТАЗ АДАЧА
 УИА (М15)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 СЛИ М4(М2)
 СЧ 7(М10)
 СДА 64-23
 МОДА Д134
 ПИНО (М12)
 СЧ 9(М10)
 УИ М16
 УИА 1024
 СЧ 9(М16)
 УИА 3
Д134 ПАМ 0
 НТЖ 7(М4)
 И Е24П48
 СДА 64-10
 ПЕ НЕТАЗ   АДАЧА
 СЧ 5(М4)
 И П1777
 СДА 64-24
 ЗП РЭ-Э(М1)
 УИИ М13(М4)
 СЧ 36(М10)
 И П3
 ПО А134
 УИА -3(М15)
ПИ2 УИА 0
 СЧ 3(М16)
 УИА 3
 ЗП 1(М4)
 СЛИА 1(М16)
 СЛИА 1(М4)
 МОДА ПИ2
 ЦИКЛ (М15)
 УИИ М4(М13)
 ПБ А134
АН СЧ КШ-Э(М1)
 И ЛИСТА
 ИЛИ РЭ-Э(М1)
 СЛЦ НОММЛ2
 ЗП РЭ-Э(М1)
 ИЛИ Е18
 УИА -3(М4)
 ПВ ФИЗОБМ(М16)
 МОД 9(М10)
 УИА (М13)
ПБОБ УИА 0
 МОДА 6(М4)
 СЧ (М13)
 УИА 3
 МОДА 6(М4)
 ЗП (М2)
 МОДА ПБОБ
 ЦИКЛ (М4)
 УИА 0
 СЧ 17(М13)
 УИА 3
 ЗП 17(М2)
 СЧ (М2)
 СДА 64+24
 И П1777
 УИ М15
 СЛИА 1-ШКАНУ(М15)
ПОМ СЛИА -1(М15)
 УИА 1024
 СЧ ШКАНУ(М13)
 УИА 1027
 ЗП ШКАНУ(М2)
 УИА 3
 СЛИА 1(М13)
 СЛИА 1(М2)
 МОДА ПОМ
 ПИНО (М15)
 СЧ РЭ-Э(М1)
 ПВ ФИЗОБМ(М16)
 СЧ НОММЛ1
 ПВ DЕQ(М15)
 СЧ РЭ-Э(М1)
 ПВ ТБУФ(М15)
ОШЭК НОП ---
 СЧ 0
 ПБ ВЫХОД-Э(М1)
А134 УИА 1027
 СЧ ШКИВ
 ИЛИ Е36
 ЗП ШКИВ
 УИА 3
 СЧ (М10)
 И Е25
 НТЖ ВСЕЕД
 И 6(М4)
 ЗП 6(М4)
 СЧ (М10)
 И Е40
 НТЖ ВСЕЕД
 И (М4)
 ЗП (М4)
 СЧ КШ-Э(М1)
 НТЖ Е18
 ПВ ФИЗОБМ(М16)
 СЧ
 ЗП (М10)
 МОДА АН
 ПИО (М12)
НЕТАЗ СЧ КШ-Э(М1)
 ПВ DЕQ(М15)
 ПБ КОНЭ-Э(М1)
Э63 СЧИ М6
 ЗП 25(М7)
 СЧ 36(М10)
 УИ М16
 И П77777
 СДА 64+3
 ЗП Р
 МОДА (М16)
 ПО ВР1
 СДА 64+3
 ПЕ ЭК63-Э(М1)
 ПБ ВР10
ВР1 СЧ 35(М10)    ДО КНЦ РЕШ
 ПБ ВР2
 СЧ 35(М10)
 ПБ ВР2
 СЧ 33(М10)
 ПБ ЛЛ
 СЧ (М10)
 ПБ ЛИ2
 СЧ 35(М10)
 ПБ ВР2А
 УИА (М16)
 ПБ ВР1
 УИА (М16)
 ПБ ВР1
 УИА (М16)
 ПБ МЭ63
ВХД УИА 1(14)
 ПБ ВР1
ВР2А СЧ ЯЧЭК(М10)
 И ЕВАМОS
 ПЕ ГДР
 СЧ 35(М10)
ВР2 СДА 64+9
 ЗП РАБ
 СЧ ЯЧВР(М10)
 И Е40П48
 ИЛИ РАБ
 И Е24П48
 ЗП РАБ
 СЧ 39(М10)
 ПО ВРБ
 И Е24П48
 СЛЦ РАБ
 ЗП Р
 СЧ 39(М10)
 СДА 64-25
 СЛЦ Р
ВРА СЛЦ 33(М10)
 СДА 64+23
 МОДА (М16)
 ПБ ВР
ВРБ СЧ РАБ
 ПБ ВРА
ВР ЗП (М10)
 ПБ ВРЭ4
 ЗП РАБ
 ЗП (М10)
 УИА 6(М2)
 ПБ РАЗБ2
 ЗП 0
 ЗП 0
 ЗП (М10)
 ПБ ВР10
ВРЭ4 ЗП Р
 СЧ РАБ
 СДА 64+23
 ВЧ Р
 УИА 1027
 ИЛИ ЭК9
 РЖА 0
 СЛ 0
 ДЕЛ =Е’50’
 РЖА 3
ВР10 ЗП (М10)
 ПБ ВЫХОД-Э(М1)
ЛЛ И Е48
 ПО ВЫХОД-Э(М1)
 СЧ 39(М10)
 ПБ ЛИ1
РАЗБ2 СЧ 0
      зп        РАБ1
 СЛИА -1(М2)
РАЗБ  ноп
* ЗП РАБ1
 СЧ РАБ
 ИЛИ Е48
 МОДА (М2)
 ВЧ С
 ПЕ РАЗБ1   АЦПУ
 ЗП РАБ
 СЧ РАБ1
 СЛЦ Е1
     зп         РАБ1
 ПБ РАЗБ
РАЗБ1 СЧ Р
 СДА 64-8
 ИЛИ РАБ1
 ЗП Р
 МОДА РАЗБ2
 ПИНО (М2)
 РЗБ МАСКА
 ИЛИ Н1
 ЗП Н
 СЧИ М5
 СДА 64+5
 ЗП Н+2
 СЧ Е48П37
 И 31(М7)
 ИЛИ Н+2
 ЗП 31(М7)
 РЕГ 16
 СЧ Р
 СДА 64-32
 ИЛИ Н1+1
 ЗП Н+1
 СЧ (М10)
 ЗП Н+2
 Э64 НФ-КАНАЛ+1024
ВЫХСМ СЧ (М10)
 ПБ ВЫХОД-Э(М1)
НФ ЗП Ц-К+1024
 ЗП Ц-К+1028 свс: 1027
 КОНД В’0’
 КОНД М20В’11’М24В’20’М39В’103’
Ц КОНД П’ВРЕМЯ ’
  КОНД П’СЧЕТА ’
Н ПАМ 3
Н1 КОНД П’00.00.’
 КОНД П’00   0’В’172’
 КОНД В’0’
МАСКА КОНД В’7777740077777400’
ВРЭ3 НТЖ =П’777777’
 ПО ВРЭ3А
 СЧ 39(М10)
 ПО ВР15А
 СЧ 0
 ПБ ВЫХОД-Э(М1)
ВРЭ3А СЧ 39(М10)
 ПО ВР18
ВР3 СДА 64-2
 И Е1П25
 ЗП РФ
 СЧ 33(М10)
 СДА 64+23
 СЛЦ РФ
 СДА 64-23
 СЛЦ 39(М10)
 ЗП 39(М10)
 ПБ ВР11
ВР12 ПЕ ВР3
 СЧ 33(М10)
 И Е24П48
 ЗП 39(М10)
 СЧ (М10)
 НТЖ =П’777777’
 ПО ВР11
 СЧ 0
ВР15А ЗП Р
 УИА -5(М2)
 СЧ (М10)
ВР6 ЗП РАБ1
 И П17
 ПО ВР7
 МОДА (М2)
 УМН С+5
 СЧМР 64
 СЛЦ Р
 ЗП Р
ВР7 СЧ РАБ1
 СДА 64+8
 МОДА ВР6
 ЦИКЛ (М2)
 СЧ Р
 СЛЦ П3
 ИЛИ П3
 НТЖ П3
 ЗП Р
 СЛИА -2(М16)
 МОДА ВР14
 ПИО (М16)
* СДА 64-25
* СДА 64+2
      сда       64-23
 СЛЦ 33(М10)
 ЗП Р
 И Е48
 ПО ВР18
 СЧ 33(М10)
 И Е24П48
 ЗП 39(М10)
 СЧ Р
 ЗП 33(М10)
 СДА 64+23
 НТЖ Е1П25
 СЛЦ П3
 ПБ ВИМ
ВР14 СЧ Р
 НТЖ Е1П25
 СЛЦ Е1
 ЗП РАБ1
 СЧ 33(М10)
 И Е1П23
 ЗП 33(М10)
 УИА (М14)
 СЧ 39(М10)
 СДА 64+23
 ВЧОБ РАБ1
 ПЕ ВЯ
 СЧ РАБ1
 СДА 64-23
 ИЛИ 33(М10)
 ЗП 33(М10)
 СЧ 39(М10)
 И Е24П48
 ЗП 39(М10)
 СЧ Р
ВИМ СДА 64+2
 ИЛИ 39(М10)
 ЗП 39(М10)
 СЧ Е24П48
 ПБ ВЫХОД-Э(М1)
ВР11 СЧ 33(М10)
 И Е1П23
 ЗП 33(М10)
 УИА Е24П48(М14)
ВЯ СЧ 39(М10)
 И Е24П48
 ИЛИ 33(М10)
 ЗП 33(М10)
 СЧ 0
 ЗП 39(М10)
 СЧ (М14)
 ПБ ВЫХОД-Э(М1)
ГДР СЧ ГОД
 СДА 64-13
 РЗБ КОНСТ
 ИЛИ П140
 ИЛИ Е5
 ПБ ВЫХОД-Э(М1)
ЛИ1 СЧ КВНЗАД(М10)
 И Е1П23
 ИЛИ Е48
 ЗП КВНЗАД(М10)
 СЧ 39(М10)
 ПБ ВР12
ЛИ2 СЧ КВНЗАД(М10)
 И Е1П23
 ИЛИ Е48
 ЗП КВНЗАД(М10)
 СЧ (М10)
 ПБ ВРЭ3
КОНСТ КОНД В’17’М8В’37’М16В’77’
С КОНД М47В’1’В’62’
 КОНД М47В’1’В’764’
 КОНД М47В’1’В’5670’
 КОНД М47В’1’В’72460’
 КОНД М47В’1’В’537440’
 КОНД М47В’1’В’6673500’
ТИГ КОНД М10В’37’М25В’37’М41В’77’В’-1’
ТУГ КОНД М10В’37’М25В’37’
Е3230 КОНД М29В’5’
Р КОНД В’0’
П21 КОНД В’21’
РФ КОНД В’0’
Е26П16 КОНД М15В’3777’
Н22П27 КОНД М21В’77’В’-1’
 Е
 М
 ЭКВИВ (К,КАНАЛ),(ВР18,ВР10),(ФФ,23),(НЕО,НОР)
 ВХОД СВЗА
 ВХОД А66,А67,АМ103,А600,А105,А70,КАН,А73,А76
 ВХОД ТГ,А74,А75,А71,А72,А100,А60,А601,А104,А103
 ВХОД ВХД,РФ,Р,НОР,Н
ЭКГДР ВНЕШ НЕТЗАД,ХОРОШО,ОШ1,(Э,ЭКГДР),НЕТЛ,ВЫХОД
ЭКГДР ВНЕШ НЛП,КАТ,КШ,(РЭ,РЯ),ЧТК,КОНЭ,ВЫХ2,МУЗА
ЭКГДР ВНЕШ ЕСПОД,ЭК63
КИТ ВНЕШ ШКГР
ДИСП70 ВНЕШ Е15П11,П2007,КНАПР,УКАЗД,ШЗНМБ,ЗАНПР,ТСЛ
ДИСП70 ВНЕШ ТБУФ,ПАК,ПЕРЕВ,НОММЛ1,ТЗНМД,ТМБ,ИНФ
ДИСП70 ВНЕШ Е18П1,КДД,ШЗНМБО,ПРЕДЕЛ,ЗАХЗАН,ГАШЗАН
ДИСП70 ВНЕШ П23,Е48П37,П777,КВНЗАД,ГРУП
ДИСП70 ВНЕШ НОММЛ2,(Е24П48,Е48П24),ШКИВ,П30,АВРАСП,Е1П23,ЭК9
ДИСП70 ВНЕШ (Е40П48,КСВЗ),ГОД,П140,ШП,ПРИП,ТАС
ДИСП70 ВНЕШ ВСЕЕД,П77777,ШПЭГ,Е48П16,МАСГЛ,ЗАПВЕТ,НРЕ
ДИСП70 ВНЕШ ШГ,КРОМЕ,Ш1,П3,П7,П5,П37,ИНФСЛП,АВОС
ДИСП70 ВНЕШ ОСПОД,П177,Е41П1,ГУС,МШГ,ТЕРЕЗА
ДИСП70 ВНЕШ Е24П1,П3777,РМР,ТУС,ШКОК,ПОДЧ,ШИФРМ,П7777
ДИСП70 ВНЕШ П1777,И,ТР5,(ТР6,ТУМБ6),ШСБРОС,Е24П16
ДИСП70 ВНЕШ РМЛ,П377,ЗАНЯТА,П17,П60,П77
ДИСП70 ВНЕШ ЕОПР,П37777,ОССТБД,ТЗФСТР,ОЗУ,ТОБ
ДИСП70 ВНЕШ НОММБ,ЕПИ,НАПРМГ,Е36П25,КОК
ДИСП70 ВНЕШ ЯЧОПР,СДОП,ЯЧВР,Е48П25,П12
ДИСП70 ВНЕШ ЛИСТА,(КК,П2007)
ДИСП70 ВНЕШ ШГП,МЧПЗ,ТУСП,НПЗ,ЧПЗ,ЗАНПРП
ДИСП70 ВНЕШ МИНЗ,МАКЗ,ЕЗАР,МШГП,СОБА40
ДИСП70 ВНЕШ ЯЧЗФ,ЕЗФ,ЯЧЭК,ЕВАМОS,НО,ЛПРОЦ
ДИСП70 ВНЕШ ШКПРЕ,ТР4,КЛЮЧРЗ
ДИСП70 ВНЕШ ШАРКЗМ,ГРАНЬБ,БИЗОН1
ДИСП70 ВНЕШ КЛЮЧ,ЗНМ,Е31П17,СИГН,ЧОМБМЛ
В3В4 ВНЕШ ШКАНУ
КИТ ВНЕШ АКТБД,КРСТР,Е1П25,Е48П42,ВППС
МОТТ ВНЕШ ЭКО,ШЗНКТ,ШКОПТТ,ШКАС,ШКУСТР
МОТТ ВНЕШ ШКВЭ71,ШКЭ71,ШКВЫД,ЕЗАКП,ШКОРАБ,ШКЗАПР,ШЗПРИМ
КАЧКА ВНЕШ Е48П17,ШКРЗ
ВЗУ ВНЕШ ФИЗОБМ,ФИЗЗП,АНВО1Е,ПРКА
ДИСКИ ВНЕШ Е16П1,ЕNQ,DЕQ,П11,РЯОД
БОЭК1 ВНЕШ АРХМЛ,ЗАПВЫХ,ЛИСТМБ,Л
РЕСУРС ВНЕШ (Я,РЕСУРС),(ПР,РЯ1),РЯ,РЯ6,(РЕ,РЕСУРС)
РЕСУРС ВНЕШ РП,САРСМ,ВЫХОШ,РЕСУРС,(ВЫХРЕС,ВЫХОД)
СОСТАВ ВНЕШ ТБД,ТБДТР,ТБДМБ,ИЗАХВ,ССТБД
СОСТАВ ВНЕШ ЕМАРС,ТОП
СОСТАВ ВНЕШ ЯЧК,ЕКА,СДКА,СДТ,ЯЧЧТР,ЯЧТР,ЕТР
ХЛАМ ВНЕШ Т,УПРИ,УПРИ1,ПРОКАН,МЭ63
*КОНЕЦ ЧАСТИ
