ПРИК2 СТАРТ ’20000’
 УПОТР ПРИК2(М1)
 Б
 Е
 М
*
*      Д Е Ш И Ф Р А Т О Р      *
*
 СЛИА -1(М2)
 МОДА ПР1
 ПИО (М2)        ВВД
*
 СЛИА -’10’(М2)
 МОДА ПР11
 ПИО (М2)        СБВ
*
 СЛИА -’10’(М2)
 МОДА ПР21
 ПИО (М2)        ВЫБ
*
*       Д И Р Е К Т И В А    25
*
 УИА 9(М3)
	мода	ТМИН+1
	уиа	0(М4)
	сч	
	уиа	РМЛ(М16)
РЕЖ	уиа	-48(М2)
 ЗП (М4)
РЕЖ1 СЧ КМИН
 СЛИА 16(М2)
 И Е10(М3)
 ПО РЕЖ3
 СЧИ М3
 ВЧОБ П11
РЕЖ2 СДА 64(М2)
 ИЛИ ТNКЛАС
* МОДА ТМИН
 ИЛИ (М4)
* МОДА ТМИН
 ЗП (М4)
 СЛИА -1(М3)
 МОДА РЕЖ4
 ПИО (М3)
 МОДА РЕЖ1
 ПИНО (М2)
 СЛИА 1(М4)
        сч
 ПБ РЕЖ
РЕЖ3 СЧ ПУСТО1
 ПБ РЕЖ2
РЕЖ4 МОДА ВЫДАЧА-П(М7)
 ПВ (М17)
 УИА ТОТЛ-П2(М16)
 СЧ МГРП
 И Е16
 ПО РЕЖ5
 МОДА ВЫДАЧА-П(М7)
 ПВ (М17)   ОТЛ
РЕЖ5 СЧ МГРП
 И Е15
 ПО РЕЖ6
 УИА ТСТК-П2(М16)
 МОДА ВЫДАЧА-П(М7)
 ПВ (М17)   С:СТК
РЕЖ6 СЧ ПРЕДЕЛ
 И Е20
 ПО РЕЖ6АА
 УИА ТАРХ-П2(М16)
 МОДА ВЫДАЧА-П(М7)
 ПВ (М17)
РЕЖ6АА СЧ ПРЕДЕЛ
 И Е19
 ПО РЕЖ6АВ
 УИА ТКПИ-П2(М16) С: ПИ БЕЗ КОНТРОЛЯ
 МОДА ВЫДАЧА-П(М7)
 ПВ (М17)
РЕЖ6АВ СЧ МГРП
 И ЕСТОП
 МОДА ВРСТОП-П(М7)
 УИА (М13)
 ПО РЕЖ6СП
 МОДА ЛNТЕР-П(М7)
 УИА (М14)
 СЧ БСТОП-П(М7)
 ИЛИ П17
 МОДА ЗППОЛЕ
 ПВ (М12)
РЕЖ6СП СЧ ПРЕДЕЛ
 И Е17
 МОДА ВРСПЕЦ-П(М7)
 УИА (М13)
 ПО РЕЖ7
 МОДА ЛNТЕР1-П(М7)
 УИА (М14)
 СЧ СПЕЦСТ-П(М7)
 МОДА ЗППОЛЕ
 ПВ (М12)
РЕЖ7 СЧ ЗАНЯТА
 И Е43
 ПО ПР1А-П(М7)
 УИА ТДЗАК-П2(М16)
 ПБ КОНВЫД-П(М7)
