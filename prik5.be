ПРИК5 СТАРТ ’20000’
 УПОТР ПРИК5(М1)
 М
 Б
 Е
*      Д Е Ш И Ф Р А Т О Р
*
 СЛИА -’44’(М2)
 МОДА НАЙ
 ПИО (М2)         НАЙ <N БОБ>
*
*
 СЧ ТР5-П(М7)
 ПЕ СВМ0
*
*
*
*      Д И Р Е К Т И В А  N 12
*      -----------------------
*
*         УТ, УСТ <N КЛАССА>
*
*         1-4РР ТР5 --> <N КЛАССА>
*
*
 УИА 3
 ЗП ПР1
 ЗП НЕУСТБ        ПРИЗН.НЕУСТ.БОБ
 УИА (М14)
 СЧ ТР4-П(М7)
 ЗП Р1
 И П17
 ЗП Р
 НТЖ П17
 ЗП ПР
 ПЕ УСТ0
 СЧ П11
 ПБ УСТ1
УСТ0 СЧ Р
 СЛЦ Е1
УСТ1 ЗП КЛ
 СЧ
 МОДА ЧТБК-П(М7)
 ПВ (М12)
 УИА (М13)         ФИЗ.АДР З-ЧИ НА БК
 УИА -9(М6)        ОБЩ.ЦИКЛ
УСТ2 СЧ 0
 ЗП СЧЕТЧ
 СЧ КЛ
 ВЧ Е1
 ЗП КЛ
 СДА 64+4
 ПЕ УСТ9
 УИА (М11)
УСТ2А СЧ 7(М2)
 И П1777
 УИА ТЕК3-П(М4)
 ПО КОНЦ4-П(М7)  С: ЗНЕТ
УСТ3 УИ М13
*
*
 СЛИ М13(М2)
 СЧ 6(М13)
 И Е32
 ПЕ УСТ4          ЖДУ
 СЧ 7(М13)
 И Е44П42
 СДА 64+41
 НТЖ КЛ
 ПЕ УСТ4
 СЧ 7(М13)
 СДА 64+45
 ПО УСТ6
 НТЖ ГОД
 И П7
 ПО УСТ6
УСТ4 СЧ 7(М13)
 УИА (М5)
 И П1777
 ПЕ УСТ3
УСТ5 СЧ Е1
 НТЖ ПР1
УСТ5А ЗП ПР1
 ПЕ УСТ5Б
 СЧ ПР
 ПО УСТ2
 ПБ УСТ9
УСТ5Б УИА (М13)
 СЧ СЧЕТЧ
 РЗБ П1770
 ИЛИ ТИНФ3
 ЗП ПОЛЕ-П(М7)
 СЧ КЛ
 СДА 64-32
 ИЛИ ПОЛЕ-П(М7)
 ЗП ПОЛЕ-П(М7)
 И Е40П1
 ИЛИ л143
 НТЖ в36
 МОДА (М14)
 ЗП ДПОЛЕ+1-П(М7)  СТАВИМ ↑
 МОДА (М14)
 СЧ ДПОЛЕ-П(М7)    СТАВИМ КОС.ЧЕРТУ
 НТЖ в36
 МОДА (М14)
 ЗП ДПОЛЕ-П(М7)
 СЧ ТГОТЗ
 ЗП ДПОЛЕ-П(М7)
 СЛИА 1(М14)
 МОДА УСТ2А
 ПИНО (М11)
*
УСТ5В СЧ 0
 ПБ УСТ5А
*
*
*
УСТ6 МОДА ЗАПЕТХ-П(М7)
 ПВ (М12)
 МОДА ИЩУБОБ-П(М7)
 ПВ (М12)
*
*
*
 МОДА УСИ
 ПИНО (М5)
 СЧ СЧЕТЧ
 СЛЦ Е42
 ЗП СЧЕТЧ
 ПБ УСТ4
УСИ УИИ М11(М5)
 СЧИ М11
 ИЛИ НЕУСТБ
 ЗП НЕУСТБ
 СЧ ПР1
 ПО УСТ4
 УИА (М3)
