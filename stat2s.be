СТАТ2С СТАРТ ’11400’
 Б
 Е
 М
 УПОТР СТАТ2С-768(М7)
СТАСУТ НОП ,
       уиа      3
       сч       '5003'
* РЖА 3
 СЧ МГРП
 СДА 64+21
 И П7
 ПЕ МИГ
 СЧ Е1
МИГ ИЛИ Е48
 УМН П5
 СЧМР 64
 УИ М11
 СЛИ М11(М2)
 СЛИА -5(М11)
НОВ УИА 1027
 СЧ ИПЗЖТ+33
 СДА 64+23
 И Е24П1
 СЛЦ СМЕ+1(М11)
 ЗП СМЕ+1(М11)    ЖТ
 СЧ СЧЕТЧ(М2)
 СДА 64-30
 СЛЦ СМЕ(М11)
 ЗП СМЕ(М11)    П ОС
 СЧ ИПЗЖТ+33
 СЛЦ ПОТЕРИ
 ЗП ПОТЕРИ
 СЧ Е48
 ЗП ИПЗЖТ+33
 СЧ Т
 СЛЦ СМЕ(М11)
 ЗП СМЕ(М11)    Т ОС
 СЧ Т
 ЗП ВРТ
 СЛЦ ЖИЗОС
 ЗП ЖИЗОС
 СЧ АЗУ
 ЗП РАБ1
 СЧ АЗУ+1
 ЗП РАБ2
 СЧ 0
 ЗП АЗУ+1
 ЗП АЗУ
 ЗП Т
 СЧ ВРЕМЯ
 СДА 64-18
 ЗП СЧЕТЧ(М2)    СОХР.АСТР.ВРЕМЕНИ
 СЧ ГОД
 ЗП ГОДСТ(М2)    ЗАНЕСЕНИЕ АСТР.ДАТЫ
 УИА 3
 СЧ ВСЕЕД
 НТЖ Е24П13
 И РАБ1
 СЛЦ СМЕ+2(М11)
 ЗП СМЕ+2(М11)
 СЧ РАБ1
 И Е24П13
 СДА 64-18
 СЛЦ СМЕ+1(М11)   ЗАХ
 ЗП СМЕ+1(М11)
 СЧ РАБ2
 СДА 64-24
 РЗБ =М24В’77777’В’777’  ПК(ПЛ,ПИ)
 СЛЦ СМЕ+3(М11)
 ЗП СМЕ+3(М11)
 СЧ РАБ2
 РЗБ =М24В’7777’В’7777’  FS,ПК(УВВК)
 СЛЦ СМЕ+4(М11)
 ЗП СМЕ+4(М11)
 УИА -47(М6)
 СЧ ВРТ
 СЛЦ Е10
 СДА 64+10
 ЗП ВРТ
*
****** БЛОК ПОДСЧЕТ ОШИБ+ПРИЕМ+РЕКОРД+ОБРЫВ ПО ТТ И АС ******
БСТ СЧ ШКУСТР
 И Е48+48-1(М6)
 МОДА 48(М6)
 УИА (М10)
 УИА СБТКВУ-СБТАС(М1)    СДВИГ=100 ОТ 120 -> ТЕРМ. НАПРЯМУЮ
 ПЕ ПРЯТ
 СЧ ТСЛ+48-1(М6)
 СДА 64-48+АТ
 СЧМР
 ПО СЛИЗП1
 УИ М10     NТ ДЛЯ АС
 УИА (М1)      СДВИГ=0 ОТ 120 -> ТЕРМ. АС
ПРЯТ СЧ ТСЛ+48-1(М6)
 СДА 64-31
 И Е48Е47
 ЗП ТИПТ
 СЧ ТАС+48(М6)
 СДА 64-6
 РЗБ ВЫПРОШ
 ИЛИ ТИПТ
 ЗП ТИПТ
 СЧ Е46П48
 ИЛИ Е18П1
 УИА 1027
 И ТАС+48(М6)
 ЗП ТАС+48(М6)
 УИА 3
 СЛИ М10(М2)
 СЛИ М10(М1)   АДРЕС В ЗОНЕ
 СЧ СБТАС-1(М10)
 ИЛИ Е48Е47
 НТЖ Е48Е47
 СЛЦ ТИПТ
 ЗП ТИПТ
 И П37
 НТЖ П37
 ПО СЛИЗП
 СЧИ М10
 СДА 64+5
 И П3
 УИ М17
 СЧИ М10
 И П37
 УИ М1
 СЧ ШКТАС(М17)
 И Е48(М1)
 ПО СЛИЗП
 СЧ ТИПТ
 СЛЦ Е1
 ЗП ТИПТ
СЛИЗП СЧ ТИПТ
 ЗП СБТАС-1(М10)
СЛИЗП1 МОДА БСТ
 ЦИКЛ (М6)
 СЧ АСОШ
 СЛЦ СБОИАС(М2)
 ЗП СБОИАС(М2)
 УИА -4(М15)
 СЧ 0
 УИА 1027
РОСП ЗП ШКТАС+4(М15)
 МОДА РОСП
 ЦИКЛ (М15)
 УИА 47(М10)
