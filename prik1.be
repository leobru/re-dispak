ПРИК1 СТАРТ ’20000’
 УПОТР ПРИК1(М1)
*
 М
 Б
 Е
*
 УИА 3
 СЛИА -3(М2)
 МОДА ПР3
 ПИО (М2)        АДР
*
 СЛИА -2(М2)
 МОДА ВМГ          ВМГ,ВМД
 ПИО (М2)
*
 СЛИА -1(М2)
 МОДА ПР6
 ПИО (М2)      ВКН
*
 СЛИА -24(М2)
 МОДА СПЕЦ
 ПИО (М2)    СПЕЦ
*
 СЛИА -3(М2)
 МОДА УПР
 ПИО (М2)       УПР
*
 СЛИА -10(М2)
 МОДА КТЧ
 ПИО (М2)
 СТОП ’555’  НЕТ ПРИКАЗА
*
*
*     Д И Р Е К Т И В Ы  N 41,53
*     --------------------------
*
*       УПР,КТЧ <N ПРОГР.КАНАЛА>
*       ТР5=<N ПРОГР.КАНАЛА>
*
КТЧ МОДА 1
УПР УИА 0(М3)
 СЧ ТР5-П(М7)
 И П77
 ПО УПРСКВ       ВЫДАТЬ N СКВ УПР-Х З-Ч
 МОДА NПРКАН-П(М7)
 ПВ (М17)
 УИА 1027
 СЧ РАБЕ16
 ПЕ ЗАНЕ16
 СЧ ШКРЗ
 И Е48-1(М5)
 ПО ТНЕТ-П(М7)
ИНИЦ СЧ Е48-1(М5)
 МОДА НЕКТ
 ПИО (М3)
 ИЛИ ШККТ
 ЗП ШККТ
 СЧ Е48-1(М5)
 ПБ КТУП
НЕКТ ИЛИ ШККТ
 НТЖ Е48-1(М5)
 ЗП ШККТ
 СЧ Е48-1(М5)
КТУП ЗП ШЗУПР
 ЗП РАБЕ16
 СЧ П30
 ЗП БУДУПР
 СЧ УПРЯТ
 СДА 64+18
 СДА 64-18
 ЗП УПРЯТ
 СЧ КВНЗАД(М14)
 И П7777
 СДА 64-6
 ИЛИ НОМУС1
 ЗП УПРЯТ
*------------------ ДАТЬ ПРИОРИТЕТ
 МОДА БУФТРВ
 УИА (М15)
 ПВ СЧЕТРВ(М16)
 МОДА КВАНТ        1КЛ; КВАНТ=176
 ПВ (М16)
*
 НТЖ П177
 ЗП КВНЗАД(М14)
 УИА 3
*
ВЗАКП УИА ЗАКПР-ПР1(М16)
 ПБ КОНВЫД-П(М7)
*
УПРСКВ МОДА ПОКУПР
 ПИО (М3)
* ИНИЦИАЛИЗАЦИЯ КТ *
 УИА 1027
 СЧ РАБЕ16
 ПЕ ПР1А-П(М7)    УПРЯЧЬ ЗАНЯТ
СЛКТ СЧ ШОЧКТ
 ПО ПР1А-П(М7)    НЕТ ЗАКАЗОВ
 НЕД
 УИ М5
 СЧ ШОЧКТ
 НТЖ Е48-1(М5)
 ЗП ШОЧКТ
 СЧ ШКРЗ
 И Е48-1(М5)
 ПО СЛКТ
 МОД ТУСП-1(М5)
 УИА (М14)
 ПБ ИНИЦ
*
ЗАНЕ16 МОДА ВШОЧКТ
 ПИНО (М3)          ПРИ КТ
 УИА ТУПР-ПР1(М16)
 ПБ КОНВЫД-П(М7)  ИДЕТ УПР-ВОС
ВШОЧКТ СЧ Е48-1(М5)
 ИЛИ ШОЧКТ
 ЗП ШОЧКТ
 УИА 3
 ПБ ВЗАКП
*
ПОКУПР УИА 2(М3)
*
 МОДА ЧТБК-П(М7)
 ПВ (М12)
*
*------ ПОИСК УПР.З-Ч ------*
*
 УИА (М13)
 УИА (М15)        СЧЕТЧИК УПР.И ВОССТ.З-Ч
 СЛИ М13(М2)
 ПБ УПРСК2
УПРСК1 УИИ М16(М13)
 СЛИ М13(М2)
*
 СЧ ЯЧКУПР(М13)
 И ЕКУПР
 ПО УПРСК2        НЕТ УПР,ВОС,КТ