*
*
*------- ЗАПИСЬ В ПОЛЕ -------*
*
*       1) ЗП. ВРЕМЕНИ В АДРЕС ПО М13
*        2) ЗП.ЛОГ.НОМЕРА ТЕРМ ПО М14
*
ЗППОЛЕ ЗП ПОЛЕ-П(М7)
 СЧ (М14)
 УИ М10
 МОДА NТЕР-П(М7)
 ПВ (М17)
 РЗБ =П’037700’
 ИЛИ =П’Т000 0’
 ЗП ПОЛЕ+1-П(М7)
 СЧ ЖИЗОС
 СЛЦ Т
 ВЧ (М13)
 МОДА ВР1А-П(М7)
 ПВ (М2)
 ЗП ПОЛЕ+2-П(М7)
 СЧ ТВР1+1-П(М7)
 ЗП ПОЛЕ+3-П(М7)
 УИА ПОЛЕ-П(М16)
 МОДА ЗВР2-П(М7)
 ПВ (М17)
 ПБ (М12)
*
*-------  Е N D  -------*
*
*
*
*      Д И Р Е К Т И В А  N 1
*      ----------------------
*
*           ВВД
*
ПР1	ноп
 СЧ ЗАНЯТА
 И Е4
 ПЕ ПНЕТ-П(М7)
	уиа	2(М3)
	сч	МГРП
	и	E8
	пе	G20075
	увв	'4102'
	и	E24
	по	G20105
G20075	сч	П11
	зп	П12+18(М7)
	сч	МГРП
	и	E9
	пе	G20101
	увв	'4102'
	и	E20
G20101	слиа	1(М3)
	по	G20105
	сч	П17
	нтж	E2
	и	ШКЗЗП+1(М7)
	по	ПР1М
	уи	М3
G20105	счи	М3
	уиа	'2003'
	или	МД5+2
	зп	МД5+2
ПР1Н СЧ Е29
 ИЛИ ШКИВ
 ЗП ШКИВ
	уиа	'351'(М16)
 ПБ КОНВЫД-П(М7)         свс: ТВЫП
ПР1М УИА ’2003’
ПР11 УИА ’2003’
 СЧ ЗАНЯТА
 И Е4
 ПЕ ТВЫП-П(М7)
 СЧ ЯЧВ1
 ЧЕД 0
 И Е1
 ПО ТВЫП-П(М7)
 СЧ ЗАНЯТА
 ИЛИ Е4
 ЗП ЗАНЯТА
 СЧ ИНФЗАМ
 ЗП КУС-П(М7)
 УИИ М4(М1)
 МОДА ПРКАТ-П(М7)
 ПВ (М12)
 УИИ М2(М1)
 УИИ М1(М4)
 СЧ 10(М2)
 И П177
 СДА 64+2
 УИ М16
 СЧ Е48(М16)
 ИЛИ ЯЧВ1
 ЗП ЯЧВ1
 СЧ 18(М2)
 И П1777
 УИ М5
 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
 СЧ Е4
 ПВ ГАШЗАН(М15)
 МОДА G20217 свс: ТВЫП-П(М7)
 ПИО (М5)         ЗОН НЕТ
 УИА (М4)
 СЧ КУС545
 ЗП КУС-П(М7)
 МОДА ПИК
 УИА (М12)
 СЧ 0
 ЗП РЯ2-П(М7)
ПР11С СЧ 0
 ПВ ТБУФ(М15)
 ЗП РЯ1-П(М7)
 УИА 3
 СЧ НОММЛ1
 ПВ ЕNQ(М15)
 УИА НОММЛ1(М13)
 СЧ РЯ1-П(М7)
 УИИ М10(М1)
 ПБ ЧКАТ-П(М7)
ПИК УИИ М2(М1)
 УИИ М1(М10)
