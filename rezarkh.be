РЕЗАРХ СТАРТ ’75370’
 Б
Э70АРХ НОП ,
 РЖА 7
 СЧИ М15
 ЗП И15
 СЧИ М17
 ЗП И17
 СЧ ИНФСЛП(М16)
 ЗП СМ            СМ := КУС 70
 И Е37Е36
 ПО НЕТЕСТ
 СЧ ИНФСЛП(М16)
 И Е12П1
 ВЧ Е3
 ПЕ ОШЭК
 СЧ ИНФСЛП(М16)
 ВЧ Е3
 ЗП ИНФСЛП(М16)    ДЛЯ ТЕСТ.ОБМЕНА:N ЗОНЫ = N ЗОНЫ - 4
НЕТЕСТ НОП ,
 СЧ СЕМАРХ
 ПЕ ЖДЕМАР        ЖДЕМ ОСВОБОЖДЕНИЯ СЕМ.АРХИВОМ
 МОД ТУСП+’37’
 СЧ ’37’
 И ПРИП+2        2-ЫЙ ЛИСТ АРХИВА - ТАФ
 ПО ЖДЕМАР        ТАФ-А НЕТ
 УИА -7(М17)
ВЫТБРЗ НОП ,
 ЗП 1
 ЦИКЛ ВЫТБРЗ(М17)
 РЕГ ’20’          ТАФ -  2-ОЙ ЛИСТ
 УИ 0
 СЧ КЛЮЧАР
 УИА ’2002’
 НТЖ ТАФ
 УИА ’2003’
 ПЕ АВОСТ         ИСПОРЧЕН ЛИСТ ПРИПИСКИ ОБЛАСТЕЙ АРХИВА
 СЧ ИНФСЛП(М16)
 ЗП РМР            РМР:= КУС
 МОД НЗАД
 УИА (М17)          М17:= НОМЕР ЗАДАЧИ
****** ПРОВЕРКА НА ФИЗОБМЕН
 ПО Э70А
 СЧ РМР
 СЛЦ Е16
 И Е18
 ПЕ Э70А
****** ФИЗОБМЕН
 СЧ РМР
 ЗП РАБ1
 СДА 64+12
 И Е5П1
 ЗП РАБ2            РАБ2:= НОМЕР МБ
 СЧ РМР
 И КВФИЗО
 ЗП РМР
 УИА ’2002’         --------- ((( ПРИПИСКА
 СЧ ФИЗОБМ-1(М17)
 УИА ’2003’         --------- ))) НЕТ ПРИПИСКИ
 ЗП РАБ3
 СДА 64+6
 И Е5П1
 ВЧОБ РАБ2
 ПЕ ОШЭК
 СДА 64-5
 ИЛИ РМР
 ЗП РМР          РМР <- СДВИГ ПО НОМЕРАМ МБ
 СЧ РАБ1
 СБР КСБФИЗ
 СДА 64+20
 ИЛИ РМР
 ЗП РМР          РМР <- СЕК.25-26 Р,АБЗ.27-28 Р
 СЧ РАБ3
 СДА 64-12
 И Е18П13
 ИЛИ РМР
 ЗП РМР         РМР <- В.Н.
Э70А НОП
****** СТАНДАРТНЫЙ КУС
 СЧ РМР
 СДА 64-30
 УИА ’2002’         --------- ((( ПРИПИСКА
 ЗП РАП1
****** ПОИСК В КТЛМЛ
 МОД АКТЛМЛ-1(М17)
 УИА (М16)
 ПИО СБАРХ(М16)
 МОД ЗГЛМЛ(М16)
 УИА -1(М15)
 ПИО СБАРХ(М15)
 СЛИА 1(М16)
ЦГДЕМЛ НОП
 СЧ СВЕДМЛ(М16)
 НТЖ РАП1
 И Ж48П43
 ПО ВОТМЛ
 СЛИА 2(М16)
 СЛИА -2(М15)
 ПИНО ЦГДЕМЛ(М15)
 ПБ СБАРХ
ВОТМЛ НОП
****** ПРОВЕРКА СПЕЦ.В.Н.
 СЧ СВЕДМЛ(М16)
 НТЖ
 СЧ СДВМЛ(М16)
 УИА ’2003’         --------- ))) НЕТ ПРИПИСКИ
 ЗП РАБ2
 СЧМР
 ЗП РАБ1
 УИ М15
 СДА 64+19
 И П7
 ПЕ ЗАПВИР
 УИА ’2002’         --------- ((( ПРИПИСКА
 МОД СВЕДМЛ(М16)
 СЧ ТАФСС
 И ЖМАРС
 УИА ’2003’         --------- ))) НЕТ ПРИПИСКИ
 ПО НМАРС
 СЧ ШМАРС
 И Е48-1(М17)
 ПО ЗАПВИР