*
 СЧ 6(М13)
 И Е32
 УИА 1(М5)
 ПО ЕКТЧ
 УИА 0(М5)
ЕКТЧ ноп
 СЛИА 1(М15)        СЧЕТЧИК ЗАПИСЕЙ В ПОЛЕ
 СЧИ М16          ЗП. N СКВ В ПОЛЕ
 СДА 64-38
 РЗБ =П’001770’
 ИЛИ =П’  000-’
 МОДА G20106
 ПИНО (М5)
УПРК1Б МОДА (М3)
 ЗП ПОЛЕ-П(М7)
 СЛИА 1(М3)
*
*
УПРСК2 СЧ 7(М13)
 И П1777
 ПО УПРСК3       ВСЕ ПРОСМОТРЕЛИ
*      *-----------*   ПРОВЕРКА НА ДЛ.ПОЛЯ
 УИИ М13(М15)
 СЛИА -13(М13)
 МОДА УПРСК4
 ПИО (М13)
*     *----------*
 УИ М13
 ПБ УПРСК1
*
G20106 НТЖ Е1
 ПБ УПРК1Б
*------ ПЕЧАТЬ ------*
*
УПРСК3 МОДА УПРСК5       С: НЕТ (ОТКАЗ ОТ БК)
 ПИО (М15)
*
УПРСК4 СЧ ТУПРС1
 ЗП ПОЛЕ-П(М7)
 СЧ ТУПРС2
 ЗП ПОЛЕ+1-П(М7)
*
 УИА ПОЛЕ-П(М4)   С: СКВ УПРЗ: <N СКВ>....
 ПБ КОНЦ4-П(М7)
УПРСК5 УИА ТЕК3-П(М4)
 ПБ КОНЦ4-П(М7)
*
*      Д И Р Е К Т И В А  N 36
*      -----------------------
*
*       СПЕЦ <N ЗАД.НА БУФЕРЕ>
*
*      1-8РР ТР5 --> <N ЗАД.НА БУФЕРЕ>
*
*
СПЕЦ СЧ НОММЛ1
 ПВ ЕNQ(М15)
 СЧ ТР5-П(М7)
 И П377
 УИ М10           N СКВ
 МОДА ЧТБК-П(М7)  ЧТЕНИЕ БК
 ПВ (М12)
 МОДА ЕСТЬЛИ-П(М7) ЕСТЬ ЛИ ЗАД.НА БУФЕРЕ
 ПВ (М12)
 СЧ ТР4-П(М7)
 ПЕ ВОС
 СЧ 1(М13)        ЗП.ПРИЗНАКА "СПЕЦ"
 ИЛИ Е15
 ЗП 1(М13)
        пам     0
 МОДА КОНЦ1А-П(М7)
 ПВ (М12)
***********  УБРАТЬ ЖДУ ’ВРЕМЯ’ В 545 ЗОНЕ **
 СЧ РЯ4-П(М7)
 ПЕ ЗАПИС1        ВО 2-ОМ КАТ.НЕТ ИНФ.СО ’ЖДУ’
 СЧ 6(М13)
 И Е32
 ПО ЗАПИС1        НЕТ ПРИЗНАКА ’ЖДУ’
*
 СЧ КУС-П(М7)
 ВЧ Е25
 ЗП КУС-П(М7)
 МОДА КОНЦ1А-П(М7)  ЧТ.545 ЗОНЫ
 ПВ (М12)
 СЛИ М10(М2)
 ПАМ 0
 СЧ 128(М10)
 НТЖ D50341
 ПО ЗАПИС1
 СЧ 128(М10)
 СДА 64+24
 ПЕ ЗАПИС1        ЭТО ЖДУ ШИФР ИЛИ ТЕЛЕ
* ГАШЕНИЕ ШИФРА В 545 ЗОНЕ
 СЧ КУС-П(М7)
 НТЖ Е18           ЧТЕНИЕ
 СЛЦ Е25
 ЗП КУС-П(М7)
 МОДА КОНЦ1А-П(М7)  И СНОВА ЧТ.БК
 ПВ (М12)
 ПБ ВОС1          СНЯТИЕ ЖДУ
ЗАПИС1 НОП ,
 СЧ НОММЛ1
 ПВ DЕQ(М15)
 СЧ Е36
 ИЛИ ШКИВ
 ЗП ШКИВ
 УИА 3
 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)     ВОЗВ.БУФЕРА
 ПБ ТВЫП-П(М7)   С: ЕСТЬ
