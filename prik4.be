ПРИК4 СТАРТ ’20000’
 УПОТР ПРИК4(М1)
 М
 Б
 Е
*
	ГБЛВ ∧К71,∧БЭСМ
*∧БЭСМ УСТВ 0
∧К71 УСТВ 1
*
*      Д Е Ш И Ф Р А Т О Р
*
 СЛИА -4(М2)
 МОДА СМЕ
 ПИО (М2)         СМЕ
*
 СЛИА -7(М2)
 МОДА ВЫД
 ПИО (М2)         ВЫД
*
 СЛИА -1(М2)
 МОДА ПОВ
 ПИО (М2)         ПОВ
*
 СЛИА -2(М2)
 МОДА ВРЕ
 ПИО (М2)         ВРЕ
*
 СЛИА -2(М2)
 МОДА ПРО
 ПИО (М2)         ПРО
*
 СЛИА -9(М2)
 МОДА КЛК
 ПИО (М2)       КЛК
*
 СЛИА -1(М2)
 МОДА СБО
 ПИО (М2)         СБО
*
*
*
*
*
*
*      Д И Р Е К Т И В А  N 27
*      -----------------------
*            ДАТА
*
*         ДАТА <ЧИСЛО><МЕСЯЦ>
*         1-8РР ТР5 = <МЕСЯЦ> В 10 ВИДЕ
*         9-16Р ТР5 = <ЧИСЛО> В 10 ВИДЕ
*
*
ДАТА СЧ ТР5-П(М7)
 ПО ДАТ1         ВЫДАТЬ ДАТУ
 МОДА СТАТУС
 ПВ (М17)
 СЧ ТР5-П(М7)
 СБР =М8В’77’В’37’
 СДА 64+37
 ЗП ПР4РЯ        ГОТ.ПОД ЯЧ."ГОД":1-5РР-<МЕС>,6-11Р-<ЧИС>
 И П37
 ПО ОШДАТ        МЕСЯЦ=0
 ВЧОБ П22
 ПЕ ОШДАТ        МЕСЯЦ > 12
 СЧ ПР4РЯ
 СДА 64+5
 ПО ОШДАТ        ЧИСЛО=0
 ВЧОБ П61
 ПЕ ОШДАТ        ЧИСЛО > 31
 СЧ ПР4РЯ
 СДА 64-24
 ЗП ПР4РЯ        ПОД.ЯЧ."ГОД"
 УИА 1027
 СЧ ГОД
 ИЛИ Е35П25
 НТЖ Е35П25
 ИЛИ ПР4РЯ
 ЗП ГОД          25-29РР - <МЕСЯЦ>; 30-35РР - <ЧИСЛО>.
ДАТ1 СЧ ГОД
 ПБ ПРВР         НА ПЕЧ. СООБЩ.
*
*
ОШДАТ СЧ ТОШД
 ЗП ПОЛЕ-П(М7)
ВЫДАЧА УИА ПОЛЕ-П(М16)
 ПБ ЗВРА-П(М7)   С:ОШДАТ↑
*
*
*
*
*     ДИР-ВА   N 31
*
*              КЛК
*     ( ИМИТАЦИЯ СБОЯ ГРАФОПОСТРОИТЕЛЯ)
*
КЛК СЧ РЯПСЗ
 И Е5
 ПО ТВЫП-П(М7)
 СЧ Е29
 ИЛИ ШИФРАЦ
 ЗП ШИФРАЦ
 ПБ ТВЫП-П(М7)
*
*
*
*      Д И Р Е К Т И В А  N 16
*      -----------------------
*       ВРЕ  <ВРЕМЯ>
*            1-25 РР ТР5 -->  <ВРЕМЯ>
*
*
ВРЕ УИА ВЫХП-П4(М2)
 СЧ ТР5-П(М7)
 ПО ВРЕ50    ВЫВОД
* УИА ТНВР-П(М16)
 МОДА СТАТУС
 ПВ (М17)
 СЧ ТР5-П(М7)
 СДА 64-8
 ЗП РЯ2-П(М7)
 УИА -5(М10)
        сч      предел
        и       е38
        по      G20051
	сч	ТР5-П(М7)
	и	Е1П25
	по	G20161
	сч	ТР5-П(М7)
	сда	64-35