НМАРС НОП
****** ПРОВЕРКА ПРАВ РАБОТЫ
 СЧ РМР
 И Е40
 ПО Э70ЗП          ЗАПИСЬ
 СЧ Е42
 ПБ Э70Б
Э70ЗП НОП
 СЧ РАБ1
 И Е40
 ПО ДАЙЗАП         ЗАПИСЬ НЕ ЗАКАЗАНА
 СЧ Е41
Э70Б НОП
 И РАБ1
 ПО НЕТПАР         НЕ ПОДТВЕРЖДЕН СООТВ.ПАРОЛЬ
****** ОПРЕДЕЛЕНИЕ НОМЕРА ЗОНЫ
 СЧ РМР
        и       Е12П1
 ЗП РАБ3
 СЧ РАБ2
 И Е17
 ПЕ СДВОТР
 СЧ РАБ2
 И Е16П1
 СЛЦ РАБ3
 ПБ ГОТСДВ
СДВОТР НОП
 СЧ РАБ2
 И Е16П1
 ВЧОБ РАБ3
 ПЕ ОШЭК
ГОТСДВ НОП
 ЗП РАБ1           РАБ1:= ЗОНА ОБЛАСТИ
 УИА ’2002’         --------- ((( ПРИПИСКА
 ЗП РАП1           РАП1:= ЗОНА ОБЛАСТИ
****** ПРОВЕРКА ДЛИНЫ ОБЛАСТИ
 СЧ СЧЭ70(М15)
 СЛЦ Ж25
 ЗП СЧЭ70(М15)
 И Ж16П1
 ВЧОБ РАП1
 ПО ОШЭК           ЗА ПРЕДЕЛАМИ ОБЛАСТИ
****** ЗАНЕСЕНИЕ СТАТИСТИКИ
 УИА ’2003’         --------- ))) НЕТ ПРИПИСКИ
 СЧ РМР
 И Е40
 ПЕ ВЫБСЕГ         ЭТО ЧТЕНИЕ
 СЧ Е48П25
 УИА ’2002’         --------- ((( ПРИПИСКА
 И ШИФРЗ-1(М17)
 ЗП СЛСЛ(М15)
 УИА ’2003’         --------- ))) НЕТ ПРИПИСКИ
 СЧ ВРЕМЯ
 И Е24П1
 УИА ’2002’         --------- ((( ПРИПИСКА
 ИЛИ СЛСЛ(М15)
 ЗП СЛСЛ(М15)
 СЧ ЧВН(М15)
 И Ж16П1
 ВЧ РАП1
 ПО ВЫБСЕГ         БЫЛ БОЛЬШИЙ НОМЕР ЗОНЫ
 СЧ ЧВН(М15)
 НТЖ РАП1
 И Ж16П1
 НТЖ ЧВН(М15)
 ЗП ЧВН(М15)
ВЫБСЕГ НОП
****** ПОИСК СЕГМЕНТА
 СЛИА LЗГТАФ(М15)
 УИА 24(М16)
ЗАСЕГ НОП
 ПВ ДАЙСЕГ(М17)    --------- ))) НЕТ ПРИПИСКИ
 ЗП РАБ3
 И Е8П1
 ПЕ Э70Д           ДЛИНА КУСКА - В СЛ.СЕГМЕНТЕ
 ПВ ДАЙСЕГ(М17)
Э70Д ВЧОБ РАБ1
 ПЕ ВОТСЕГ         НАШЛИ НУЖНЫЙ КУСОК
 ЗП РАБ1
 ПБ ЗАСЕГ
ВОТСЕГ НОП
 СЧ РАБ3
 СДА 64+8
 СЛЦ РАБ1
 СДА 64-32
 РЗБ МАСКАН
 ЗП РАБ1
 СЧ РМР
 И МАСКАК
 ИЛИ РАБ1
 ЗП РАБ1          РАБ1:= КУС БЕЗ В.Н.
 СЧ РАБ2
 И Е48П43
 СДА 64+30
 ИЛИ РАБ1
 ПБ ВЫХОД
