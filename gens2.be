ГЕНС2 СТАРТ ’60000’
 Б
 Е
 М
∧С УСТВ 1   ИМЕЕТ ДР.СМЫСЛ,ЧЕМ ДЛЯ ОБЩИХ ДИСКОВ СВС
*∧Ф УСТВ 0
*∧НИ УСТВ 0
 GВLВ ∧Р,∧МВВ
∧МВВ УСТВ 0
∧Р УСТВ 0
***********
 УПОТР ГЕНС2(М6)
 УИА 3
 УИА -5(М16)
ФС СЧ НОММЛ1
 СЛЦ КУС+5(М16)
 ЗП КУС+5(М16)
 МОДА ФС
 ЦИКЛ (М16)
 СЧ НОММЛ1
 ПВ ЕNQ(М15)      ЗАХВАТ МД
* СЧ ЛВЗЯЛИ
* ПО А1
* СЧ
* ЗП ЛВЗЯЛИ
* УИА -2(М5)
* УИА КРА(М4)
* ПБ РОСПК2
*А1 НОП
 СЧ ПРРО
 уиа -1023(м16)
 ПЕ НЕРОС
 УИА -3(М5)
 СЧ Е1
 МОДА РОСИ
 ПВ (М4)
 сч КОБ
 слц номмл1
 пв физобм(м16)
НЕРОС НОП ,
 УИА -3(М5)
 СЧ КУС
 УИА Л21(М10)
 ПВ ФИЗОБМ(М16)
 МОДА КРА
 УИА (М4)
 МОДА Л20
 СЧ 2
 НТЖ КРАЗ
 ПО РОСИ
 УИА -2(М5)
 СЧ ИСКАТ
 ПЕ РОСПК2
 СЧ КУСТ
 ПВ ФИЗОБМ(М16)
 СЧ ЯБКЗПА(М10)
 НТЖ ГОД
 И П7
 ПЕ ПРА
 СЧ ЯБКЗПА(М10)
 ИЛИ П7
 НТЖ П7
 ЗП ЯБКЗПА(М10)
 СЧ КУСТ
 ПВ ФИЗЗП(М16)
ПРА УИА 3
 УИА Л20(М5)       ШИФРЫ ЗАД.С ’ТЕЛЕ’В 0 АБЗ.
ПШИФР УИА Л21(М10)
* МОДА ШК1
 УИА шк1(М14)
 УИА -127(М4)
ЗРЕШ МОДА (М5)          СОСТ ШКАЛУ ЗАДАЧ В РЕШЕНИИ
 СЧ 127(М4)
 ПО СД
 СЧ 6(М10)
 И Е31
 ПО СД
 МОДА ШИФА
 ПВ (М11)
СД СЛИА 8(М10)
 МОДА ЗРЕШ
 ЦИКЛ (М4)
 УИА Л21(М14)
 УИА (М4)
ПШИФ1 СЛИА Л21(М4)       СОСТАВЛ ШКАЛЫ ВВЕД ЗАДАЧ ПО БОЛЬШ.КАТ
 СЧ 7(М4)
 И П1777
 ПО ПШИФ          ЗАДАЧ НЕТ
 УИ М4
 СДА 64+3
 УИ М16
 МОДА ШИФ1
 ПВ (М11)
 ПЕ ПШИФ1
ПШИФ УИА -127(М4)
* МОДА ШК
* УИА (М14)
 уиа шк(м14)
ПРОШИФ МОДА (М5)          СОСТАВЛ.ШКАЛЫ ВВЕДЕН.ЗАДАЧ ПО ШИФРАМ
 СЧ 127(М4)
 ПО ШИФ2
 МОДА ШИФ2
 УИА (М11)
ШИФА УИИ М16(М4)
 СЛИА 127(М16)
ШИФ1 СЧИ М16
 И П37
 УИ М17           N ЗАД.В СТРОКЕ
 СЧИ М16
 СДА 64+5
 УИ М15           N СТРОКИ
 СЧ Е48(М17)
 СЛИ М15(М14)
 ИЛИ (М15)
 ЗП (М15)
 ПБ (М11)
ШИФ2 МОДА ПРОШИФ
 ЦИКЛ (М4)
 УИА -3(М16)
