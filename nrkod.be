*
НРКОД СТАРТ ’10000’ ПОИСК В ОТЛАДЧИКЕ ОС
*
 М
 Е
 ЭКВИВ (Н,НРКОД),(П1,Е1)
 УПОТР НРКОД(М6)
НАЧН УИИ М12(М1)
 УИИ М11(М13) ПОЗИЦИЯ ЧТЕНИЯ
 МОДА ПРОГДН
 ПВ (М15)
 МОДА ОШ-НРОТ(М7)
 ПИО (М16) НЕТ ИНФ.
 МОДА С
 ПВ (М16)
 ЗП ЯЧКОД
 СЧ ’4000’+’42’   ОТЛАДКА	свс: +'50'
 УИА 3
 МОДА ВЫДЯЧ
 ПИО (М5)    ВЫДАЧА МАССИВА
 УИИ М5(М14)
 МОДА ПРОГДН
 ПВ (М15)
 МОДА ОШ-НРОТ(М7)
 ПИО (М16)
 УИИ М14(М12)
 МОДА ОБРАЗ
 УИА (М12)
 МОДА МАСКА
 УИА (М16)
 МОДА КDL
 ПВ (М15)
* НАЧАЛО ПОИСКА В ОЗУ ЗАДАЧИ
 СЧ МАСКА
 ПО ОШ-НРОТ(М7) НЕЧЕГО ИСКАТЬ
 МОДА ЗПНОВ
 ПИНО (М10)
 ИЛИ ОБРАЗ
 ЗП РАБ
 МОДА КОНКОД-1
 СЧ (М4)
 СДА 64+15
 И П37
 УИ М4  СДВИГ ПО КОДИРОВКАМ
 УИА 0(М2) ЧИСЛО ПРОХОДОВ
ЧПР СЧ РАБ
 СДА 64(М4)
 ЗП РАБ
 СЧМР
 ПЕ УСТПР
 СЧ МАСКА
 СДА 64(М4)
 ЗП МАСКА
 СЧ ОБРАЗ
 СДА 64(М4)
 ЗП ОБРАЗ
 СЛИА -1(М2)
 ПБ ЧПР
УСТПР УИА -14(М5) 15 ОБРАЗОВ
 УИА 1(М1) ВО ВСЕЙ ПАМЯТИ
 МОДА НОВЛИ
 УИА (М15)
МАТПР МОДА ЧЛИСТ
 УИА (М16)
 СЧИ М16
 ПБ ЗАПВЫХ
НОВЛИ МОДА ПРОЧЛИ
 ПВ (М16)
СЧФЯ УИА 1024
 СЧ (М1)
 СЧ (М1)
 УИА 3
 ЗП АДРЕС
 УИИ М16(М2)
ЦИКП ЗП РАБ
 НТЖ ОБРАЗ
 И МАСКА
 ПО НАШЕЛ
 СЧ РАБ
 СДА 64(М4)
 МОДА ЦИКП
 ЦИКЛ (М16)
ВХНО СЛИА 1(М1)
 МОДА ОТКПР-НРОТ(М7)
 ПИО (М1)
 МОДА ЦВЫД
 ПИО (М4)   ЭТО НЕ ПОИСК
 СЧИ М1
 И П1777
 ПО НОВЛИ
 ПБ СЧФЯ
ВЫДЯЧ УИИ М1(М10)  АДРЕС ЯЧ.
 УИА 0(М4)   ЭТО НЕ ПОИСК
 УИИ М5(М14)
 МОДА ЦВЫД
 ПИНО (М10)
 МОДА (М14)
 СЧ (М3)         СМ ИЛИ РМР (ИЗ ОВД)
 УИА 0(М5)       1 ЭЛЕМЕНТ
 ЗП АДРЕС
 ПБ НАШЕЛ
ЦВЫД МОДА ПРОЧЛИ
 ПВ (М16)
 УИА 1024
 СЧ (М1)
 СЧ (М1)
 УИА 3
 ЗП АДРЕС
НАШЕЛ СЧИ М1
 СДА 64-48+15
 РЗБ Т77777
 ИЛИ НТ-НРОТ(М7)
 МОДА БФВВ
 УИА (М16)
 ЗП (М16)
 СЧ ПРОБ6
 ЗП 1(М16)
 МОДА АДРЕС
 УИА (М12)
 УИА 0(М16)
 МОДА БФВВ+2
 УИА (М14)
 УИА -48(М13)
 УИИ М10(М4) ПОРТИТ КDL
 МОДА КDL
 ПВ (М15)
 УИИ М4(М10)
 СЧ П377
 МОДА З
 ПВ (М16)
 МОДА УСТМЧ
 УИА (М15)
 МОДА БФВВ
 УИА (М16)
 УИИ ’32’(М15)
 СЧ Е23
 ПБ ТВ40
