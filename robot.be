 Б
РОБОТ СТАРТ ’10000’
&BS SETA 0
 М
 Е
 УПОТР РОБОТ(М7)
 КОНД В’0’
 КОНД М41В’3’
 КОНД (3)В’0’
 КОНД В’200300003’
 КОНД (16)В’0’
ПР14 КОНД В’13’
КУСКТ КОНД М24В’450’
КУСБОР КОНД М17В’1’В’10’
РАЗРЯД КОНД В’10’
 КОНД М45В’1’       СLС
 КОНД М21В’1’       ПЛ
 КОНД М46В’1’     АЦПУ-1
 КОНД М17В’1’       ПИ
 КОНД М46В’1’       АЦПУ0
 ПАМ 1  ПРИП
 КОНД В’0’
 КОНД М47В’1’
КУСРБ КОНД В’0’          ЧТ КАТАЛОГА
ЛИСТ КОНД В’0’          НОМЕР ЛИСТА ДЛЯ КУСА
 КОНД В’0’
КУСЧТ КОНД В’0’          ЧТЕНИЕ ЗОНЫ
 КОНД В’0’
С5 КОНД В’0’
СЛЕД ПЕ ДАЙЗОН
 ПВ ТБУФ(М15)     ДАЙ ЛИСТ
 УИА 3
 СДА 64-8
 УИ М1
 СДА 64-2
 ЗП ЛИСТ
 ИЛИ КУСКТ
 СЛЦ НОММЛ1
 ЗП КУСРАБ        КУС ЗП КАТАЛОГА
 СЛЦ Е18
 ЗП КУСРБ         КУС ЧТ КАТАЛОГА
НАЧ СЧ Е19           БЛОК ПРОВЕРКИ НАЛИЧИЯ РАБОТ
 УИА ’2003’
 НТЖ ШКПЛАН
 ПЕ ОБР           РАБОТА ЕСТЬ
 ЗП ШКПЛАН
 СЧ КУСРБ
 ПВ ТБУФ(М15)
 СЧ МАСПЕЧ
 НТЖ П5
 ЗП МАСПЕЧ  МЕНЯЕМ ПОРЯДОК ВЫБОРА АЦПУ
 ПВ ЗАНОСМ(М16)
УПИ СЧ Р4
 ПО УП1
 СЧ 0
 ПВ ТБУФ(М15)
 УИА 3
 СДА 64-8
 УИ М1
 СДА 64-2
 СЛЦ КШ
 СЛЦ НОММЛ1
 ЗП Р2
 ПВ ЕNQ(М15)
 МОДА УП
 УИА (М13)
УП2 СЧ Р2
 ПВ ФИЗОБМ(М16)
 УИА 3
 УИА -ДТЗ+1(М16)
МАК МОДА ТБЗ
 СЧ ДТЗ-1(М16)
 ПО МИК
 МОДА ТБЗН+ДТЗ-1(М16)
 ИЛИ (М1)
 МОДА ТБЗ
 НТЖ ДТЗ-1(М16)
 МОДА ТБЗН+ДТЗ-1(М16)
 ЗП (М1)
 СЧ 0
 МОДА ТБЗ
 ЗП ДТЗ-1(М16)
МИК МОДА МАК
 ЦИКЛ (М16)
 ЗП Р4
 СЧ Р2
 ПВ ФИЗЗП(М16)
 УИА 3
 ПБ (М13)
УП СЧ Р2
 ПВ DЕQ(М15)
 СЧ Р2
 ПВ ТБУФ(М15)
УП1 УИА 3
 ВХОД НОМЕР
 СЧ РЯПСЗ
 И Е12
 ПЕ УПР
 СЧ ШКОЖ
 ПО УПР
 НЕД 0
 УИ М16
 СЧ Е48-1(М16)
 НТЖ ШКОЖ
 ЗП ШКОЖ
 СЧ Е48-1(М16)
 ПБ СЛЕД
УПР СЧ Е40
 ПБ ОТКАЗН
ОБР СЧ КУСРАБ
 ПВ ЕNQ(М15)
ОБР1 СЧ КУСРБ
 ПВ ФИЗОБМ(М16)
 УИА 3
 УИА (М11)
 СЧ ГОД
 И П7
 СДА 64-1
 УИ М13
 СЛИА -2(М13)
ВР2 СЧ ШКПЛАН        ПОИСК ЗОНЫ НА ВЫДАЧУ
 И МАСПЕЧ
 ПЕ ВРЗ
 СЧ ШКПЛАН
ВРЗ СДА 64-37
 ПО НЕТРАБ        ЗАЯВОК НА РАБОТУ НЕТ
 НЕД
 УИ М4            НОМЕР РАБОТЫ
 ВЧОБ ПР14
 УИ М5
 И П3
 УИ М14
 СЧИ М5
 СДА 64+2
 УИ М5
 СЛИ М5(М1)        АДРЕС РАБОТЫ В КАТ-ГЕ
 СЛИ М5(М13)
 СЧ Е12(М4)
 УИА ’2003’
 НТЖ ШКПЛАН        ГАШЕНИЕ РАБОТЫ
 ЗП ШКПЛАН
 УИА 3
ВРАБ1 УИА (М17)         УСТР-ВО ИСПРАВНО
 СЧ ШИФРАЦ
 И Е36(М4)
 ПЕ ВР2           СБОЙ НА УСТРОЙСТВЕ
ВР1 СЧ СВ(М5)
 СД КСД1(М14)
 ЗП Р2  12,11 РР ИЗ ССЫЛКИ
 И П1777
 ПО НЕБЫЛО        ВЫДАЧ НЕ БЫЛО
 УИ М2
 СЛИ М2(М1)
 СЧ (М2)
 УИИ М3(М2)
 СДА 64+32
 НТЖ Р2
 И Е12Е11
 УИ М15
 ПЕ ПР2  ЕЩЕ НЕ ВСЕ ЗОНЫ ВЫД
 СЧ (М2)
 И Е23
 ПЕ КЦ
 СЧ (М2)
 И П3777
 УИ М3
 ПО КЦ
 СЛИ М3(М1)
ПР2 СЧ ШИФРАЦ
 И Е24(М4)
 ПЕ ПРОПУС        ПРОПУСК ВЫДАЧ
ПР МОДА ПСЛЕД
 ПИО (М15)
 СЧ Е11
 СД КСД3(М14)
 СЛЦ СВ(М5)  СЛЕД ЗОНА ПОДРЯД
 ЗП СВ(М5)
 СЧ Р2
 СЛЦ Е11
ПРИ И Е12Е11
 СДА 64-14
ПРС ЗП Р2
 СЛЦ (М3)
 ЗП С5
 УИА 1(М11)
 И П3777
 УИ М6
 ПЕ ВР7
 СЧ Р2
 СДА 64-18  44,43 РР
 НТЖ (М3)
 И Е44Е43
 ПО ВР7  ПОСЛ ЗОНА
 УИА 1(М6)
ВР7 СЧ РЯПСЗ         ПРОВЕРКА ЗАНЯТОСТИ ТТРАКТА
 И П7777
 СЛЦ ’1777’(М1)
 ЗП РЯПСЗ