ЗНЕТ ноп
* МОДА (М16)
 СЧ ШК1+3(м16)  ОПР. ЗАДАЧ,ШИФРЫ КОТ.НАДО ОЧИСТИТЬ
 МОДА Л21
 ИЛИ 3(М16)        ЗАД.ИЗ Б.КАТАЛ.
 МОДА 3(М16)
 НТЖ (М14)
* МОДА (М16)
 ЗП ШК1+3(м16)   ’1’-ЗАДАЧА ПРЕРВАНА НА ВВОДЕ
 МОДА ЗНЕТ
 ЦИКЛ (М16)
 УИА -3(М15)
НЕВВ1 УИА -31(М16)
 УИА Л21(М11)
НЕВВ ноп
* МОДА (М15)
 СЧ ШК1+3(м15)
 И Е48+31(М16)
 ПО ЧИСШ          ЧИСТИТЬ НЕ НАДО
 УИИ М17(М4)
 СЧИ М17
 СДА 64-3
 УИ М17
 СЛИ М17(М11)
 СЧ 7(М17)
 СДА 64+45         В ЯЧ. 48 46 Р.-НОМ.МАШИНЫ
 ПО ЧИСШ1
 НТЖ ГОД
 И П7
 ПЕ ЧИСШ
ЧИСШ1 МОДА (М5)
 ЗП (М4)          *С ОБНУЛИТЬ ШИФР
 СЧ 5(М17)
 И П1777
 УИ М10           ССЫЛКА
 ПО ЧИСШ
ОСВЗ СЧИ М10
 И П37
 УИ М17
 И Е1
 УИ М3
 СЧИ М10
 СДА 64+1
 УИ М10
 СЛИА Л20(М10)
 МОДА ОСИЗ
 УИА (М2)
ОСИ СДА 64+4
 УИ М12
 СЛИА Л20(М12)
 СЧ 512(М12)
 ИЛИ Е48(М17)
 НТЖ Е48(М17)
 ЗП 512(М12)
 ПБ (М2)
ОСИЗ СЧ 512(М10)
 СД КСО(М3)
 И П1777
 УИ М17
 СЧ 512(М10)
 ИЛИ Е48П25(М3)
 НТЖ Е48П25(М3)
 ЗП 512(М10)
 СЧИ М17
 ПО ЧИСШ
 УИ М10
 ПБ ОСВЗ
ЧИСШ СЛИА 1(М4)
 МОДА НЕВВ
 ЦИКЛ (М16)
 МОДА НЕВВ1
 ЦИКЛ (М15)
 СЧИ М5
 И П777
 ПЕ КРАБ1
 УИА Л20+256(М5)   ШИФРЫ СЧЕТН.ЗАД.В 1 АБЗ.
 УИА -3(М16)
ПШК СЧ 0
 МОДА (М16)
 ЗП 3(М14)
* МОДА (М16)
 ЗП ШК1+3(м16)
 МОДА ПШК
 ЦИКЛ (М16)
 СЧ КУС1
 ПВ ФИЗОБМ(М16)   ЧТ.Б.КАТ.СЧЕТН.ЗАДАЧ
 УИА 3
 ПБ ПШИФР
КРА УИА Л21(М16)
 МОДА КРИ
 УИА (М4)
КРВ СЧ НОММЛ3
 СБР НАПРМГ
 СДА 64+42
 И П37
 УИ М14
 СЧ НОММЛ3
 И Е42
 СДА 64+41
 УИ М10
 СЧ МД29М(М10)
 И Е32(М14)
 ЗП АЦП
 СЧ NМЛ+3
 СДА 64+24
 И П7777
 ЗП КРА
 ВЧ Е10
 ПО ДЕЛИ
 СЧ НОММЛ1
 НТЖ НОММЛ3
 И НАПРМГ
 ПЕ ДЕЛЬ
КРВА СЧ РАБМД
 НТЖ НОММЛ1
 И НАПРМГ
 ПЕ РМД
 СЧ ДЛТ
 И Е48П37
 ПЕ РМД
 УИА (М10)
 МОДА РМД
 УИА (М14)
ЗОНРА СЧ НОМРД
 СДА 64+12(М10)
 И П37
 УИ М5
 СЧ НОМРД
 СДА 64+18(М10)
 И П37
 УИ М15