УСТМЧ МОДА ВХНО
 УИА (М15)
 МОДА МАТПР
 ЦИКЛ (М5)
 ПБ ОТКПР-НРОТ(М7) КОНЕЦ РАБОТЫ
ЗПНОВ УИА 1024
 СЧ (М10)
 УИА 3
 НТЖ ОБРАЗ
 И МАСКА
 УИА 1024
 НТЖ (М10)
 ЗП (М10)
 СЛИА 1(М10)
 МОДА ЗПНОВ
 ЦИКЛ (М5)
 УИА 3
 ПБ ОТКПР-НРОТ(М7)
ЧЛИСТ МОДА ОШ-НРОТ(М7)
 ПИО (М4)     ЧЛИСТ ПРИ ЧТЕНИИ
 СЛИА 1024(М1)
 СЧИ М1
 ИЛИ П1777
 НТЖ П1777
 УИ М1
 СЛИА -1(М1)
 ПБ ВХНО
ПРОЧЛИ СЧИ М1
 СДА 64+10
 НТЖ П37
 УИ М15
 СЧ ’26’(М3)
 НТЖ ’40’(М3)
 И Е48(М15)
 ПЕ ЧЛИСТ
 СЧ ЛИСТМБ(М3)
 И Е48(М15)
 ПЕ ЧЛИСТ
 ПБ (М16)
АДРЕС КОНД В’0’
ОБРАЗ КОНД В’0’
МАСКА КОНД В’0’
Т77777 КОНД П’77777’
ПРОБ6 КОНД П’.     ’
РАБ   КОНД В’0’
БФВВ ПАМ ’700’+НРКОД-*
*
КDL НОП ПЕРЕКОДИРОВЩИК
*
*           ЯЧКОД - КОДИРОВКА
*           (У,I,И,Т,Л,Х,Б,Ш,К,Ч)
*           М12 - АДРЕС ЯЧЕЙКИ КОД
*           М14 - АДРЕС МАССИВА УПП
*           М16 - АДРЕС МАСКИ
*           М16 = 0  -  КОД ---->> УПП
*
 МОДА М
 УИА (М17)
 СЧИ М15  - УПРЯТАТЬ
 ЗП И15
 УИА -КОНКОД+КОДЫ+1(М4)
УСТКОД МОДА КОНКОД-1
 СЧ (М4)
 СДА 64+40
 НТЖ ЯЧКОД
 ПО ЕСКОД
 МОДА УСТКОД
 ЦИКЛ (М4)
 УИА КВ-КОНКОД+1(М4)  - ПО УМОЛЧАНИЮ
ЕСКОД МОДА КОНКОД-1
 СЧ (М4)
 СЧИМ М16
 УИ М15
 ЗПМ Р
 МОДА ОТР
 ПИНО (М15)
 УИ М16
 СЛИ М16(М6)
 УИА 48(М11)
 ПБ (М16)
ОТР СДА 64+24
 УИ М16
 СЧ
 ЗП (М15)
 ЗП (М12)
 СЧИ М12
 ЗП 1(М17)
 УИИ М12(М14)
 УИ М14
 УИА -48(М13)
 СЛИ М16(М6)
 ПБ (М16)
*
КОДЫ НОП * ПЕРЕКЛЮЧАТЕЛЬ КОДИРОВОК *
*
 ДК ’06’,МУ-Н(3)
 ДК 8,ПУ-Н        УПП
 ДК ’04’,МI-Н(4)
 ДК 8,ПI-Н        ISО
 ДК ’20’,МУ-Н(2)
 ДК 8,ПУ-Н        ИТМ
 ДК ’04’,МТ-Н(3)
 ДК 6,ПТ-Н        ТЕХТ
КВ ДК ’26’,МВ-Н(2)
 ДК 3,ПВ-Н        ВОСЬМЕРИЧНАЯ
 ДК ’12’,МХ-Н(3)
 ДК 4,ПХ-Н        ШЕСТНАДЦАТИРИЧНАЯ
 ДК ’02’,МБ-Н(2)
 ДК 8,ПБ-Н        БАЙТЫ
 ДК ’20’,МШ-Н(3)
 ДК 1,ПШ-Н        БИТЫ
 ДК ’24’,МК-Н(2)
 ДК 24,ПК-Н        КОМАНДЫ
 ДК ’16’,МД-Н(3)
 ДК 24,ПД-Н        ДЕСЯТИЧНАЯ