ВР5 СЧ КУСРАБ        ЗП КАТАЛОГА
 ПВ ФИЗОБМ(М16)
 СЧ Р4
 ПО ВЫ2
 СЧИ М1
 СДА 64-2
 СЛЦ КШ
 СЛЦ НОММЛ1
 ЗП Р2
 МОДА УП2
 ПВ (М13)
ВЫ2 СЧ КУСРАБ
 ПВ DЕQ(М15)
 МОДА НАЧ
 ПИО (М11)         ВЫДАЧ НЕТ
 СЧ С5
 И Е36П25
 СЛЦ НОММЛ3
 ИЛИ Е18
 ИЛИ ЛИСТ          КУС ЧТ ЗОНЫ С МЛ
 ПВ ФИЗОБМ(М16)
 УИА 3
 СЧИ М5
 И Е1
 ПЕ ЛЕВ1
 СЧИ М14
 ПО АЦПУ  АЦПУ0
 НТЖ Е2
 ПО АЦПУ  АЦПУ1
ЛЕВ1 МОДА ЛЕВ
 ПИНО (М6)          ЗОНА НЕ ПОСЛЕДНЯЯ
 СЧ (М1)
 ИЛИ Е48
 ЗП (М1)
ЛЕВ СЧИ М4            ФОРМИР. КУС ЗП НА МБ
 ВЧОБ ПР14
 СДА 64-2
 СЛЦ Е7
 ИЛИ Е19
 ИЛИ НОММБ
 ИЛИ ЛИСТ
 ПВ ФИЗОБМ(М16)   ЗП НА МБ
 МОДА РАЗРЯД
      СЧ -6(М4)
 ЗП Р
 НТЖ Е47
 ПО АЦП2
М СЧ Р
 ИЛИ ШКИВ
 ЗП ШКИВ
 УИА 3
 ПБ НАЧ
АЦП2 СЧИ М4
 И Е2
 НТЖ Е2
 СДА 64+1
 УИ М15
 СЧ ШКАРУ
 ИЛИ Е48(М15)
 ЗП ШКАРУ
 СЧ ШКСВН
 И Е47
 ПО НАЧ
 ПБ М
ПСЛЕД СЧ Е48П37(М14)
 НТЖ ВСЕЕД
 И СВ(М5)
 ЗП СВ(М5)
ВЫ СЧИ М3
 И П1777
 СД КСД3(М14)
 ИЛИ СВ(М5)
 ЗП СВ(М5)
 СЧ 0
 ПБ ПРС
АЦПУ СЧ РИМ
 ИЛИ Е12(М4)
 НТЖ Е12(М4)
 ЗП РИМ
 СЧ (М1)
 И Е31
 ПЕ Х1
 СТОП 0 ВРЕМЕН   15.11.87  ШЕБАНОВ
 СЧ 1(М1)
 ЗП РИМ+1
 СЧ РИМ
 ИЛИ Е12(М4)
 ЗП РИМ
Х1 СЧ (М1)
 И =В’7777701777’
 ПО ЛЕВ1
 УИ М16
 СЧ (М1)
 СЛИ М16(М1)
 СДА 64+15
 УИ М15
 МОДА БР67
 ЦИКЛ (М15)
 СЛИА 1(М16)
 УИА -5(М15)
БР67 СЧ -1(М16)       УПАКОВКА АБЗАЦА
 СДА 64-8
 ЗП -1(М16)
 МОДА БР67
 ЦИКЛ (М15)
 АIF (∧ВS ЕQ 0).ЛЕВ
 ПБ ЛЕВ1
 АGО .ЛЕВ1
.ЛЕВ АNОР
 ПБ ЛЕВ
.ЛЕВ1 АNОР
НЕТРАБ СЧ ШКПЛАН        ЕСТЬ ПОВТОРЕНИЕ ВЫДАЧ
 И Е48П37
 ПО ВВ
 НЕД
 УИ М4
 ВЧОБ ПР14
 УИ М5
 И П3
 УИ М14
 СЧИ М5
 СДА 64+2
 УИ М5
 СЛИ М5(М1)
 СЛИ М5(М13)
 УИА ’2003’
 СЧ ШКПЛАН
 НТЖ Е48-1(М4)
 ИЛИ Е12(М4)
 ЗП ШКПЛАН        ГАШЕНИЕ ПРИКАЗА
 УИА 3
 СЧ СВ(М5)
 СД КСД1(М14)
 ЗП Р2
 И П1777
 ПО ВР2
 УИ М2
 СЧИ М4
 УИА (М3)
 РЖА 3
 ВЧОБ Е4
 ПО ПЛ9
 И Е1
 ПО АПИ
 УИА 2048(М3)  А0,А1
 СЧ Р2
 И Е12Е11
 ЗП Р2
 СЧИ М3
 ВЧОБ Р2  ДЛЯ ПИ ПОВТ -1 ЗОНУ
 УИ М3   ДЛЯ А - (-2)
 СДА 64+12
 ПО АП
 МОДА (М1)
 СЧ (М2)
 СДА 64+11
 И П3777
 ПО АПИП
 УИ М2
 МОДА (М1)
 СЧ (М2)
 СДА 64+32
 И Е12Е11
АПИП УИ М3
АП СЧ Е48П37(М14)
 НТЖ ВСЕЕД
 И СВ(М5)
 ЗП СВ(М5)
 СЛИ М3(М2)
 СЧИ М3
 СД КСД3(М14)
 ИЛИ СВ(М5)
 ЗП СВ(М5)
АПИ УИИ М3(М2)
 УИА (М15)
 СЛИ М3(М1)
 СЧ Е12(М4)
 УИА 1027
 НТЖ ШКПЛАН
 ЗП ШКПЛАН
 СЧ ШИФРАЦ
 И Е24(М4)
 ПЕ ПРОПУС  ПРОПУСК
 СЧ СВ(М5)
 СД КСД1(М14)
 УИА 3
 ПБ ПРИ
ПЛ9 МОДА (М1)    ПОИСК ЗОНЫ
 СЧ (М2)
 СДА 64+11
 И П3777
 ПО АПИП
 УИ М2
 ПБ ПЛ9
ПРОПУС УИА 1027
 СЧ ШИФРАЦ
 УИА 3
 И Е12(М4)
 ПО ПР
ПР1 СЧ (М3)
 И Е23
 ПЕ ПРОП2
 СЧ (М3)
 И П3777
 УИ М3
 СЛИ М3(М1)
 ПБ ПР1
ПРОП2 СЧ Е48П37(М14)
 НТЖ ВСЕЕД
 И СВ(М5)
 ЗП СВ(М5)
 СЧ (М3)
 СДА 64+32
 И Е12Е11
 ЗП Р2
 СЧИ М3
 И П1777
 СЛЦ Р2
 СД КСД3(М14)
 ИЛИ СВ(М5)
 ЗП СВ(М5)
 СЧ Р2
 ПБ ПРИ
НЕБЫЛО СЧ МГРП          ВЫДАЧА ЗАПРЕЩЕНА
 И Е12(М4)
 ПЕ ВР2А          ДА
 УИА -8(М16)
 СЧ Е12(М4)
 И П60
 УИА 2(М3)
 ПЕ ПОКЛ
 СЧ Е12(М4)
 И П5
 УИА (М3)
 ПЕ ПОКЛ  АЦПУ
 СЧ Е12(М4)
 И Е4
 УИА 3(М3)
 ПЕ ПОКЛ  ПЛ
 УИА 1(М3)  РI,СL
