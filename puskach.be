ПУСКАЧ СТАРТ ’10000’
 УПОТР ПУСКАЧ(М7)
 Б
 Е
 М
ИПЗ КОНД В’0’
 КОНД М41В’3’
 КОНД (21)В’0’
 КОНД В’0’     НЕ ЗАНИМАТЬ
ЗАДА КОНД В’0’
П ТЕКСТ П’0НКЛЮ↑’
ЛУ377 КОНД П’377000’
СБ КОНД П’0ОШИБ↑’
ПЛАН КОНД П’0ПЛАН↑’
ВР КОНД В’-1’
 КОНД В’0’
 ПАМ 1  ПРИП
 КОНД В’0’
 КОНД М47В’1’
НВВД КОНД П’0НВВЕ↑’
ЖДИ1 КОНД П’0ЖДИ.↑’
 КОНД В’0’
З КОНД М16П’З00/’
Т9 КОНД Х’999999999999’
О38П30 КОНД М29В’777’В’-1’
 НОП   *
 НОП   *
 НОП    * КОНЕЦ  И П З *
 НОП   *
 НОП   *
 И П77
 ЗП ЗАДА
 НОП * * *
 НОП * *
 НОП * * ВЫЗОВ  С К О Р 1  И  С К О Р 2 * *
 НОП * * *
 НОП * * *
 МОДА ’1400’(М7)    П У С К А Ч:’ХОЧУ С К О Р 1’
 УИА (М5)
 УИА (М4)
С1 СЧИ М5
 СДА 64-2
 ИЛИ ИНСКОР
 СЛЦ НОММБ1
ВЫЗСК2 ЗП ИНСКО1
 УИИ М16(М5)
 ПБ ФИЗОБМ
С2 СЧ ИНСКО1         П У С К А Ч:’ХОЧУ  С К О Р 2’
 СЛЦ Е1
 ПБ ВЫЗСК2
 НОП * * *
 НОП * *
 НОП *        РАБОТА С ДИСКОМ ВВОДА         *
 НОП * *
 НОП * * *
ДА1 МОДА ПОДКЛ-СК2(М5)
 УИА (М13)
РСК СЧ НОММЛ1
 ПВ ЕNQ(М15)
 СЧ ИНФКАТ
 СЛЦ Е25
 ЗП Р            К У С   БОЛЬШОГО КАТАЛОГА .
 УИА -127(М6)
 НОП *    *  *  *  *  *  *  *  *  *  *  *  *
 НОП *  *
 НОП *  *
 НОП         РАБОТА С КАТАЛОГОМ ШИФРОВ И СВОБОДНЫХ ЗОН  *
 НОП *  *
 НОП *  *
ЧТ СЧ ИНФКАТ
 ПВ ФИЗОБМ(М16)
ПЗ МОДА (М1)      БАЗОВЫЙ АДРЕС Б.К В МОЗУ.
 СЧ КЛЮЧТК+127(М6)
 УИА 3
 НТЖ Т9           ЗАДАЧА С РАЗДЕЛОМ ’ТЕЛЕ’
ПЗ1 ПО ЗСТ
 МОДА ПЗ
 ЦИКЛ (М6)
 ПБ (М13)
ЗСТ МОДА (М1)
 СЧ ШИФТК+127(М6)
 НТЖ Ш
 ПЕ ПЗ1             ШИФР НЕ СОВПАЛ
ЧТ1 СЧ Р
 ПВ ФИЗОБМ(М16)     ЧТЕНИЕ БОЛЬШОГО КАТАЛОГА
 СЛИА 127(М6)
 СЧИ М6
 СДА 64-3
 УИ М12
 СЛИ М12(М1)
 СЧ ЯЧКАТ+6(М12)
 И Е31
 ПЕ (М13)
 СЧ Р          КУС Б.К.
 ЗП ИНФ          ПРИЗН.ДЛЯ  Б З (ОДНОТЕРМИН.З-ЧА)
 УИИ М11(М6)
 МОДА НЧТ
 ПИНО (М4)       ПОИСК СЛЕДУЮЩЕЙ ЗАДАЧИ В РЕШЕНИЕ
 СЧ ЯЧКАТ(М12)
 И О38П30
 ЗП ЯЧКАТ(М12)
 СЧ ЯЧКАТ+6(М12)
 ИЛИ Е32
 НТЖ Е32
 ЗП ЯЧКАТ+6(М12)
 И Е25
 ПО БЕЗАРХ
 СЧ СОБА40
 ПВ ЗАПВЕТ(М16)
 СЧ Е29
 ИЛИ ШАРСИС
 ЗП ШАРСИС