*
*
ВОС СЧ ЯЧКУПР(М13)
 И ЕКУПР
 ПО ВОЗБУ1-П(М7)
ВОС1 СЧ 6(М13)
 ИЛИ Е32
 НТЖ Е32
 ЗП 6(М13)
 СЧ 7(М13)
 СДА 64-3
 СДА 64+3
 ЗП 7(М13)
 СЧ ГОД
 СДА 64-45
 ИЛИ 7(М13)
 ЗП 7(М13)        N ЭВМ
 МОДА КОНЦ1А-П(М7)
 ПВ (М12)
 ПБ ЗАПИС1
*
*
*
*      Д И Р Е К Т И В А  N 6
*      ----------------------
*        ВКН <N ПРОГР.КАНАЛА>
*             1-5 РР ТР5 --> <N ПРОГР.КАНАЛА>
*
ПР6 СЧ ТР5-П(М7)
 ПЕ ПР6АБ        ОБЫЧНЫЙ ВКН
******* СТRLО ВКН
 МОДА NКТСЛ-П(М7)
 ПВ (М17)
 ЗП ТР4-П(М7)    ПРИЗН: СТRLО ВКН
 ЗП ТР5-П(М7)    ЗП.N ПРОГР.КАНАЛА
*
ПР6АБ МОДА NПРКАН-П(М7)
 ПВ (М17)
****** ПРОВЕРКА ПО ПРОСЬБЕ ШЕБАНОВА
 СЧ ШЗАПОС
 И Е48-1(М5)
 ПЕ ТЗНЕТ-П(М7)  С: ЗНЕТ
******
 СЧ ТР4-П(М7)
 ПО ПР6АБВ
*
****** ПРОВЕРКА ЧИСЛА ТЕРМ. У ЗАДАЧИ:
*        А) ЕСЛИ У ЗАДАЧИ ОДИН ТЕРМ --> ВКН
*        Б) ЕСЛИ ТЕРМ > 1, ТО НА ОТБРАКОВКУ
*
 СЧ ЧПТ(М14)
 И П77
 ПО ПР6А0
 НТЖ Е1
 ПО ПР6А0        ОДИН ТЕРМ
****** ОТБРАКОВКА ТЕРМИНАЛА
 УИА ТКОНЕЦ-ПР1(М16) С: ЕСТЬ <LF> КОНЕЦ СЕАНСА
 МОДА ВЫДАЧА-П(М7)
 ПВ (М17)
 СЧ ВППС-1(М3)
 УИА 1027
 ИЛИ Е41
 ЗП ВППС-1(М3)
 СЧ ШБУДИЛ
 ИЛИ Е48-1(М3)
 ЗП ШБУДИЛ
*
*
 СЧ ШКОРАБ       НУ-КА, ЗВЯКНИ
 ИЛИ ЕЗВ
 ЗП ШКОРАБ
 УИА 3
 СЧИ М5
 ИЛИ Е27
 ПВ ЗАПВЕТ(М16)  СОБЫТИЕ: КОНЕЦ ПРИЕМА ДЛЯ "ПОД"
 ПБ ПР1А-П(М7)   ВЫХОД ИЗ ПРИК
ШАЛУН УИА ТШАЛУН-ПР1(М16)
 ПБ КОНВЫД-П(М7) С: ШАЛИШЬ!
ПР6АБВ МОДА СТАТУС-П(М7)
 ПВ (М12)
 ПО ШАЛУН
*
****** ЧТОБ USЕR КВАНТИК НЕ МОГ ПОСТАВИТЬ
ПР6А0 МОДА СТАТУС-П(М7)
 ПВ (М12)
 ПО ПР6А
*       ******
 МОДА БУФТРВ
 УИА (М15)
 ПВ СЧЕТРВ(М16)
 МОДА КВАНТ        КВАНТ ТОЛЬКО ДЛЯ ТЕРМ.ОПЕР.
 ПВ (М16)
*
 УИА 3
ПР6А НОП 0
 УИА 1027
 СЧ ГРАСИ+1
 И Е48-1(М5)
 ПО НОРМ
 СЧ Е8
 ПВ ГАШПРП(М15)
 СЧ 0
 ЗП БУДГРА
 СЧ ГРАСИ
 СДА 64+1
 СДА 64-1
 ПВ ВШГП(М15)
 СЧ 0
 ЗП ГРАСИ+1
 ЗП ГРАСИ
НОРМ НОП
 СЧ 33(М14)
 И Е22
 ПЕ ПР6Г
 СЧ '53'(М14)
 И Е6
 ПЕ G20231
 СЧ '53'(М14)
 ИЛИ ГРН
 ЗП '53'(М14)
 ПБ G20233