ПР11А НОП
 СЧИ М5
 И П37
 УИ М15
 И Е1
 УИ М16
 СЧИ М5
 СДА 64+1
 УИ М12
 СДА 64+4
 УИ М17
 СЛИ М12(М2)
 СЛИ М17(М2)
 СЧ 512(М17)
 ИЛИ Е48(М15)
 НТЖ Е48(М15)
 ЗП 512(М17)
 СЧ 512(М12)
 СД КСО(М16)
 И П1777
 УИ М5
 СЧ 512(М12)
 ИЛИ Е48П25(М16)
 НТЖ Е48П25(М16)
 ЗП 512(М12)
 МОДА ПР11А
 ПИНО (М5)
 МОДА КОНЦ1А-П(М7)
 ПВ (М12)
 СЧ РЯ2-П(М7)
 И Е27
 ПЕ БЮДНРБ
 СЧ РЯ2-П(М7)
 СДА 64+41
 ПО БЮДНРБ        БЮДЖЕТ НЕ РАБОТАЛ
 СЧ РЯ2-П(М7)
 И Е26
 ПЕ БЮДНРБ        ЗАДАЧА ИНД.ПОЛЬЗ.(ВРЕМЕННО)
 СЧ КУС-П(М7)
 И Е18П11-П(М7)
 ИЛИ КУСЛИМ
 СЛЦ НОММЛ1
 УИИ М10(М1)
 МОДА ЧТК-П(М7)
 ПВ (М12)
 УИИ М1(М10)
 СЧ РЯ3-П(М7)
 СБР МАСКО(М2)
 СДА 64+40
 ПВ ИЗ10В8(М15)
 СДА 64-2
 УИ М5            АДРЕС ЯЧЕЕК ОТДЕЛА
 СЛИ М5(М2)
 СЧ СМНАОТ(М5)
 И Е25
 ПО БЮДНРБ      ОТД ВНЕ БС
 СЧ РЯ2-П(М7)
 СДА 64-4
 И Е46П48
 ПО БЮДНРБ    З-ЧА ВНЕ БС
 НЕД П77777
 УИ М12
 СЧ РЯ1-П(М7)
 И Е1П25
 МОДА (М12)
 СЛЦ ДЕЖ(М5)
 МОДА (М12)
 ЗП ДЕЖ(М5)
 СЧ РЯ1-П(М7)
 СДА 64+40
 УМН К144
 СЧМР 64
 СЛЦ СМНАОТ(М5)
 ЗП СМНАОТ(М5)
 МОДА КОНЦ1А-П(М7)
 ПВ (М12)         ЗП. КАТАЛОГА ЛИМИТОВ
БЮДНРБ СЧ НОММЛ1
 ПВ DЕQ(М15)      ОСВ.МД
 УИА 3
	сч	РЯО(М7)
	пв	ТБУФ(М15)
G20217	сч	НАЧП-П(М7)
	нтж	П21-П(М7)
	по	КОНЦ4А-П(М7)
	уиа	'350'(М16)
 ПБ КОНВЫД-П(М7)        свс: КОНЦ4
*
*
*      Д И Р Е К Т И В А  N 21
*      -----------------------
*        ВЫБ <N ЗАД.НА БУФЕРЕ>
*
*
ПР21 СЧ ТР5-П(М7)
 И П377
 УИ М4
 ЗП РЯ3-П(М7)
 СДА 64+7
 УИ М6
 СЧИ М4
 И П177
 ПО ПНЕТ-П(М7)
 УИ М4
 СЧ КУСБК(М6)
 ЗП КУС-П(М7)
 МОДА ПР11С
 ПВ (М12)         ЧТ.КАТАЛОГА ВВОДА
 УИИ М2(М1)
 УИИ М1(М10)
 СЧИ М4
 СДА 64-3
 УИ М16
 СЛИ М16(М2)
 ЗП РЯ2-П(М7)
*
*---- ВРЕМЕННО ----*
*
 СЧ 4
 НТЖ Е24
 ПО НЕВИТЯ
*
*-----------------*
*
 СЧ ЯЧКУПР(М16)
 И ЕКУПР
 ПЕ ПЕЧУПР
НЕВИТЯ СЧ 7(М16)
 И П1777
 ЗП РЯ1-П(М7)
 УИА (М15)
 СЧ 6(М16)
 И Е31
	пе	ПР21Б
