ПРИСКВ СТАРТ ’20000’
 УПОТР ПРИСКВ-’1400’(М7)
 Б
 Е
 М
*
*
*
*      Д И Р Е К Т И В А  N 23
*      -----------------------
*
*        СКВ [<N З-ЧИ НА БУФЕРЕ ВВОДА>]
*
*          ТР5 = 0 - ВЫДАТЬ ОБЩУЮ ИНФ.О ЗАДАЧАХ
*          ТР5 = <N З-ЧИ НА БУФ.ВВОДА> - ИНФ.О ДАННОЙ З-ЧЕ
*
*
СКВ СЧ ТР5-П(М7)
 И П377
 УИ М11
 ПЕ СКВN         СКВ <N З-ЧИ НА БУФЕРЕ ВВОДА>
*
*------* СКВ БЕЗ ПАР-РА *------*
*
*
 УИА (М4)         СЧ-К СЧЕТНЫХ З-Ч
 УИА (М5)         СЧ-К ТЕЛЕ З-Ч
 УИА (М6)         СЧ-К ДЛЯ ЖДУЩ.З-Ч
 УИА (М10)        СЧ-К ДЛЯ УПР-Х З-Ч
*------ ЧТ.КАТАЛОГА ВВОДА
 СЧ КУС545
 МОДА ЧТЕН-П(М7)
 ПВ (М12)
*------ ПОДСЧЕТ З-Ч
 УИИ М15(М1)
 УИА -1(М12)
 УИА -126(М16)
СКВА СЧ 1(М15)
 ПО СКВА1        ЭТО СЧЕТНАЯ З-ЧА
 МОДА СКВА3
 ПИО (М12)        1 РАЗ ОТ О-177, 2 РАЗ ОТ 177-377
*
 СЧ 129(М15)
 ПО СКВА3        ЭТО ТЕЛЕ З-ЧА
 НТЖ ВСЕ9
 ПЕ СКВА2
 СЛИА 1(М5)
СКВА1 СЛИА 1(М15)
 МОДА СКВА
 ЦИКЛ (М16)
*
 УИА 256(М15)
 СЛИ М15(М1)
 УИА -126(М16)
 МОДА СКВА
 ЦИКЛ (М12)
*
*
*------ ИНФ.О ТЕЛЕ З-ЧАХ ------*
*
 УИА 1(М12)
 СЧИ М5
 МОДА ФОРМС
 ПВ (М17)
*
*------ ИНФ.О СЧЕТН.З-ЧАХ ------*
*
 СЧИ М4
 МОДА ФОРМС
 ПВ (М17)
 НТЖ П37
 ЗП ПОЛЕ+3-П(М7)  ’,’ ---> ’(’
*
*------ ИНФ.О ЖДУЩ.З-ЧАХ ------*
*
 СЧИ М6
 МОДА ФОРМС
 ПВ (М17)
*
 СЧ ТТЕЛЕ
 ЗП ПОЛЕ-П(М7)
 СЧ ТСЧЕТ
 ЗП ПОЛЕ+2-П(М7)
 СЧ ТЖДУ
 ЗП ПОЛЕ+4-П(М7)
*
 СЧ ТЧУПР
 ЗП ПОЛЕ+6-П(М7)
*
 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
*
 СЧ 0
 МОДА ЧТБК-П(М7)
 ПВ (М12)
*
*------ ПОИСК УПР.З-Ч ------*
*
СКВУ СЧ 7(М13)
 И П1777
 ПО СКВУ1        ВСЕ ПРОСМОТРЕЛИ
 УИ М13
 СЛИ М13(М2)
 СЧ ЯЧКУПР(М13)
 И ЕКУПР
 ПО СКВУ         НЕ УПР.З-ЧА
 СЛИА 1(М10)
 ПБ СКВУ
*
*------ ИНФ.О УПР.З-ЧАХ ------*
*
СКВУ1 УИА 7(М12)       ЗП.В ’ПОЛЕ+7’
 СЧИ М10
 МОДА ФОРМС
 ПВ (М17)
 НТЖ П36-П(М7)
 ЗП ПОЛЕ+7-П(М7)  ’,’ --> ’)’
*
ПЕЧОТК УИА ПОЛЕ-П(М4)
 ПБ КОНЦ4-П(М7)  ПЕЧ.С ОТКАЗОМ