БЕЗАРХ НОП
 СЧ ЗАДА
 ПЕ МММ
 СЧ ШКАС
 И Е48-1(М2)
 ПО МММ
 СЧ ТСЛ-1(М2)
 И Е48П41
 СДА 64+11
 ИЛИ Е38
 ПБ ЗТ
МММ СЧ ГОД
 СДА 64-45
 ЗП Р1          НОМЕР МАШИНЫ.
 СЧ ЯЧКАТ+7(М12)
 ИЛИ Е46П48
 НТЖ Е46П48
 ИЛИ Р1
 ЗП ЯЧКАТ+7(М12)
 СЧ ЗАДА
 ПЕ МСМ
 СЧИ М2
 СДА 64-29
ЗТ ИЛИ ЯЧКАТ(М12)
 ЗП ЯЧКАТ(М12)
МСМ УИА 1027
 СЧ ШКИВ
 ИЛИ Е6         ВЫЗОВ БЮДЖ.С-МЫ
 ПБ ПР-СК2(М5)
ОТВЕТ СЧИ М15
 ЗП (М2)
МОЛ МОД ЗАДА
 СЧ Е48-1
 ПВ ВШГП(М15)
 СЧ 0
 ЗП ЗАДА
КУДА НОП ,
* СЧ 0
* ЗП РАБРАЗ
* ЗП ФОРРАЗ
 СЧ ПРСК1
 ПЕ НАШКПУ-СК1(М5)
 СЧ Е1
 ЗП ПРСК2     GО ТО  НА  ШКПУСК  В  СК О Р 1.
 ПБ С1      СМЕРТЬ  С К О Р 2.
ЗПК СЧ Р
 НТЖ Е18       ЗАПИСЬ В Б.К.
ЗПК0 ПВ ФИЗОБМ(М16)
ОСВ СЧ НОММЛ1
 ПВ DЕQ(М15)
 УИА 3
 ПБ (М13)
НЧТ СЛИА -126(М6)
 ПБ ЧТ
ВЫД УИА СБ-ПУСКАЧ(М16)
 ПБ НДС1
СТОПСП УИА БУФ-ПУСКАЧ(М16)
 ПБ ВЫДАЧА
СТОП УИА П1-ПУСКАЧ(М16)
 ПБ НДС1
ОБЩ СЛИ М16(М5)
 МОДА ВЫХ2
 УИА (М13)
 ПБ РУ
НЕВВД УИА НВВД-ИПЗ(М16)
 УИА 1(М15)
 ПБ НДС1
*
*
ФЗП1 СЧИ М16
 СДА 64-40
 РЗБ ЛУ377
 ИЛИ =П’000↑00’
 ЗП БУФ+1         N СКВ
 СЧ ПРЕДЕЛ
 И Е17
 ПО ФЗП3
 СЧ П1            С: СТОП <N СКВ>
 ИЛИ П17
ФЗП2 ЗП БУФ
 МОДА ФЗ1-СК2(М5) ВОЗВ.ПОСЛЕ ПЕЧАТИ
 УИА (М13)
 УИА БУФ-ПУСКАЧ(М16)
 ПБ ВЫДАЧА
ФЗП3 СЧ ТФОРМ
 ПБ ФЗП2         С: Ф <СКВ>
ВП ЗП RR
 МОДА ВЫХ2
 УИА (М14)
 СЧ ШКОК
 МОД ЗАДА
 И Е48-1
 ПЕ ДС-СК2(М5)
 ПБ КИГ-СК2(М5)
ВЫХ2 УИА ’2003’
 СЧ ЗАДА
 ПЕ КУДА
 СЧ ШЗПРИМ
 ИЛИ Е48-1(М2)
 НТЖ Е48-1(М2)
 ЗП ШЗПРИМ
 СЧ ШКЗАК
 И Е48-1(М2)
 ПО КУДА
 СЧ ШКОРАБ
 ИЛИ ЕВЫД
 ЗП ШКОРАБ
 ПБ КУДА
НДС УИА П-ПУСКАЧ(М16)
 УИА 4(М15)
НДС1 МОДА ВЫХ2
 УИА (М13)
ВЫДАЧА СЛИ М16(М7)
 СЧ ЗАДА
 ПЕ ОШИ
 УИА 3