G20050	рзб	'36'(7)
	зп	ря2-п(М7)
G20051	сда	64+8
	и	П17
	уиа	'567'(М16)
	вчоб	П11
	пе	звра-п(М7)
 СЧ РЯ2-П(М7)
 СДА 64+12
 И П17
 ВЧОБ П5
 ПЕ ЗВРА-П(М7)
 СЧ РЯ2-П(М7)
 СДА 64+16
 И П17
 ВЧОБ П11
 ПЕ ЗВРА-П(М7)
 СЧ РЯ2-П(М7)
 ВЧОБ П2359
 ПЕ ЗВРА-П(М7)
ВРЕ3 СЧ РЯ2-П(М7)
 И П17
 УИ М16
 СЧ РЯ2-П(М7)
 СДА 64+4
 ЗП РЯ2-П(М7)
ВРЕ4 СЧ РЯ1-П(М7)
 МОДА ВРЕ5
 ПИО (М16)
 МОДА ВРЕМПР-П(М7)
 СЛЦ 5(М10)
 ЗП РЯ1-П(М7)
 СЛИА -1(М16)
 ПБ ВРЕ4
ВРЕ5 МОДА ВРЕ3
 ЦИКЛ (М10)
 ЗП ВРЕМЯ
 АIF (NОТ ∧Х).О5
ТЕРМ ВНЕШ КВРЕ,КВРЕ1,НВРЕ
ДИСП70 ВНЕШ Е24П1,Е48П25
 СЧ КВРЕ
 НТЖ Е24П1
 ПО ВРЕ50
 СЧ НВРЕ
 И Е24П1
 ВЧ КВРЕ
 ПО ВРЕ50    ПЕРЕХ СУТКИ
 СЧ КВРЕ
 И Е48П25
 ПЕ ВРЕ50   ЕСТЬ ЗАК
 СЧ НВРЕ
 И Е24П1
 ВЧОБ ВРЕМЯ
 ПО ВРЕ50     РАСП НЕ ИЗМ
 СЧ Е1
 ЗП КВРЕ
 ЗП КВРЕ1
.О5 АNОР
ВРЕ50 СЛИ М2(М1)
*
*
*
ПРВР УИА 3
 УИА ПОЛЕ+3-П(М16)
 СЧ ТДАТ+1
 ЗП ПОЛЕ+3-П(М7) ДАТА:
 УИА (М15)
 СЧ МГРП
 СДА 64+21
 И П7
 ПЕ ПРВР1
 СЛИА 1(М15)
 СЧ ТСМЕ
 ЗП ПОЛЕ+1-П(М7)
ПРВР1 СЧ ГОД
 СДА 64+24
 И П3777
 ПЕ ПРВР3
 СЛИА 1(М15)
 СЧ ТДАТ
 МОДА ПОЛЕ-П(М7)
 ЗП (М15)
ПРВР2 СЧ ТДАЙ-П(М7)
 ЗП ПОЛЕ-П(М7)
 МОДА ПОЛЕ-П(М7)
 СЧ (М15)
 ИЛИ П377
 МОДА ПОЛЕ-П(М7)
 ЗП (М15)
 ПБ ВЫДАЧА       С: ДАЙ [СМЕ] И ИЛИ [ДАТ]
ПРВР3 МОДА ПРВР2
 ПИНО (М15)
 СДА 64-37
 РЗБ ДАТ
 ИЛИ К3-П(М7)
 ЗП ПОЛЕ+4-П(М7) <ЧИСЛО>.<МЕСЯЦ>
 СЧ ГОД
 СДА 64+20
 И П17
 СДА 64-8
 ИЛИ ТГОД
 ЗП ПОЛЕ+5-П(М7) 8<МЛ.ЦИФРА ГОДА>
 СЧ ТР6-П(М7)
 НТЖ П27
 ПО ЗВРА-П(М7)   С: ДАТА:<ЧИСЛО>.<МЕСЯЦ> <ГОД>
 СЧ ВРЕМЯ
 ПБ ВР1А-П(М7)