*
СКВА2 СЛИА 1(М6)
 ПБ СКВА1
*
СКВА3 СЛИА 1(М4)
 ПБ СКВА1
*
*
*------ СКВ <N З-ЧИ НА БУФ.ВВОДА> ------*
*
СКВN МОДА ЧТБК-П(М7)
 ПВ (М12)
*
 МОДА NВКЛ
 УИА (М12)
 СЧ 6(М13)
 И Е31
 ПО ЕСТЬЛИ-П(М7)
 СЧ 7(М13)
 СДА 64+17
 И П77
 УИ М5           N ПРОГР.КАНАЛА
 СЧ 7(М13)
 СДА 64+45
 НТЖ ГОД
 И П7
 ПЕ ДРБ          З-ЧА НА ДРУГОЙ ЭВМ
*
*------ ГОТОВЛЮСЬ К ВЦПП
*
 УИА (М6)
 СЧ ШКРЗ
        или     ШКОР
        или     к71шк1
        нтж     к71шк1
 И Е48-1(М5)
 ПО ВОЗБУ1-П(М7) ТИХИЙ ОТКАЗ+КУС
*
        мод     ТУСП-1(М5)
        сч      '70'
        сда     64+39
        и       П177
        сда     64-3
        нтж     РЯ3-П(М7)
        пе      ВОЗБУ1-П(М7)
 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
 ПБ НАВЦП-П(М7)
*
*
*------ ФОРМ.СООБЩЕНИЕ: НА ЭВМ <N ЭВМ>
*
ДРБ СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
 СЧ 7(М13)
 СДА 64+45
 ПО ТНЕТ-П(М7)    С: НЕТ
 СДА 64-24
 ИЛИ ТКЭВМ
 ЗП ПОЛЕ+1-П(М7)
 СЧ ТNЭВМ
 ЗП ПОЛЕ-П(М7)
*
 УИА ПОЛЕ-П(М16)
 ПБ ЗВРА-П(М7)
*
*
*------ ПРОСМОТР З-ЧИ НА БУФЕРЕ ВВОДА
*
NВКЛ    ноп
        сч      РЯ3-П(М7)
        зп      ТР3-П(М7)
 СЧИ М15
 СДА 64-33
 РЗБ К1-П(М7)
 ИЛИ ТОЧЕР
 ЗП РЯ3-П(М7)
	сч	6(М13)
	сда	64+41
	и	П7
	по	G11513
	уи	М16
	сч	ТКТГ
	зп	ПОЛЕ-П(М7)
	мода	ТКТГ
	сч	0(М16)
	зп	ПОЛЕ+1-П(М7)
	уиа	ПОЛЕ-П(М16)
	мода	ЗВР2-П(М7)
	пв	0(М17)
*
*------ ПОГОВОРИМ О БОБИНАХ
*
G11513  ноп
 МОДА ИЩУБОБ-П(М7)
 ПВ (М12)
*
 УИА (М1)
 УИА (М5)         ПРИЗН: ЗАНЯТАЯ БОБИНА
 УИА (М6)         ПРИЗН: БОБИНЫ НЕТ
 УИА (М11)
БОБ1 СЛИА 1(М1)
 МОДА (М1)
 СЧ ПОЛЕ-П(М7)
 НТЖ ВСЕЕД
 ПО БОБ5         ВСЕ БОБ. ПРОСМОТРЕНЫ
 НТЖ ВСЕЕД
 ЗП РЯ-П(М7)
 И Е47
 ПЕ БОБ3         БОБ.УСТ-НА
 УИА 1(М11)
 СЧ РЯ-П(М7)
 И Е48
 ПЕ БОБ4         БОБ.ЗАНЯТА
 УИА 1(М6)
 УИА ПОЛЕ-П(М12)
 УИА ДПОЛЕ-П(М10)
БОБ2 СЧ РЯ-П(М7)
 СЛИ М12(М7)
 И П7777
 ПВ ПЕРЕВ(М15)
	зп	ПОЛЕ+14-П(М7)
	сч	РЯ-П(М7)
	и	E14
	по	G11536
	уии	М15(М12)
	мода	СТАТУС-П(М7)
	пв	0(М12)
	уии	М12(М15)
	пе	G11536
	сч	D11740
	пб	G11537