*
СБАРХ НОП
 УИА СБОЙВВ-’40000’(М17)
 ПБ ОШЗАД
*
ОШЭК НОП
 УИА ОШЭКСТ(М17)
 ПБ ОШЗАД
*
ЗАПВИР НОП
 УИА ОШВИРТ(М17)
 ПБ ОШЗАД
*
ДАЙЗАП НОП
 УИА ДАЙЗП(М17)
 ПБ ОШЗАД
*
НЕТПАР НОП
 УИА НЕВПАР-’40000’(М17)
 ПБ ОШЗАД
*
ДАЙСЕГ НОП
 УИА ’2002’         --------- ((( ПРИПИСКА
 СЧ (М15)
 УИА ’2003’         --------- ))) НЕТ ПРИПИСКИ
 СДА 64(М16)
 И Е24П1
 СЛИА -24(М16)
 МОДА (М17)
 ПИО (М16)
 СЛИА 1(М15)
 УИА 24(М16)
 ПБ (М17)
*
ВЫХОД НОП
 МОД ГУС
 УИА (М16)         М16 := АДРЕС ИПЗ
 ЗП ИНФСЛП(М16)   ИНФСЛП := ПРЕОБРАЗОВАННЫЙ КУС Э70
 СЧ И15
 УИ М15
 СЧ И17
 УИ М17
 СЧ ИНФСЛП(М16)
 И Е37Е36
 ПО АНВО1         НЕ ТЕСТОВЫЙ ОБМЕН
 СЧ ИНФСЛП(М16)
 СЛЦ Е3
 ЗП ИНФСЛП(М16)
 ПБ АНВО1         НА ПРОДОЛЖЕНИЕ Э70
*
* ЗАКРЫТИЕ ЗАДАЧИ
ЖДЕМАР НОП
 УИА Э70АРХ(М15)
 УИИ М33(М15)      М33 := Э70АРХ
 СЧ П2007
 УИ М27           М27 -> НА ОС
 МОД НЗАД
 СЧ Е48-1
 ИЛИ ШКЭ70А
 ЗП ШКЭ70А
 ПБ ИСКБПУ
*
ОШЗАД НОП ,
* М17 - N АВОСТА
 УИА ’2003’
 ПБ ТВ206
*
АВОСТ НОП ,
 УИА ’4000’(М16)
 ПБ АВОАРХ
ДИСП70 ВНЕШ (АВОАРХ,СТ)
*
СЕМАРХ КОНД В’0’
ШКЭ70А КОНД В’0’
МАСКАН КОНД В’0360000000007777’
МАСКАК КОНД В’4017777777000000’
КВФИЗО КОНД В’7777776000000037’
КСБФИЗ КОНД В’0000000300000300’
Е18П13 КОНД М12В’77’
*
*
*   В Ы З О В   РЕЗ. ЭК.
*
ВХ220 НОП ,
 УИА 0(М16)        М16 := 0
* ПБ ВЫЗРЭ
*ВХ222 НОП ,
* УИА 1(М16)        М16 := 1
* ПБ ВЫЗРЭ
*ВХ1200 НОП ,
* УИА 2(М16)        М16 := 2
ВЫЗРЭ НОП ,
 СЧИ М16
 ЗП РМР
 СЧИ М17
 ЗП И17
 СЧИ М15
 ЗП И15
 УИИ М27
 СЧИ М32
 УИ М33
*
 МОД ГУС
 СЧ 36
 И Е48П16
 ИЛИ РМР
 МОД ГУС
 ЗП 36
*
 МОД НЗАД
 СЧ Е48-1
 ИЛИ ШКРЭ
 ЗП ШКРЭ
*
 СЧ РАБРЭ
 ПЕ ИСКБПУ        РЕЗ.ЭК. В РАБОТЕ
 СЧ ЕРЭ
 ИЛИ ШГ
 ЗП ШГ
*
ИСКБПУ НОП ,
 МОД НЗАД
 СЧ Е48-1
 УИА БПУ(М15)
 ПБ ИЗШГП
 СТРН