РУ УИИ М3(М2)
 СЛИА -1(М3)
 СЧИ М3
 СДА 64-40
 ЗП Р
 СЧ Е48П41
 ИЛИ (М16)
 НТЖ Е48П41
 ИЛИ Р
 ИЛИ Е48
 ЗП (М16)
 УИИ М32(М13)
 СЧ Е23
 ПБ ТВ40
*
ВЫХ1 СЧ ИНФКАТ
 ПВ ТБУФ(М15)
ВЫХ ПРЕ 3
*   РОСПИСЬ РАБОЧИХ ЯЧЕЕК ДЛЯ РЕЕНТЕРАБЕЛЬНОСТИ
 УИА LРОСП(М1)
 СЧ 0
РОСРР МОДА -LРОСП(М1)
 ЗП ЯРОСП
 МОДА РОСРР
 ЦИКЛ (М1)
 СЧ Е34
 ПБ ОТКАЗН
ОШИ УИА 1027
 ПБ ОТВЕТ
ВС МОДА ВС1
 ЦИКЛ (М14)
 СЛИА 1(М11)
 УИА -5(М14)
 СЧИ М11
 ВЧ АН-СК2(М5)
 НТЖ П12         ПРОСМОТРЕТЬ 12 ЯЧ.БУФ.
 И П17
 ПО ВЫД
 СЧ (М11)
 ЗП Р
ВС1 СЧ Р
 СДА 64-8
 ЗП Р
 СЧМР 0
 ЗП СИ
 ПБ (М16)
ШИФ КОНД П’ЗАПШИФ’
ТОСТ КОНД П’0ОСТ.0’
 КОНД П’ МИН.↑’
ИНСКОР КОНД М17В’1’М2В’10’В’2’
НЕВШ ТЕКСТ П’0НШИФ↑’
П1 КОНД П’0СТОП↑’
Л173 КОНД М41В’173’
ТФОРМ КОНД М32П’0Ф’М24В’143’М16В’143’М8В’143’В’143’
****** СЛЕДУЮЩИЕ 6 ЯЧЕЕК НЕ РАЗДЕЛЯТЬ
ВТТ ПАМ 1
 КОНД М24В’1040’
ДЕЛ ПАМ 1
 КОНД М24В’130’
ИНФКАТ ПАМ 1
 КОНД М17В’1’М24В’445’
*
ТПШ КОНД Х’419988776655’
* СЛЕДУЮЩИЕ ЯЧЕЙКИ ПРИ ВЫХОДЕ РАСПИСЫВАЮТСЯ
*******************************************
ЯРОСП НОП
 КОНД (2)В’0’       ОТ ТПШ НЕ ОТДЕЛЯТЬ
*
ПУСТИ КОНД В’0’
*
ШКО КОНД (5)В’0’
*
ШКН КОНД (5)В’0’
*
ТРМ КОНД (5)В’0’
*
ШКОТ КОНД (2)В’0’
*
КВАНТ КОНД В’0’
*
Ф ПАМ 1
Р1 КОНД В’0’
ИНСКО1 КОНД В’0’
ИНФ КОНД В’0’
Р КОНД В’0’
СИН КОНД В’0’
К КОНД В’0’
NТ ПАМ 1
АРК ПАМ 1
Ш ПАМ 1
СИ ПАМ 1
ПРСК1 ПАМ 1
ПРСК2 ПАМ 1
БУФ ПАМ 21
RR КОНД В’0’
LРОСП ЭКВ ЯРОСП-*+1
********************************************
ДИСП70 ВНЕШ П77,Е46П48,Е48П43,П17,П12
ВИСП ВНЕШ ВШГП
ДИСП70 ВНЕШ ШКИВ,ТСЛ,ТВ40,ОТКАЗН,ГОД,ТБУФ
ДИСП70 ВНЕШ НОММБ1,НОММЛ1,РЯПСЗ,ЗАПВЕТ,ШАРСИС
КИТ ВНЕШ Е48П41
ВЗУ ВНЕШ ФИЗОБМ
МОТТ ВНЕШ ШКОПТТ,НОМУС,НОМУСД,ШЗПРИМ,ШКАС
МОТТ ВНЕШ ШКЗАК,ШКОРАБ,ЕВЫД
ДИСП70 ВНЕШ ПРЕДЕЛ,ШКОК
ДИСКИ ВНЕШ DЕQ,ЕNQ
СКОР2 ВНЕШ (СК2,СКОР2),ПОДКЛ,ПР,АН
СКОР2 ВНЕШ ДС,КИГ,ФЗ1,КП
СКОР1 ВНЕШ (СК1,СКОР1),НАШКПУ
 ВХОД ФЗП1
 ВХОД К,ВР,Ф,ЖДИ1,ВТТ,ИНФ,БУФ,С2,ОТВЕТ,РУ,СИН
 ВХОД ИНФКАТ,ШИФ,Р,Р1,ВЫД,НДС,СИ,ВС,НЕВВД,ОСВ
 ВХОД НДС1,ДА1,Ш,СТОП,ЗПК,МОЛ,НЧТ,РСК,ВЫХ2,ВЫХ1
 ВХОД ПЛАН,НЕВШ,ПРСК1,ПРСК2,ОБЩ,ЗАДА,ЧТ1,RR
 ЭКВИВ (КЛЮЧТК,128),(ЯЧКАТ,0),(ШИФТК,0)