*
КОНКОД НОП ,      КОНЕЦ КОДИРОВОК
*
ПУ НОП *               УПП --> УПП
*
DУ МОДА С
 ПВ (М16)
 МОДА З
 ПВ (М16)
 МОДА DУ
 ПИНО (М11)
 ПБ ВЫХ
*
МУ НОП *               УПП --> УПП
*
FУ МОДА С
 ПВ (М16)
 НТЖ П377
 ПО ВЫХ
 НТЖ П377
 МОДА З
 ПВ (М16)
 СЧ П377
 СДА 64(М13)
 ИЛИ (М15)
 ЗП (М15)
 МОДА FУ
 ПИНО (М13)
 ПБ ВЫХ
*
ПI НОП *               ISО --> УПП
*
МI НОП *               УПП --> ISО
*
 УИА -5(М17)
 МОДА DI
 ПИО (М15)
 УИА 9(М15)
DI МОДА С
 ПВ (М16)
 МОДА ГI
 ПИО (М15)
 НТЖ П377
 ПО ВЫХ
 СЧ П377
 СДА 64+8(М13)
 МОД Р
 ИЛИ (0)
 МОД Р
 ЗП
 СЧ СИМВ
ГI И П177
 УИ М16
 МОДА СЛОВАК
 СЧ (М16)
 СДА 64(М15)
 И П177
 МОДА З
 ПВ (М16)
 МОДА DI
 ЦИКЛ (М17)
 ПБ ВЫХ
*
ПТ НОП *              ТЕХТ --> УПП
*
 МОДА 2
*
МТ НОП *              УПП --> ТЕХТ
*
 УИА (М15)
 СЧ
 ЗП (М14)
 УИА -7(М16)
ЦТ МОДА ШТ
 ПИНО (М11)
 СЛИА 1(М12)
 УИА 48(М11)
ШТ МОДА (М15)
 СЛИА -8(М11)
 МОДА РТ
 ПИНО (М13)
 СЛИА 1(М14)
 УИА -48(М13)
 СЧ
 ЗП (М14)
РТ МОДА (М15)
 СЛИА 6(М13)
 СЧ (М12)
 СДА 64(М11)
 МОДА ГТ
 ПИНО (М15)
 И П377
 НТЖ П377
 ПО ВЫХ
 НТЖ П377
 СЧМ П77
 СДА 64(М13)
 МОД Р
 ИЛИ (0)
 МОД Р
 ЗПМ (0)
ГТ МОДА (М15)
 И П177
 ЗП (М17)
 МОД (М17)
 МОДА СЛОВАК
 СЧ
 СДА ’111’
 МОДА GТ
 ПИО (М15)
 СДА ’130’
GТ И П177
 ЗП (М17)
 МОД (М17)
 МОДА СЛОВАК
 СЧ
 МОДА DТ
 ПИО (М15)
 И П177
 ПБ FТ
DТ СДА ’130’
 И П77
FТ СДА 64(М13)
 ИЛИ (М14)
 ЗП (М14)
 МОДА ЦТ
 ЦИКЛ (М16)
 ПБ ВЫХ
*
ПВ НОП *      ВОСЬМЕРИЧНАЯ --> УПП
*
ЦВ СЛИА -3(М11)
 СЧ (М12)
 СДА 64(М11)
 И П7
 МОДА З
 ПВ (М16)
 МОДА ЦВ
 ПИНО (М11)
 ПБ ВЫХ
*
МВ НОП *      УПП --> ВОСЬМЕРИЧНАЯ
*
ШВ МОДА С
 ПВ (М16)
 СЛИА 3(М13)
 НТЖ П377
 ПО ВЫХ
 НТЖ П377
 И П7
 НТЖ СИМВ
 ПЕ НЕЦ
 СЧ П7
 СДА 64(М13)
 ИЛИ (М15)
 ЗП (М15)
НЕЦ СЧ СИМВ
 И П7
 СДА 64(М13)
 ИЛИ (М14)
 ЗП (М14)
 МОДА ШВ
 ПИНО (М13)
 ПБ ВЫХ
*
ПХ НОП *       ШЕСТНАДЦАТЬ --> УПП
*
ПР СЛИА -4(М11)
 СЧ (М12)
 СДА 64(М11)
 И П17
 ЗП (М17)
 ВЧ П12
 ПЕ ЦИФ
 ИЛИ С0
 РЖА 2
 УМН D8
 РЖА 3
 СЛ С0
 УИ М15
 СЧ БУК
 СДА 64(М15)
 ЗП -1(М17)