*
*
*
*///////////////////////////////////////*
*///                                 ///*
*///    РЕЗИДЕНТНЫЕ  ЭКСТРАКОДЫ      ///*
*///                                 ///*
*///                                 ///*
*///               Е 2 7             ///*
*///                                 ///*
*///////////////////////////////////////*
*
ИПЗРЭ  НОП ,             ИПЗ РЕЗ.ЭК-КОДОВ
 КОНД В’0’
 КОНД М41В’7’
 КОНД В’0’
 КОНД А(НАЧРЭ)      М33
 КОНД В’0’
 КОНД М15В’2013’В’7’ М21,М27
 КОНД В’0’          М20
 КОНД В’0’          М17
 КОНД В’0’          М16
 КОНД В’0’          М15
 КОНД В’0’          М14
 КОНД В’0’          М13
 КОНД В’0’          М12
 КОНД В’0’          М11
 КОНД В’0’          М10
 КОНД В’0’          М7
 КОНД В’0’          М6
 КОНД В’0’          М5
 КОНД В’0’          М4
 КОНД В’0’          М3
 КОНД В’0’          М2
 КОНД В’0’          М1
РАБРЭ КОНД В’0’
      КОНД М47В’1’       ЗАНЯТО , ЗАПВЫХ
ВЫХЭК НОП ,
 СЧИ М14
 ЗП (М3)          СМ := КОТ
ВЫХ222 НОП ,
 СЧ ИПЗРЭ+33
 НТЖ Е48
 УИА 1027
 СЛЦ 33(М3)
 ЗП 33(М3)
 СЧ Е48
 ЗП ИПЗРЭ+33
 УИА НАЧРЭ(М15)
 СЧ Е48-1(М1)
 ПБ ВШГП
ШКРЭ КОНД В’0’
 КОНД В’0’          ЗАНЯТО , ПРИПИСКА 0-3 ЛИСТОВ
РЯ1РЭ ПАМ 1
 КОНД М47В’1’       ВРЕМЯ
*
НАЧРЭ НОП ,
 УИА ’2003’
 СЧ ШКРЭ
 ПО ЗАКРЭ         ВСЕ ОБСЛУЖЕНЫ
 НЕД
 УИ М1            М1 - N ЗАДАЧИ
 СЧ ШКРЭ
 НТЖ Е48-1(М1)
 ЗП ШКРЭ
 УИИ М17(М1)
 ПВ ЗАНПРП(М15)
 УИА 3
 СЧ ТУСП-1(М1)
 УИ М3            М3 - АДРЕС ИПЗ
 СЧ (М3)
 МОД 36(М3)
 ПБ ДЕШРЭ
*
ДЕШРЭ НОП ,             ДЕШИФРАТОР РЕЗ.ЭК-КОДОВ
 СДА 64+47
 ПБ Э50220
* МОДА ,             СМ = СМ ЗАДАЧИ
* ПБ ЭКСЕТЬ          ЭК-КОД ВИРТ.ТЕРМИНАЛОВ
* СДА 64+45
* ПБ ЭКППД           ЭК-КОД РАБОТЫ С ППД
*
*
******* ВЫХОД *******
ЗАКРЭ НОП ,
 ЗП РАБРЭ         РАБРЭ := 0 - РЕЗ.ЭК. СВОБОДЕН
 УИА НАЧРЭ(М16)
 ПБ ТБ13
*
*     0 0   0 5 0   0 2 2 0
*
*          ОБМЕН ИНФОРМАЦИЕЙ МЕЖДУ
*   МАТ.ЛИСТОМ ЗАДАЧИ И ВИРТ.ЛИСТОМ ГЛ.ЗАДАЧИ
*
*   ВХОД :
*         СМ =  12 - 01 Р.Р. -  ВИРТ. ЛИСТ ГЛ.ЗАДАЧИ
*               17 - 13 Р.Р. -  МАТ. ЛИСТ
*               48 Р.= 0     -  М.Л. -> В.Л.
*               48 Р.= 1     -  В.Л. -> М.Л.
*   ВЫХОД :
*         СМ = 0 -  НОРМА
*              1 -  НЕТ  ГЛ.ЗАДАЧИ
*              2 -  ГЛ.ЗАДАЧА НЕ ВЫП ЭК-КОД 00 050 0221
*              3 -  НЕТ М.Л
*              4 -  НЕТ В.Л.
Э50220 НОП ,
 УИ М7            М7 = 0  -  М.Л.-> В.Л.
 СЧ И(М3)
 СДА 64+21
 И П77
 УИ М11           М11 - N ГЛ.ЗАДАЧИ
 УИА 1(М14)        КОТ = 1
 ПО ВЫХЭК
 СЧ ЯЧИ220(М3)
 И ЕИ220
 УИА 2(М14)        КОТ = 2
 ПО ВЫХЭК
 УИА ВЫХЭК(М15)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 УИА 3(М14)        КОТ = 3
 СЧ (М3)
 СДА 64+2
 И Е15П11
 УИ М4
 УИА 1024
 СЧ 20(М4)
 УИА 1027
 СЧИ М4
 СДА 64+10
 ЗП РЯ1РЭ
 НТЖ П37
 УИ М4            М4 = N М.Л. В ОБРАТНОМ КОДЕ