*
НЕРЕШ НОП ,
*
*      * ПРОВЕРКА НА ИНД.ОБЛАСТЬ
*
*
ПР21А СЛИ М15(М2)
 УИИ М12(М15)
 СЧ 7(М15)
 И П1777
 ПО ПР21Б          ЗАДАЧИ НЕТ
 УИ М15
 НТЖ РЯ2-П(М7)
 ПЕ ПР21А
 СЧ 7(М12)
 СДА 64+10
 СДА 64-10
 НТЖ РЯ1-П(М7)
 ЗП 7(М12)        НОВАЯ ССЫЛКА
 СЧ 5(М16)
 И П1777
 УИ М5
 СЧ (М16)
 СДА 64-5
 И Е1П25
 ЗП РЯ1-П(М7)
 СЧ 5(М16)        ИНФ. О МЕТРАХ
 СДА 64-24
 И Е48П41
 ИЛИ РЯ1-П(М7)
 ЗП РЯ1-П(М7)
 СЧ 6(М16)
 ЗП РЯ2-П(М7)
 МОДА КОНЦ1А-П(М7)
 ПВ (М12)        ЗП.КАТАЛОГА ВВОДА
 СЧ КУС-П(М7)
 И Е18П11-П(М7)
 ИЛИ КУС545
 СЛЦ НОММЛ1
 МОДА ЧТК-П(М7)
 ПВ (М12)         ЧТ. КАТАЛОГА ЗОН И ШИФРОВ
 СЛИ М4(М2)
 МОДА ПР21С
 ПИО (М6)
 СЛИА 256(М4)     ШИФРЫ ЗАД.СЧЕТНЫХ В 1 АБЗ.
ПР21С СЧ (М4)
 ЗП РЯ3-П(М7)
 РЗБ ПРОБ6
 ЗП ПОЛЕ+1-П(М7) <1 ПОЛ.ШИФРА>
 СЧ (М4)
 СДА 64-24
 РЗБ ПРОБ6
 ЗП ПОЛЕ+2-П(М7) <2 ПОЛ.ШИФРА>
 СЧ 0
 ЗП (М4)          ПОЧИСТ.ШИФР
 МОДА МИМО
 ПИНО (М6)        ЭТО 2-КАТАЛОГ
 ЗП 128(М4)       ПОЧИСТИТЬ ШИФР ОЖИДАЕМ.ЗАДАЧ
МИМО СЧ ТВЫБ
 ЗП ПОЛЕ-П(М7)
 СЧ НОМУС1
 УИ М10
 ПО НЕТЕР
 УИА ЕСТЬ-П(М16)
 МОДА ЗВР2-П(М7)
 ПВ (М17)
 УИА П’Т’(М15)
 СЧ 0
 ЗП НОМУС1
 МОДА NТЕР-П(М7)
 ПВ (М17)
Х РЗБ =П’003770’
 ИЛИ =П’ 00000’В’377’
 ЗП ПОЛЕ+3-П(М7)
 СЧ ПРИЗАС-П(М7)
	по	У
	уиа	'40'(М15)
У СЧИ М15
	сда	64-32
 ИЛИ ПОЛЕ+3-П(М7)
 ЗП ПОЛЕ+3-П(М7)
 УИА ПОЛЕ-П(М4)
 ПБ ПР11А
НЕТЕР УИА ’377’(М15)
 СЧ ТР4-П(М7)
 НТЖ КЛЮЧРЗ
 И Е48П25
 ПЕ У    НЕ ОТ Э62 100
 ЗП ПРИЗАС-П(М7)
 УИА П’К’(М15)
 СЧ ТР4-П(М7)
 СДА 64-40
 ПБ Х
ПЕЧУПР СЧ ТУПР-П(М7)
 ЗП ПОЛЕ-П(М7)
 УИА ПОЛЕ-П(М4)
 ПБ КОНDЕQ-П(М7)