G11536	сч	ПОЛЕ+14-П(М7)
G11537  ноп
 СЛИ М10(М7)
 ИЛИ МАСКБ-П(М7)
 МОДА БОБ2А        БОБ. НЕ УПР-НА
 ПИО (М4)
 СДА 64-8
 ИЛИ ТМИНУС-П(М7)
БОБ2А МОДА (М1)
 ЗП (М12)
 УИА (М4)
 СЧ ПУСТО-П(М7)
 МОДА (М1)
 ЗП (М10)
 ПБ БОБ1
*
БОБ3 СЧ ПУСТО-П(М7)
 МОДА (М1)
 ЗП ПОЛЕ-П(М7)
 МОДА (М1)
 ЗП ДПОЛЕ-П(М7)
 ПБ БОБ1
БОБ4 УИА ДПОЛЕ-П(М12)
 УИА ПОЛЕ-П(М10)
 УИА 1(М5)
 СЧ РЯ-П(М7)
 И Е46
 ПО БОБ2
 УИА 1(М4)        ПРИЗН: БОБ.УПРЯТАНА
 ПБ БОБ2
БОБ5 МОДА БОБ6
 ПИО (М5)
 СЧ ТЗМЛ
 ЗП ДПОЛЕ-П(М7)
 СЧ ВСЕЕД
 МОДА (М1)
 ЗП ДПОЛЕ-П(М7)
 УИА ДПОЛЕ-П(М16)
 МОДА ЗВР2-П(М7)   С: ЗАНЯТ <N БОБ>
 ПВ (М17)
БОБ6 МОДА ВОЗВ3
 ПИО (М6)
 СЧ ТНБ
 ЗП ПОЛЕ-П(М7)
 МОДА ВОЗВ3
 УИА (М17)
ЗВРР2 НОП ---
 УИА ПОЛЕ-П(М16)
 ПБ ЗВР2-П(М7)
*
G11566  ноп
        сч      1(М13)
        и       Е15
        пе      ВОЗВ4
        пб      G11574
ВОЗВ3 СЧ ПРЕДЕЛ
 И Е17
        пе      G11566
 СДА 64-4
 ИЛИ МГРП
 И ЕСТОП
 ПО ВОЗВ4
G11574  ноп 
 УИА БСТОП-П(М16)
 МОДА ЗВР2-П(М7)   С: СТОП
 ПВ (М17)
*
ВОЗВ4 СЧ 6(М13)
 И Е32
 ПЕ УПРЛИ        НЕ УПРЯТ-Е ЛИ ЭТО !
*
 СЧ РЯ3-П(М7)
 ЗП ПОЛЕ-П(М7)
 СЧ РЯ2-П(М7)
 СДА 64+1
 ИЛИ ТОЧЕР+1
 ЗП ПОЛЕ+1-П(М7)
 МОДА ОЧ1
 УИА (М17)
 ПБ ЗВРР2
УПРЛИ СЧ ЯЧКУПР(М13)
 И ЕКУПР
 УИА ТУПР-П(М4)
 ПЕ КОНЦ4-П(М7)
*
*------ ФОРМ.СООБЩ: ЖДУ <ШИФР>
*
ПР23Ж СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
 МОДА ЧТЕН1-П(М7)
 ПВ (М12)
 УИИ М10(М1)
 МОД ТР5-П(М7)
 УИА (М11)
 СЛИ М11(М10)
 СЧ ’200’(М11)
 СДА 64-24
 РЗБ ПРОБ6
 ЗП ПОЛЕ+2-П(М7)
 СЧ ’200’(М11)
 РЗБ ПРОБ6
 ЗП ПОЛЕ+1-П(М7)
 СЧ ТЖДУ+1
* НТЖ =М40В’144’      ’,’ --> ’7 ЛОГ.КАН’
 ЗП ПОЛЕ-П(М7)
 СЧ ВСЕЕД
 ЗП ПОЛЕ+3-П(М7)
 ПБ ПЕЧОТК       С: ЖДУ <ШИФР>
*
ОЧ1 СЧ (М13)
 И Е40
 ПО СКВАРХ
*
СКВАР0 УИА АРХ-П(М4)
 ПБ КОНЦ4-П(М7)