*
*
*
ВЫХП УИА 1027
 СЧ ФЛАТЕР
 ИЛИ Е48
 ЗП ФЛАТЕР
 СЧ ШКИВ
 ИЛИ ЕПУСК
 ЗП ШКИВ
 УИА 3
МОТТ ВНЕШ ФЛАТЕР
*
 МОДА ВР
 УИА (М17)
ДАЙВРЕ СЧ ТВРЕМЯ
 ЗП ПОЛЕ+6-П(М7) ВРЕМЯ:
 СЧ ТВР1-П(М7)
 ЗП ПОЛЕ+7-П(М7) <ЧЧ.ММ.>
 СЧ ТВР1+1-П(М7)
 ЗП ПОЛЕ+8-П(М7) <СС>↑
 СЧ ПОЛЕ+5-П(М7)
 ИЛИ П17
 НТЖ Е5
 ЗП ПОЛЕ+5-П(М7) ВМЕСТО "↑" --> " "
 ПБ (М17)
ВР УИА ПОЛЕ+3-П(М16)
 МОДА ЗВР2-П(М7)
 ПВ (М17)        С: ДАТА:<ЧИСЛО>.<МЕСЯЦ> ВРЕМЯ:<ЧЧ.ММ.СС>
ВЫХ УИА 1027
 СЧ ПРЕДЕЛ
 И Е46
 ПО ВЫХ1           НЕТ СВЯЗИ
 СЧ Е13
 ПВ УСТПРП(М15)
ВЫХ1 НОП
* СЧ РОЙ
* ИЛИ Е45
* ЗП РОЙ
 СЧ шрномб
 ИЛИ E48
 ЗП ШРНОМБ
 СЧ ШКИВ
 ИЛИ ЕНОМБ    НОМБОБ-НЕРСТ
 ЗП ШКИВ
 СЧ ЗАНЯТА
 И Е7
 ПЕ ПР1А-П(М7)       НЕ 1-АЯ ДИР-ВА 16
* СЧ МШК
	сч	куслсв
	по	G20154
	слц	НОММЛ1
	пв	ФИЗОБМ(М16)
	сч	
	зп	куслсв
	рег	'101'
*
	АПУ	(&К71).ДА
	АПБ	.ОБЩ
*
.ДА АНОП
	пв	прк4к7(М17) !К-71
.ОБЩ АНОП
G20154	сч	мшк
 ИЛИ ШКСВН
 ЗП ШКСВН
 пам 0
 СЧ Е7
 ИЛИ ЗАНЯТА
 ЗП ЗАНЯТА
* СЧ МГРП
* ИЛИ Е16             ОТЛАДОЧНЫЙ РЕЖИМ
* ЗП МГРП
 УИА 3
 ПБ ПР1А-П(М7)   ОТКАЗ ОТ ПРИКАЗА
G20161	увв	'4410'
	и	E12
	по	G20161
	увв	'4141'
	сда	64-24
	пб	G20050 
*
*
*
*      Д И Р Е К Т И В А  N 4
*      ----------------------
*            СМЕ
*
СМЕ СЧ МГРП
 И Е24П22
 СДА 64+5
 ИЛИ КСМН
 ЗП ПОЛЕ-П(М7)  2СМ<N СМЕНЫ>П:
 СЧ 3
 И Е1
 ПО СМЕ1
* на СВС была установка номера машины 
* СЧ ГОД
* И П7
* СДА 64-8
* ИЛИ АТФ+2
* ЗП АТФ+2
* СЧ ГОД
* И П7
* СДА 64-16
* ИЛИ АТФ+4
* ЗП АТФ+4
 МОДА АТФ
 УИА (М16)
 СЧИ М16
 Э50 ’7701’