ЦИФ СЧ (М17)
 МОДА З
 ПВ (М16)
 МОДА ПР
 ПИНО (М11)
 ПБ ВЫХ
*
МХ НОП *       УПП --> ШЕСТНАДЦАТЬ
*
СТ МОДА С
 ПВ (М16)
 СЛИА 4(М13)
 НТЖ П377
 ПО ВЫХ
 НТЖ П377
 ВЧ П12
 ПЕ ЦЕН
 УИА 48(М14)
НУ СЛИА -8(М14)
 СЧ БУК
 СДА 64(М14)
 И П377
 НТЖ СИМВ
 ПО НАЙ
 МОДА НУ
 ПИНО (М14)
 ПБ НЕТ
НАЙ СЧИ М14
 ИЛИ С0
 ДЕЛ D8
 СЛ С0
 НТЖ С0
 СЛ П12
 ЗП СИМВ
ЦЕН СЧ П17
 СДА 64(М13)
 ИЛИ (М15)
 ЗП (М15)
НЕТ СЧ СИМВ
 И П17
 СДА 64(М13)
 МОД 1(М17)
 ИЛИ (0)
 МОД 1(М17)
 ЗП (0)
 МОДА СТ
 ПИНО (М13)
 ПБ ВЫХ
*
ПБ НОП *              БАЙТ --> УПП
*
VБ УИА -1(М15)
 СЧ (М12)
 СЛИА -2(М11)
 СДА 64(М11)
 И П3
 МОДА З
 ПВ (М16)
ПОС СЛИА -3(М11)
 СЧ (М12)
 СДА 64(М11)
 И П7
 МОДА З
 ПВ (М16)
 МОДА ПОС
 ЦИКЛ (М15)
 СЧ П17
 МОДА З
 ПВ (М16)
 МОДА VБ
 ПИНО (М11)
 ПБ ВЫХ
*
МБ НОП *              УПП --> БАЙТ
*
КФ УИА 3(М14)
 МОДА С
 ПВ (М16)
 СЛИА -1(М14)
 НТЖ П377
 ПО ВЫХ
 НТЖ П377
 СЛИА 2(М13)
 И П3
 НТЖ СИМВ
 ПЕ НЧ
 СЧ П3
 СДА 64(М13)
 ИЛИ (М15)
 ЗП (М15)
НЧ СЧ СИМВ
 И П3
НЧ1 СДА 64(М13)
 МОД 1(М17)
 ИЛИ (0)
 МОД 1(М17)
 ЗП (0)
 МОДА ВЫХ
 ПИО (М13)
 МОДА ДБ
 ПИО (М14)
 МОДА С
 ПВ (М16)
 СЛИА -1(М14)
 НТЖ П377
 ПО ВЫХ
 НТЖ П377
 СЛИА 3(М13)
 И П7
 НТЖ СИМВ
 ПЕ НЧ
 СЧ П7
 СДА 64(М13)
 ИЛИ (М15)
 ЗП (М15)
 СЧ СИМВ
 И П7
 ПБ НЧ1
ДБ МОДА С
 ПВ (М16)
 НТЖ П377
 ПО ВЫХ
 НТЖ П377
 НТЖ П17
 ПЕ ОШ-НРОТ(М7)
 МОДА КФ
 ПИНО (М13)
 ПБ ВЫХ
*
ПШ НОП *          ДВОИЧНАЯ --> УПП
*
GШ УИА -7(М15)
ПЧ СЛИА -1(М11)
 СЧ (М12)
 СДА 64(М11)
 И П1
 МОДА З
 ПВ (М16)
 МОДА ПЧ
 ЦИКЛ (М15)
 СЧ П17
 МОДА З
 ПВ (М16)
 МОДА GШ
 ПИНО (М11)
 ПБ ВЫХ
*
МШ НОП *          УПП --> ДВОИЧНАЯ
*
ЦЦ УИА -7(М17)
СШ МОДА С
 ПВ (М16)
 СЛИА 1(М13)
 НТЖ П377
 ПО ВЫХ
 НТЖ П377
 И П1
 НТЖ СИМВ
 ПЕ ДЕЦ
 СЧ П1
 СДА 64(М13)
 ИЛИ (М15)
 ЗП (М15)