G20231 СЧ 33(М14)
 ИЛИ Е22
 ЗП 33(М14)
G20233 СЧИ М5
 ИЛИ Е32
 МОДА 
 ПВ ЗАПВЕТ(М16)
 ПЕ ТВЫП-П(М7)
*
*
ПР6Г УИА 1027
 СЧ ШЗРАЗМ+1      РЗД
 ПО РАЗМЛ
 НТЖ Е48-1(М5)
 ПЕ РАЗМЛ
 ЗП ШЗРАЗМ+1
 ЗП РАЗМГ+1
 ЗП РАЗМГ+2
 ПБ ИНИЦЗ
РАЗМЛ СЧ ШЗРАЗМ
 ПО РМЛЕС
 НТЖ Е48-1(М5)
 ПЕ РМЛЕС
 ЗП ШЗРАЗМ
 ЗП РАЗМГ
 ПБ ИНИЦЗ
РМЛЕС СЧ ШРЕС
 ПО ПР6Ж
 НТЖ Е48-1(М5)
 ПЕ ПР6Ж
 ЗП ШРЕС
 ЗП РЗМГЕС
ИНИЦЗ СЧ Е48-1(М5)
 ПВ ВШГП(М15)
*
ПР6Ж УИА 45(М17)      ПРИЗН: СНЯТА ПОЛЬЗ.
 МОДА СТАТУС-П(М7)
 ПВ (М12)
 ПО ПР6Б1        ЭТО ПОЛЬЗ.
 УИА 19(М17)      ПРИЗН: СНЯТА ОПЕРАТОРОМ
ПР6Б1 УИИ М15(М14)
 ПВ АВОСТА(М16)
*
*
 ПБ ТВЫП-П(М7)
****** УСТ.ЗАКАЗА НА ВМГ(ВМД) <N У-ВА>
ПР6Д МОДА ТНЕТ-П(М7)
 УИА (М12)
 МОДА NНNУ-П(М7)   ОПР. N У-ВА
 ПВ (М17)
 ЗП ТР5-П(М7)
 СЧИ М6
 НТЖ Е1
 ЗП ТР4-П(М7)    ПРИЗН:МД ИЛИ МЛ
*
*
*
*      Д И Р Е К Т И В А  N 5
*      ----------------------
*
*         ВМГ <N У-ВА>; ТР5=<N У-ВА>; ТР4=0
*         ВМД <N У-ВА>; ТР5=<N У-ВА>; ТР4=1
*
ВМГ СЧ ТР5-П(М7)
 УИ М14
 СЧ ТР4-П(М7)
 И Е1
ВМГ1 УИА 1027
 ПЕ ВМГ3
 СЧИ М14
 ВЧ П30
 ПЕ ТНЕТ-П(М7)
 ВЧОБ П37
 ПЕ ТНЕТ-П(М7)
 УИА МГНЕИС(М15)
ВМГ2 СЧ Е32-24(М14)
 ИЛИ (М15)
 ЗП (М15)
 ПБ ТВЫП-П(М7)
ВМГ3 СЧИ М14
 СДА 64+5
 УИ М16
 МОДА (М16)
 УИА МДНЕИС(М15)
 СЧИ М14
 И П37
 УИ М14
 СЛИА 24(М14)
 ПБ ВМГ2
*
*
*      Д И Р Е К Т И В А   N 3
ПР3 СЧ ТР5-П(М7)
 УИ М2
 МОДА ПР3Д        ПОСЛЕ
 УИА (М16)
 СЧ К2003
 УИ ’21’
 СЧИ М16
 СДА 64-24
 ЗП 4(М7)         А УХОДА В СЛУЧАЕ ВНУТР.ПРЕРЫВ.
 УИА 3(М17)
 СЧ (М2)
ПР3Ж УИА 3
 СДА 64+12
ПР3В ЗП РЯ2-П(М7)
 СЧМР 64
 РЗБ К1-П(М7)
 МОДА ПР3А-П(М7)
 ЗП (М17)
 СЧ РЯ2-П(М7)
 СДА 64+18
 СЛИА -1(М17)
 МОДА ПР3В
 ПИНО (М17)
ПР3Б СЧИ М2
 СДА 64-33
 РЗБ К1-П(М7)
 ИЛИ КПР3А
 ЗП ПР3А-П(М7)
 СЧ ПР3А+3-П(М7)
 ИЛИ К2-П(М7)
 ЗП ПР3А+3-П(М7)
 УИА ПР3Г-П(М16)
 ПБ ЗВРА-П(М7)