*
*------ ДИАГНОСТИКА АРХИВА
*
СКВАРХ СЛИ М5(М6)
 СЧ 6(М13)
 И Е25
 ПЕ НКАНАЛ        ПРОВЕРКА НА ЗКАН
 МОДА КАНАЛ       НЕТ ЗАН БОБ
 ПИО (М5)
 ПБ ВОЗБУФ-П(М7)    ЕСТЬ НЕ УСТ БОБ
*
НКАНАЛ  ноп
 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)    ОТКАЗ ОТ БК
*
 СЧ КУС536
 МОДА ЧТЕН-П(М7)
 ПВ (М12)
 УИИ М13(М1)
 МОД ТР3-П(М7)
 СЛИА (М13)        БАЗА+<СКВ*3>
 СЧ 6(М13)
 И Е48П25
 ПЕ СКВАР2
 СЧ 6(М13)
 И Е24П13
 ПО СКВАР0
СКВАР1 УИА ТОБЛЗН-ПС+768(М4)
 ПБ КОНЦ4-П(М7)  С: ОБЛ.ЗАНЯТА
*
СКВАР2 УИА ТОБЛОТ-ПС+768(М16)
 МОДА ЗВР2-П(М7)
 ПВ (М17)
*
 СЧ 6(М13)
 И Е24П13
 ПО ВОЗБУФ-П(М7) С: ↑
 ПБ СКВАР1
*
*
*
КАНАЛ СЧ ТЗКАН
 ЗП ПОЛЕ-П(М7)
 СЧ РЯ2-П(М7)
 СДА 64+41
 УИ М16
* СЧ МГРП
* И Е16
* ПО РЕЖСЧТ
* СЛИА ’10’(М16)
*РЕЖСЧТ НОП ,
        сч      МПЗС(М16)
 ПО ОТСКАН
        сч      ШКРЗ
        или     ШКОР
        нтж     СКБЭ+1
        и       МПЗ(М16)
 ПО ПЕЧОТК        ЗАНЯТЫ КАНАЛЫ КЛАССА
БЮДЖЕТ СЧ 6(М13)
 И Е48
 ПО ВСЕНОР
 СЧ ТНБЮДЖ
 ЗП ПОЛЕ-П(М7)
 СЧ 5(М13)       НОМЕР ЗАМОРОЖ.З-ЧИ
 СДА 64+10
 И П77
 УИА ТНБЮДЖ-ПСКВ(М4) С:НБЮД
        по      КОНЦ4-П(М7)
*
ВСЕНОР СЧ 2(М13)
 СБР КФБР
 СДА 64+45
 УИ М15
 МОДА (М15)
 СЧ ТНРЕС+1
 ЗП ТНРЕС
 УИА ТНРЕС1-ПС+768(М4)
 ПБ КОНЦ4-П(М7)  С: РЕС.<ВИД РЕСУРСА>
*
ОТСКАН УИА ТНКАН-ПС+768(М4)
 ПБ КОНЦ4-П(М7)  С: НЕ ЗАД.КАНАЛ
*
        ago     .bud
НАБЮД МОДА ЗВР2-П(М7)
 ПВ (М17)
*
 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
*
*    == ЗП. В ТР5 N ОТДЕЛА ==
*       ДЛЯ ДИР-ВЫ "БДЖ"
*
 МОДА ЧТЕН1-П(М7)  ЧТ.КАТ.ШИФРОВ
 ПВ (М12)
*    == ВЫДЕЛИМ ИЗ ШИФРА 2 ЦИФРЫ ==
*              ОТДЕЛА
 УИА (М16)
 СЧ ТР5-П(М7)
 И Е8
 ПО НЕ2К
 УИА ’200’(М16)
НЕ2К МОД ТР5-П(М7)
 СЛИА (М16)
 СЛИ М16(М1)
 СЧ (М16)
 СДА 64+40
 ЗП ТР5-П(М7)    N ОТДЕЛА
*
 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
*
*    == N ПРИКАЗА "БДЖ" ==
 УИА ’52’(М16)
 СЧИ М16
 ПБ ВХОД1-П(М7)  НА "БДЖ"