ЗОНР СЛИА -1(М15)
 СЧИ М5
 СДА 64+5
 ПЕ (М14)
 СЧ Е4817Д
 МОДА (М16)
 ЗП 512(М5)
 СЛИА 1(М5)
 МОДА ЗОНР
 ПИНО (М15)
 ПБ (М14)
РМД УИА 24(М10)
 СЧ номрд свс: НОМЛД !МАЛ. БЫЛА ОШИБКА
* НТЖ НОММЛ1   ДЛЯ "МДР30" = 0, ЕСЛИ МД 2053 СТОИТ
* И НАПРМГ	НА УСТР-ВЕ 0.0 !!!
 сда 64+24
 нтж nмл+1
 и п7777
 ПЕ РМДС
 СЧ ДЛТ
 И Е36П25
 ПЕ РМДС
 МОДА ЗОНРА
 ПВ (М14)
РМДС СЧ Е4817Д
 ЗП 512(М16)
 ЗП 513(М16)
 УИА -7(М14)
УУ МОДА 7(М14)
 ЗП 520(М16)
 МОДА УУ
 ЦИКЛ (М14)
 ЗП 536(М16) свс: 542 ЗАКРЫВАЕМ 
 пб зкзон1            НА МД 2053
зкзон2 зп 538(м16) '1032' 1400-1737
 зп 539(м16)       '1033' ЗОНЫ
 зп 540(м16)       '1034' *********
 зп 541(м16)       '1035' 14.12.83
 зп 542(м16)       '1036'
* СЧ Е48П33
* ИЛИ 514(М16)
* ЗП 514(М16)     СИС ЖУРНАЛ  72-117 ЗОНЫ
 СЧ ГОД
 И Е48Д46
 ПО (М4)
 СЧ Е4817Д
 ЗП ’1020’(М16)
 СДА 64-16
 ЗП ’1021’(М16)
 ПБ (М4)
КРАБ1 УИА Л20(М16)
 МОДА КРВ
 ПВ (М4)
 ПБ КРАБа
ДЕЛИ СЧ АЦП
 ПЕ ДЕЛЬ
 СЧ КРА
 УИА (М14)
 И П37
 ПО ДЕЛМ
 УИА 1(М14)
ДЕЛМ СЧ КРА
 СДА 64+5
 ВЧ П17
 УИ М15
 СЛИ М15(М14)
 УИА 15(М5)
 МОДА КРВА
 УИА (М14)
 ПБ ЗОНР
ДЕЛЬ СЧ NМЛ+3
 И Е36П25
 СЛЦ НОММЛ3
 ЗП НОММЛ3
 ПБ (М4)
КРИ УИА (М14)
 УИА (М5)
 МОДА РОСПК1
 ПВ (М4)
 СЧ КУС
 ПВ ФИЗОБМ(М16)
 СЧ 0
 ЗП КРИ
КРАБА СЧ КАТР
 ПВ ФИЗОБМ(М16)
 УИА 3
 УИА (М5)
 УИА ’46000’(М16)
 СЧ ’1777’(М16)
 И П7777
 ПЕ ИСПКР         ИСПОРЧЕН КАТАЛ РАБОТ
 СЧ ’1777’(М16)
 СДА 64+22
 ПЕ ИСПКР
 СЧ ГОД
 СДА 64-39
 ЗП НВ
 УИА -ЧВЫВ(М14)
 УИА Л21(М4)
 СЧ 0
 ПВ ТБУФ(М15)
 СДА 64-8
 УИ М11
ПИПЛ СЧ (М4)
 ПО ПИПЛС
 НТЖ НВ
 И Е42П40
 ПЕ ПИПЛС
ПИПЛ1 УИИ М10(М4)
ПИПЛ1А СЧ (М10)
 УИИ М5(М10)
 И П3777
 УИ М10
 СЧ (М5)
 И ЕУПРВП
 ПЕ ПИПЛС         ВЫХ.ПОТОК УПРЯТ.ЗАДАЧИ
 СЧ (М5)
 И Е23
 ПЕ ПИПЛС         БЫЛ КОНЕЦ ЗАДАЧИ
 МОДА ПИПЛ3А
 ПИНО (М10)
 СЧ (М4)
 И м36в7
 НТЖ Е37
 ПО А8  АЦПУ