ДЕЦ СЧ СИМВ
 И П1
 СДА 64(М13)
 ИЛИ (М14)
 ЗП (М14)
 МОДА ОШ-НРОТ(М7)
 ПИО (М13)
 МОДА СШ
 ЦИКЛ (М17)
 МОДА С
 ПВ (М16)
 НТЖ П377
 ПО ВЫХ
 НТЖ П377
 НТЖ П17
 ПЕ ОШ-НРОТ(М7)
 ПБ ЦЦ
*
ПК НОП *           КОМАНДЫ --> УПП
*
 УИА -2(М16)
КОМ СЧ (М12)
 МОДА ПЕ
 ПИНО (М16)
 СДА 64-24
ПЕ ЗП (М17)
 ЗП (М17)
 СДА 64+43
 И П1
 УИМ М11
 МОДА (М11)
 РЗБ ИК
 МОДА (М11)
 ИЛИ ИБ
 МОДА 2(М16)
 ЗПМ (М14)
 СДА 64-9
 РЗБ АИ+1
 МОДА (М11)
 ИЛИ АБ
 МОДА 2(М16)
 ЗП 1(М14)
 СЛИА 2(М16)
 МОДА КОМ
 ПИО (М16)
 УИА -48(М13)
 СЛИА 4(М14)
 ПБ ВЫХ
*
МК НОП *           УПП --> КОМАНДЫ
 МОДА С
 ПВ (М16)
 НТЖ П377
 ПО ОШ-НРОТ(М7)
 СЧ СИМВ
 ВЧОБ П1
 ПЕ НИР1
 МОДА П1
НИР1 СЧ
 ИЛИ (М15)
 СДА 64-3
 ЗП (М15)
 СЧ СИМВ
 И П1
 ИЛИ (М14)
 СДА 64-3
 ЗП (М14)
 МОДА С
 ПВ (М16)
 НТЖ П377
 ПО ОШ-НРОТ(М7)
 СЧ СИМВ
 ВЧОБ П7
 ПЕ НИР2
 МОДА П7
НИР2 СЧ
 ИЛИ (М15)
 СДА 64-2
 ЗП (М15)
 СЧ СИМВ
 И П7
 ИЛИ (М14)
 СДА 64-2
 ЗП (М14)
 МОДА С
 ПВ (М16)
 НТЖ П17
 ПЕ ОШ-НРОТ(М7)
 МОДА С
 ПВ (М16)
 НТЖ П377
 ПО ОШ-НРОТ(М7)
 СЧ СИМВ
 ВЧОБ П3
 ПЕ НЕК1
 МОДА П3
НЕК1 СЧ
 ИЛИ (М15)
 СДА 64-3
 ЗП (М15)
 СЧ СИМВ
 И П3
 ИЛИ (М14)
 СДА 64-3
 ЗП (М14)
 МОДА С
 ПВ (М16)
 МОДА ЗАНК
 ПВ (М16)
 СЧ (М14)
 И Е8
 ПО КОРАД
 МОДА С
 ПВ (М16)
 НТЖ П17
 ПЕ ОШ-НРОТ(М7)
КОРАД МОДА С
 ПВ (М16)
 МОДА ЗАНК
 ПВ (М16)
 И Е11
 ПЕ ДЛАД
 МОДА С
 ПВ (М16)
 НТЖ П17
 ПЕ ОШ-НРОТ(М7)
ДЛАД УИА -2(М13)
ЦПРА МОДА С
 ПВ (М16)
 МОДА ЗАНК
 ПВ (М16)
 МОДА ЦПРА
 ЦИКЛ (М13)
 МОДА С
 ПВ (М16)
 НТЖ П377
 ПО ОШ-НРОТ(М7)
 СЧ СИМВ
 ВЧОБ П7
 ПЕ НА1
 МОДА П7
НА1 СЧ
 ИЛИ (М15)
 ЗП (М15)
 СЧ СИМВ
 И П7
 ИЛИ (М14)
 ЗП (М14)
 И Е48П25
 ПЕ ВЫХ
 СЧ (М15)
 СДА 64-1
 ЗП (М15)
 СЧ (М14)
 СДА 64-1
 ЗП (М14)
 МОДА С
 ПВ (М16)
 НТЖ П17
 ПО МК ВТОРОЙ ПРОХОД
 НТЖ П360
 ПЕ ОШ-НРОТ(М7) НЕ ЕТХ
 СЧ (М15)
 СДА 64-23
 ЗП (М15)
 СЧ (М14)
 СДА 64-23
 ЗП (М14)
 ПБ ВЫХ