*
 СЧ 32(М3)
 ИЛИ Е48(М4)
 ЗП 32(М3)        НЕ ОТКАЧАЮТ
*
 СЧ РЯ1РЭ
 И П3
 УИ М15
 СЧ РЯ1РЭ
 СДА 64+2
 НТЖ П7
 УИ М16
 СЛИ М16(М3)
 СЧ 24(М16)
 СБР ПРИП(М15)
 СДА 64+2
 ЗП РЯ1РЭ         РЯ1РЭ := N ФИЗ.ЛИСТА М.Л.( С 37 Р.)
*
 ПВ УПРИ(М10)
 СЧ Е5
 ПВ ЗАХЗАН(М15)
 СЧ (М3)
 И Е12П1
 СДА 64-ТБДТР
 УИА 2
 ЗП РАБРЭМ        РАБРЭМ := N В.Л.
 УИА 3
 МОД ТУСП-1(М11)
 СЧ ШЗНМБ+ЯЧТОП
 СДА 64+16
 УИА 2
ПОИСВЛ НОП ,
 И М17777
 ПО НЕТВЛ
 УИ М12
 СЧ ТОП-1(М12)
 НТЖ РАБРЭМ
 И КВТВЛМ
 ПО НАШВЛ
 СЧ ТОП-1(М12)
 ПБ ПОИСВЛ
*
НЕТВЛ НОП ,
 УИА 4(М14)        КОТ = 4
 УИА 3
 СЧ Е5
 УИА СНЯЗАЩ(М15)
 ПБ ГАШЗАН
*
НАШВЛ НОП ,
 УИА 3
 УИИ М16(М12)
 СЧ Е5
 ПВ ГАШЗАН(М15)
 СЛИА -1(М16)
 СЧИ М12
 ВЧОБ АКТОП         АКТОП = 2000(8)
 ПЕ ВЛНАМБ
* В.Л. В  О З У
 УИА 1026
 СЧ ТОП-1(М12)
 СДА 64-7
 СДА 64+7
 ЗП ТОП-1(М12)    НЕ ОТКАЧАЮТ
 УИА 3
 СЧ РЯ1РЭ
 УИА 0(М2)
 ПВ ПРУ12(М10)    М.Л. НА 1-ЫЙ ЛИСТ
 СЧИ М16
 СДА 64-36
 УИА 1(М2)
 ПВ ПРУ12(М10)    В.Л. НА НА 2-ОЙ ЛИСТ
 УИА -1022(М16)
 УИА ’4001’(М15)
 УИА ’2000’(М17)
 ПИНО ЧТВЛ(М7)      В.Л. -> М.Л.
 УИА ’2001’(М15)
 УИА ’4000’(М17)
ЧТВЛ НОП ,
 УИА 2
 СЧ -1(М15)
ПЕРЕ НОП ,
 СЧМ (М15)
 СЛИА 1(М15)
 ЦИКЛ ПЕРЕ(М16)
 ЗП (М17)
 УИА 0(М14)        КОТ := 0 - НОРМА
 ПВ УПРИ(М10)      УПРИ НАЧИНАЕТСЯ С УИА 1027
 СЧИ М11
 СДА 64-41
 УИА 1026
 ИЛИ ТОП-1(М12)
 ЗП ТОП-1(М12)
 ПБ СНЯЗАЩ