ЧИСТ СЧ (М4)
 СДА 64+24
 И П37
 УИ М17
 СЧ (М4)
 И Е36П25
 СДА 64+25
 МОДА ОСИ
 ПВ (М2)
 СЧ 0
 ЗП (М4)
 МОДА Л21
 СЧ ’1777’
 ПО ПИПЛС
 ВЧ Е13
 МОДА Л21
 ЗП ’1777’
 ПБ ПИПЛС
АЦ МОДА АЦ1
 ЦИКЛ (М16)
 ПБ ПИПЛС
ПИПЛ3А СЛИА Л21(М10)
 ПБ ПИПЛ1А
А8 СЧИ М11
 СДА 64-2
 ЗП Р3
 СЧ (М5)
 СДА 64+11
 И П3777
 ПО ЧИСТ
 УИ М16
 МОДА Л21
 СЧ (М16)
 И Е36П25
 СЛЦ НОММЛ3
 ИЛИ Е18
 ИЛИ Р3
 ЗП Р3
 УИА -МЧПЗ(М16)
АЦ2 СЧ Р3
 МОДА (М16)
 НТЖ НВ+ЧПЗ
 ПО ПИПЛС
 МОДА АЦ2
 ЦИКЛ (М16)
 СЧ Р3
 ПВ ФИЗОБМ(М16)
 УИА 3
 УИА -МЧПЗ(М16)
АЦ1 СЧ ШКРЗ
 И Е48+МЧПЗ(М16)
 ПО АЦ
 МОД ТУСП+МЧПЗ(М16)
 УИА (М17)
 СЧ ШИФ(М17)
 НТЖ 1(М11)
 ПЕ АЦ
* МОДА (М16)
* СЧ НВ+ЧПЗ(м16)
* ПЕ АЦ
 СЧ Р3
 МОДА (М16)
 ЗП НВ+ЧПЗ
 УИА 1027
* СЧ АВОС(М17)
* ИЛИ Е32
* НТЖ Е32
* ЗП АВОС(М17)
 СЧ ШЗНМБ+2(М17)
 ИЛИ Е36П25
 НТЖ Е36П25
 ЗП ШЗНМБ+2(М17)
 СЧ (М5)
 И Е36П25
 ИЛИ ШЗНМБ+2(М17)
 ЗП ШЗНМБ+2(М17)
 УИА 3
 СЧИ М5
 И П1777
 ЗП ЗОНЫ(М17)
ПИПЛС СЛИА 1(М4)
ПИПЛ2 МОДА ПИПЛ
 ЦИКЛ (М14)
 СЧИ М11
 СДА 64-2
 ИЛИ Е19
 ПВ ТБУФ(М15)
 СЧ КРИ
 ПЕ ЗАПА
 УИА -510(М16)
ЗАПО МОДА Л21
 СЧ 511(М16)
 ПО ЗАПИ
 СДА 64+24
 И П7777
 УИ М15
 И П37
 УИ М17
 СЧИ М15
 СДА 64+5
 УИ М15
 СЛИА Л20(М15)
 СЧ 512(М15)
 ИЛИ Е48(М17)
 ЗП 512(М15)
ЗАПИ МОДА ЗАПО
 ЦИКЛ (М16)
ЗАПА СЧ ГОД
 И П7
 УИ М16
 СЛИА Л21(М16)
 СЧ ОГ(М16)
 И П3777
 СДА 64+5
 УИ М15
 СЛИА Л20(М15)
 СЧ ОГ(М16)
 И Е4817Д
 НТЖ 512(М15)
 ЗП 512(М15)
 СЧ 0
 ЗП ОГ(М16)
 СЧ КАТР
 НТЖ Е18
 ПВ ФИЗОБМ(М16)   ЗАПИСЬ КАТАЛОГА РАБОТ НА МД
ЗКВ СЧ КУСП
 ПВ ФИЗОБМ(М16)
 МОДА ЗОНРЕЖ
 СЧ 511
 УИА -63(М17)      ДЛЯ ПЕВКП
 НТЖ е16п1
 ПЕ прклю было ПЕВКП         РАСП.КАНАЛОВ ИЗ ДИСП80
* НОВОЕ РАСПРЕДЕЛЕНИЕ КАНАЛОВ
 СЧ ГОД
* ВЧ Е1
 И П7
 уи м16
 СДА 64-3
 УИ м15 было М16
 мода (м15)
 слиа -9(м16)
 уиа -7(м15)