ПОКЛ МОДА (М1)
 СЧ ОЧКЛ+8(М16)
 И Е48П37(М3)
 ПО ПОКЛА
 СД КСД1(М3)
ПОКЛС УИ М17
 СЛИ М17(М1)
 СЧ ШОЧ(М17)
 И ПРВЫ
 ПЕ ПОКЛ1
 СЧ ШОЧ(М17)
 СДА 64+10
 И П7
 ПО ПОКЛ3  ЛЮБАЯ
 НТЖ ГОД
 И П7
 ПЕ ПОКЛ1
ПОКЛ3 СЧ ШОЧ(М17)
 СДА 64+7
 И П7
 ПО ПОКЛ2  ЛЮБОЕ УСТР
 ЗП Р2
 СЧИ М4
 ВЧОБ ПР14
 СЛЦ Е1
 НТЖ Р2
 ПО ПОКЛ4
ПОКЛ1 СЧ ШОЧ(М17)
 И П177
 ПО ПОКЛА
 ПБ ПОКЛС
ПОКЛА МОДА ПОКЛ
 ЦИКЛ (М16)
 ПБ ВР2А
ПОКЛ2 СЧ ГОД
 И П7
 ИЛИ Е48
 УМН П6
 СЧМР 64
 УИ М2
 СЧ МАСКА(М1)
 СДА 64-6(М2)
 И П77
 И Е12(М4)
 ПЕ ПОКЛ1  УСТР ВЫДЕЛЕНН
ПОКЛ4 СЧ ШОЧ(М17)
 СДА 64+14
 И П1777
 УИ М3  ССЫЛ НА СТР С ЗОНОЙ
 УИИ М15(М3)
 СЛИ М3(М1)
НЕ УИИ М2(М15)       ПОИСК ИНФОРМАЦИИ ОДНОЙ ЗАДАЧИ
 СЛИ М2(М1)
 СЧ (М2)
 И П3777
 УИ М15
 СЧ (М2)
 И Е23
 ПО НЕ            НЕ ВСЯ ИНФОРМАЦИЯ
ПЛ1А МОДА С
      ПБ -6(М4)
ВР2А СЧ Е12(М4)       ОСВОБ. ЗАЯВКИ НА ВЫДАЧУ
 УИА ’2003’
 НТЖ РЯПСЗ
 ЗП РЯПСЗ
 ПБ ВР2
С СЧ ПРЕДЕЛ
      ПБ С2
      СЧ ПРЕДЕЛ
 ПБ С1            САLКОМР
 СЧ ПРЕДЕЛ
      ПБ ПЛ1
 ПБ ПЛ1           АЦПУ-1
С3 СЧ ПРЕДЕЛ
 ПБ С4            ПИ
 ПБ ПЛ1           АЦПУ-0
С1 И Е37
 ПО ВР2А
 ПБ ПЛ1
С2 И Е34
 ПО ПЛ1           НЕТ РПГ В ВЦ
 СЧ ПРЕДЕЛ
 И Е36
          пе    ПЛ1
          пб    ВР2А
С4 И Е35
      ПО ПЛ1
С6 СЧ Е48
      ЗП С5
ПЛ СЧ (М3)
 НТЖ С5
 И Е48
 ПО ПЛ1
ПЛ3 УИИ М3(М15)
 МОДА ВР2А
 ПИО (М15)
ПЛ2 УИИ М2(М15)
 МОДА (М1)
 СЧ (М2)
 И П3777
 УИ М15
 МОДА (М1)
 СЧ (М2)
 И Е23
 ПО ПЛ2
 МОДА (М1)
 СЧ (М3)
 НТЖ С5
 И Е48
 ПЕ ПЛ3
 СЛИ М3(М1)
ПЛ1 СЧ ШОЧ(М17)
 ИЛИ ПРВЫ
 ЗП ШОЧ(М17)
 ПБ ВЫ
ВВ СЧ ШКПЛАН
 СДА 64-13
 И Е48П37
 ПО ВР7
 НЕД
 УИ М4
 ВЧОБ ПР14
 УИ М5
 И П3
 УИ М14
 СЧИ М5
 СДА 64+2
 УИ М5
 СЛИ М5(М1)
 СЛИ М5(М13)
 УИА ’2003’
 СЧ ШКПЛАН
 НТЖ Е48+12(М4)
 ЗП ШКПЛАН
 СЧ ШИФРАЦ
 И Е36(М4)
 ПО ВР2
 НТЖ ШИФРАЦ
 ЗП ШИФРАЦ
 УИА 3
 СЧ СВ(М5)
 СД КСД1(М14)
 И П1777
 ПО ВР2
 УИ М15
ПНА МОДА (М1)
 СЧ (М15)
 СДА 64+11
 И П1777
 ПО НА
 УИ М15
 ПБ ПНА
НА СЧИ М15
 СДА 64-14
 ЗП ЗОНА
 УИА 1(М16)
 СЛИ М16(М1)
НА1 СЧ ШОЧ(М16)
 НТЖ ЗОНА
 И Е24П15
 ПО НА2
 СЛИА 1(М16)
 ПБ НА1
НА2 СЧ ШОЧ(М16)
 ИЛИ ПРВЫ
 НТЖ ПРВЫ
 ЗП ШОЧ(М16)
 СЧ Е48П37(М14)
 НТЖ ВСЕЕД
 И СВ(М5)
 ЗП СВ(М5)
 ПБ ВР2А
	конд	п'Б'
	конд	п'Ж'
	конд	п'З'
НОМЕР ПАМ 1
Е8Е5 КОНД В’360’
ДАЙЗОН УИ М4
 СЧ Е48-1(М4)
 ЗП РА
 СЧ РЯПСЗ
 И Е12
 ПО СВО
 УИА 1027
 СЧ ШКОЖ
 ИЛИ РА
 ЗП ШКОЖ
 СЧ 0
 ЗП РА
 ПБ ВЫХОД1
СВО МОД ТУС-1(М4)
 УИА (М4)
 СЧ 8(М4)
 УИА 20(М10)       ЗОНА ВЛЕВО
 УИА -20(М11)  ЗОНА ВПРАВО
 И П7
З4 СЛИА -10(М10)
 СЛИА 10(М11)
 ВЧ Е1
 ПО З4            НЕ ТОТ ВИД РАБОТ
 СЧ 17(М4)
 ЗП З1            ПРИЗНАК КЗ
 МОД 9(М4)
 СЧ ТУС-1
 УИ М1            АДРЕС ИПЗ МАТЕМ.
 СЧ 9(М4)
 ЗП ЗАДА
 СЧ 10(М4)