УСТ7 СЛИА 1(М3)
 МОДА (М3)
 СЧ ПОЛЕ-П(М7)
 ЗП Р
 НТЖ ВСЕЕД
 ПО УСТ8
 НТЖ ВСЕЕД
 И П7777
 ПВ ПЕРЕВ(М15)
 asn 64-8 ИЛИ МАСКАБ
 ЗП РЯ1-П(М7)
 ago .gul
*------- ПО ПРОСЬБЕ ГУЛЯЕВА.Т -------*
 СЧ Р
 И Е16
 ПО УСТ70        ЗАКАЗАНА ЗП НА БОБИНУ
 УИА 2(М4)
 СЧ РЯ1-П(М7)
 СДА 64-8
 ЗП РЯ1-П(М7)
 СЧ Р
 И Е47
 ПО УСТ80
 СЛИА 1(М4)
 ПБ УСТ80
.gul anop
        сч      Р
        и       Е48
        сда     64+1
        или     Р
        сбр     Е47Е16
*
*       -------
*
* УСТ70 СЧ Р
* И Е47
 СДА 64+46
 УИ М4
 МОДА (М4)
 СЧ НПЛЮС
 ИЛИ РЯ1-П(М7)
 МОДА (М3)
 ЗП ПОЛЕ-П(М7)
 ПБ УСТ7
УСТ8 УИА ПОЛЕ-П(М16)
 МОДА ЗВР2-П(М7)
 ПВ (М17)
 МОДА УСТ4
 ЦИКЛ (М6)
УСТ9 СЧ НЕУСТБ
 УИА ДПОЛЕ-П(М4)
 ПО КОНЦ4-П(М7)   С: ИНФ.О ГОТОВЫХ З-Х
 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
 ПБ ПР1А-П(М7)   ОТКАЗ ОТ ПРИКАЗА
*
*
*      Д И Р Е К Т И В А  N 44
*      -----------------------
*
*      НАЙ <N БОБИНЫ>
*
*         ТР5 = <N БОБИНЫ>
*
НАЙ СЧ ТР5-П(М7)
 ПО ТНЕТ-П(М7)
 УИА (М4)  ПРИЗН. БОБИНА НЕ НАЙДЕНА
 ПВ ИЗ10В8(М15)
 ЗП РЯ1П5
 СЧ КОПР-П(М7)    УСТ.7 ЛОГИЧ.КАНАЛ
 ЗП ПОЛЕ-П(М7)
*
*
 УИА -МЛ(М2)
 УИА 1(М6)        ПРИЗН: ЭТО МЛ
 УИА (М3)         МОДИФ.’ПОЛЕ’
 СЧ П27
 ЗП NУСТР
НАЙ1 СЧ NУСТР
 СЛЦ Е1
 ЗП NУСТР
 СЧ ТЗНМЛ+МЛ(М2)
 ЗП РЯ2П5
 НТЖ РЯ1П5
 И П7777
 ПО НАЙ4
НАЙ10 МОДА НАЙ1
 ЦИКЛ (М2)
*
*------ ЦИКЛ ПО МД -----*
*
 УИА -МД(М2)
 УИА (М6)         ПРИЗН: ЭТО МД
 СЧ 0
НАЙ2 НОП ---
 ЗП NУСТР
 СЧ ТЗНМД+МД(М2)
 ЗП РЯ2П5
 НТЖ РЯ1П5
 И П7777
 ПО НАЙ4
НАЙ20 СЧ NУСТР
 СЛЦ Е1
 МОДА НАЙ2
 ЦИКЛ (М2)
НАЙ22 МОДА ТНЕТ-П(М7)
 ПИО (М4)
НАЙ3 УИА ПОЛЕ-П(М16)
 ПБ ЗВРА-П(М7)    С: МГ(МД) <N УСТ-ВА>-<N БОБИНЫ>
*
*
НАЙ4 НОП ,
* СЧ РЯ2П5
* И ЕН
* ПЕ НАЙ22
 УИА 1(М4)
 СЧ ТМЛ
 МОДА НАЙ5         МЛ
 ПИНО (М6)
 СЛЦ Е1