ПР3Д СЧ СМ
 ПБ ПР3Ж
*---------- К В А Н Т ---------*
КВАНТ СЧ КВНЗАД(М14)
 СДА 64+8
 И П17
 ВЧОБ Е4
 УИ М3
 УИА 1027
 СЧ ГРУП(М3)
 ИЛИ Е48-1(М5)
 НТЖ Е48-1(М5)
 ЗП ГРУП(М3)
 СЧ ГРУП+1
 ИЛИ Е48-1(М5)
 ЗП ГРУП+1
 СЧ МКВАНТ
 НТЖ КВНЗАД(М14)
 И П7777
 НТЖ КВНЗАД(М14)
 ЗП КВНЗАД(М14)
 ПБ (М16)
П1РЯ ПАМ 1
П1РЯ1 ПАМ 1
О23П20 КОНД В’-1’М19В’17’
МКВАНТ КОНД В’3576’
D50341 конд	х'999999999999'
КПР3А КОНД П’00000:’
ТУПР КОНД П’2ИДЕТ ’
 ТЕКСТ П’УПР/ВОС↑’
ЗАКПР ТЕКСТ П’2ЗАКАЗ ПРИНЯТ↑’
ТУПРС1 КОНД П’2СКВ 0’В’143’
ТУПРС2 КОНД П’УПРЗ :’
ТКОНЕЦ КОНД М8П’7ЕСТЬ’В’214’
 КОНД П’КОНЕЦ ’
 КОНД П’СЕАНСА’
 КОНД М40В’377’
ТШАЛУН КОНД П’7ШАЛИШ’
 КОНД П’Ь!↑000’
БУФТРВ ПАМ 6
*
*
 ЭКВИВ (ПР1,ПРИК1),(ЕЗВ,Е46)
ПРИКАЗ ВНЕШ ПНЕТ,ТВЫП,РЯ1,РЯ2,РЯ3,К1,К2,ПР3А,ЗВРА
ПРИКАЗ ВНЕШ (П,ПРИКАЗ),ПР3Г,ТЕК3,ТНЕТ
ПРИКАЗ ВНЕШ NПРКАН,NКТСЛ,ВЫДАЧА,NНNУ,СТАТУС
ПРИКАЗ ВНЕШ ЧТБК,ЕСТЬЛИ,КОНЦ1А,КОНЦ4
ПРИКАЗ ВНЕШ КУС,ЕСТЬ,ЗВР2,ПР1А
ПРИКАЗ ВНЕШ КОНВЫД,ПОЛЕ,ТЗНЕТ
БОЭК1 ВНЕШ СЧЕТРВ
ВИСП ВНЕШ ВШГП
ДИСКИ ВНЕШ DЕQ,ЕNQ,МДНЕИС
ДИСП70 ВНЕШ ЗАПВЕТ,ТБУФ,ГАШПРП,АВОСТА,РАБЕ16,УПРЯТ,БУДУПР
ДИСП70 ВНЕШ ШЗУПР,ШККТ,ШЗАПОС,БУДГРА,ГРАСИ,груп1,ГРУП,НЗАД
ДИСП70 ВНЕШ ШКИВ,шзраз1,ШЗРАЗМ,МИН17,ШКЗЗП,РАБШК,ШЗНМБО,ТУСП
ДИСП70 ВНЕШ ТЗНМД,СЧЗАК,РЯОМБ,РЯО,НОММЛ1,НОММБ1,ПОТЕРИ,ШОЧКТ
ДИСП70 ВНЕШ ШИФРАЦ,П12,П377,П177,П30,П37,Е40П1,Е26Е25,Е44Е43
ДИСП70 ВНЕШ МГНЕИС,РАЗМГ,П17,П2007,ИПОБМ,П1777,П7777,ГОД,ШРЕС
ДИСП70 ВНЕШ К2003,Е39П25,П77,ГРН,ГРВ,СМ,КВНЗАД,ЯЧКУПР,ЕКУПР
СОСТАВ ВНЕШ ЧПТ
КАЧКА ВНЕШ ШКРЗ
ПРИКАЗ ВНЕШ РЯ4
ПРИКАЗ ВНЕШ ВОЗБУ1,ТР4,ТР5,ТР6
КИТ ВНЕШ Е48П2,РЗМГЕС,КЛЮМК,ВППС
МОТТ ВНЕШ НОМУС1,ШБУДИЛ,ШКОРАБ
 ФИНИШ