Р8 НОП
 УИ М5
 СДА 64-2
 ИЛИ КУСКТ
 СЛЦ НОММЛ1
 ЗП З2            КУС ЗП КАТАЛОГА
 ИЛИ Е18
 ЗП З3            КУС ЧТ КАТАЛОГА
 НТЖ Е25
 НТЖ Е27
 ЗП З6
 СЧ ЗОНЫ(М1)
 СДА 64(М11)
 И П1777
 УИ М6            НОМЕР ПОСЛЕДНЕЙ ЗОНЫ
 СЧ РА
 И Е41
 ПО З5            НЕ Э64
 СЧ З1
 ПО З5            КЗ
 НТЖ Е1
 ПЕ З5            ДАЙ ЗОНУ
 МОДА З5
 ПИО (М6)          ДАЙ ЗОНУ
 УИА И10(М15)
 СЧИ М15
 НТЖ 12(М4)
 И П377
 ПО З5
 СЧ
 ЗП ЧАСВЫД
З5 СЧ ГОД           ФОРМИР. ХАРАКТ-КИ ВЫДАЧ
 И П7
 СДА 64-39
 ЗП З1А           НОМЕР МАШИНЫ 40-42 РР
 СЧ 9(М4)
 СДА 64-НО
 И Е48
 ИЛИ З1А
 ЗП З1А           НОМЕР ЗАДАЧИ
 СЧ 9(М4)
 И П77
 ЗП НОМЕР
 СЧ ЯЧКОПИ(М1)
 И Е46П48
 СДА 64+1
 ИЛИ З1А
 ЗП З1А
 СЧ 8(М4)
 СДА 64-36
 ИЛИ З1А
 ЗП З1А           НОМЕР РАБОТ
 АIF (∧ВS ЕQ 1).Л1
 И Е37
 ПЕ З8А
 СЧ 23(М1)
 СДА 64-1
 И Е48
 НТЖ З1А
 ЗП З1А
.Л1 АNОР
З8А СЧ З3
 ПВ ЕNQ(М15)
З8 ПАМ 0
 УИИ М12(М5)
 АIF (∧ВS ЕQ 1).Н1
 УИА -32(М13)
.Н1 АNОР
 АIF (∧ВS ЕQ 0).Н3
 УИА 32(М13)
.Н3 АNОР
 СЧ П1777
 СДА 64(М10)
 НТЖ ВСЕЕД
 И ЗОНЫ(М1)
 ЗП ЗОНЫ(М1)      ЧИСТКА ССЫЛКИ В ИПЗ
 УИИ М11(М10)
 СЧИ М10
 СЛЦ П12
 СДА 64+8
 И Е1
 УИ М2
 ПО ВИП
 СЛИА 20(М11)
ВИП СЛИ М2(М1)
 СЧ П1777
 СДА 64-24(М11)
 НТЖ ВСЕЕД
 И ШЗНМБ+2(М2)
 ЗП ШЗНМБ+2(М2)
 СЧ З1
 ПО ВЫ1
 АIF (∧ЭФ ЕQ 0).Л
 СЧ РА
 НТЖ Е41
 ПЕ ВИП1
 МОД ТУС+7
 СЧ КЛЮЧЛ-Э64
 ПЕ ВИП1
 СЧ ЧАСВЫД
 ПЕ ВИП1
 СЛИ М6(М5)
 СЧ З3
 ПВ ФИЗОБМ(М16)
 ПБ ЧАСТЬ1
ВИП1 НОП
.Л АNОР
 УИА 1027
 СЧ ЗОНВЫ
 И Е48П17
 ПЕ ЗАПАС
 СЧ З6
 ПВ ФИЗОБМ(М16)
 АIF (∧ВS ЕQ 1).Н2
 УИА -ДТЗ+2(М3)
.Н2 АNОР
 АIF (∧ВS ЕQ 0).Н6
 УИА -28(М3)
.Н6 АNОР
 СЧ 0
 ЗП ЗОНА
 ЗП ГРАН
ПП МОДА (М12)
 СЧ ТБЗН+ДТЗ-2(М3)
 НТЖ Е48П17
 ПО ПИ1
 ЧЕД 0
 СЛЦ ГРАН
 ЗП ГРАН
ПИ1 МОДА ПП
 ЦИКЛ (М3)
 УИА 3
 АIF (∧ВS ЕQ 1).Н4
 УИА -ДТЗ+2(М3)
ПСВ СЧ ТБЗН(М12)
.Н4 АNОР
 АIF (∧ВS ЕQ 0).Н5
 УИА -28(М3)
 СЧ 512(М12)
 НТЖ Е48П17
 ПО ПСВ
 СТОП * ЕСТЬ ОТКРЫТЫЕ СРЕДИ ЗОН 0-37
ПСВ СЧ 514(М12)
.Н5 АNОР
 СЛИА 1(М12)
 СЛИА 32(М13)
 ПО З7АБ
 И Е48П17
 НТЖ Е48П17
 ПО ПС
 ЧЕД 0
 ВЧ ЗОНА
 ПЕ ПС
 СЛ ЗОНА
 ЗП ЗОНА
 УИИ М17(М13)
 УИИ М16(М12)
ПС МОДА ПСВ
 ЦИКЛ (М3)
 УИИ М12(М5)
 СЧ ЗОНА
 ПО ПСВ
 АIF (∧ВS ЕQ 1).Н9
 СЧ ТБЗН-1(М16)
.Н9 АNОР
 АIF (∧ВS ЕQ 0).Н10
 СЧ 513(М16)
.Н10 АNОР
З7А НТЖ Е48П17
 И Е48П17
 ЗП ЗОНВЫ
 НЕД П77777
 УИ М3
 АIF (∧ВS ЕQ 0).Н7
 СЧ ГРАН
 ВЧОБ Е6
 ПЕ ЕСТМЕС  В БУФ ВВОДА-ВЫВОДА МНОГО МЕСТА
 СЧ Е48(М3)
 ЗП ЗОНВЫ   ВОЗЬМУ ОДНУ ЗОНУ
ЕСТМЕС СЧ ЗОНВЫ
 ИЛИ 513(М16)
 ЗП 513(М16)
 АGО .Н8
.Н7 СЧ Е48П17
 ЗП ТБЗН-1(М16)
.Н8 АNОР
 СЧ З6
 ПВ ФИЗЗП(М16)
 СЧИ М17
 ИЛИ ЗОНВЫ
З НТЖ Е48(М3)
 ЗП ЗОНВЫ
 СЧ З3
 ПВ ФИЗОБМ(М16)
 СЧ ГОД
 И П7
 УИ М16
 УИА 1027
 СЧ ЗОНВЫ
 МОДА (М5)
 ЗП ОГ(М16)
 УИ М12
 СЛИ М3(М12)
 УИА 3
 УИИ М13(М5)
 СЛИ М13(М6)
 РЖА 3
 СЧИ М3
 ЗП ЗОНА
 СЧ (М13)
 И Е44Е43
 НТЖ Е44Е43
 ПО ПОСВ
 СЧ (М13)
 И Е44Е43
 СДА 64+18
 СЛЦ (М13)
 СДА 64+24
 И П7777
 ПО ПОСВ
 ВЧОБ ЗОНА  НОВ-СТАР
 НТЖ Е1
 ПЕ ПОСВ
 СЧ (М13)
 УИИ М12(М13)
 СЛЦ Е43
 ЗП (М13)
 ПБ ДОБЗ  ЗОНА ПОДРЯД
ПОСВ УИА -В(М12)
ММ МОДА В(М12)
 СЧ 1(М5)
 ПО ЕСМЕ
 МОДА ММ
 ЦИКЛ (М12)
 УИА 1027
 СЧ ЗОНВЫ
 НТЖ Е48(М3)
 ЗП ЗОНВЫ
 МОДА (М5)
 ЗП ОГ(М16)