*
** ДЛЯ ТЕРМИНАЛЬНОГО РАСПИСАНИЯ **
*
*
*  ПОДПРОГРАММА ПРЕОБРАЗУЕТ <СМ> В СДВИГ В ЯЧЕЙКЕ И НОМЕР
*  ЯЧЕЙКИ ОБОБЩЕННОЙ ШКАЛЫ РАСПИСАНИЯ РАБОТЫ ТЕРМИНАЛОВ.
*  ИНФОРМАЦИЯ В ОБОБЩЕННОЙ ШКАЛЕ РАЗМЕЩЕНА СЛЕДУЮЩИМ ОБРАЗОМ:
*
*  БИТЫ   1 - 64  =>  ТЕРМИНАЛЫ<->РЕЖИМ ОДНОСТАНОЧНЫЙ
*  БИТЫ  65 - 128 =>  ТЕРМИНАЛЫ<->РЕЖИМ МНОГОСТАНОЧНЫЙ
*  БИТЫ 129 - 228 =>  ОТДЕЛЫ <-> ПО  О Г  ШИФРА 00-99
*  ВХОДНОЙ ПАРАМЕТР  - N БИТА - НА СУММАТОРЕ.
*  ВЫХОДНОЙ ПАРАМЕТР - ОТНОСИТЕЛЬНЫЙ АДРЕС ЯЧЕЙКИ -> <М16>
*  ВЫХОДНОЙ ПАРАМЕТР - ВЕЛИЧИНА СДВИГА -> ОТ Е48  -> <М17>
*  ВЫХОДНОЙ ПАРАМЕТР - БИТ = 1 В НУЖНОЙ ПОЗИЦИИ ---> <СМ>
*  АДРЕС ВОЗВРАТА   <=> <М15>
*
I ВЧ Е1
IО УМН С1ОТ48    УМН. НА 1/48
 УИ М16    ОТН. АДР.Я-КИ
 СЧМР 64
 УМН Ц48  ДРОБ.ЧАСТЬ*48
 УИ М17     СДВИГ -->  ОТ  Е48
 СЧ Е48(М17)     БИТ В ПОЗИЦИЮ СМ
 ПБ (М15)     ВЫХОД К ЗАКАЗЧИКУ
С1ОТ48 КОНД М47В’1’В’252525252526’
Ц48 КОНД М47В’1’Ф’48’
КЛЮСЭИ КОНД П’БАЙКАЛ’
ШИ КОНД П’0ШИФР↑’
ВАШ КОНД П’0ВАШ:↑’
ТКЛЮ КОНД П’0КЛЮЧ↑’
ТРЖО КОНД П’0РЖ.О↑’
ТРЖМ КОНД П’0РЖ.М↑’
ШС КОНД М24Х’419999’
МИН КОНД В’5670’
ТМИН4 КОНД В’27340’
*
*   ВЫХОД ИЗ СКОР2. ЗАКРЫТ ПО РАСПИСАНИЮ.
*
МШ1 УИА ПЛАН-ПУСКАЧ(М16)
НДС0 УИА 5(М15)
 ПБ НДС1
*
* ВЫХОД НА ОДНОСТАНОЧНУЮ СИСТЕМУ
*
ОДИН НОП ,
* СЧ РАБРАЗ
* ЗП ФОРРАЗ        ДОП.РАЗДЕЛЫ ПАСПОРТА ТОЛЬКО У 1-НО ТЕР.ЗАДАЧ
 МОДА ДА1
 ПИО (М4)     --> ШИФР ЕСТЬ
 УИА ШИ-ПУСКАЧ(М16)
 ПБ НДС1