СМЕ1 СЧ ИПЗЖТ+’41’
 СЛЦ ПОТЕРИ
 СДА 64-1
 СДА 64+24        ВРЕМЯ РАБ.ЖДУЩЕГО ТЕСТА
 МОДА ВР1А-П(М7)
 ПВ (М2)
 СЧ ТВР1-П(М7)
 ЗП ПОЛЕ+1-П(М7) ПОТЕРИ:<ЧЧ.ММ.>
 СЧ ГОД
 И П7
 СДА 64-8
 ИЛИ НМАШ
 ЗП ПОЛЕ+2-П(М7) ЭВМ-<NЭВМ>
 МОДА ПРВР
 ПВ (М2)
 МОДА ДАЙВРЕ
 ПВ (М17)
 СЧ П17
 СДА 64-40
 ИЛИ ПОЛЕ+3-П(М7)
 ЗП ПОЛЕ+3-П(М7) ЗАБИЛИ ЛОГ.КАНАЛ
 СЧ ПОЛЕ+8-П(М7)
 И КОНСТ2-П(М7)
 ИЛИ КОНСТ1-П(М7)
 ЗП ПОЛЕ+8-П(М7) ПОГАСИЛИ "↑"
 СЧ 0
 ЗП ТВР1-П(М7)
 СЧ Е1
 ЗП ПРИЗН4-П(М7)
 СЧ Т
 СЛЦ ВРЭТ
 МОДА ВР1А-П(М7)
 ПВ (М2)
 ЗП ПОЛЕ+9-П(М7)
 СЧ 0
 ЗП ПРИЗН4-П(М7)
 СЧ ТВР1+1-П(М7)
 ЗП ПОЛЕ+10-П(М7)
 УИА ПОЛЕ-П(М4)
 ПБ КОНЦ4А-П(М7)
*
*
*
АТФ НОП ,
 КОНД П’ШИФР 4’
 КОНД П’19900З’
* на СВС шифр 419911111110 и раздел МАШ 
 КОНД П’99,E  ’М24П’F’
 КОНД П’ЕКОНЕЦ’
 КОНД М39В’232’
*
*
*
*      Д И Р Е К Т И В А  N 13
*      -----------------------
*
*         ВЫД <N ПРОГР.КАНАЛА>
*
*            ТР5 = <N ПРОГР.КАНАЛА>
*
ВЫД МОДА NПРКАН-П(М7)
 ПВ (М17)
 СЧ ШККТ
 И Е48-1(М5)
 ПЕ ВЫДНЕТ
 СЧ УКАЗД(М14)
 И ЕПЕР
 ПЕ ВЫДНЕТ
 СЛИА ПЗ(М5)
 АIF (∧УЧЕТ ЕQ 0).С2
 СЧ КУСПГС-П(М7)
 ПВ ВЫЗНП(М16)   ВЫЗОВ ПГС
ПРИКАЗ ВНЕШ КУСПГС
 АGО .Е2
.С2 АNОР
 СЧИ М5
 ЗП 25(М7)       НОМ.ЗАДАЧИ
 Э64 0
.Е2 АNОР
 ПБ ТВЫП-П(М7)   С:ЕСТЬ
ВЫДНЕТ УИА ТНВ-П4(М16)
 ПБ КОНВЫД-П(М7)
*ТНВ ТЕКСТ П’0ВЫВОД ЗАПРЕЩЕН:К.Т.↑’
ТНВ ТЕКСТ П’0ВЫДАЧА ЗАПРЕЩЕНА↑’
*
*      Д И Р Е К Т И В А  N 14
*      -----------------------
*
*         ПОВ [<ИДЕНТ.УСТ-ВА> <N УСТ-ВА>]
*           ТР=1(А0);ТР5=2(ПИ);ТР5=4(А1);ТР5=10(ПЛ)
*
ПОВ СЧ ТР4-П(М7)
 И Е48
 ПО ПОВ0         ДИР-ВА С ТР
*
 СЧ ТР5-П(М7)
 ПО ПОВ4         ПОВ ДЛЯ ВСЕХ УСТ-В
 МОДА ПОИСК4
 ПВ (М12)
*
ПОВ0 СЧ ТР5-П(М7)
 УИА -10(М2)
 И П7777
 СДА 64-24
 И ШИФРАЦ
 ПО ПОВ3
 ЗП ПР4РЯ