НАЙ5 МОДА (М3)
 ЗП ПОЛЕ+1-П(М7) МГ(МД)
 СЧ NУСТР
 СДА 64-42
 РЗБ Б77-П(М7)
 ИЛИ =М40В’143’М32В’143’М24В’143’П’ 00’
 МОДА (М3)
 ЗП ПОЛЕ+2-П(М7) N УСТ-ВА
 СЧ РЯ1П5
 ПВ ПЕРЕВ(М15)
 ИЛИ =М40В’143’П’-0000’
 МОДА (М3)
 ЗП ПОЛЕ+3-П(М7) N БОБИНЫ
 СЧ РЯ2П5
 И Е47
 ПО НАЙ6А
 СЧ ТСИС
НАЙ6 МОДА (М3)
 ЗП ПОЛЕ+4-П(М7) ПРИЗН.СИС.БОБИНЫ
 СЛИА 4(М3)
*
 МОДА НАЙ10
 ПИНО (М6)
 ПБ НАЙ20
НАЙ6А СЧ РЯ2П5
 И ЕТЗНУП
 ПЕ НАЙ6Б        БОБ.УПРЯТАНА
*
 СЧ РЯ2П5
 И ЕАР
 ПЕ НАЙ6В        БОБ.АРХИВА
*
 СЧ ПУСТО-П(М7)
 ПБ НАЙ6
НАЙ6Б СЧ ТУПР
 ПБ НАЙ6
НАЙ6В СЧ ТАРХ
 ПБ НАЙ6
*
*
*      Д И Р Е К Т И В А  N 45
*      -----------------------
*
*         СВМ  --> ТР5=1
*        СВД  ---> ТР5=2
*        СВМЗ ---> ТР5=1; ТР4=1
*        СВДЗ ---> ТР5=1; ТР4=1
*
*
*
СВМ0 СЧ 0
 ЗП ПРИЗН        ЧТ.1 КАТАЛОГА
 ЗП Р
 ЗП Р1
 ЗП Р2
 ПВ ТБУФ(М15)
 СДА 64-8
 УИ М2
 СДА 64-2
 ИЛИ КУСБК
 СЛЦ НОММЛ1
 ЗП КУС-П(М7)
СВМ УИИ М13(М2)
 ПВ ФИЗОБМ(М16)
 УИА 3
*      ----------
СВМ10 СЧ М+7(М13)
 И П1777
 УИ М13
 СЛИ М13(М2)
 ПО СВМ1
 СЧ М+6(М13)
 И Е32
 ПЕ СВМ10
 СЧ М+7(М13)
 СДА 64+45
 ПО СВМ20        ОТЛАДКА
 НТЖ ГОД
 И П7
 ПЕ СВМ10        З-ЧА НА ДРУГОЙ БЭСМ
СВМ20 МОДА ЗАПЕТХ-П(М7)
 ПВ (М12)
 МОДА ИЩУБОБ-П(М7) N БОБ И N У-В --> В "ПОЛЕ"
 ПВ (М12)
*
*
 УИА (М3)
СВМ4 СЛИА 1(М3)
 МОДА (М3)
 СЧ ПОЛЕ-П(М7)
 НТЖ ВСЕЕД
 ПО СВМ10        НЕТ БОБИН
 НТЖ ВСЕЕД
 СДА 64+16 СВС: 64+12
 И П77777
 УИ М15
 ПО СВМ4           ЗАНЯТЫЕ БОБИНЫ НЕ ПРОСМАТРИВАТЬ
 МОДА СВМ4
 УИА (М12)
ЗАХВАТ УИИ М4(М15)
 СЛИА 31(М4)
 СЧИ М4
 И Е12
 УИА 2(М16)
 ПО ЗАХ
 СЛИА 32(М4)
 СЧИ М4
 И Е12
 СЛИА -1(М16)
 ПО ЗАХ
 СЛИА -1(М16)
 СЧ Е16(М4)
 ИЛИ Р
 ЗП Р
 ПБ (М12)