ТАЙМ СЧ ШКУСТР
 УИА 3
 И Е48(М10)
 ПЕ НЕАС
 СЧ ШКАС
 И Е48(М10)
 ПО СЛЕДОМ
 УИА 1(М15)  БЫЛ АС
 СЧ ТСЛ(М10)
 СДА 64+АТ
 УИ М1
 ПБ НАШЛИ
ЗАНТ УИИ М1(М10)
 СЛИА ’400’(М1)
НАШЛИ СЧ ШЗНКТ
 И Е48(М10)
 ПЕ СЧЕТВР
 СЧ ШКОПТТ
 И Е48(М10)
 ПО СЛЕДОМ
СЧЕТВР СЧИ М1
 СДА 64+2
 УИ М1
 СЧМР
 СДА 64+46
 УИ М5
 СЧ ВРТ
 СД КСД3(М5)
 МОДА (М2)
 СЛЦ ВРТАС(М1)
 МОДА (М2)
 ЗП ВРТАС(М1)
СЛЕДОМ МОДА ВСЕ
 ПИО (М10)
 СЛИА -1(М10)
 ПБ ТАЙМ
НЕАС СЧ ШКУСТР
 И Е48(М10)
 ПЕ ЗАНТ
 ПБ СЛЕДОМ
ВСЕ МОДА МЕТ3
 ПИО (М15)
 СЧ ВРТ
 СДА 64-36
 СЛЦ ВРТАС(М2)
 ЗП ВРТАС(М2)
МЕТ3 СЧ КУССТ-Н(М7)  ЗОНУ СТ-КИ НА 2053
 ИЛИ Е18
 НТЖ Е18
 ПВ ФИЗОБМ(М16)
*
* СЧ КУССТ-Н(М7)
* ПВ ТБУФ(М15)    БУФЕР ИЗ-ПОД СТ-КИ
 СЧ СТЗОН
 И П77
 НТЖ П30
 ПЕ РАБНЕР
 СЧ НОММЛ
 ПВ DЕQ(М15)
* РАБОТА НЕРОТ-У ПО ОСВОБОЖДЕНИЮ
* ЛОГИЧЕСКИХ ТЕРМИНАЛЬНЫХ КАНАЛОВ (ЛТК)
РАБНЕР НОП ,
* СЧ ШКРАБН
* ИЛИ ЕОТКЛ
* ЗП ШКРАБН
 УИА 3
*  З А П У С К    А Р Х И В А
 СЧ ПРЕДЕЛ
 И Е16
 ПО АРХНЕТ        НЕТ РАЗДЕЛА ГЕН."АРХИВ ДА"
 СЧ ПРЕДЕЛ
 И Е20
 ПЕ АРХНЕТ        БЫЛА ДИРЕКТИВА "НЕТ АРХ"
 СЧ ШКРЗ
 И ЕЗАР
 ПЕ АРХНЕТ
 СЧ ГОД
 И П7
 НТЖ АРХ+2
 ЗП АРХ+2
 МОДА АРХ
 УИА (М16)
 СЧИ М16
 Э50 ’7701’
АРХНЕТ  ноп
        сч      
        пв      ТБУФ(М15)
        сда     64-8
        уи      М1
        сда     64-2
        или     НП
        или     НОММБ
        зп      НП
        пв      ФИЗОБМ(М16)
        уиа     '3'
        сч      1(М1)
        нтж     КИ
        и       Е24П1
        по      G11655
        сч      (М1)
        нтж     Е24П1
        пе      G11655
        сч      НОММЛ
        пв      ЕNQ(М15)
        уиа     '3'
        уиа     -5(М10)
        пб      G11572
КОР СЧ КИ
        слц     Е25
        зп      КИ
        и       Е31
        по      G11572
        сч      КУСТ
        нтж     КИ
        зп      КИ
G11572  счи     М2
        сда     64-2
        зп      ТИПТ
        сч      КИ
        и       Е36П25
        слц     НОММЛ
        или     ТИПТ
        или     Е18
        зп      ТИПТ
        пв      ФИЗОБМ(М16)
        уиа     '3'
        сч      (М2)
        нтж     Е24П1
        пе      НОВ1
        сч      1(М2)
        пе      ПЕРЕ
        мода    КОР
        цикл    (М10)
НОВ1    ноп
        сч      Е24П1
        зп      (М2)
        сч      
        зп      2(М2)
        сч      БУФКУС
        зп      1(М2)
ПЕРЕ    ноп
        и       П1777
        уи      М5
        сч      1(М2)
        сда     64+15
        и       П7
        уи      М6
        сч      КИ
        и       П1777
        уи      М3
        сч      КИ
        сда     64+15
        и       П7
        уи      М4
        сли     М5(М2)
ПРН     ноп
        мода    (М1)
        сч      (М3)
        сбр     К(М4)
        рзб     К(М6)
        или     (М5)
        зп      (М5)
        мода    ПРН3
        пино    (М4)
        уиа     6(М4)
        слиа    1(М3)