ПР21Б УИА ТЕК3-П(М4)
 ПБ КОНDЕQ-П(М7)
*
*
*      ПОЛЕ КОНСТАНТ
*
К144 КОНД М47В’1’В’144’
КУСЛИМ КОНД М24В’610’М17В’1’
ИНФЗАМ КОНД М17В’1’В’33’  6 ТР 3 С
НПК КОНД Х’5С’
ТNКЛАС КОНД П’ 0 0 0’
ТМИН КОНД М8П’2МИН:’В’143’
 ПАМ 3
 КОНД П’↑00000’
ТОТЛ КОНД П’2ОТЛ.↑’
ТСТК КОНД П’2СТК.↑’
ТДЗАК КОНД П’2ДИАЛГ’
 КОНД П’.ЗАКР↑’
ТАРХ КОНД П’2АРХ. ’
 КОНД П’ОТКЛ.↑’
ТКПИ КОНД П’2ПИ БЕ’
	конд	п'З КОНТ'
 КОНД П’РОЛЯ↑ ’
ТВЫБ КОНД М8П’2ВЫБ ’В’143’
	конд	п'7СБЗМ↑'
	конд	п'7↑0000'
 ЭКВИВ (ДЕЖ,13),(МАСКО,425),(СМНАОТ,12)
 ЭКВИВ (П2,ПРИК2)
ПРИКАЗ ВНЕШ ПРИЗАС,ЕСТЬ,КОНЦ4А,КОНDЕQ
ПРИКАЗ ВНЕШ ПОЛЕ,ЛNТЕР,ПРОБ1,ТВР1,ВР1А,NТЕР,ВРСТОП
ПРИКАЗ ВНЕШ (П,ПРИКАЗ),ПР1А,КУС,ПРКАТ,ЧКАТ,РЯ1,РЯ2,РЯ3
ПРИКАЗ ВНЕШ КОНЦ1А,ЧТК,КОНЦ4,ПНЕТ,Е18П11,П21
ПРИКАЗ ВНЕШ НАЧП,КОНЦГД,ТЕК3,КОПР,ТВЫП
ПРИКАЗ ВНЕШ СПЕЦСТ,ТР5,ТР4,ЗВРА,НН77НН,ТУПР,ЗВР2,БСТОП
ПРИКАЗ ВНЕШ ВЫДАЧА,КОНВЫД,ВРСПЕЦ,ЛNТЕР1
ДИСП70	ВНЕШ	ИЗ10В8,ГАШЗАН,ТБУФ,КУСБК,КУС545,КСО,Е48П25,Т
ДИСП70	ВНЕШ	ШКИВ,ПРЕДЕЛ,МГРП,ШКЗЗП,МД5,ШЗНМБО,ТЗОНМЛ,ТЗНМД
ДИСП70	ВНЕШ	ТЗНМЛ,ФКУС,СЧЗКМБ,СЧЗАК,РЯОМБ,РЯО,ИНФМБ,НОММЛ1
ДИСП70	ВНЕШ	П12,П377,П177,ЖИЗОС,П37,Е40П1,Е16П32,Е26Е25
ДИСП70	ВНЕШ	Е18П1,ЕСЧ,ЗАНЯТА,П17,П2007,КЛЮЧРЗ,П5,КМИН
ДИСП70	ВНЕШ	ИПОБМ,РМД1,РМЛ,Е18Е11,П1777,Е39П25,Е15П1,ЯЧВ1
ДИСП70	ВНЕШ	ЕСТОП,Е46П48,П77777,ЯЧКУПР,ЕКУПР
КИТ ВНЕШ Е1П25,Е48П41
МОТТ ВНЕШ ПРОБ6,НОМУС1,(ПУСТО1,П143)
ДИСКИ ВНЕШ DЕQ,ЕNQ,П11
	ФИНИШ