СВМ1 СЧ ПРИЗН
 ПЕ СВМ2
 СЧ РЯПСЗ
 И Е11
 ПО СВМ2
 СЧ Е1
 ЗП ПРИЗН
 СЧ КУС-П(М7)
 СЛЦ Е25
 ПБ СВМ
*
*
СВМ2 СЧ Р
 ЗП РР
 СЧ Р1
 ЗП РР1
 СЧ Р2
 ЗП РР2
*
 СЧ 0
 ЗП Р
 ЗП Р1
 ЗП Р2
 ЗП ПРИЗН2
*
*------ N ВСЕХ СВОБОДНЫХ У-В ------*
*
*      А) ПОИСК ВСЕХ ВЫКЛ.И ЗАНЯТЫХ УС-В.
*
 УИА -МГ(М15)
 МОДА СВМ23        АДР.ВЫХ. ИЗ "ЗАХВАТА"
 УИА (М12)
СВМ22 СЧ ТЗНМЛ+МГ(М15)
 ПО ЗАХВАТ
 И ПРСВЛ
 ПЕ ЗАХВАТ
СВМ23 МОДА СВМ22
 ЦИКЛ (М15)
*
*      Б) ИНВЕРСИЯ НАЙДЕННЫХ У-В --> СВОБ.У-ВА
*
*
 УИА -2(М6)
ИНВЕР МОДА (М6)
 СЧ Р2
 НТЖ ВСЕЕД
 И Е48П17
 МОДА (М6)
 ЗП Р2
 МОДА ИНВЕР
 ЦИКЛ (М6)
*
 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
*
*
*------ ПЕЧАТЬ ------*
*
 СЧ ГОД
 И П7
 ИЛИ =П’5СВМ 0’
 ЗП ПОЛЕ-П(М7)
 СЧ ТР5-П(М7)
 НТЖ Е1
 ПО СВМ00
 СЧ 0
 ЗП Р
 СЧ ПОЛЕ-П(М7)
 ИЛИ Е20
 НТЖ Е20
 ЗП ПОЛЕ-П(М7)     ВМЕСТО М - Д
 ПБ ПЕЧСВ0
СВМ00 ЗП Р1
 ЗП Р2
ПЕЧСВ0 УИА 2(М2)
 УИА -2(М10)
ПЕЧСВ СЛИА 1(М6)
 МОДА (М2)
 СЧ Р
 ПО ПЕЧСВ3
 НЕД 0
 УИ М15
*
*
 МОДА К+2
 СЛЦ (М10)
 СДА 64-42
 РЗБ =П’000770’
 ИЛИ =М40В’143’М32В’143’П’ 00К’
 МОДА (М6)
 ЗП ПОЛЕ-П(М7)
*
*      ------------
 МОДА (М2)
 СЧ Р
 МОДА (М2)
 И РР
 И Е48-1(М15)
 ПЕ ПЕЧСВВ
*
 МОДА (М6)         ГАСИМ "Б"
 СЧ ПОЛЕ-П(М7)
 И Е48П9
 ИЛИ ПУСТО1-П(М7)
ПЕЧСВС МОДА (М6)
 ЗП ПОЛЕ-П(М7)
*
ПЕЧСВ1 МОДА (М2)   ГАШ
 СЧ Р
 НТЖ Е48-1(М15)
 МОДА (М2)
 ЗП Р
 МОДА ПЕЧСВ3
 УИА (М17)
 ПО ПЕЧАТЬ
*
 СЧИ М6
 НТЖ Е5
 МОДА ПЕЧСВ
 УИА (М17)
 ПЕ ПЕЧСВ
ПЕЧАТЬ СЛИА 1(М6)
 СЧ ВСЕЕД
 МОДА (М6)
 ЗП ПОЛЕ-П(М7)
 УИА (М6)
 УИА ПОЛЕ-П(М16)
 ЗП ПРИЗН2       ПРИЗН: БЫЛА ХОТЯ БЫ ОДНА ВЫДАЧА
 ПБ ЗВР2-П(М7)
*
ПЕЧСВВ СЧ ТР4-П(М7)
 ПЕ ПЕЧСВ1       БЕЗ ЗАНЯТЫХ
 СЧ ПУСТО-П(М7)
 ПБ ПЕЧСВС