ЗАНК НТЖ П377
 ПО ОШ-НРОТ(М7)
 СЧ СИМВ
 ВЧОБ П7
 ПЕ НЕА1
 МОДА П7
НЕА1 СЧ
 ИЛИ (М15)
 СДА 64-3
 ЗП (М15)
 СЧ СИМВ
 И П7
 ИЛИ (М14)
 СДА 64-3
 ЗП (М14)
 ПБ (М16)
*
ПД НОП *       ДЕСЯТИЧНАЯ --> УПП
*
 СЧ (М12)
 ЗП Р
 УИА 15(М11)
 И Е41
 ПО ПОЛ
 УИА 11(М11)
ПОЛ СЧ Р
 РЖА ’40’
 ВЧАБ (0)
 ЗП Р
 РЖА 4
 УИА (М13)
 ПО НУЛЬ
 УИА 1(М13)
ПОР ЗП Р
 ВЧ D10
 ПЕ ЕСП
 СЛИА 10(М13)
 СЧ Р
 УМН D110
 ПБ ПОР
ЕСП СЧ Р
 ВЧ D1
 ПО НУЛЬ
 СЛИА -1(М13)
 СЧ Р
 УМН D10
 ЗП Р
 ПБ ЕСП
НУЛЬ РЖА 3
 УИИ М12(М13)
 УИА -48(М13)
 СЧИ М11
 МОДА З
 ПВ (М16)
 УИА -9(М11)
МАН СЧ Р
 СЛ С0
 И П17
 ЗП (М17)
 МОДА З
 ПВ (М16)
 СЧ (М17)
 ИЛИ С0
 РЖА 0
 ВЧОБ Р
 УМН D10
 РЖА 3
 ЗП Р
 МОДА МАН
 ЦИКЛ (М11)
 СЧИ М12
 УИА 10(М11)
 СДА 64+7
 ПО ПОН
 СЧИ М12
 ВЧОБ (0)
 УИ М12
 УИА 11(М11)
ПОН СЧИ М11
 МОДА З
 ПВ (М16)
 СЛИА -10(М12)
 СЧИ М12
 СДА 64+5
 ПЕ И26
 СЧ П17
 СДА 64+3
 ПБ И27
И26 СЛИА 10(М12)
 СЧ
И27 МОДА З
 ПВ (М16)
 СЧИ М12
 МОДА З
 ПВ (М16)
 ПБ ВЫХ
*
МД НОП *        УПП --> ДЕСЯТИЧНАЯ
*
 МОДА С
 ПВ (М16)
 УИА -9(М14)
 РЖА 6
 УИ М13
 СЛИА -П’-’(М13)
 МОДА ЗНАК
 ПИО (М13)
 СЛИА 1(М13)
 СЛИА 8(М11)
 МОДА ЗНАК
 ПИНО (М13) СРАЗУ ЦИФРА
 УИА 1(М13)
 СЛИА -8(М11)
ЗНАК СЧ D1
 ДЕЛ D10
 ЗП Р
 СЧ
 ЗП (М17)
НАБ МОДА С
 ПВ (М16)
 РЖА 7
 НТЖ П377
 ПО ОШ-НРОТ(М7)
 НТЖ П377
 ВЧ П12
 ПО ОШ-НРОТ(М7)
 СЧ СИМВ
 РЖА 6
 ИЛИ С0
 УМН Р
 СЛ (М17)
 СЧМ Р
 ДЕЛ D10
 ЗП Р
 МОДА НАБ
 ЦИКЛ (М14)
 СЧ (М17)
 СЛ D110
 МОДА ПЛЮС
 ПИНО (М13)
 ВЧОБ С0
ПЛЮС ЗП Р
 МОДА С
 ПВ (М16)
 УИ М13
 СЛИА -10(М13)
 РЖА 7
 МОДА ПРАЗ
 ПИО (М13)
 СЛИА -1(М13)
 МОДА ОШ-НРОТ(М7)
 ПИНО (М13) - НЕ НА МЕСТЕ ЗНАК ПОРЯДКА
 СЛИА 1(М13)
ПРАЗ МОДА С
 ПВ (М16)
 УИ М14
 ВЧОБ П1
 ПЕ ОШ-НРОТ(М7) ПОРЯДОК > 20
 РЖА 6
 СЧ Р
 МОДА ПОД
 ПИО (М14)
 СЧМ D1
 МОДА РОН
 ПИО (М13)
 УМН D110
 УМН (М17)
 ПБ ПОД
РОН ДЕЛ D110
 УМН (М17)