НЕТМЕС СЧ РЯПСЗ
 ИЛИ Е12
 ЗП РЯПСЗ
 ПБ ВЫХ
ЕСМЕ СЛИА В+1(М12)
 СЛИ М12(М5)
 СЧИ М12
 И П1777
 ИЛИ (М13)
 ЗП (М13)
 СЧИ М6
 СДА 64-11
 ИЛИ З1А
 ЗП (М12)         ЗАНЯЛИ ЗОНУ
 СЧИ М3
 СДА 64-24
 ИЛИ (М12)
 ЗП (М12)
ДОБЗ СЧ ’1777’(М5)
 СЛЦ Е13
 ЗП ’1777’(М5)    СЧЕТЧИК ЗОН
 СЧ ЧАСВЫД
 ПО ПРОПУ
 СЧИ М12
 И П1777
 СДА 64(М10)
 ИЛИ ЗОНЫ(М1)
 ЗП ЗОНЫ(М1)
 СЧИ М3
 СДА 64-24(М11)
 ИЛИ ШЗНМБ+2(М2)
 ЗП ШЗНМБ+2(М2)
 СЧ РЯПСЗ
 И П3777
 ИЛИ ’1777’(М5)
 ЗП РЯПСЗ
 СЧ ГРАН
 ВЧ П30
 ПО ВЫХ
 АIF (∧ВS ЕQ 0).НВЗ
 СЧ ЕСТОП
 ИЛИ МГРП
 ЗП МГРП
.НВЗ АNОР
 ПБ НЕТМЕС
ЗАПАС НЕД П77777
 УИ М3
 СЧ ЗОНВЫ
 ПБ З
З7АБ УИИ М16(М12)
 УИИ М17(М13)
 ПБ З7А
ВЫХОД1 ПАМ 0
 УИА 1027
 СЧ ШГ
 ИЛИ РА
 ЗП ШГ
 СЧ Е1
 ЗП З4В
 ЗП ЧАСВЫД
 ПВ ЗАНОСМ(14)
 ПБ УПИ
ВЫ1 СЧ З3
 ПВ ФИЗОБМ(М16)
 СЧ ЗОНЫ(М1)
 СДА 64+40
 ЗП З4А
 СЧМР
 СДА 64+8
 ЗП ЗОНЫ(М1)
 ago .s1
 СЧ АВОС(М1)
 И Е32
 ПО ВЫДАЧА
 СЧ РА
 И Е41
 ПО ВЫДАЧА
 СЛИ М12(М6)
 ПБ ПРОП
.s1 anop 
ВЫДАЧА СЧ 8(М4)         ВЫДАЧА НАКОПЛ. ИНФОРМ-ИИ
 УИ М4
 МОДА ВЫД
 ПВ (М2)
ШШ СЧ РА
 НТЖ Е41
 ПЕ ВЫХ           НЕТ
ВЫД3 СЧ ЗОНЫ(М1)      ОКОНЧАНИЕ ВСЕХ РАБОТ
 И Е40П1
 СДА 64+10
 ПО ОТДАЙ         ВЕРНИ СЛУЖЕБНЫЕ ЛИСТЫ
 ЗП ЗОНЫ(М1)
 И П1777
 СЛИА 1(М4)
 ПО ВЫД3          ПО ЭТОЙ РАБОТЕ НЕТ ВЫДАЧИ
 УИ М6
 СЧИ М4
 СЛЦ Е6
 ЗП З7
 СЧ НОМЕР
 СДА 64-6
 ИЛИ З7
 УИ М13
 ПВ ТБУФ(М15)
 СДА 64-8
 УИ М15
 УИА 3
 СДА 64-2
 СЛЦ НОММЛ3
 ЗП З7
 СЧ (М15)
 ПО ОТ            НЕТ ЛИСТА
 МОДА (М5)
 СЧ (М6)
 И Е44Е43
 СДА 64+18
 МОДА (М5)
 СЛЦ (М6)
 И Е36П25
 СЛЦ З7
 ПВ ФИЗОБМ(М16)
ОТ      ноп
 ago .s2
 СЧ З7
 СДА 64+2
 И Е15П11
 УИ М16
 СЧ 0
 ЗП (М16)
.s2 anop 
 СЧ НОМЕР
 СДА 64-42
 ИЛИ З7
 ПВ ТБУФ(М15)
ВЫД УИИ М12(М6)
 СЛИ М6(М5)
        сч      '4011'
        сч      Е47(М1)
        и       Е32
        пе      НЕВЫ
 СЧИ М4
 И З4А
НЕВЫ УИА 3
 ПО ВЫД1А
 СЛИ М12(М5)
 ПБ ПРОП
ВЫД1А НОП
ПОС МОДА (М5)
 СЧ (М12)
 СДА 64+11
 И П1777
 ПО ПКТ
 УИ М12
 ПБ ПОС
ПКТ СЧ ШККТ
 МОД НОМЕР
 И Е48-1
 ПЕ ОККТ          ОКОНЧИЛАСЬ ЗАДАЧА С КТ
 УИА 0(М15)
ЦКТ МОДА (М5)
 СЧ (М12)
 И ЕУПРВП
 ПО КОРСН
 УИИ М15(М12)
 СЛИ М15(М5)
 СЧ (М15)
 И П3777
 УИ М12
 ПЕ ЦКТ
 СЧИ М4
 НТЖ Е1
 ПЕ (М2)          НЕ АЦПУ
 УИА -В(М6)        ПОИСК СВ.МЕСТА
ПМ0 МОДА В(М6)
 СЧ 1(М5)
 ПО ЕСПМ
 МОДА ПМ0
 ЦИКЛ (М6)
 ПБ (М2)          НЕ МЕСТА В ЗОНЕ ВЫВОДА
ЕСПМ СЛИА В+1(М6)
 УИИ М12(М6)
 СЛИ М6(М5)
 СЧ (М15)
 И Е44Е43
 ПО (М2)          ОДНОЙ ЗОНЫ БЫТЬ НЕ ДОЛЖНО
 СДА 64+42-24
 СЛЦ (М15)
 ИЛИ Е44Е43
 НТЖ Е44Е43
 ЗП (М6)          ВЫДАТЬ КЗ
 СЧ (М15)
 СЛЦ Е44Е43
 НТЖ (М15)
 И Е44Е43
 НТЖ (М15)
 ЗП (М15)         УМЕНЬШИЛ НА 1 СЧЕТЧИК
 ПБ ОККТ
*
КОРСН МОДА ОККТ          КТ НЕ БЫЛО
 ПИО (М15)     НЕ КОРРЕКТИРОВАТЬ
 МОДА (М5)  КОРР.ССЫЛКИ ВВЕРХ
 СЧ (М12)
 И О22П12
 МОДА (М5)
 ЗП (М12)
 СЧ (М15)
 ИЛИ П3777
 НТЖ П3777
 ЗП (М15)
ВВЕРХ МОДА (М5)
 СЧ (М12)
 И П3777
 ПО ПРОКТ
 УИ М12
 ПБ ВВЕРХ