пемпз мода мпзхр(м15)
 сч 7(м16)
 зп МПЗС+7(м15)
 мода пемпз
 цикл (м15)
 уиа -7(м15)
 мода мпзхр
 сч 8(м16)
нпр ноп
 зп Р3
 и Е48Д46 
 сда 64+9
 нтж МПРЗ+7(м15)
 и е39п37
 нтж МПРЗ+7(м15)
 зп МПРЗ+7(м15)
 сч Р3
ПЕРСЧТ НОП ,
 сда 64-3
 мода нпр
 ЦИКЛ (М15)
* УИА -6(М15)
*ПЕРОТЛ НОП ,
* МОДА ’300’(М16)
* СЧ 6(М15)
* ЗП КАНОТЛ+6(М15)
* МОДА ПЕРОТЛ
* ЦИКЛ (М15)
        сч      ЯЧРЖПЛ
        мода    МПЗХР
        нтж     8(М16)
        и       П37
        нтж     ЯЧРЖПЛ
        зп      ЯЧРЖПЛ
ПЕВКП МОДА ВКПХР
 СЧ 63(М17)
 МОДА ВКПРБ
 ЗП 63(М17)
 МОДА ПЕВКП
 ЦИКЛ (М17)
экв1 СЧ КУС
 НТЖ Е18
 ПВ ФИЗОБМ(М16)
 сч 3
 и е13
 по возв1
 сч кусп+1
 пв физобм(м16)
 уиа 1(м16)
 уиа л20(м13)
 мода 30(м13)
 пв (м12)
возв1 сч предел
 и е31
 пе краб	ЕСТЬ СИСТЕМА СВЯЗИ
возв2 СЧ НОММЛ1
 ПВ DЕQ(М15)
 СЧ ИСКАТ
 ПО ПДАТ1
 СДА 64-8
 ИЛИ ЗАТЕРТ+1
 ЗП ЗАТЕРТ+1
* УИА ЗАТЕРТ-ГЕНС2(М16)
 мода затерт
 уиа (м16)
 УИА ПДАТ1-ГЕНС2(М15)
 ПБ ПЕЧ
ЗАТЕРТ КОНД П’2ЗАТЕР’
 КОНД П’ КАТ0↑’
РОСИ ЗП ИСКАТ
 ПБ РОСПК2
прклю нтж е16п1
 нтж р3+1
 пе экв1
 пб певкп
ИСПКР УИА 3(М14)
 СЧ Е3
 ЗП ИСКАТ
 МОДА ВОЗС
 УИА (М4)
 УИА -30(М10)
 УИА -1023(М16)
 ПБ РТ
РОСПК2 УИА (М14)         РОСПИСЬ КАТАЛОГОВ
 УИА -1023(М16)
РТ СЧ 0  РП 21Л
 МОДА Л21
 ЗП 1023(М16)
 МОДА РТ
 ЦИКЛ (М16)
РОСПК1 СЧ КУС(М14)
 НТЖ Е18
 ИЛИ Е13
 ПВ ФИЗОБМ(М16)
 СЛИА 1(М14)
 МОДА РОСПК1
 ЦИКЛ (М5)
 СЧ ИСКАТ
 И П3
 ПО (М4)
 СЧ ПРЕДЕЛ
 И Е23
 ПЕ (М4)
 ПВ ТБУФ(М15)
 СДА 64-8
 УИ М15
 УИА -1(М17)
 СДА 64-2
 ИЛИ КУСПА
 СЛЦ НОММЛ1
УПР1 ЗП КУСПА
 ПВ ФИЗОБМ(М16)
 УИА 3
 УИА -1023(М16)
УПР МОДА (М15)
 СЧ 1023(М16)
 И ОУПР
 МОДА (М15)
 ЗП 1023(М16)
 МОДА УПР
 ЦИКЛ (М16)
 СЧ КУСПА
 ПВ ФИЗЗП(М16)
 СЧ КУСПА
 СЛЦ Е25
 МОДА УПР1
 ЦИКЛ (М17)
 СЧ КУСПА
 ПВ ТБУФ(М15)
 СЧ ПРЕДЕЛ
 ИЛИ Е23          ОС ВЫЗВАНА С РОСП.КАТ
 ЗП ПРЕДЕЛ
 ПБ (М4)
ВОЗС УИА -480(М5)
 УИА 64(М4)