*
* В.Л. НА  М Б
*
ВЛНАМБ НОП ,
 СЧ РЯ1РЭ
 ЗП РМР
 СЛИА ТОП-ТБД+256(М16)
 СЧИ М16
 СДА 64-37
 РЗБ НМБТР
 ИЛИ ЕМБФ
 ИЛИ Е19
 УИА СНЯЗАЩ(М16)
 УИА 0(М14)        КОТ := 0
 ПИО ФИЗУР(М7)     М.Л. -> В.Л.
 ИЛИ Е18
 ПБ ФИЗУР
*
СНЯЗАЩ НОП ,
 УИА 1027
 СЧ 32(М3)
 НТЖ Е48(М4)
 ЗП 32(М3)
 ПБ ВЫХЭК
резаш1	пам	1
резаш2	пам	1
резаш3	пам	1
резаш4	пам	1
резаш5	пам	1
резаш6	пам	1 
*
************  В Х О Д Н Ы Е ***********************
 ВХОД Э70АРХ,СЕМАРХ,ШКЭ70А,ИПЗРЭ,ВХ220,МАСКАН
 ВХОД РЯ1РЭ,ВЫХЭК,ВЫХ222,Е18П13
 ВХОД резаш1,резаш2,резаш3,резаш4,резаш5,резаш6
************  В Н Е Ш Н И Е ***********************
*СЕТЬ ВНЕШ ЭКСЕТЬ,ЭКППД
КИТ ВНЕШ КЛЮЧАР
ДИСП70 ВНЕШ И15,И17,И16,СМ,ПРИП,ТУСП,ГУС,ИНФСЛП
ДИСП70 ВНЕШ ТВ206,БПУ,П2007,НЗАД,РМР
ДИСП70 ВНЕШ (РАБ1,РЭ1),(РАБ2,РЭ2),(РАБ3,РЭ3)
ДИСП70 ВНЕШ (Е5П1,П37),(Е12П1,П7777),Е24П1,Е48П25
ДИСП70 ВНЕШ (Е8П1,П377),Е48П43,ВРЕМЯ,ШМАРС,Е37Е36
ГЕНС1 ВНЕШ КВТВЛМ,РАБРЭМ,М17777
ДИСП70 ВНЕШ ТБ13,ЗАНПРП,И,П77,Е15П11,П37,П3,П7,ЗАХЗАН,ГАШЗАН
ДИСП70 ВНЕШ НМБТР,ШГ,Е48П16,ШЗНМБ
СОСТАВ ВНЕШ ТОП,ТБД,ТБДТР,ЯЧИ220,ЕИ220,ЕМБФ,ЯЧТОП,ЕРЭ
КИТ ВНЕШ АКТОП
ВЗУ ВНЕШ ФИЗУР
БОЭК1 ВНЕШ ЗАПВЫХ
ВИСП ВНЕШ ВШГП
ХЛАМ ВНЕШ УПРИ,ПРУ12
ДИСКИ ВНЕШ Е16П1
ВИСП ВНЕШ ИЗШГП
ВЗУ ВНЕШ АНВО1
*КОМАР ВНЕШ АКТЛМЛ,ФИЗОБМ,ШИФРЗ
*КОМАР ВНЕШ ЗГЛМЛ,СВЕДМЛ,СДВМЛ
*КОМАР ВНЕШ ТАФСС,СЧЭ70,ЧВН,СЛСЛ,LЗГТАФ
*КОМАР ВНЕШ Ж25,Ж48П43,Ж16П1,РАП1
*КОМАР ВНЕШ ЖМАРС
 эквив (РАП1,'4001'),(СЛСЛ,3),(СБОЙВВ,'40034'),(ОШЭКСТ,'42')
 эквив (ОШВИРТ,'57'),(ДАЙЗП,'62'),(НЕВПАР,'40061'),(ЧВН,2)
 эквив (Ж16П1,'4005'),(LЗГТАФ,4),(ШИФРЗ,'4006'),(СЧЭ70,1)
 эквив (Ж25,'4002'),(СВЕДМЛ,0),(ТАФСС,0),(ЖМАРС,'4004')
 эквив (СДВМЛ,1),(Ж48П43,'4003'),(ЗГЛМЛ,0),(АКТЛМЛ,'4006')
 эквив (ФИЗОБМ,'4071')
*АРФА ВНЕШ СБОЙВВ,ОШЭКСТ,ОШВИРТ,ДАЙЗП,НЕВПАР
************   Э  К  В  И  В  *********************
 ЭКВИВ (ТАФ,’4000’)
 Е
 М
 ФИНИШ ,