*
*
ПЕЧСВ3 МОДА ПЕЧСВ4
 ПИО (М2)
 СЛИА -1(М2)
 СЛИА 1(М10)
 УИА (М6)
 ПБ ПЕЧСВ
*
ПЕЧСВ4 СЧ ПРИЗН2
 ПЕ ПР1А-П(М7)
 ПБ ТНЕТ-П(М7)   С:НЕТ
ЗАХ СЧ Е16-32(М4)
 МОДА (М16)
 ИЛИ Р
 МОДА (М16)
 ЗП Р
 ПБ (М12)
*
*
*
*
*      КОНСТАНТЫ
*     ----------
*
Р ПАМ 1
Р1 ПАМ 1
КЛ ПАМ 1
СЧЕТЧ ПАМ 1
ПР1 ПАМ 1
НЕУСТБ ПАМ 1
ПР ПАМ 1
*
К КОНД В’37’
 КОНД В’7777’
П27 КОНД В’27’
*
*
*
ТИНФ3 КОНД П’20:00 ’
нплюс КОНД П’ 0000 ’
 КОНД П’ 0000.’
 КОНД П’+0000 ’
 КОНД П’+0000.’
ТМЛ КОНД М40В’143’М32В’143’М24В’143’П’ МГ’
ТГОТЗ КОНД М40П’2’М32В’143’М24В’143’М16В’143’М8В’143’В’143’
ТСИС КОНД П’ СИС0;’М8В’143’
ТУПР КОНД П’ УПР0;’М8В’143’
ТАРХ конд п' АРХ0;'м8в'143'
п1770 конд п'1770'
л143 конд м40в'143'
в36 конд в'36'
е47е16 конд м46в'1'м15в'1'
*
*
*      ЭКВИВ,ВХОД,ВНЕШ
*      ---------------
*
 ЭКВИВ (МЛ,31),(МД,63),(NУСТР,КЛ),(РЯ1П5,Р)
 ЭКВИВ (Р2,КЛ),(РР,СЧЕТЧ),(РР1,ПР1),(РР2,НЕУСТБ)
 ЭКВИВ (ПРИЗН,ПР),(ПРИЗН2,ПР),(М,0),(МГ,95)
 ЭКВИВ (РЯ2П5,Р1)
*
ДИСП70 ВНЕШ ЗАНЯТА,ШКИВ,ИЗ10В8,ТЗНМД
ДИСП70 ВНЕШ ГОД,П7,НОММЛ1,П77777,РЯПСЗ,NБЛ
ДИСП70 ВНЕШ П377,ГРУП,ВСЕЕД
ДИСП70 ВНЕШ ТБУФ,ТЗНМЛ,НАПРМГ,ПЕРЕВ
ДИСП70 ВНЕШ Е44П42,П1777,П7777,Е46П48,Е15П11
ДИСП70 ВНЕШ П17,П3,ЕТЗНУП,ЕАР,КУСБК,КУС545
ДИСП70 ВНЕШ П37,Е40П1,Е48П9,ПРСВЛ
ВЗУ ВНЕШ ФИЗОБМ
КИТ ВНЕШ Е1П25
ПРИКАЗ ВНЕШ (П,ПРИКАЗ),РЯ,РЯ1,РЯ2
ПРИКАЗ ВНЕШ КУС,ТЕК3,ДПОЛЕ,КОПР,ТНЕТ,ЗВРА
ПРИКАЗ ВНЕШ ЧТБК,КОНЦ4,ПР1А,ЗАПЕТХ,ИЩУБОБ
ПРИКАЗ ВНЕШ ПОЛЕ,ПРОБ1,ВОЗБУФ,ПУСТО
ПРИКАЗ ВНЕШ ЗВР2,ТР4,ТР5,ПУСТО1
ПРИКАЗ ВНЕШ Б77
ДИСКИ ВНЕШ П11
КИТ ВНЕШ Е48П42
КАЧКА ВНЕШ Е48П17
СОСТАВ ВНЕШ ЕН
*
*
*
*