ПОД ЗП (М17)
 МОДА С
 ПВ (М16)
 РЖА 3
 ВЧОБ (0)
 УИ М14
 СЧ D1
 РЖА 6
 МОДА ПЗС
 ПИО (М13)
 ДЕЛ D10
 ПБ ЛОП
ПЗС УМН D10
ЛОП ЗПМ Р
 МОДА НЕЗ
 ПИО (М14)
 СЛИА 1(М14)
ДАО УМН Р
 МОДА ДАО
 ЦИКЛ (М14)
НЕЗ МОД 1(М17)
 ЗП (0)
 РЖА 7
 СЧ ВСЕЕД
 ЗП (М15) - МАСКА = ВСЕЕД - ВСЕ В НОРМЕ
 ПБ ВЫХ
*
ВЫХ МОД И15
 ПБ
*
С НОП * ПОСИМВ.ЧТЕНИЕ ПО М12
*
 МОДА DВБ
 ПИНО (М11)
 СЛИА 1(М12)
 УИА 48(М11)
DВБ СЛИА -8(М11)
 СЧ (М12)
 СДА 64(М11)
 И П377
 ЗП СИМВ
 ПБ (М16)
*
З НОП * ПОСИМВ.ЗАПИСЬ ПО М14
*
 МОДА DЗП
 ПИНО (М13)
 СЛИА 1(М14)
 УИА -48(М13)
DЗП СЛИА 8(М13)
 И П377
 СДА 64(М13)
 ЗП СИМВ
 СЧ П377
 СДА 64(М13)
 И (М14)
 НТЖ (М14)
 ИЛИ СИМВ
 ЗП (М14)
 СЧ СИМВ
 ПБ (М16)
СИМВ КОНД В’0’
*
ПРОГДН НОП * ПРОГОН ПРОБЕЛОВ
*
 МОДА С
 ПВ (М16)
 НТЖ П17
 ПО С
 НТЖ П360
 УИ М16
 СЛИА 8(М11)
 ПБ (М15)
*
ПРОГДП НОП * ПРОГОН СИМВОЛОВ ДО ПРОБ.
*
 МОДА С
 ПВ (М16)
 НТЖ П17
 УИ М16
 ПО (М15)
 НТЖ П360
 ПЕ ПРОГДП
 ПБ (М15)
*
 ВХОД НАЧН
*
*            К О Н С Т А Н Т Ы
*
ДИСП70 ВНЕШ П3,П7,П12,П17,П37,ВСЕЕД
ДИСП70 ВНЕШ (D1,Ч1Д),(С0,ЭК9)
ДИСП70 ВНЕШ ТВ40,П1777,Е48П25,П377
БОЭК1  ВНЕШ ЗАПВЫХ
СОСТАВ ВНЕШ ЛИСТМБ
НРОТ   ВНЕШ ОШ,НРОТ,ОТКПР,НТ
*
П177 КОНД В’177’ *---------------------*
П360 КОНД В’360’    НЕ ПЕРЕМЕЩАТЬ !!!
П77 КОНД В’77’   *---------------------*
D8 КОНД Е’8’
D10 КОНД Е’10’
D110 КОНД В’1755574677567304’
БУК КОНД П’FЕDСВА’
Р КОНД В’0’
И15 КОНД В’0’
ЯЧКОД КОНД В’0’
ИК КОНД П’170377’ * * * * * * * * * * * * *
   КОНД П’170370’
ИБ КОНД П’00 000’
   КОНД П’00 00 ’              Н Е
АИ КОНД П’077770’       П Е Р Е М Е Щ А Т Ь
   КОНД П’777770’
АБ КОНД П’ 0000 ’
   КОНД П’00000 ’ * * * * * * * * * * * * *
М ПАМ ’1600’+НРКОД-* МАГАЗИН ЗАДАЧИ
*
СЛОВАК НОП *   СИМВОЛЫ ПЕРЕКОДИРОВКИ
**        000        **
 КОНД В’0004000000060133’
 КОНД В’0104100000061133’
 КОНД В’0214200000062133’
 КОНД В’0314300000063133’
 КОНД В’0414400000064133’
 КОНД В’0514600000065135’
 КОНД В’0614700000066024’
 КОНД В’0715100000067133’
**        010        **
 КОНД В’1004100000070133’
 КОНД В’1104100000071133’
 КОНД В’1205200000053133’
 КОНД В’1315200000055133’
 КОНД В’1415400000057133’
 КОНД В’1516100000054133’
 КОНД В’1616600000056116’
 КОНД В’1705700000040117’