ПРН3    мода    ПРН1
        пино    (М6)
        слиа    1(М5)
        счи     М5
        и       П1777
        пе      МЕТ4
        уиа     0(М10)
        пб      ПРН2
МЕТ4    уиа     6(М6)
        сч      
        зп      (М5)
ПРН1 НОП
 СЛИА -1(М6)
 УИА 1(М10)
ПРН2 НОП
 СЛИА -1(М4)
 СЧИ М3
 И П1777
 ПЕ ПИ
 УИА 2(М3)
 СЧИ М3
ПИ НОП
 ЗП ВРТ
 СЧИ М4
 СДА 64-15
 ИЛИ ВРТ
 ЗП ВРТ
 СЧ КИ
 И Е48П25
 ИЛИ ВРТ
 ЗП КИ
 НТЖ 1(М1)
 СДА 64-30
 ПО ЗЗ1
 СЧИ М10
 ПЕ ПРН
        зп      1(М2)
        сч      ТИПТ
        нтж     Е18
        пв      ФИЗОБМ(М16)
        пб      КОР
ЗЗ1 НОП
 СЧИ М5
 И П1777
 ЗП ВРТ
 СЧИ М6
 СДА 64-15
 ИЛИ ВРТ
        зп      1(М2)
        сч      ТИПТ
        нтж     Е18
        пв      ФИЗОБМ(М16)
        уиа     '3'
        сч      НОММЛ
        пв      DЕQ(М15)
G11655  счи     М2
        сда     64-2
        или     Е19
        пв      ТБУФ(М15)
        сч      НП
        мода    '1217'(М7)  уточнить
	уиа	0(М15)
        пб      ТБУФ
БУФКУС  конд    в'0000000000500002'
НП      конд    в'0000000001400020'
КУСТ    конд    в'0000017200000000'
ВЫПРОШ КОНД М30В’377’М17В’377’М5В’377’
РАБ1	пам	1
РАБ2	пам	1
ВРТ	пам	1
ТИПТ    пам     1
*
ВЗУ ВНЕШ ФИЗОБМ,ФИЗУР
ДИСКИ ВНЕШ ЕNQ,DЕQ
ДИСП70 ВНЕШ АЗУ,ИПЗЖТ,ПОТЕРИ,Т,П7777,Е24П1,Е18П1,Е46П48
ДИСП70 ВНЕШ Е48Е47,П3,П37,П77777,КСД3,ТАС,ТСЛ,НОММЛ,П377,ТБУФ
ДИСП70 ВНЕШ (Е17Е16,Е16Е17),П777,ЖИЗОС,П17,П7,Е24П13,ВСЕЕД
ДИСП70 ВНЕШ ГОД,ПРЕДЕЛ,П1777,Е36П25,Е48П25,П60,КЛЮЧ,НОММБ
ДИСП70 ВНЕШ РМР,ШКИВ,РОЙ,МГРП,П5,ЕЗАР
ДИСП70 ВНЕШ СТЗОН,П77,П30,ВРЕМЯ
КАЧКА ВНЕШ ШКРЗ
СОСТАВ ВНЕШ ЕСБОЙВ
КИТ ВНЕШ (К,КОНСБР),КИ
МОТТ ВНЕШ ШКОПТТ,ШЗНКТ,АСОШ,ШКАС,ШКУСТР,ФЛАТЕР,ШКТАС
НОМБОБ ВНЕШ (Н,НОМБОБ),КУССТ,КНЦСТТ
СОСТАВ ВНЕШ СБТКВУ,СБТАС,СБОИАС,ВРТАС,ЕПУСК,СМЕ,СЧЕТЧ
 ВХОД СТАСУТ,УНТ
 ЭКВИВ (УНТ,СТАТ2С-768)
СОСТАВ ВНЕШ ГОДСТ,АТ
АРХ ШИАР
 КОНД П’,ОЗУ 1’М40П’F’
 КОНД П’8,ВРЕ ’М32П’F’
 КОНД П’95959,’М00П’F’
 КОНД П’ВХО 76’
 конд п'000,ИН'М16П’F’
 КОНД П’К,МАШ,’М32П’F’М00П’F’
 КОНД П’ПОВТО,’М00П’F’
 КОНД П’РОС 0,’М00П’F’
 КОНД П’ОДИ,Е ’М16П’F’
БАЗА КОНД В’76000’
 ОТМЕН (М7)
 УПОТР БАЗА-’75777’(М7)
* Э50 ’136’
 Э62 ’131’
 СБР  П6П
 СДА 64+24
 ИЛИ ДЗКЗ
 ЗП ДЗКЗ
 УИА ’40000’(М15)
 Э50 ’131’
 ПО ОКАРХ
 Э74
ОКАРХ НОП ,
 СЧ ДЗКЗ
 Э50 ’121’
 Э70 ЧТАРХ
 ПБ ’70003’
П6П КОНД П’      ’
ДЗКЗ КОНД В’4177000000200000’
ЧТАРХ КОНД В’0010340000410721’
 КОНД П’_!_!_!’
 КОНД П’ЕКОНЕЦ’
 ФИНИШ ,
*КОНЕЦ ЧАСТИ