.bud             anop 
*
*
*-----* ФОРМИР.СООБЩ ДЛЯ СКВ *------*
*          БЕЗ  ПАРАМЕТРА
*
ФОРМС ПВ ПЕРЕВ(М15)
 СДА 64-24
 ИЛИ НННППЗ
 МОДА (М12)
 ЗП ПОЛЕ-П(М7)
 СЛИА 2(М12)
 ПБ (М17)
*
*
*
*       Д А Н Н Ы Е
*       -----------
*
РЯСКВ ПАМ 1
*
*
ВСЕ9 КОНД Х’999999999999’
КФБР КОНД М46В’1’М30В’1’М14В’1’
КУС536 КОНД М24В’436’М17В’1’
НННППЗ КОНД П’00000,’М16В’143’М8В’143’
*
ТНРЕС1 КОНД М8П’7РЕС.’В’143’
ТНРЕС ПАМ 1
 КОНД В’-1’
 КОНД М16П’ОЗУ↑’
 КОНД М24П’МБ↑’
 КОНД М8П’СЕГМ↑’
*
	конд	п'АРХ↑00'
ТЗМЛ КОНД П’7ЗАНЯТ’
ТНБ КОНД П’7НЕТ Б’
ТОЧЕР КОНД П’7П000 ’
 КОНД П’0 КЛ↑0’
ТNЭВМ КОНД П’7НА ЭВ’
ТКЭВМ КОНД П’М-0↑  ’
ТЗКАН КОНД П’7ЗКАН↑’
ТНБЮДЖ КОНД П’7НБЮД↑’
ТНКАН КОНД П’7НЕ ЗА’
 КОНД П’Д.КАН↑’
ТТЕЛЕ КОНД П’7ТЕЛЕ:’
ТСЧЕТ КОНД П’ СЧЕТ:’
ТЖДУ КОНД М40В’143’П’ ЖДУ:’
	конд	п'7 ЖДУ:'
ТКТГ	конд	п'7КТГ: '
	конд	п'ЭКС↑  '
	конд	п'ЛИМ↑  '
	конд	п'-ЛИМ↑ '
	конд	п'ДЕЖ↑  '
	конд	п'-ДЕЖ↑ '
	конд	п'-ДЕЖ↑ '
	конд	п'-ДЕЖ↑ '
ТЧУПР КОНД П’ УПР:0’В’143’
ТОБЛЗН КОНД П’7ОБЛ.З’
 КОНД П’АНЯТА↑’
ТОБЛОТ КОНД П’7ОБЛ.О’
 КОНД П’ТКАЧ.↑’
D11740	конд	п'009999'
*
*       ЭКВИВ,ВХОД,ВНЕШ
*       ---------------
*
*
 ЭКВИВ (ПС,ПРИСКВ),(ПСКВ,ПРИСКВ-768)
*
ПРИКАЗ ВНЕШ ЧТБК,ЗВР2,ЗВРА,ВОЗБУФ,ВОЗБУ1,ЧТЕН,П36
ПРИКАЗ ВНЕШ ТР6,ТР5,ТР4,КУС,НАВЦП,ТНЕТ,ТМИНУС,ПУСТО,К1
ПРИКАЗ ВНЕШ ПОЛЕ,ДПОЛЕ,БСТОП,КОНЦ4,КОНЦ4А,ИЩУБОБ,ЕСТЬЛИ
ПРИКАЗ ВНЕШ (П,ПРИКАЗ),РЯ,РЯ1,РЯ2,РЯ3,МАСКБ,ЧТЕН1,ТР3
ПРИКАЗ ВНЕШ ТУПР,АРХ,ВХОД1,СТАТУС
*
ДИСП70 ВНЕШ П3,П7,П77,П177,П1777,П7777,П377
ДИСП70 ВНЕШ ГОД,ВСЕЕД,ЕСТОП,ЯЧКУПР,ЕКУПР,П37,Е48П25,Е24П1
ДИСП70 ВНЕШ ТБУФ,КУСБК,КУС545,ПРЕДЕЛ,ПЕРЕВ,МГРП,ТУСП
*
ДИСП70 ВНЕШ СКБЭ,Е24П13,МПЗ
*
МОТТ ВНЕШ ПРОБ6
КАЧКА ВНЕШ ШКРЗ
КИТ ВНЕШ ШКОР,МПЗС
ЗОН676 ВНЕШ к71шк1
*КОНЕЦ ЧАСТИ