ВЗО СЧ 0
 МОДА Л20
 ЗП 542(М10)
 МОДА ВЗО
 ЦИКЛ (М10)
ЗОЗ2 УИА -1(М17)
ЗОЗ1 МОДА Л20
 СЧ 543+480(М5)
 И Е48П25+1(М17)
 ПО ЗОЗ
 СЧИ М4
 И П37
 УИ М16
 СЧИ М4
 СДА 64+5
 УИ М15
 МОДА Л20
 СЧ 512(М15)
 ИЛИ Е48(М16)
 МОДА Л20
 ЗП 512(М15)
ЗОЗ СЛИА 1(М4)
 МОДА ЗОЗ1
 ЦИКЛ (М17)
 МОДА ЗОЗ2
 ЦИКЛ (М5)
 УИА Л20(М16)
 МОДА ЗКВ
 УИА (М4)
 ПБ КРВ
КРАБ ноп
 СЧ 0
* И Е16
* ПО КРАБА
* СЧ КАТР
 СТОП краб
* СЧ 1
* И Е16
* ПО КРАБА
* УИА 3
* УИА (М5)
 ПБ краб было испкр
*********************************
*****ВЫБОР ДАТЫ ИЗ ЗОНЫ СТ-КИ ПО УСТРОЙСТВАМ*****
ПДАТ1 СЧ 0
 ПВ ТБУФ(М15)
 СДА 64-8
 УИ М13
 СДА 64-2
 ИЛИ НОММЛ
 ИЛИ Е18
 ЗП НОМЗ
 СЧ П30          ЧТЕНИЕ 30-Й ЗОНЫ МД 2053
 СДА 64-24
 СЛЦ НОМЗ
 ПВ ФИЗОБМ(М16)
 СЧ КЛЮЧСТ(М13)
 НТЖ КЛЮЧ
 ПО ДАТЦЕЛ       ИНФ. В 30-Й ЗОНЕ ЦЕЛА
 СЧ 0
 ПБ ЗАПДАТ       УСТ. НУЛЕВУЮ ДАТУ
ДАТЦЕЛ СЧ ГОД
 И П7
 ВЧ Е1
 УМН П6
 СЧМР 64
 УИ М16
 СЧ ШКРЗСТ(М13)
 СДА 64(М16)
 И П77           N ПОСЛ. ИСПОЛЬЗ.ЗОНЫ СТ-КИ
 ПО ЗАПДАТ
 СДА 64-24
 СЛЦ НОМЗ
 ПВ ФИЗОБМ(М16)   ЧИТАЕМ САМУЮ СВЕЖУЮ ЗОНУ
 СЧ КЛЮЧСТ(М13)
 НТЖ КЛЮЧ
 ПО ЕСТЗОН
 СЧ 0
 ПБ ЗАПДАТ
ЕСТЗОН СЧ СЧЕТЧ(М13)
 СДА 64+18
 ЗП ДЧАС
 СЧ ГОДСТ(М13)
 И Е36П25       ЧИСЛО
ЗАПДАТ ЗП РЯ1
 СЧ ГОД
 И КН
 ИЛИ РЯ1
 ЗП ГОД
 СЧ НОМЗ
 ПВ ТБУФ(М15)
 СЧ ШКСВН
 ИЛИ Е25
 ЗП ШКСВН
 СЧ Е36
 ИЛИ СМШГ
 ЗП СМШГ
****** П Е Ч А Т Ь  Д А Т Ы ******
ПДАТ УИА 3
 СЧ ГОД
 СДА 64-13
 РЗБ ДАТА
 ИЛИ К3
 ЗП ТД
 СЧ П17
 СДА 64-20
 И ГОД
 СДА 64-4
 ИЛИ ТД+1
 ЗП ТД+1
 СЧ ДЧАС
 ИЛИ С640
 ДЕЛ ДВРЕМ+5
 СЛ С640
 УИА -4(М16)
ПЕРВРЕ ЗП РЯ1
 МОДА ДВРЕМ+4
 ДЕЛ (М16)
 СЛ С640
 МОДА ДЧАС+4
 ЗП (М16)
 РЖА 0
 МОДА ДВРЕМ+4
 УМН (М16)
 РЖА 3
 ВЧОБ РЯ1
 МОДА ПЕРВРЕ
 ЦИКЛ (М16)
 ЗП ДЧАС+5
 УИА -5(М16)