ПОВ1 УИА 1027
 СЧ ПР4РЯ
 И Е36+11(М2)
 ПО ПОВ2
 НТЖ ШИФРАЦ
 ЗП ШИФРАЦ
 СЧ Е48+10(М2)
 ИЛИ ШКПЛАН
 ЗП ШКПЛАН
ПОВ2 УИА 3
 МОДА ПОВ1
 ЦИКЛ (М2)
 ПБ ТВЫП-П(М7)  С:ЕСТЬ
ПОВ3 УИА ТНСБ-П4(М16)
 ПБ КОНВЫД-П(М7) С: НЕТ СБОЯ
*
ПОВ4 СЧ П77
 ЗП ТР5-П(М7)
 ПБ ПОВ0
*
*      Д И Р Е К Т И В А  N 20
*      -----------------------
*
*         ПРО <ИДЕНТ.УСТ-ВА>[<N УСТ-ВА>]
*
*         ТР5=1(А0);ТР5=2(ПИ);ТР5=4(А1);ТР5=10(ПЛ);ТР5=40(ГП)
*
ПРО СЧ ТР4-П(М7)
 И Е48
 ПО ПРО1         ДИР-ВА С ТР
*
 МОДА ПОИСК4
 ПВ (М12)
*
ПРО1 СЧ ТР5-П(М7)
 И П7777
 ПО ПНЕТ-П(М7)
 НЕД 0
 УИ М16
 УИА 1027
 СЧ ШИФРАЦ
 И Е48-25(М16)
 ПО ПУП
 СЧ Е48-13(М16)
 ИЛИ ШИФРАЦ
 ЗП ШИФРАЦ
ПУП УИА 3
 УИА ЕСТЬ-П(М16)  С:ЕСТЬ
 МОДА ЗВР2-П(М7)
 ПВ (М17)
 ПБ ПОВ0
*
*
*      Д И Р Е К Т И В А  N 32
*      -----------------------
*
*         СБОЙ [<ИДЕНТ.УСТ-ВА><N УСТ-ВА>]
*
*         ТР5=1(А0);ТР5=2(ПИ);ТР5=4(А1);ТР5=10(ПЛ)
*
СБО СЧ ТР4-П(М7)
 И Е48
 ПО СБО1        ДИР-ВА С ТР
*
 СЧ ТР5-П(М7)
 ПО СБО2         СБО ДЛЯ ВСЕХ УС-В
 МОДА ПОИСК4
 ПВ (М12)
*
СБО1 СЧ ТР5-П(М7)
 АIF (∧GL ЕQ 0).О4
 И П77
 АGО .О3
.О4 АNОР
 И П37
.О3 АNОР
 СДА 64-24
 И ШИФРАЦ
 ИЛИ ШКПЛАН
 ЗП ШКПЛАН
 СЧ ТР5-П(М7)
 АIF (∧GL ЕQ 0).О2
 И П77
 АGО .О1
.О2 АNОР
 И П37
.О1 АNОР
ПР32А ИЛИ МГРП
 ПВ ТВ67Б(М15)
 ПБ ТВЫП-П(М7)
*
СБО2 СЧ П77
 ЗП ТР5-П(М7)
 ПБ СБО1
*
*
*------ СТАТУС -------*
*
*  "ЗА ВАМИ ГЛАЗ, СУДАРЬ!". ШЕКСПИР
*
*
СТАТУС СЧ НОМУС1
 ПО (М17)
 СЧ ШКОПТТ
 МОД НОМУС1
 И Е48-1
 ПО ПНЕТ-П(М7)
 ПБ (М17)
*
*
*------ ПОИСК 4 ------*
*
ПОИСК4 МОДА ДЕШ4+LДЕШ4-1
 УИА (М5)
 УИА -LДЕШ4+1(М15)
 МОДА ПОИСК-П(М7)
 ПВ (М17)
 ПБ (М12)
*
*
ДЕШ4 КОНК В’1’
 КОНК П’А0 ’       А0
*
 КОНК М1В’1’
 КОНК П’ПИ ’       ПИ
*
 КОНК М2В’1’
 КОНК П’А1 ’       А1
*
 КОНК М3В’1’
 КОНК П’ПЛ ’       ПЛ