*
* ВЫХОД НА МНОГОСТАНОЧНУЮ СИСТЕМУ
*
Я3 СЧИ М11
 ПВ ПЕРЕВ(М15)
 СЛЦ ШС
 ЗП Ш
 СЧ 770(М12)
 ПО ДА1
 ЗП Ш
 СЧ 771(М12)
 ПО ДА1
 СЧ 770(М12)
 СДА 64-1
 НТЖ 771(М12)
 НТЖ 2(М12)
 НТЖ 3(М12)
 ЗП КП-СК2(М5)
 ПБ ДА1
*
ВЭКСТР НОП .             ЭК.ПОДЧ.ЗАДАЧИ
 ПРЕ 3
 МОД ЗАДА
 МОД ТУСП-1
 УИА (М2)
 СЧ (М2)
 НТЖ Е48П25
 СДА 64+15
 УИА 1(М15)
 ПЕ ОТВЕТ
 МОД (М2)
 УИА (М16)
  МОДА ЧЛИСТ
 УИА (М15)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 СЧ МГРП
 И ЕСТОП
 УИА 5(М15)
 ПЕ ОТВЕТ
 УИА -4(М15)
**
СС УИА
 МОДА 4(М15)
 СЧ (М16)
 УИА 3
 МОДА 4(М15)
 ЗП БУФ
 МОДА СС
 ЦИКЛ (М15)
 СЧ БУФ+3
 ИЛИ П377
 ЗП БУФ+3
 СЧ БУФ+4
 ПО С2
 НТЖ ВСЕЕД
 ПО ЭЗЛСВ
 СЧ БУФ
 СДА 64+24
 НТЖ ШИФ
 И Е24П1
 УИА 2(М15)
 ПЕ ОТВЕТ
 УИА -МЧПЗ(М15)
НАН МОД ТУСП+МЧПЗ+НПЗ(М15)
 УИА (М16)
 СЧ ШИФРМ(М16)
 НТЖ БУФ+4
 ПО ЕСГЛ
 МОДА НАН
 ЦИКЛ (М15)
 УИА 2(М15)
 ПБ ОТВЕТ
ЧЛИСТ УИА 4(М15)
 ПБ ОТВЕТ
ЕСГЛ СЧ Е48
 ЗП СИН
 ПБ С2
ЭЗЛСВ СЧ ПРЕДЕЛ
 И Е28
 ПО НЕТСВ
	уиа	'2003'
	рег	'101'
	сч	D50444
	зп	'3775'
	сч	D50445
	зп	Э76
	сч	КУСЛСВ
	слц	НОММЛ1
	пв	ФИЗОБМ(М16)
	уиа	-1(М15)
	пб	ОТВЕТ
НЕТСВ УИА ’10000’(М15)
 ПБ ОТВЕТ
D50444	сч	б1
	пб	сис1
D50445	пб	Э77
КУСЛСВ КОНД В’6160074000’
ТЕК	конд	в'2240000057000000'
ДИСП70 ВНЕШ Э76,Э77,ТУСП,ШИФРМ,МГРП,МЧПЗ,НПЗ
ДИСП70 ВНЕШ Е48П25,ВСЕЕД,П377,Е24П1
ДИСП70 ВНЕШ ЕСТОП,б1
БОЭК1 ВНЕШ ЗАПВЫХ
ВЗУ   ВНЕШ сис1
*
 ВХОД ТПШ,ТРМ,ШКОТ,ШКН,ШКО,АРК,NТ,КВАНТ,ВАШ,ТКЛЮ
 ВХОД ТОСТ,ВЫДАЧА,I,IО,ТРЖО,ТРЖМ,П,ЗПК0,ВЭКСТР
 ВХОД ЛУ377,КЛЮСЭИ,ШС,ДЕЛ,МИН,ТМИН4,ШИ,ПУСТИ
 ВХОД ОДИН,Я3,МШ1,НДС0,Л173,ВП,ТЕК
 ВХОД З
ДИСП70 ВНЕШ ИЗ10В8,ПЕРЕВ,ВРЕМЯ,СОБА40
*
* НА СВС ПОСЛЕ ЭТОГО ИДЕТ
*
* ОБРАБОТКА ДОПОЛНИТЕЛЬНЫХ РАЗДЕЛОВ ПАСПОРТА
* ...
* ФОРМИРОВАНИЕ ЗАДАЧИ
*
МОТТ ВНЕШ ПРОБ6
СКОР2 ВНЕШ ВШ2,ЭФЗ
СОСТАВ ВНЕШ АТ
 ФИНИШ ПУСКАЧ
*КОНЕЦ ЧАСТИ