СБРВР СДА 64-8
 МОДА ДЧАС+5
 ИЛИ (М16)
 МОДА СБРВР
 ЦИКЛ (М16)
 ЗП ДЧАС
 СДА 64-4
 РЗБ ОЕЕЕ
 ИЛИ ТД+2
 ЗП ТД+2
 СЧ ДЧАС
 СДА 64-32
 ИЛИ ТД+3
 ЗП ТД+3
 УИА ТД-ГЕНС2(М16)
 УИА печмо1-ГЕНС2(М15)
 ПБ печмб2
*----------- 
КЛЮЧ КОНД П’СТКЛЮЧ’ СВС: КЛЮЧСТ
П30 КОНД В’30’
ТД КОНД П’400.00’
 КОНД П’.90   ’ цифра десятков года
 КОНД П’00.00.’
 КОНД П’000   ’М24В’21’
ДЧАС ПАМ 1
ДВРЕМ КОНД Е’36000’
 КОНД Е’3600’
 КОНД Е’600’
 КОНД Е’60’
 КОНД Е’10’
 КОНД Е’50’
ОЕЕЕ КОНД Х’0FFF00FFFF00’
С640 КОНД М42В’64’
м50 	пам 	1
м51 	пам	1
м52	пам	1
м53	пам	1
м54	пам	1
м55 	пам 	1
*-------------
ПЕЧМО1  уиа     -1(М5)
        уиа     0(М12)
        уии     М13(М6)
        уиа     1(М2)
трп1  уиа     -7(М4)
        уиа     0(М3)
        уиа     -44(М14)
        счи     М2
        сда     64-32
        или     ТЕКМБ
        зп      м50-ГЕНС2(М13)
трп  мода    (М12)
        сч      ШЗНМБО+7(М4)
        и       E48п17
        нтж     E48п17
        пе      трп8
        счи     М3
        сда     64(М14)
        или     м51-ГЕНС2(М13)
ПЕЧМБ   зп      м51-ГЕНС2(М13)
        слиа    4(М14)
трп8  слиа    1(М3)
        мода    трп
        цикл    (М4)
        сч      ВСЕЕД
ПЕЧМБ1  слиа    '54'(М14)
        сда     64(М14)
        или     м51-ГЕНС2(М13)
        зп      НОМЗ
        рзб     МСК
        зп      м51-ГЕНС2(М13)
        сч      НОМЗ
        сда     64-24
        рзб     МСК
        зп      м52-ГЕНС2(М13)
        слиа    3(М13)
        уиа     8(М12)
        слиа    1(М2)
        мода    трп1
        цикл    (М5)
        сч      м50	2-Е НАПР.
        нтж     Е44Е43
        нтж     E41
        зп      м50
        сч      E2
        слц     м55
        зп      м55	КОНЕЦ ТЕКСТА
        уиа     м50-генс2(М16)
        уиа     ВОЗВВ-генс2(М15)
ПЕЧМБ2  сли     М16(М6)
        пб      печ
ВОЗВВ  сч      ПРЕДЕЛ
        и       E40
        по      ВОЗВ
        сч      
ВЫХ777  зп      РЯ1
        сч      ГРАНЬБ
ПЕРКПЛ  нтж     E5
        по      ВОЗВ
        нтж     E5
        вч      E5
        вч      E1
        вчоб    
        уи      М16
        уиа     0(М15)
э256  сч      ШЗНМБО+16(М15)
        чед     РЯ1
        зп      РЯ1
        слиа    1(М15)	ТРАКТЫ Э256К
        мода    э256
        цикл    (М16)
        сда     64-36
        рзб     конс
        или     ресэл+1
        зп      ТЕКМБ
        сч      ресэл
        зп      ТЕК3+2
*
ВОЗВ ПАМ 0
 СЧ ТОБ
 СЧ ТОБ опечатка
 СЛЦ Е5
 СДА 64-36
 РЗБ КОНСТ
 СДА 64+8
 ИЛИ ТЕК3+1        ЛИСТЫ
 ЗП ТЕК3+1
* УИА ТЕК3-ГЕНС2(М16)
 мода тек3
 уиа (м16)
 уиа '70000'(м6)