*
ОККТ УИА -14(М17)
 УИА -ЧШП(М15)
 СЧ 0
 ЗП Р2
* СЧ 36(М1)
* СДА 64+41
* НТЖ =В’101’
* ПО БЛЧП          ПРИ СБОЕ НЕ ЗАКРЕПЛЯТЬ ВЫДАЧУ
ПШ МОДА (М5)
 СЧ ШПРИО+ЧШП(М15)
 ПО ПШ1
 СДА 64+4
 ИЛИ К
 СЛЦ К
 И К
 ЗП ЗОНА
 СДА 64-1
 ИЛИ ЗОНА
 ЗП ЗОНА
 СДА 64-2
 ИЛИ ЗОНА
 НТЖ ВСЕЕД
 ЗП ЗОНА
 МОДА (М5)
 СЧ ШПРИО+ЧШП(М15)
 НТЖ ШИФРМ(М1)
 И ЗОНА
 И Е48П13
 ПО НАЙШ
ПШ1 МОДА ПШ
 ЦИКЛ (М15)
БЛЧП СЧ КВНЗАД(М1)
 СДА 64+8
ПСВБ И П17 КЛАСС
 ВЧОБ Е4
 УИ М15
 УИА -ЧШ(М16)
 СЧИ М4
 НТЖ Е2
 ПЕ  ПСВ1
 СЧ ЯЧСLС(М1)
 И ЕСLС
 ПО ПСВ1    НЕ СLС
 УИА 3(М4)
ПСВ1 МОДА (М5)
 СЧ ШОЧ+ЧШ+1(М16)
 ПО ШНЕПРИ
 МОДА ПСВ1
 ЦИКЛ (М16)
 УИИ М16(М4)
 МОДА 1(М5)
 СЧ ШОЧ+ЧШ(М16)  М4=1-АЦПУ,2-ПИ,4-ПЛ
 ПО НШ
 СДА 64+14
 УИА (М17)
 И П1777
ПОССЫЛ УИ М16  А ССЫЛ
 МОДА (М5)
 СЧ (М16)
 И П3777
 ПЕ ПОССЫЛ
ПОС2 СЧИ М12
 СДА 64(М17)
 СЛИ М16(М5)
 ИЛИ (М16)
 ЗП (М16)
 СЧ (М6)
 ИЛИ Е23 ПР КЗ
 ЗП (М6)
 УИА ’2003’
 СЧ РЯПСЗ
      И П77
      НТЖ П77
 ИЛИ ШКПЛАН
 ЗП ШКПЛАН
 СЧ РЯПСЗ
      ИЛИ П77
 ЗП РЯПСЗ
 УИА 3
 ПБ (М2)
НШ СЧИ М4
 УИА 8(М15)  0 КЛ
 СДА 64-24
 ИЛИ ТОЧ
НШ1 СЛИА ЧШ+1(М16)
 МОДА (М5)
 ЗП ШОЧ(М16)
 МОДА (М5)
 СЧ ОЧКЛ(М15)
 И Е48П37-1(М4)
 ПО ПОШ1
 СД КСД1-1(М4)
 УИ М3  А ШИФ ПО КЛАС
ПОШИ МОДА (М5)
 СЧ ШОЧ(М3)
 И П177
 ПО ПОШ
 УИ М3
 ПБ ПОШИ
ПОШ СЧИ М16
 МОДА (М5)
 ИЛИ ШОЧ(М3)
 МОДА (М5)
 ЗП ШОЧ(М3)
ПОШ2 СЛИА ШОЧ(М16)
 ПБ ПОС2
ПОШ1 СЧИ М16
 СД КСД3-1(М4)
 МОДА (М5)
 ИЛИ ОЧКЛ(М15)
 МОДА (М5)
 ЗП ОЧКЛ(М15)
 ПБ ПОШ2
ШНЕПРИ СЧ ШИФРМ(М1)
 И Е48П25
 ИЛИ Р2
 ПБ НШ1
НАЙШ МОДА (М5)
 СЧ ШПРИО+ЧШП(М15)
 И П77 УСТР,ЭВМ
 ЗП ЗОНА
 И П7
 ПО ПШ2
 УИ М16
 СЧ Е12(М16)
 НТЖ Е12(М4)
 ПО ПШ2 УСТР НАШЕ
 НТЖ Е11Е9
 ПЕ ПШ1 НЕ А1
ПШ2 СЧ ЗОНА
 СДА 64-7
 ЗП Р2
 МОДА (М5)
 СЧ ШПРИО+ЧШП(М15)
 СДА 64+6
 ПБ ПСВБ
ОТДАЙ СЧ 0
 ЗП (М5)
 СЧ З2
 ПВ ФИЗОБМ(М16)
 СЧ З2
 ПВ DЕQ(М15)
 УИА 3
 ПБ ВХ8
ПРОПУ СЧ АВОС(М1)
 УИА 3
 И Е32
 ПЕ ПРОП
ЧАСТЬ ЗП З4В
 УИИ М6(М12)
 СЧИ М12
 И П1777
 УИ М12
ЧАСТЬ1 УИА 1(М4)
 МОДА ВЫХ
 УИА (М2)
 ПБ ВЫД1А
В1Ч НОП 0
 СЧ ПТ
 ПО НЕПКТ
 НТЖ ПТ
 ЗП ПТ
 СЧМР
 УИ М12
 И Е48П17        НУЛИ В ССЫЛКИ
 МОДА (М5)
 ЗП (М12)         ВОССТ.ТО,ЧТО ВЫДАТЬ
 УИИ М6(М12)
 СЛИ М6(М5)
 СЧ И2
 УИ М2
 ПБ ОККТ          ВЫДАТЬ ОГРЫЗОК
НЕПКТ СЧ З1
 ПЕ ВЫХ
 УИА 1(М4)
 ПБ ВЫД3
КЦ ПАМ 0
 СЧ Е1
 ЗП З2А
 СЧ (М2)
 И П1777
 УИ М10
 СЧ (М2)
 И Е47П45
 ПО КЦП
 СЧ (М2)
 НТЖ Е47П45
 СЛЦ Е45
 НТЖ Е47П45
 ЗП (М2)
 И Е47П45
 ПО КЦП
КОП СЧ (М2)
 СДА 64+11
 И П3777
 ПО КОПИ
 УИ М2
 СЛИ М2(М1)
 ПБ КОП
КОПИ УИИ М3(М2)
 ПБ ПР
ПРОКТ СЧИ М4
 НТЖ Е1
 ПЕ НЕВЫ          НЕ АЦПУ-ПРОПУСТИТЬ ВСЕ
 СЧИ М2
 ЗП И2
 МОДА (М5)
 СЧ (М12)
 ЗП ПТ            СТРОКА С ПОСЛ.ЗОНАМИ
 СДА 64+11
 И П3777
 УИ М3            ПРЕД.СТРОКА
 СЧ ПТ
 СДА 64+42
 И П3
 ПО ОДНЗ          ПОСЛ.ЗОНА ОДНА
 УИ М6
 СДА 64-24
 СЛЦ ПТ            ЗОНА КЗ
 ИЛИ Е44Е43
 НТЖ Е44Е43        ОДНА
 И О22П12
 ЗП ПТ
 СЛИА -1(М6)
 СЧИ М6
 СДА 64-42
 УИИ М6(М12)
 СЛИ М6(М5)
 НТЖ (М6)
 И Е44Е43
 НТЖ (М6)
 ЗП (М6)          УМЕНЬШ.ЧИСЛО ЗОН НА 1
 СЧИ М12
 УИИ М12(М6)
 ПБ ЗПТ