*
 КОНК М4В’1’
 КОНК П’КЛК’       КЛК
*
 КОНК М5В’1’
 КОНК П’ГП ’       ГП
*
LДЕШ4 ЭКВ *-ДЕШ4
*
*
*      КОНД, ВНЕШ, ВХОД, ЭКВИВ
*      -----------------------
*
ТДАТ КОНД П’ДАТ00 ’М8В’143’М16В’143’
 КОНД П’2ДАТА:’
ТВРЕМЯ КОНД П’ВРЕМЯ:’
ТОШД КОНД П’7ОШДАТ’
ТСМЕ КОНД П’СМЕ00 ’М8В’143’М16В’143’
ТНСБ КОНД П’7НЕТ С’
 КОНД П’БОЯ↑  ’
ДАТ КОНД В’60740000207400’
МШК КОНД В’-1’М24В’3’М22В’1’М28В’3’
П14 КОНД В’14’
П2359 КОНД В’10654400’
Е24П22 КОНД М21В’7’
П22 КОНД В’22’
П61 КОНД В’61’
КСМН КОНД П’2СМ0П:’ на СВС 5-й опер. канал
НМАШ КОНД П’ЭВМ-0 ’
ТГОД КОНД М40В’143’М32В’143’М24В’143’П’90↑’ цифра десятков года
*
*
*
ПР4РЯ ПАМ 1
*
*
 ЭКВИВ (П4,ПРИК4)
ДИСП70 ВНЕШ ПРЕДЕЛ,ВРЕМЯ,ГОД,МГРП,УСТПРП,ЗАНЯТА
ДИСП70 ВНЕШ НОММЛ1,ШКСВН,ИПЗЖТ,ПОТЕРИ
ДИСП70 ВНЕШ (Т,ЖИЗОС),(ВРЭТ,Т),ПЗ
ДИСП70 ВНЕШ П17,П5,П3777,П7,(Е35П25,Е36П25),П37
ДИСП70 ВНЕШ П377,ГРУП,КУСЛСВ,ВСЕЕД
ДИСП70 ВНЕШ ТБУФ,ТЗНМЛ,НАПРМГ,ПЕРЕВ,ШКИВ
ДИСП70 ВНЕШ Е44П42,П1777,П7777,Е46П48,Е15П11
ДИСП70 ВНЕШ ШИФРАЦ,ШКПЛАН,ТВ67Б,П77
ДИСП70 ВНЕШ ШРНОМБ,П27,РЯПСЗ
ДИСП70 ВНЕШ ШККТ
ВЗУ ВНЕШ ФИЗОБМ
КИТ ВНЕШ Е1П25
епер экв е40
ПРИКАЗ ВНЕШ (П,ПРИКАЗ),МСК,РЯ,РЯ1,РЯ2,РЯ3
ПРИКАЗ ВНЕШ ТНВР,ЗВРА,ВРЕМПР,К3,ЗВР,ВР1А,КОПР
ПРИКАЗ ВНЕШ ЗВР2,ПР1А,КОНСТ1,КОНСТ2
ПРИКАЗ ВНЕШ  ПОЛЕ,КОНЦ4,КОНЦ4А,ТВЫП,ПНЕТ
ПРИКАЗ ВНЕШ КОНВЫД,ЕСТЬ,NПРКАН
ПРИКАЗ ВНЕШ ТВР,ТВР1,ТДАЙ,ПРОБ1
ПРИКАЗ ВНЕШ КУС,РЯ4
ПРИКАЗ ВНЕШ ПРИЗН4,ТР5,ТР6,ТР4
ПРИКАЗ ВНЕШ ПОИСК
МОТТ ВНЕШ НОМУС1,ШКОПТТ
ДИСКИ ВНЕШ П11
СОСТАВ ВНЕШ ЕПУСК,ЕНОМБ,УКАЗД
*
	АПУ	(&К71).ДА1
	АПБ	.ОБЩ1
*
.ДА1 АНОП
******************* ВНЕШ ДЛЯ РАБОТЫ К-71 ******************
ХЛАМ2 ВНЕШ прк4к7
***********************************************************
.ОБЩ1 АНОП
*
*
*