**        020        **
 КОНД В’2006000000105033’
 КОНД В’2106100000026133’
 КОНД В’2206200000050133’
 КОНД В’2306300000051133’
 КОНД В’2406400000006133’
 КОНД В’2506500000075131’
 КОНД В’2606600000073021’
 КОНД В’2706700000133020’
**        030        **
 КОНД В’3007000000135034’
 КОНД В’3107100000052136’
 КОНД В’3217000000047124’
 КОНД В’3304100000033033’
 КОНД В’3416000000030122’
 КОНД В’3505500000074125’
 КОНД В’3605300000076120’
 КОНД В’3717100000072123’
**        040        **
 КОНД В’4017200000101017’
 КОНД В’4110100000142133’
 КОНД В’4210200000102134’
 КОНД В’4310300000147133’
 КОНД В’4410400000144127’
 КОНД В’4510500000105126’
 КОНД В’4610600000166121’
 КОНД В’4710700000172033’
**        050        **
 КОНД В’5011000000151022’
 КОНД В’5111100000152023’
 КОНД В’5211201200113031’
 КОНД В’5311303600154012’
 КОНД В’5411400000115015’
 КОНД В’5511503500110013’
 КОНД В’5611600000117016’
 КОНД В’5711701700160014’
**        060        **
 КОНД В’6012002000120000’
 КОНД В’6112102100103001’
 КОНД В’6212202200124002’
 КОНД В’6312302300131003’
 КОНД В’6412402400146004’
 КОНД В’6512502500130005’
 КОНД В’6612602600143006’
 КОНД В’6712702700176007’
**        070        **
 КОНД В’7013003000173010’
 КОНД В’7113103100175011’
 КОНД В’7213200000171037’
 КОНД В’7317300000170026’
 КОНД В’7417400000174035’
 КОНД В’7517500000140025’
 КОНД В’7617600000161036’
 КОНД В’7714000000104130’
**        100        **
 КОНД В’1000000000106133’
 КОНД В’1010004100107040’
 КОНД В’1020004200111042’
 КОНД В’1030004300112061’
 КОНД В’1040004400114077’
 КОНД В’1050004500116045’
 КОНД В’1060004600121100’
 КОНД В’1070004700122101’
**        110        **
 КОНД В’1100005000123055’
 КОНД В’1110005100125102’
 КОНД В’1120005200126103’
 КОНД В’1130005300127052’
 КОНД В’1140005400132104’
 КОНД В’1150005500136054’
 КОНД В’1160005600016105’
 КОНД В’1170005700017056’
**        120        **
 КОНД В’1200006000036060’
 КОНД В’1210006100046106’
 КОНД В’1220006200034107’
 КОНД В’1230006300037110’
 КОНД В’1240006400032062’
 КОНД В’1250006500035111’
 КОНД В’1260006600045112’
 КОНД В’1270006700044113’
**        130        **
 КОНД В’1300007000077065’
 КОНД В’1310007100025063’
 КОНД В’1320007200137114’
 КОНД В’1330000000041027’
 КОНД В’1340000000042133’
 КОНД В’1350000000005030’
 КОНД В’1360000000031115’
 КОНД В’1370000000047132’
**        140        **
 КОНД В’1400007700100075’
 КОНД В’1410004100041040’
 КОНД В’1420000200041041’
 КОНД В’1430000300041066’
 КОНД В’1440000400041044’
 КОНД В’1450004500041045’
 КОНД В’1460000500041064’
 КОНД В’1470000600041043’
**        150        **
 КОНД В’1500007000041065’
 КОНД В’1510000700041050’
 КОНД В’1520001300041051’
 КОНД В’1530005300041052’
 КОНД В’1540001400041053’
 КОНД В’1550005500041054’
 КОНД В’1560005000041055’
 КОНД В’1570005700041056’
**        160        **
 КОНД В’1600003400041057’
 КОНД В’1610001500041076’
 КОНД В’1620006000100060’
 КОНД В’1630004300041061’
 КОНД В’1640006400041062’
 КОНД В’1650007100041063’
 КОНД В’1660001600041046’
 КОНД В’1670000000100133’
**        170        **
 КОНД В’1700003200100073’
 КОНД В’1710003700041072’
 КОНД В’1720004000100047’
 КОНД В’1730007300041070’
 КОНД В’1740007400041074’
 КОНД В’1750007500041071’
 КОНД В’1760007600100067’
 КОНД В’1770000000167133’
**   КОНЕЦ ТАБЛИЦЫ   **
*
*КОНЕЦ ЧАСТИ