ОДНЗ СЧ ПТ
 И О22П12
 ЗП ПТ
 СЧИ М12
 МОДА НЕОД
 ПИНО (М3)          ЕСТЬ ССЫЛКА НА ПРЕД.СТРОКУ
 СЧ 0
 ЗП ПТ
 ПБ ОККТ          ЗДЕСЬ ТОЛЬКО КЗ - ВЫДАЙ
НЕОД СЛИ М3(М5)
 УИИ М12(М3)       ПРОП.ПРЕД.СТРОКИ
ЗПТ ИЛИ ПТ
 ЗП ПТ            ТО,ЧТО НАДО ВЫДАТЬ ПОТОМ
*     ПРОПУСК ВЫДАЧ
ПРОП СЧ 0
 ЗП З2А
 УИИ М2(М12)
 СЧИ М1
 ЗП С5
 УИИ М1(М5)
КЦП СЧ (М2)
 СДА 64+11
 И П3777
 УИ М3
 СЧ (М2)
 СДА 64+24
 И П7777
 ЗП Р2
 СЧ (М2)
 СДА 64+42
 И П3
 УИ М6
 СЧ 0
 ЗП (М2)
КЦВ СЧ 1023(М1)
 ВЧ Е13
 ЗП 1023(М1)
 СЧИ М6
 СЛЦ Р2
 УИ М16
 И П37
 УИ М15
 СЧИ М16
 И Е48П6
 УИА 1027
 НТЖ ЗОНВЫ
 И П3777
 ПО КЦ2
 УИА 3
КЦ1 СЧИ М6
 СЛЦ Р2
 АIF (∧ВS ЕQ 0).А1
 ПЕ Д
 СТОП * НУЛЕВАЯ ЗОНА
 ПБ Х3
Д НОП
.А1 АNОР
 УИ М15
 И П37
 УИ М16
 СЧИ М15
 СДА 64+5
 УИ М15
 СЛИ М15(М7)
 СЧ ТБЗ-РОБОТ(М15)
 ИЛИ Е48(М16)
 ЗП ТБЗ-РОБОТ(М15)
 ЗП Р4
КЦ5 СЧ З2А
 ПО КЦ7
 СЧ РИМ
 И Е12(М4)
 ПО КЦ7
 СЧИ М6
 СЛЦ Р2
 СДА 64-24
 СЛЦ НОММЛ3
        или     Е16Е17
        или     Е14
 ПВ ФИЗОБМ(М16)
 МОДА КЦ6
 ПИО (М6)
 СЛИА -1(М6)
 ПБ КЦВ
КЦ6 МОДА Х3
 ПИНО (М3)
 СЧ РИМ+1
 АIF (∧ВS ЕQ 0).НВ1
* БЫЛО :СТОП *          15.11.87  ШЕБАНОВ
 ПБ Х3
.НВ1 АNОР
 РЗБ ПРОБ
 ИЛИ ПРОБ+1
 ЗП ПРОБ+2
 СЧ РИМ+1
 СДА 64-20
 РЗБ ПРОБ1
 ЗП ПРОБ+3
 СЧ РИМ+1
 СДА 64-44
 СДА 64+4
 ИЛИ ПИБ
 ЗП ПРОБ+4
 МОДА Х3
 УИА (М16)
 УИИ М32(М16)
 МОДА СТР+1
 УИА (М16)
 СЧ Е23
 ПБ ТВ40
КЦ2 СЧ ГОД
 И П7
 УИ М16
 СЛИ М16(М1)
 СЧ Е48(М15)
 НТЖ ОГ(М16)
 ЗП ОГ(М16)
 УИА 1027
 ЗП ЗОНВЫ
 ПБ КЦ5
ПИБ КОНД П’0 БУФЕ’
ПРОБ1 КОНД П’      ’
ПРОБ КОНД П’0     ’
СТР КОНД П’200000’
 КОНД (3)В’0’
 ТЕКСТ П’Р ВЫВОДА ЗАТЕРТ↑’
КЦ7 МОДА Х3
 ПИО (М6)
 СЛИА -1(М6)
 ПБ КЦВ
Х3 МОДА НБЫ
 ПИО (М3)
 УИИ М2(М3)
 СЛИ М2(М1)
 СЧ (М2)
 ПБ КЦП
НБЫ ПАМ 0
КЦ4 СЧ З2А
 ПО ПРО
 СЧ ВСЕЕД
 НТЖ Е48П37(М14)
 И СВ(М5)
 ЗП СВ(М5)
 УИА 1027
 СЧ ШИФРАЦ
 ИЛИ Е24(М4)
 НТЖ Е24(М4)
 ЗП ШИФРАЦ
 УИА 3
 СЧИ М2
 СДА 64-14
 ЗП ЗОНА
 УИА 1(М16)
 МОДА ВСЕ
 ПИО (М10)
 УИА ЧШ+2(М16)   ПРОСМ 4 ШИФРА В КОНЦЕ
ВСЕ МОДА (М1)
 СЧ ШОЧ(М16)
 НТЖ ЗОНА
 И Е24П15
 ПО ВСЕ1
 СЛИА 1(М16)
 ПБ ВСЕ
ПСК СЧ ВСЕЕД
 НТЖ Е24П15
 НТЖ ПРВЫ
 И ШОЧ(М16)
 ЗП ШОЧ(М16)
 СЧИ М10
 СДА 64-14
 ИЛИ ШОЧ(М16)
 ЗП ШОЧ(М16)
 ПБ ВСЯ
ВСЕ1 СЧИ М16
 ЗП ЗОНА
 СЛИ М16(М1)
 МОДА ПСК
 ПИНО (М10)
 СЧ ШОЧ(М16)
 И П177
 УИ М15
 СЧ 0
 ЗП ШОЧ(М16)
 УИА -3(М6)
ПОКЛП УИА -8(М17)
ПОКЛБ МОДА (М1)
 СЧ ОЧКЛ+8(М17)
 СД КСД1+3(М6)
 И П7777
 НТЖ ЗОНА
 ПО НАШЗ
 МОДА ПОКЛБ
 ЦИКЛ (М17)
 МОДА ПОКЛП
 ЦИКЛ (М6)
 УИА 1(М16)
 СЛИ М16(М1)
КОСЫ СЧ ШОЧ(М16)
 НТЖ ЗОНА
 И П177
 ПО ССЫ
 СЛИА 1(М16)
 ПБ КОСЫ
ССЫ СЧИ М15
 НТЖ ШОЧ(М16)
 И П177
 НТЖ ШОЧ(М16)
 ЗП ШОЧ(М16)
 ПБ ВСЯ
НАШЗ СЧ ВСЕЕД
 НТЖ Е48П37+3(М6)
 СЛИ М17(М1)
 И ОЧКЛ+8(М17)
 ЗП ОЧКЛ+8(М17)
 СЧИ М15
 СД КСД3+3(М6)  НОВ ССЫЛ
 ИЛИ ОЧКЛ+8(М17)
 ЗП ОЧКЛ+8(М17)