* УИА ВЫХ777-ГЕНС2(М15)	ВЫХОД В РЕЗИДЕНТ
 уиа '211'(м15)
ПЕЧ СЛИ М15(М6)
 УИИ ’32’(М15)
 СЧ Е23
 ПБ ТВ40   ВОЗВРАТ ПО М15
* В Ы Х О Д .ГЕНЕРАЦИЯ ЗАКОНЧЕНА
*
НВ ПАМ 49
ЛИСТ КОНД М17В’1’М12В’34’
ТЕК3 КОНД П’4 РЕС:’
 КОНД П’  0000’
 КОНД П’↑     ’
ТЕКМБ КОНД П’ 0НМБ-’ П’4МБ : ’
К КОНД М38В’1’М26В’1’М18В’1’
КРАЗ КОНД В’5252525252525252’
К3 КОНД П’400.00’
КОНСТ КОНД П’077777’
НОМЗ ПАМ 1
РЯ1 КОНД П’БРЗ  0’
ДАТА КОНД М24В’1417’В’417’
МСК КОНД В’360741703607417’
RА ПАМ 1
П6 КОНД М47В’1’В’6’
КН КОНД М45В’7’В’77777777’
к1	конд	в'0036007300120204'
ресэл	конд	п' (Э - '
	конд	п'0000)↑'
конс	конд	п'777700'
Е42П40 КОНД М39В’7’
Е48Д46 КОНД М45В’7’
П600 КОНД В’600’
КОБ КОНД М24В’7770’М12В’23’
ЗКВИТ КОНД М17В’1’М12В’22’
м36в7 конд М36В’7’
зкзон1  зп '1031'(М16) * !ШТАТНО ЧИСЛ. ЗНАЧ. БЛОК ОТС. В ГЕНС-117
        зп      '1026'(М16) *
        зп      '1027'(М16) *
        пб      зкзон2
*КМБ КОНД П’000 00’М40В’143’М32В’143’М24В’143’
*Е48П33 КОНД М32В’177777’
*
 ЭКВИВ (ЗОНРЕЖ,’46000’),(ВКПРБ,’44700’),(Л20,’44000’)
 ЭКВИВ (ВКПХР,ЗОНРЕЖ),(МПЗХР,ЗОНРЕЖ+64),(Л21,’46000’)
 ЭКВИВ (ЧВЫВ,’1575’),(еупрвп,е24)
*
ДИСП70 ВНЕШ ГОД,ЗОНЫ,МД29М,МЧПЗ,НАПРМГ
ДИСП70 ВНЕШ НОММЛ1,НОММЛ3,ЧПЗ,ШЗНМБ,ЯБКЗПА,КСО
ДИСП70 ВНЕШ ТБУФ,ПРЕДЕЛ,ТУСП,ТЗФСТР
ДИСП70 ВНЕШ Е48П37,Е48П25,П7,П3777,П37,СМШГ
ДИСП70 ВНЕШ (ШИФ,ШИФРМ),СТЗОН,НОММЛ,ШКСВН
ДИСП70 ВНЕШ ШЗНМБО,ТОБ,ТВ40,ЭК30,Е44Е43,Е36П25
ДИСП70 ВНЕШ П17,П177,П3,П777,ВСЕЕД,П7777
ДИСП70 ВНЕШ ЯЧРЖПЛ,П77,ГРАНЬБ
СОСТАВ ВНЕШ ГОДСТ,КЛЮЧСТ,ШКРЗСТ,СЧЕТЧ,
ГЕНС ВНЕШ ОУПР,КУСТ,КАТР,КУСП,КУСПА,КУС1
ГЕНС ВНЕШ АЦП,ДЛТ,НОМРД,ИСКАТ,КУС,ККИЕВ
ГЕНС ВНЕШ ПРРО,П1777,NМЛ,Р3,ШК,ШК1
ДИСКИ ВНЕШ ЕNQ,НОМЛД,РАБМД,DЕQ,Е16П1
ВЗУ ВНЕШ ФИЗЗП,ФИЗОБМ
РОБОТ ВНЕШ ОГ
КАЧКА ВНЕШ Е48П17,ШКРЗ,(Е4817Д,Е48П17)
СОСТАВ ВНЕШ АВОС
кит внеш е39п37,мпрз,мпзс
 ФИНИШ
*КОНЕЦ ЧАСТИ