ВСЯ СЧ РЯПСЗ
 И Е12
 НТЖ РЯПСЗ
 ЗП РЯПСЗ
 ПБ НЕБЫЛО
Е47П45 КОНД М44В’7’
З7 ПАМ 1
КШ КОНД М17В’1’М24В’445’
 КОНД В’4042147311220470’ ВЫДАЧ
 КОНД В’1030747112232461’ А ШИФР
 КОНД В’3050020040100213’
 ПАМ 2
 КОНД В’3070020040134032’
 ПАМ 2
 КОНД В’0650020040100200’
 КОНД В’3061517737661032’
 КОНД В’3767754206477577’
 КОНД В’3041517737661032’
 КОНД В’3767754206477575’
ТЕКСТ КОНД М40В’142’М32В’175’
ВЫХ СЧ 0
 ЗП (М5)
 СЧ З2
 ПВ ФИЗОБМ(М16)
 СЧ З2
 ПВ DЕQ(М15)
ВХ8 СЧ З4В
 ПЕ ВЫХОД1
ВХ1 НОП
 АIF (∧ЭФ ЕQ 0).ВХ1
 МОД ТУС+7 ТУС Э64
 УИА (М16)
 СЧ КЛЮЧЛ-Э64(М16)
 ПО ВЫХОД1  РАБОТАЕТ ПРОГР.БУФЕР
.ВХ1 АNОР
 СЧИ М5
 СДА 64-2
 СЛЦ НОММЛ3
 ЗП Р3
 СЧ (М6)
 И Е44Е43
 СДА 64+18
 СЛЦ (М6)
 И Е36П25
 СЛЦ Р3
 ЗП Р3
 СЧ НОМЕР
 СДА 64+4
 ВЧОБ Е2
 ЗП Р1  СЕКТОР МАЛ КАТ
 СЧИ М5
 СДА 64-2
 ИЛИ =В’406030’
 ИЛИ Р1
 ИЛИ НОММБ
 ПВ ФИЗОБМ(М16)
 УИА 3
 УИА -13(М2)
Ч1 МОДА ТЕКСТ
 СЧ (М2)
 МОДА 13(М5)
 ЗП 3(М2)
 МОДА Ч1
 ЦИКЛ (М2)
 СЧ НОМЕР
 И П17
 ЗП НОМЕР
 СЧ 33(М1)
 СДА 64+4
 И П37
 ИЛИ =В’3041517737661400’
 СЛЦ Е1
 ЗП 2(М5)
 СЧ 33(М1)
 СЛЦ Е5
 ЗП 33(М1)
 СЧ (М5)
 ИЛИ Е31
 ЗП (М5)
 СЧ ШИФРМ(1)
 ЗП 1(М5)
 МОД НОМЕР
 СЧ ШИФР+768(М5)
 ЗП Р1
 РЗБ Л1
 СЛЦ К1
 ЗП 6(М5)
 СЧ Р1
 СДА 64-24
 РЗБ Л1
 СЛЦ К1
 ЗП 7(М5)
 МОД НОМЕР
 СЧ ФИО+768(М5)
 СЛЦ К1
 ЗП 9(М5)
 МОД НОМЕР
 СЧ ФИО1+768(М5)
 СЛЦ К1
 ЗП 10(М5)
 СЧ Р3
 ПВ ФИЗОБМ(М16)
 ПБ ВЫХОД1
ПРО ПАМ 0
ПРО1 УИА 3
 СЧ С5
 УИ М1
 МОДА ШШ
 УИА (М2)
 ПБ В1Ч
К КОНД М8Х’1111111111’
МАСПЕЧ КОНД В’16’       свс: 13
ШКОЖ ПАМ 1
Р ПАМ 1
Е48П6 КОНД М5В’-1’
ЗАДА ПАМ 1
З1 ПАМ 1
З2 ПАМ 1
З3 ПАМ 1
РА ПАМ 1
З1А ПАМ 1
З2А КОНД В’1’
З4А ПАМ 1
З6 ПАМ 1
ЗОНА ПАМ 1
З4В КОНД В’1’
ЧАСВЫД КОНД В’1’
Р3 КОНД В’0’
Р1 КОНД В’0’
Л1 КОНД П’      ’
К1 КОНД П’111111’
О22П12 КОНД В’-1’М11В’3777’
ПТ     КОНД В’0’
И2 ПАМ 1
Е48П13 КОНД В’7777’В’-1’
Е24П15 КОНД М14В’1777’
ТБЗ ПАМ 32
Р2 ПАМ 1
ТОЧ КОНД Х’ЕЕЕЕЕ0000000’
Р4 ПАМ 1
КУСРАБ ПАМ 1  ЗП КАТ
*
 ЭКВИВ (В,’1575’)
 ЭКВИВ (ОГ,’1576’),(ШПРИО,’1606’),(СВ,’1646’)
 ЭКВИВ (ОЧКЛ,’1664’),(ШОЧ,’1675’),(МАСКА,ШОЧ)
 ЭКВИВ (ЧШП,31),(ЧШ,59)
*
 АIF (∧ЭФ ЕQ 0).Э64
Э64 ВНЕШ Э64,КЛЮЧЛ
.Э64 АNОР
КИТ ВНЕШ ЧСТР,ШИФР
ДИСКИ ВНЕШ РИМ,ЕNQ,DЕQ,Е11Е9
ВЗУ ВНЕШ ФИЗОБМ,ФИЗЗП
КАЧКА ВНЕШ Е48П17
ДИСП70 ВНЕШ П3777,Е36П25,П7777,П37,НОММЛ3,Е16Е17,ТВ40
ДИСП70 ВНЕШ НОММБ,РЯПСЗ,ШЗНМБ,АВОС,ШГ,ЗОНЫ,П77777
ДИСП70 ВНЕШ ТУС,ТБУФ,ГОД,П7,НОММЛ1,Е48П37,ОТКАЗН
ДИСП70 ВНЕШ ШИФРМ,П377,ВСЕЕД,ЗАНОСМ,П1777,П12,НОММБ1
ДИСП70 ВНЕШ ШКПЛАН,Е40П1,ЗОНВЫ,ГРАН,П30,ЯЧКОПИ,Е46П48
ДИСП70 ВНЕШ ПРЕДЕЛ,ШКИВ,МГРП,ШИФРАЦ,П777,П5,П17
ДИСП70 ВНЕШ П3,КСД1,КСД3,Е12Е11,Е44Е43,П77,П6,НО
ДИСП70 ВНЕШ П177,КВНЗАД,Е48П25,(ПРВЫ,Е14),ШКАРУ,ШКСВН
ДИСП70 ВНЕШ ТБЗН,ДТЗ,ЗАНЯТА,ЯЧСLС,ЕСLС,П60,ЕСТОП
ДИСП70 ВНЕШ Е15П11,ШККТ,ЕУПРВП
ПЛАН2 ВНЕШ ФИО,ФИО1
Э64 ВНЕШ И10
*
 ВХОД ШОЧ,ОГ,ШПРИО,ЧШП,З1А,СВ,ОЧКЛ
*
*КОНЕЦ ЧАСТИ
