 МАСRО
 КВАНТ ∧А
 МОДА УВКВАН
 ПВ (М17)
 МNОТЕ *      *-*-*            КВАНТ := ∧А
 МЕND
ДНЕПР СТАРТ ’10000’
 УПОТР ДНЕПР(М3)
 Б
 М
 Е
*ДОП. НЕРЕЗИДЕНТ УПРЯТ. См. ТАКЖЕ ТУПР.
*РАБОТА С ОБЛ. АРФЫ ПРИ УПРЯТЫВАНИИ
*
*   Д Е Ш И Ф Р А Т О Р    Э Т А П О В   *
*
*
ДЕШЭТ НОП          ДЕШИФРАТОР ЭТАПОВ УПР/ВОС
 МОД ЭТУПР
 ПБ ДЕШ-1
*
ДЕШ НОП
 СЧ 8(М2)         СМ:=КОД ОТВЕТА АРФЫ
 ПБ ЭТУ1
СТОП2 СТОП ’22222’       ВТОРОГО ЭТАПА НЕТ
 ПБ СТОП2
 СЧ 15(М2)        СМ:=М7 МАТЕМАТИКА
 ПБ ЭТУ3
 СЧ ШККТ
 ПБ ЭТВ4
 СЧ 15(М2)        СМ:=М7 МАТЕМАТИКА
 ПБ ЭТВ5
*
*    АВОСТ В РЕЖ.МАТЕМАТИКА   *
*
АВОМАТ НОП
 МОД ФИЗАЛМ
 УИА (М13)
 УИА 0(М7)
 ПБ КОНМАТ
*
*    КОНЕЦ РЕЖИМА МАТЕМАТИКА
*
КОНМАТ НОП
 МОД АБУФ1
 УИА (М15)
 МОД ЛИСТУП
 УИА (М14)
 СЧ Е1М
 Э53 ’51’     ВЫЗОВ УПРЯЧЬ
*
* ОБРАБОТКА АВОСТА *
*
АВОУПР НОП
 СЧ 36(М2)
 СДА 64+41
 ЗП 7(М2)         М17 МАТЕМ.-ПРИЧ.АВОСТА
 СЧ 0
 ЗП 23(М2)
 УИА СБОЙ(М17)
 УИА ЧПУПР(М13)
 СЧ ЕСТОП
 ИЛИ МГРП
 ЗП МГРП          УСТ СТОП
 СЧ КОМАРХ
 ПО АВЗАД         НЕ К.О. АРФЫ
 ЗП КОТАРХ-У(М7)
 ИЛИ Е15
 ЗП 7(М2)         Е15 + К.О
 УИА АРХ(М13)
*
АВЗАД УИИ М15(М2)
 ПВ АВОСТА(М16)
 СЧ ИПЗ+35
 НТЖ 35(М2)
 И Е32П1
 НТЖ 35(М2)
 ЗП 35(М2)        ВОСТ .ЧИСЛА ОБРАЩЕНИЙ
 СЧ ИПЗ+ШИФРМ
 ЗП ШИФРМ(М2)
 СЧ ЯЧИУПР(М2)
 ИЛИ ЕИУПР
 НТЖ ЕИУПР
 ЗП ЯЧИУПР(М2)
 ПБ ВЫХД-У(М7)
*
*   П О Л Е  У П Р Я Т Ы В А Н И Я
*
НАЧПУ НОП              НАЧАЛО ПОЛЯ УПРЯТЫВАНИЯ
NСКВ ПАМ 1
NЭВМУП ПАМ 1
РАЗОБЛ ПАМ 1
АБУФ1 ПАМ 1
АБУФ2 ПАМ 1
ЛВИРТ1 ПАМ 1
ЛВИРТ2 ПАМ 1       НЕ МЕНЬТЬ ПОРЯДОК АБУФ1-ЛВИРТ2
УПРКВА ПАМ 1
НОВБК ПАМ 1
МЛМДУ ПАМ 4    НЕ РАЗДЕЛЯТЬ С НОВБК
УПРЯБК ПАМ 1   *****
МЛМДС  ПАМ 4             I
ПЯТЯБК ПАМ 1         НЕ РАЗДЕЛЯТЬ
ШЕСЯБК ПАМ 1             I
СЕДЯБК ПАМ 1   *****
ЯЧМЛУ ПАМ 2
ЯЧМЛС ПАМ 2
Я17М0 ПАМ 1
УСВЕВН ПАМ 12
БУФЭ64 ПАМ 8
ПРМЗУП ПАМ 1
ИНФОЛ ПАМ 1
ИНФБДЛ ПАМ 1
ЗВЫВ ПАМ 4
ИНФОТ ПАМ 32
LИНТ ЭКВ *-ИНФОТ
ТАБДЛ ПАМ 8
LДЛ ЭКВ *-ТАБДЛ
*------* РАЗМЕРЫ ТАБЛИЦ *------*
 ЭКВИВ (РАЗИПЗ,’121’),(РАЗАРХ,’150’),(LДОП,’200’)
*------*  ТАБЛИЦЫ *------*
ИПЗ    ПАМ 0              И П З
ИНФАРХ ЭКВ ИПЗ+РАЗИПЗ     ТАБЛ.АРХИВА
ИНФДЛ  ЭКВ ИНФАРХ+РАЗАРХ  ТАБЛ.ДОП.ЛИСТОВ
LПРУ   ЭКВ ИНФДЛ+LДОП-ИПЗ МИН.ДЛИНА ПРОГР. УПРЯТЫВАНИЯ
LПОЛЯУ ЭКВ ИПЗ-НАЧПУ+LПРУ РАЗМЕР ПОЛЯ УПРЯТЫВАНИЯ
*
**********************************************************
*                                                        *
*         Н       А       Ч       А      Л      О        *
*           У  П  Р  Я  Т  Ы  В  А  Н  И  Я              *
*                                                        *
**********************************************************
НАЧУПР НОП
 УИА 3
 КВАНТ 2
 СЧ РЯУПР-У(М7)
 СДА 64+40
 ЗП NСКВ
 СЧ РЯУПР-У(М7)
 И П1777
 СДА 64-24
 ЗП ЗОНАМ0        ЗОНАМ0 := N ЗОНЫ МАС0
 СЧ УПРЯТ
 СДА 64+6
 И П7777
 ЗП УПРКВА          УПРКВА := ТЕК.КВАНТ,КЛАСС ЗАДАЧИ
*
* ОПРЕДЕЛЕНИЕ РАЗМЕРА ОБЛАСТИ УПРЯТОВАНИЯ
*                 РАЗОБЛ
* 1. ПОИСК ЛИСТОВ
 СЧ ЛИСТМБ(М2)
 И Е48П17
 НТЖ Е48П17
 ЗП ИНФОЛ
 ЧЕД Е1            + ЛИСТ УПРЯТЫВАНИЯ
 ЗП РАЗОБЛ
 УИА -2(М4)
 МОДА НМБЫТЬ
 УИА (М15)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 УИА 1-LДЛ(М15)
 СЧ
ОБТДЛ МОДА LДЛ-1(М15)
 ЗП ТАБДЛ
 МОДА ОБТДЛ
 ЦИКЛ (М15)
 СЧ ИНФОЛ
 ЗП РАБ
*  ЗАПОНЕНИЕ ТАБЛИЦЫ ВИРТУАЛЬНЫХ ЛИСТОВ
ПОИСКЛ НОП
 УИИ М17(М1)
 ПВ ЗАНПРП(М15)
 СЧ РАБ
 ПО НЕТЛИС
 НЕД П77777
 УИ М15
        счмр
        сда     64+1(М15)
 ЗП РАБ
 СЧИ М15
 НТЖ П37
 УИ М5               МАТ.НОМЕР ЛИСТА
 МОДА ЕСТЬБ
 ПИО (М4)
 МОДА (М4)
 ЗП АБУФ1+2
ЕСТЬБ И П3
 УИ М15
 СЧИ М5
 СДА 64+2
 НТЖ П7
 УИ М14
 СЧИ М5
 СДА 64-10
 УИ М11
 УИА 1024
 СЧ 20(М11)
 УИА 1027
 МОДА (М2)
 СЧ 24(М14)
 СБР ПРИП(М15)
 СДА 64+38
 УИ М11
 ПВ УПРИ(М10)
 УИА 1026
 СЧ ТОП(М11)
 СБР КВВЛМ           ВЫРЕЗАЛ ВИРТ.ЛИСТ
 УИА 3
 СДА 64-1          ЕБУФЛ НЕ УЧИТЫВАТЬ
 ЗП РАБ1
 МОДА (М15)
 СД ТАБСД
 МОДА (М14)
 ИЛИ ТАБДЛ
 МОДА (М14)
 ЗП ТАБДЛ
 МОДА ПОИСКЛ
 ПИО (М4)
 СЧ РАБ1
 СДА 64+36
 МОДА (М4)
 ЗП ЛВИРТ1+2
 СЛИА 1(М4)
 ПБ ПОИСКЛ
НЕТЛИС УИА ТЕКЛИС(М13)
 МОДА ВЫХД-У(М7)
 ПИНО (М4)          У ЗАДАЧИ ОДИН ЛИСТ
* 1.1 ПОИСК БУФЕРНЫХ И ДОПОЛНИТЕЛЬНЫХ ЛИСТОВ
 СЧ РЯУПР-У(М7)
 ЗП ЗОНВВ
*    ОБНУЛЕНИЕ ТАБЛИЦЫ ОТКЛЮЧ.ЛИСТОВ
 УИА 1-LДОП(М15)
 УИА 1-LИНТ(М10)
 СЧ 0
ОБОТ МОДА LДОП-1(М15)
 ЗП ИНФДОП
 МОДА ОБОТ
 ЦИКЛ (М15)
ОБТР МОДА LИНТ-1(М10)
 ЗП ИНФОТ
 МОДА ОБТР
 ЦИКЛ (М10)
 СЧ Е5
 ПВ ЗАХЗАН(М15)
 УИА 3
 ПВ УПРИ(М10)
 СЧ ШЗНМБ+ВР(М2)
 СДА 64+16
 И П17777
 УИ М15
ПОБДЛ ПО ПОТРА
 УИА 2
 СЧ ТОП-1(М15)
 УИА 3
 ЗП РАБ
 УИ М15
 И Е48П42
 ПО ПОБДЛ2
 СЧ РАБ
 И ЕБУФЛ
 ПО ПРОТКЛ
 СЧ РАБ
 СДА 64+СДВМЛ
 И П77
 УИ М14
 СЧ ИНФБДЛ
 ИЛИ Е48-32(М14)
 ЗП ИНФБДЛ
ИЗМР СЧ РАЗОБЛ
 СЛЦ Е1
 ЗП РАЗОБЛ
ПОБДЛ2 СЧИ М15
 ПБ ПОБДЛ
* ЗАПОЛНЕНИЕ ТАБЛИЦЫ ВИРТУАЛЬНЫХ НОМЕРОВ
ПРОТКЛ СЧ РАБ
 И ЕОТКЛ
 ПО ПОБДЛ2
 СЧ РАБ
 СДА 64+ТБДТР
 И П7777
 УИ М14
 И П37
 НТЖ П37
 УИ М5
 СЧИ М14
 СДА 64+5
 УИ М14
 МОДА ИНФДОП
 СЛИА (М14)
 СЧ (М14)
 ИЛИ Е48(М5)
 ЗП (М14)
 ПБ ИЗМР
*   ПОИСК ТРАКТОВ
ПОТРА СЧ ШЗНМБ(М2)
 СДА 64+ССТБД
ПОТБД И П77777
 ПО КОНТБД
 УИ М4
 УИА 2
 СЧ ТБД-1(М4)
 УИА 3
 ЗП РАБ
 СДА 64+ТБДТР
 И П37
 НТЖ П37
 УИ М5
 СЧ РАБ
 СДА 64+ТБДМБ
 И П37
 УИ М4
 МОДА (М4)
 СЧ ИНФОТ
 ИЛИ Е48(М5)
 МОДА (М4)
 ЗП ИНФОТ
 СЧ РАЗОБЛ
 СЛЦ Е1
 ЗП РАЗОБЛ
 СЧ РАБ
 ПБ ПОТБД
КОНТБД СЧ Е5
 ПВ ГАШЗАН(М15)
 УИА 3
* 3. ПОИСК СЕГМЕНТОВ
*ПЕРЕНОС БОБИН ИЗ ШЗНМБ,ОБЩТОМ,ТЗНМЛ(ТЗНМД)
*В  МЛМДУ,ЯЧМЛУ,УСВЕВН
* МЛМДУ АНАЛОГИЧНЫ 1-4 ЯЧЕЙКАМ  Б.К.
* ЯЧМЛУ АНАЛОГИЧНЫ ЯЧЕЙКАМ ЯЧМЛ(12,13)  0-ОГО МАССИВА
* УСВЕВН :
*          1-12 Р.Р - РАЗМЕР СЕГМЕНТА В ЗОНАХ
*         13-18 Р.Р - ВН СЕГМЕНТА,МД,МЛ
*         21-22 Р.Р - ЗАЩИТА
*         23-32 Р.Р - СДИГ ПО МД,МЛ
*         33-48 Р.Р - 2-10 N СИС.ДИСКА ЗАКАЗАННОГО НА ВН
 УИА -31(М4)
 СЧ 0
 ЗП НУОБЛУ        НУОБЛУ -  СВОБОДНЫЙ В.Н.
 УИА ’30’(М5)      М5:= ВН(30)
 УИА 0(М6)         М6 := СЧЕТЧИК УСВЕВН
 УИА 0(М14)        М14 - N СЛОВА МЛДМУ
 УИА 1(М13)        М13 - N СЛОГА МЛМДУ
 УИА 0(М12)        М12 - N СЛОВА ЯЧМЛУ
 УИА -48(М11)      М11 - СДВИГ ДЛЯ ЯЧМЛУ
СЛВН НОП
 СЧИ М5
 СДА 64+1
 УИ М17
 СЧИ М5
 И Е1
 СДА 64-2
 УИ М16
 МОДА (М2)
 СЧ ШЗНМБ-12(М17)
 СДА 64+8(М16)
 И П17
 ЗП РАБ1          РАБ1 := ССЫЛКА НА ОБЩТОМ
 ПО ПРОБЛ         ВН НЕ ЗАКАЗАН В СИСТЕМЕ
 И П3
 УИ М16           М16:= N КВАНТА ОБЩТОМ
 СЧ РАБ1
 СДА 64+2
 УИ М17           М17= N СЛОВА ОБЩТОМ
 СДА 64-1
 УИ М15           М15 - СДВИГ ДЛЯ ЗАШИТЫ
 УИА УСВЕВН-ДНЕПР(М10)
 СЛИ М10(М6)
 СЛИ М10(М3)       М10 - АДРЕС ТЕК.ЯЧ.УСВЕВН
 СЛИА 1(М6)
 МОДА (М2)
 СЧ ЗАЩ-1(М16)
 СДА 64(М15)
 И Е22Е21
 ЗП (М10)         ЗАЩИТА
 УИА 1027
 МОДА (М2)
 СЧ ОБЩТОМ(М17)
 СД КТОМ-1(М16)
 И Е16П1
 ЗП РАБ           РАБ := <ОБЩТОМ>
 И П77
 УИ М15           М15 := НУ ФИЗИЧЕСКИЙ
 УИ М16           ДЛЯ СЕГМЕНТОВ
 СЛИА -’30’(М15)
 СЧ УКАЗД(М2)
 И Е32-’30’(М5)
 ПО ЛЕНТА
 СЛИА 56(М15)
НЕТОЛ СЛИА ТЗНМЛ(М15)
 ПБ МЛМДОБ
*
ЛЕНТА СЧ ГОД
 И Е46П48
 ПО НЕТОЛ         НЕТ ОБЩИХ ЛЕНТ
 СЧ РАБ1
 ИЛИ Е48
 УМН П3
 СЧМР 64
 ВЧОБ 0
 УИ М16
 СЧ ОБЩМЛ(М2)
 СДА 64(М16)
 И Е46П48
 ПО НЕТОЛ         ЛЕНТА НА ЭТОЙ ЭВМ
 СДА 64+40
 ВЧ Е6
 ЗП СМЕОЛ          (NЭВМ-1)* 40(8)
 СЧИ М15
 СЛЦ СМЕОЛ
 ЗП СМЕОЛ
 СЧ АДРОЛ
 ПЕ ВОЗУ          ЗОНА КТЛ В ОЗУ
 ПВ ТБУФ(М15)
 УИА 3
 СДА 64-8
 ЗП АДРОЛ
 СДА 64-2
 ИЛИ КУСОЛ
 СЛЦ НОММЛ1
 ЗП КУСРАБ
 ПВ ФИЗОБМ(М16)
 УИА 3
 СЧ АДРОЛ
ВОЗУ СЛЦ СМЕОЛ
 УИ М15
МЛМДОБ СЧ 0
 ЗП РАБ1          РАБ1 := 0 ДЛЯ ЯЧМЛУ
 СЧ (М15)
 УИА 3
 ЗП РАБ2          РАБ2 := СТРОКА ТЗНМЛ
 СЧИ М5
 СДА 64-12
 ИЛИ (М10)
 ЗП (М10)         В Н
 СЧ МДР(М2)
 И Е32-’30’(М5)
 ПЕ ЭТОСЕГ
 СЧ РАБ
 СДА 64+6
 СДА 64-22
 ИЛИ (М10)
 ЗП (М10)         СДВИГ
 СЧ РАБ2
 И Е47
 ПЕ СИСМД
 СЧ РАБ2
 И П7777         СМ := 2-8 N БОБИНЫ
 ИЛИ Е13           Е13 - ПРИЗНАК БОБИНЫ В Б.К
 ПБ ДЛЯБК
*
ЭТОСЕГ НОП
 СЧ РАБ
 СДА 64+12
 И П17
 УИ М15           ЗАК.КУСКИ
 ЗП РАБ
 СЧ ВСЕЕД
 СДА 64-48(М15)
 СДА 64(М16)
 ЗП РАБ1           МАСКА КУСКОВ
 СЧ ИСКУС
 СБР РАБ1
 ПО НИК
 НЕД П77777
 И П77777
 ВЧОБ РАБ
НИК СДА 64-5
 ЗП РАБ           РАБ := РАЗМЕР СЕГМЕНТА В ЗОНАХ
 СЛЦ РАЗОБЛ
 ЗП РАЗОБЛ
 СЧ Е8
 ЗП РАБ1          РАБ1 := Е8 -ПРИЗНАК КУСКА В ЯЧМЛ МАС0
 СЧ РАБ
 ИЛИ (М10)
 ЗП (М10)         КОЛ-ВО ЗОН В СЕГМЕНТЕ
 СЧИ М15
 ПБ ДЛЯБК
*
ПРОБЛ НОП
 СЧ АРХМЛ(М2)
 И Е48-’30’(М5)
 ПЕ НЕТВН         ВН ЗАНЯТ ОБЛАСТЬЮ
 СЧИ М5
 ЗП НУОБЛУ        НУОБЛУ := N СВОБОДНОГО ВН
 ПБ НЕТВН
*
СИСМД СЧ РАБ2
 И П7777
 ПВ ПЕРЕВ(М15)
 СБР КНСБР                                                      НТ-1(
 ИЛИ (М10)
 ЗП (М10)         2-10 НОМЕР БОБИНЫ
 ПБ НЕТВН
ДЛЯБК НОП
 СД КТОМЛ-1(М13)
 МОДА (М14)
 ИЛИ МЛМДУ
 МОДА (М14)
 ЗП МЛМДУ         ДЛЯ ПЕРЕНОСА В Б.К
 СЧИ М5
 ИЛИ РАБ1          СМ := ВН+ПРИЗНАК КУСКА (48-41 РР)
 СЛИА 8(М11)
 СДА 64(М11)
 МОДА (М12)
 ИЛИ ЯЧМЛУ
 МОДА (М12)
 ЗП ЯЧМЛУ         ДЛЯ ПЕРЕНОСА В МАС0
 МОДА НЕШЕСТ
 ПИНО (М11)
 УИА 1(М12)        М12 :=1 - СЛЕД. ЯЧМЛУ
 УИА -48(М11)       М11 := -48 НАЧ.СДВИГ ЯЧМЛУ
НЕШЕСТ НОП
 СЛИА 1(М13)
 СЧИ М13
 НТЖ Е3
 ПЕ НЕТВН
 УИА 1(М13)
 СЛИА 1(М14)
НЕТВН НОП
 СЛИА 1(М5)
 МОДА СЛВН
 ЦИКЛ (М4)
 СЧ АДРОЛ
 ПО НЕБЫЛО        ОБЩИХ ЛЕНТ
 СЧ КУСРАБ
 ПВ ТБУФ(М15)
*
* ПЕРЕПИСЬ ИПЗ *
НЕБЫЛО УИА 3
 УИА -РАЗИПЗ+1(М17)
ПЕРИПЗ МОДА РАЗИПЗ-1(М17)
 СЧ (М2)
 МОДА РАЗИПЗ-1(М17)
 ЗП ИПЗ
 МОДА ПЕРИПЗ
 ЦИКЛ (М17)
 УИА ВНЗАН(М13)
 СЧ НУОБЛУ
 ПО ВЫХД-У(М7)
 СЧИ М6
 ВЧ Д12           В ЗАДАЧЕ > 11 В.Н.
 ПО ВЫХД-У(М7)    В СИСТ. 12 ВН
* ИНФ.О ЛЕНТАХ,ДИСКАХ,СЕГМ. ИЗ Б.К. И МАС0
 МОДА ЧТБК
 ПВ (М14)
 СЧ РАБ
 ПВ DЕQ(М15)
 УИА -7(М16)
ПЕРБК МОДА 7(М16)
 СЧ (М5)
 МОДА 7(М16)
 ЗП УПРЯБК
 МОДА ПЕРБК
 ЦИКЛ (М16)
 СЧ УПРЯБК
 И НЕТЛТ
 ЗП НОВБК         УБРАЛИ ЛИСТЫИ ТРАКТЫ
 СЧ ЯЧЛИС(М2)
 И П7777
 ВЧ Е1
 ЗП НОВБК6  ЛИСТЫ ИЗ ИПЗ
 СЧ ЯЧТР(М2)
 СДА 64+СДТ
 И П777
 СДА 64-20
 ИЛИ НОВБК
 ЗП НОВБК         ЧИСЛО ТРАКТОВ ИЗ ИПЗ
 СЧИ М4
 СДА 64-2
 ИЛИ ЗОНАМ0
 СЛЦ НОММЛ2
 ИЛИ Е18
 ПВ ФИЗОБМ(М16)    ЧТЕНИЕ МАС0
 СЧ ЯЧМЛ(М4)
 ЗП ЯЧМЛС
 СЧ ЯЧМЛ+1(М4)
 ЗП ЯЧМЛС+1
 СЧ УПРМ0(М4)
 СДА 64+12
 ЗП NБОБ
 СЧ 17(М4)
 ЗП Я17М0         Я17М0 := 17 ЯЧЕЙКУ МАС0
 СЧИ М4
 СДА 64-2
 ИЛИ КУС550
 СЛЦ НОММЛ1
 ПВ ФИЗОБМ(М16) ЧТЕНИЕ КАТАЛОГА ВЫВОДА
 СЧ ИПЗ+ЗОНЫ
 СДА 64-8
 ЗП РАБ1
 МОДА ЗВЫВ-1
 УИА (М16)
ПОКВ СЧ РАБ1
 ПО ОСВК
 СЛИА 1(М16)
 СДА 64-10
 ЗП РАБ1
 СЧМР
 ПО ПОКВ
 УИ М15
 СЛИ М15(М4)
 СЧ (М15)
 ЗП (М16)         СОХРАНИЛ ПОСЛ.ЗОНУ ВЫВОДА
 ПБ ПОКВ
ОСВК СЧ РАБ
 ПВ ТБУФ(М15)
 УИА 3
 УИА 1(М14)        ЧТЕНИЕ БУФЭ64
 МОДА ДАЙЭ64
 ПВ (М12)
 СЧ ПРМЗОН(М2)
 И Е24П1
 ЗП ПРМЗУП
*
* ЗАДАНИЕ АРХИВУ
* РК  -  1-6 РР = ’41’
* ИНФ - РАЗМЕР ОБЛАСТИ
* СМ  -  1-ОЕ СЛОВО ИМЕНИ
* РМР -  2-ОЕ СЛОВО ИМЕНИ
*
 СЧ 1(М2)
 И Е48П9
 ИЛИ Е1
 ЗП 1(М2)
 СЧ РАЗОБЛ
 ЗП ИНФ(М2)
 СЧ NБОБ
 ПЕ ЕЭВМ
 СЧ ГОД
ЕЭВМ МОДА ФОРИМЯ
 ПВ (М17)
 ЗП (М2)
 СЧ ИМЯ+1
 ЗП 2(М2)
 СЧ СОБА40
 ПВ ЗАПВЕТ(М16)
 СЧ Ш1
 ИЛИ Е48-1(М1)
 ЗП Ш1
 СЧ Е48-1(М1)
 ЗП ШЗУПР
 СЧИ М1
 СДА 64-30
 ИЛИ Е1
 ЗП ЭТУПР         ЭТУПР:= 1
 СЧ БУД1ЭТ
 ЗП БУДУПР
 МОДА (М7)
 УИА ВЫХОД-У(М14)
 КВАНТ 3
 ПБ СОХЛУ-У(М7)
**********************************************************
*                                                        *
*          У  П  Р  Я  Т  Ы  В  А  Н  И  Е               *
*               Э  Т  А  П     N  1                      *
*                                                        *
**********************************************************
ЭТУ1 НОП
 ЗП КОТАРХ-У(М7)  КОТАРХ := КОД ОТВЕТА АРФЫ
 КВАНТ 4
 СЧ 0(М2)
 ЗП NБОБ          NБОБ := N ТОМА ОБЛУ(8)
 СЧ ИПЗ
 ЗП 0(М2)         ВОССТАНОВЛЕНИЕ СМ  ЗАДАЧИ
 СЧ ИПЗ+2
 ЗП 2(М2)         ВОССТАНОВЛЕНИЕ РМР ЗАДАЧИ
 СЧ ИПЗ+8
 ЗП 8(М2)         ВОССТАНОВЛЕНИЕ М16 ЗАДАЧИ
 СЧ РАЗОБЛ
 СДА 64-36
 РЗБ КНРЗБ
 ИЛИ ТЕКL
 ЗП ТЕКL
 СЧ КОТАРХ-У(М7)
 ПО ЕСТЬОБ         ПРОШЛО СОЗДАНИЕ ОБЛУ
 НТЖ НЕТМЕС
 УИА АРХ(М13)
 ПЕ ВЫХД-У(М7)
 СЧ УПРЯТ
 СЛЦ П77
 И П77
 СДА 64-40
 ИЛИ ТЕКРАЗ
 ЗП ТЕКРАЗ
 МОДА ТЕКРАЗ
 УИА (М16)
 МОДА ВЫХД-У(М7)
 УИА (М17)
 УИИ М32(М17)
 СЧ Е23
 ПБ ТВ40
ЕСТЬОБ НОП ,
 УИА РМУПР-ДНЕПР(М16)
 СЧ П3
 ЗП ЭТУПР          ЭТУПР:= 3
 СЧ П3
 ПБ ЛУМАТ
*
**********************************************************
*                                                        *
*                У П Р Я Т У В А Н И Е                   *
*            Р Е Ж И М    М А Т Е М А Т И К А            *
*                                                        *
**********************************************************
РМУПР МОДА ДОБЛУ
 ПВ (М10)
 СЧ 0
 МОДА УПРВОС
 ПВ (М10)
 МОД АБУФ2
 УИА (М15)
 МОД ФИЗАЛМ
 УИА (М13)
 УИА 0(М14)
 Э53 ’51’
 Э70 КУСЗП         ЗАПИСЬ БУФ1
 ПБ КОНМАТ
*
**********************************************************
*                                                        *
*          У  П  Р  Я  Т  Ы  В  А  Н  И  Е               *
*               Э  Т  А  П     N  3                      *
*                                                        *
**********************************************************
ЭТУ3 НОП
 ПО АВОУПР
 КВАНТ 103
 МОДА ЧТБК          ЧТЕНИЕ  Б.К.
 ПВ (М14)
 СЧ ЯЧКУПР(М5)
 ИЛИ ЕКУПР
 ЗП ЯЧКУПР(М5)    В Б.К. ПРИЗНАК УПРЯТ.ЗАДАЧИ
 СЧ 6(М5)
 ИЛИ Е32           В Б.К. ПРИЗНАК ’ТЕЛЕ’
 ИЛИ Е30           В Б.К. ’ПОВТОР’
 ЗП 6(М5)
 НТЖ НОВБК6
 И П7777
 НТЖ 6(М5)
 ЗП 6(М5)
 СЧ ШККТ
 СБР Е48-1(М1)
 РЗБ ЕКТ
 ИЛИ ЯЧБКИО(М5)    ЕСЛИ УЖЕ БЫЛА КТ
 И ЕКТ
 ИЛИ НОВБК+ЯЧБКИО
 ЗП НОВБК+ЯЧБКИО   ЕКТ В НОВЫЙ БК
 МОДА НОВБК
 УИА (М10)
 МОДА ЯЧМЛУ
 УИА (М11)
 МОДА УКАЗД(М2)
 УИА (М12)
 СЧ ЕУПРВП
 ЗП ИЛИВЫП        ПРОСТАВЛЯЕМ В КАТ.ВЫВОДА ЕУПРВП
 СЧ НЕЭВМ
  ЗП ИВЫП          УБИРАЕМ В КАТ.ВЫВОДА NЭВМ
 МОДА КОРКАТ
 ПВ (М14)
 СЧ Е33           ПРИЗНАК ’НОВ’
 ИЛИ АВОС(М2)
 ЗП АВОС(М2)
 СЧ ТЕККЗ
 ЗП СОБЫТ(М2)     ТЕКСТ ДЛЯ КЗ
 СЧ ТЕКL
 СДА 64-16
 ИЛИ СТРЕЛА
 ЗП ИНФСЛП(М2)    ТЕКСТ ДЛЯ КЗ
 СЧ СТПАС-У(М7)
 ЗП 20(М2)
 СЧ НУОБЛУ
 ЗП СТПАС-У(М7)     ДЛЯ ВОССТ.ПРИ КТ
 СЧ ЛВИРТ1
 СДА 64-5
 ИЛИ АБУФ1
 СДА 64-24+5
 ИЛИ ЛВИРТ2
 СДА 64-5
 ИЛИ АБУФ2
 ЗП УПЛ-У(М7)
 СЧ ШККТ
 И Е48-1(М1)
 ПЕ ВХКТ-У(М7)    ПЕРЕХОД К ВОССТ.ПРИ КТ
 СЧ ЗОНВВ
 ЗП ЗОНЫ(М2)      ССЫЛКА ИЗ М.К. ДЛЯ АВРАСПА
 МОД ПРИЧУП
 УИА (М17)
 УИА 0(М13)        Н О Р М А
 ПБ АВЗАД
*
 АДРЕС ИПЗ+LПРУ+0    МIN,ПРИ ПЕРЕПОЛНЕНИИ УВЕЛИЧИТЬ
*
*      КОНЕЦ ПРОГРАММЫ УПРЯТЫВАНИЯ     *
*
*
*      ТАБЛИЦА ОТКЛЮЧЕННЫХ ЛИСТОВ      *
*      ЗАТИРАЕТ ВОСС. ПРИ УПРЯТЫВАНИИ  *
*
ИНФДОП ПАМ 0
*
**********************************************************
*                                                        *
*        В  О  С  С  Т  А  Н  О  В  Л  Е  Н  И  Е        *
*               Э  Т  А  П     N  4                      *
*                                                        *
**********************************************************
ЭТВ4 НОП
 УИА 3
 И Е48-1(М1)
 ЗП ШКТП
 ЗП ШКТП+1
 ПО ЭТОВО
 СЧ СТПАС-У(М7)     НУ ОБЛ.УПР
 ЗП НУОБЛУ
 СЧ УПЛ-У(М7)
 И П37
 ЗП АБУФ2
 СЧ УПЛ-У(М7)
 СДА 64+5
 И П7777
 ЗП ЛВИРТ2
 СЧ УПЛ-У(М7)
 СДА 64+24
 И П37
 ЗП АБУФ1
 СЧ УПЛ-У(М7)
 СДА 64+24+5
 И П7777
 ЗП ЛВИРТ1
 УИА КТВОС-ДНЕПР(М16)
 СЧ П5
 ЗП ЭТУПР
 СЧ ШИФРМ(М2)
 ЗП ИПЗ+ШИФРМ
 СЧ Е2
 ПБ ЛУМАТ
ЭТОВО СЧ NСКВ
 СДА 64+40
 ЗП NСКВ
 СЧ П37
 ЗП АБУФ1
 ЗП ЛВИРТ1        ВИРТУАЛЬН.ЛИСТ МАТЕМАТИКА
 МОДА ЧТБК
 ПВ (М14)
 СЧ РАБ
 ПВ DЕQ(М15)
 СЧ ЯЧБКИО(М5)
 И ЕКТ
 ПО ПВОС
 СЧ Е48-1(М1)
 ЗП ШКТП
 УИА 1027
 ИЛИ ШККТ
 ЗП ШККТ
 УИА 3
ПВОС СЧ РАБ
 ПВ ТБУФ(М15)
 СЧ П5
 ЗП ЭТУПР         ЭТУПР := 5
 УИА РМВОС-ДНЕПР(М16)
 СЧ NЭВМУП
 И П7777
 ЗП NБОБ          NБОБ := N ТОМА ОБЛУ(8)
 СЧ NЭВМУП
 СДА 64+12
 МОДА ФОРИМЯ
 ПВ (М17)
 СЧ ШИФРМ(М2)
 ЗП ИПЗ+ШИФРМ
 СЧ Е2
 ПБ ЛУМАТ
*
**********************************************************
*                                                        *
*            К О Н Т Р О Л Ь Н А Я    Т О Ч К А          *
*            Р Е Ж И М    М А Т Е М А Т И К А            *
*                                                        *
**********************************************************
КТВОС НОП
 СЧ АБУФ2
 СДА 64-30
 ИЛИ Е40М
 ИЛИ НУОБЛУ
 ЗП КУСЧЛУ
 Э70 КУСЧЛУ        ЧТЕНИЕ ЛИСТУП НА АБУФ2
 СЧ АБУФ2
 СДА 64-10
 УИ М4             БАЗА ЛИСТУП
 УИА 1-LПОЛЯУ+LДОП(М5)
 ПБ ПЕРИНФ
**********************************************************
*                                                        *
*        В  О  С  С  Т  А  Н  О  В  Л  Е  Н  И  Е        *
*     Р  Е  Ж  И  М    М  А  Т  Е  М  А  Т  И  К  А      *
*                                                        *
**********************************************************
РМВОС НОП
 МОДА ДОБЛУ
 ПВ (М10)
 СЧ НУОБЛУ
 ИЛИ КУСЧЛУ
 ЗП КУСЧЛУ
 УИА ’74000’(М4)   М4:= 74000
 Э70 КУСЧЛУ        ЧТЕНИЕ ЛИСТУП НА 36 ЛИСТ
 УИА ’36’(М15)     М15:= 36
 УИА 1-LПОЛЯУ+LДОП(М5)
 СЧ ЛВИРТ2-ДНЕПР(М4)
 УИ М12           ВИРТУАЛЬНЫЙ НОМЕР АБУФ2
 СЧ  АБУФ2-ДНЕПР(М4)
 УИ М14           М14:= N ЛИСТА БУФ2
 СДА 64-10
 УИ М4             М4:= БАЗА БУФ2
 УИА 1(М13)        М13:= 1   М33 НЕ МЕНЯТЬ
 СЧ П3М           N РАБ = 3
 Э53 ’51’          ПЕРЕИМЕНОВАНИЕ 36 ЛИСТА В БУФ2
* ПЕРЕПИСЬ ПОЛЯ УПРЯТЫВАНИЯ
* ИЗ ОБЛАСТИ УПРЯТЫВАНИЯ НА ЛИСТ ДНЕПР-А
ПЕРИНФ МОДА LПОЛЯУ-LДОП-1(М5)
 СЧ НАЧПУ-ДНЕПР(М4)
 МОДА LПОЛЯУ-LДОП-1(М5)
 ЗП НАЧПУ
 МОДА ПЕРИНФ
 ЦИКЛ (М5)
 УИА 1-LДОП(М5)
*   ПЕРЕПИСИ ИНФОРМАЦИИ ОБ ОТКЛЮЧЕННЫХ ЛИСТАХ
ПЕРИВЛ МОДА LДОП-1(М5)
 СЧ ИНФДОП-ДНЕПР(М4)
 МОДА LДОП-1(М5)
 ЗП ИНФДЛ      ИНФ.ЗАТИРАЕТ ПОЛЕ УПР
 МОДА ПЕРИВЛ
 ЦИКЛ (М5)
 СЧ ШКТП+1
 ПЕ ТОТЖЕ             ПРИ КТ ЛИСТ НЕ ПЕРЕИМЕНОВЫВАТЬ
 СЧ ЛВИРТ1
 УИ М12           ВИРТУАЛЬНЫЙ НОМЕР АБУФ1
 УИА ’37’(М15)     М15:= 37
 СЧ АБУФ1
 УИ М14           М14:= N ЛИСТА БУФ1
 СДА 64-10
 УИ М16
 УИИ М7(М16)
 СЛИА АВОМАТ-ДНЕПР(М7) М7 := НАЧ.ПРОГ.АВОСТ
 УИА 0(М13)        М13:= 0   М33 ИЗМЕНИТЬ
 СЧ П3М           N РАБ = 3
 УИИ М3(М16)       М3:= НОВ.БАЗУ(АБУФ1 ИЗ ОБЛУ)
 Э53 ’51’          ПЕРЕИМЕНОВАНИЕ 37 ЛИСТА В БУФ1
ТОТЖЕ НОП
 СЧ АБУФ2
 СДА 64-30
 ИЛИ НУОБЛУ
 ИЛИ КУСЧ1З
 ЗП КУСЧ1З
 Э70 КУСЧ1З        ЧТЕНИЕ ИНФОРМАЦИИ БУФ2
 МОД АБУФ2
 УИА (М15)
 УИА 0(М14)
 МОД ФИЗАЛМ
 УИА (М13)         М13:= ФИЗАЛМ
 СЧ 0             N РАБ = 0
 Э53 ’51’          ИНФОР. БУФ2 НА ФИЗЛИСТ
 СЧИ М13
 ЗП ФИЗАЛМ
 УИА -1(М17)
УБРБУФ МОДА 1(М17)
 СЧ АБУФ1
 НТЖ П37М
 УИ М16
 СЧ Е48М
 СДА 64(М16)
 НТЖ ИНФОЛ
 ЗП ИНФОЛ
 МОДА УБРБУФ
 ЦИКЛ (М17)
 СЧ Е1М
 СДА 64-1
 ЗП NЗОНЫ         NЗОНЫ:=2
 СЧ Е40М
 МОДА УПРВОС
 ПВ (М10)
 Э70 КУСЗП         ЧТЕНИЕ БУФ1 НА БУФ2
 МОД АБУФ2
 УИА (М15)
 МОД ФИЗАЛМ
 УИА (М13)
 УИА 0(М14)
 СЧ 0              N РАБ = 0
 Э53 ’51’          ИНФ.БУФ1 НА ФИЗАЛМ,А ИНФ.БУФ2 НА БУФ2
 СЧ НУОБЛУ
 СДА 64+3
 УИ М16             М16:= ВН НУОБЛУ
 Э62 ’777’(М16)    ОТКАЗ ОТ ОБЛУ
 СЧ ШКТП+1
 ПЕ КОНМАТ        СИС.МД УЖЕ ЗАКАЗАНЫ,ТАФ ЕСТЬ
 СЧ ИСУНОУ
 ЗП ИС63
 МОДА ИНФАРХ
 УИА (М15)         М15 := НАЧ.АДРЕС ИНФОР.АРХИВА
 УИА РАЗАРХ(М14)   М14:= L ИНФОР.АРХИВА
 СЧ 0
 НТЖ 0
 СЧ КЛЮЧАР
 Э63 ИС63          УНИЧТОЖЕНИЕ ОБЛУ
 УИА -11(М15)
ДОЗСИС МОДА 11(М15)
 СЧ УСВЕВН
 СДА 64+32
 ПО НЕСИС
 ЗП РАБ
 МОДА 11(М15)
 СЧ УСВЕВН
 И КВЫДВН
 СДА 64-30
 ИЛИ Е42П37
 ИЛИ РАБ
 Э50 ’131’
НЕСИС МОДА ДОЗСИС
 ЦИКЛ (М15)
 ПБ КОНМАТ
**********************************************************
*                                                        *
*        В  О  С  С  Т  А  Н  О  В  Л  Е  Н  И  Е        *
*               Э  Т  А  П     N 5                       *
*                                                        *
**********************************************************
ЭТВ5 НОП
 ПО АВОУПР
 СЧ УПРКВА
 МОДА ИЗКВКЛ-У(М7)
 ПВ (М17)
 МОДА ЧТБК          ЧТЕНИЕ  Б.К.
 ПВ  (М14)
 СЧ ШККТ
 И Е48-1(М1)
 ПО УПРВО           ЭТО НЕ КТ
 СЧ 6(М5)
 НТЖ ШЕСЯБК
 И П7777
 НТЖ ШЕСЯБК
 ИЛИ Е30           ПОВТОР
 ЗП 6(М5)
 ПБ ОБЩВ
УПРВО СЧ ШЕСЯБК
 ЗП 6(М5)
ОБЩВ СЧ ЯЧКУПР(М5)
 ИЛИ ЕКУПР
 НТЖ ЕКУПР
 ЗП ЯЧКУПР(М5)    УБРАЛИ ПРИЗНАК УПР
 МОДА УПРЯБК
 УИА (М10)
 МОДА ЯЧМЛС
 УИА (М11)
 МОДА Я17М0
 УИА (М12)
 СЧ ЕУПРВП
 НТЖ ВСЕЕД
 ЗП ИВЫП          УБИРАЕМ В КАТ.ВЫВОДА ЕУПРВП
 СЧ УПРЯБК+6
 ЗП НОВБК6
 СЧ ГОД
 И П7
 СДА 64-39
 ЗП ИЛИВЫП        ПРОСТАВЛЯЕМ В КАТ.ВЫВОДА NЭВМ
 МОДА КОРКАТ
 ПВ (М14)
*ВОССТАНОВЛЕНИЕ ЗАЩИТЫ И СДВИГОВ МД(МЛ)
 УИА -11(М6)       ДЛЯ ЦИКЛА ’ЗАЩСДВ’
 УИА 0(М14)        ЗАПИСЬ БУФЭ64
 МОДА ДАЙЭ64
 ПВ (М12)
ЗАЩСДВ МОДА 11(М6)
 СЧ УСВЕВН
 И П7777
 ПЕ НЕТЛД         СЕГМЕНТ
 МОДА 11(М6)
 СЧ УСВЕВН
 СДА 64+12
 И П77
 ПО НЕТЛД
 ЗП РАБ
 СДА 64+1
 УИ М17
 СЧ РАБ
 И Е1
 СДА 64-2
 УИ М16
  МОДА (М2)
 СЧ ШЗНМБ-12(М17)
 СДА 64+8(М16)
 И П17
 ПО НЕТЛД          ПОКА ЛУЧШЕ ТАК
 ЗП РАБ            РАБ := ССЫЛКА НА ’ОБЩТОМ’
 И П3
 УИ М16            М16 := N КВАНТА ОБЩТОМ
 СЧ РАБ
 СДА 64+2
 УИ М17            М17 := N СЛОВА ОБЩТОМ
 СДА 64-1
 ВЧОБ 0
 УИ М15
 МОДА 11(М6)
 СЧ УСВЕВН
 И Е22Е21
 СДА 64(М15)
 УИА 1027
 МОДА (М2)
 ИЛИ ЗАЩ-1(М16)
 МОДА (М2)
 ЗП ЗАЩ-1(М16)     ЗАЩИТА
 МОДА 11(М6)
 СЧ УСВЕВН
 СДА 64+22
 И П1777
 СДА 64-6          СДВИГ ПО МД(МЛ)
 СД КТОМЛ-1(М16)
 МОДА (М2)
 ИЛИ ОБЩТОМ(М17)
 МОДА (М2)
 ЗП ОБЩТОМ(М17)
 УИА 3
НЕТЛД МОДА ЗАЩСДВ
 ЦИКЛ (М6)
*ВОСТАНОВЛЕНИЕ    И П З
 УИИ М4(М2)        М4 := АДРЕС ИПЗ
 УИИ М5(М3)        М5 := БАЗА ДНЕПР-А
 УИИ М6(М7)        М6 := БАЗА УПРЯЧЬ
 УИА 1-РАЗИПЗ(М15)
ВОСИПЗ СЧ ИПЗ-ДНЕПР(М5)
 ИЛИ КВИПЗ-У(М6)
 НТЖ КВИПЗ-У(М6)
 ЗП РАБ
 УИА 1027
 СЧ (М4)
 И КВИПЗ-У(М6)
 ИЛИ РАБ
 ЗП (М4)
 УИА 3
 СЛИА 1(М4)
 СЛИА 1(М5)
 СЛИА 1(М6)
 МОДА ВОСИПЗ
 ЦИКЛ (М15)
 СЧ ПРМЗУП
 УИА 1027
 ИЛИ ПРМЗОН(М2)
 ЗП ПРМЗОН(М2)
 СЧ ЯЧИУПР(М2)
 ИЛИ ЕИУПР
 НТЖ ЕИУПР
 ЗП ЯЧИУПР(М2)
 СЧ ШЗНМБ(М2)
 ИЛИ АХ
 ЗП ШЗНМБ(М2)
 СЧ ТЕРЕЗА(М2)
ЗПЗТСЛ ЗП РАБ
 ПО НЕТТ
 НЕД
 УИ М15
 СЧ УКАЗД(М2)
 ИЛИ ЕТЕЛ
 ЗП УКАЗД(М2)
 СЧИ М1
 СДА 64-20
 ИЛИ ТСЛ-1(М15)
 ЗП ТСЛ-1(М15)
 СЧ РАБ
 НТЖ Е48-1(М15)
 ПБ ЗПЗТСЛ
НЕТТ СЧ 5(М2)
 И Е3
 УИА 1027
 УИА ’77777’(М16)
 ПЕ СТ175         ЗАДАЧА В РЕЖИМЕ ОС
 МОДА НМБЫТЬ
 УИА (М15)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 УИИ М17(М1)
 ПВ ЗАНПРП(М15)
 СЧ 3(М2)
 И Е15П11
 УИ М15
 УИА 0
 СЧ 20(М15)
 УИА 3
 УИА 0(М13)        НОРМА
 ПБ ВЫХД-У(М7)
*
НМБЫТЬ УИА 1027
 УИА ’41’(М16)
 ПБ СТ175         ЧЛИСТ ПО АДРЕСУ В М33
**********************************************************
*                                                        *
*                                                        *
*           П  О  Д  П  Р  О  Г  Р  А  М  М  Ы           *
*                                                        *
*                                                        *
**********************************************************
*
* ПЕРЕХОД В РЕЖИМ МАТЕМАТИКА
*
ЛУМАТ НОП
 ИЛИ Е4
 ЗП РАБ
 СЧ ШИФРМ(М2)
 ИЛИ П17
 НТЖ П17
 ИЛИ РАБ
 ЗП ШИФРМ(М2)
 СЧ МИ21
 ЗП 5(М2)         М27
 СЧ АБУФ1
 СДА 64-10
 УИ М14           М14:= АДР. МАТ.ЛИСТА
 ЗП 19(М2)        М3(МАТ.) := БАЗА
 СЛИ М16(М14)
 СЧИ М16
 ЗП 3(М2)         М33(МАТ.) := НАЧ. ПРОГ.В МАТ.РЕЖИМЕ
 УИА АВОМАТ-ДНЕПР(М16)
 СЛИ М16(М14)
 СЧИ М16
 ЗП 15(М2)        М7(МАТ.) := НАЧ. ПРОГ. АВОСТ
 УИА 1027
 СЧ 22(М2)
 И Е48П17
 ЗП 22(М2)        КРА(МАТ.) := 0
 СЧ ЯЧИУПР(М2)
 ИЛИ ЕИУПР
 ЗП ЯЧИУПР(М2)    В ИПЗ ПРИЗНАК СПЕЦУПРЯЧЬ
 СЧ Е31
 ЗП АВОС(М2)      ПРИЗНАК НЕ УЧИТЫВАЕМЫХ ВЫДАЧ
 СЧ ЯЧВР(М2)
 СДА 64-9
 СДА 64+9
 ЗП ЯЧВР(М2)
 СЧ ВРЕМЯ
 СДА 64-32
 ЗП 35(М2)        МЛ.Р.ВРЕМИНИ,0 ОБР.К МБ,0 ОБР.К МД
 СЧМР 0
 СДА 64-39
 ИЛИ ЯЧВР(М2)
 ЗП ЯЧВР(М2)
 УИА 3
 СЧ ВРЕМЯ
 ВЧОБ Е26
 СДА 64-23
 ЗП 33(М2)
 СЧ 0
 ЗП 39(М2)        ВРЕМЯ  Э 63
 СЧ ПРИЧУП
 СДА 64-15
 ЗП 23(М2)        23 ИПЗ:= ПРИЧИНА ’ЗАДАЧА УПРЯТАНА’
 СЧ ЯЧЧАВ(М2)
 И Е41П1
 ЗП ЯЧЧАВ(М2)     ЧИСЛО ПЕРЕХ. АВОСТОВ
 СЧ 0
 ЗП 34(М2)        АДРЕС АВОСТА
 ЗП 38(М2)        ОСТАНОВ ПО СЧ,КРА,ЗП
 ЗП МАСГЛ(М2)
 ЗП ШПЭГ(М2)
 ЗП СОБЫТ(М2)
 СЧ ЯПЭ74(М2)
 СДА 64-15
 СДА 64+15
 ЗП ЯПЭ74(М2)
 СЧ КОНКВА
 МОДА ИЗКВКЛ-У(М7)  КВАНТ 102
 ПВ (М17)
* ПЕРЕНОС ЛИСТУП НА ЛИСТ МАТЕМАТИКА
 УИИ М17(М1)
 ПВ ЗАНПРП(М15)
 УИА 1024
 СЧ 20(М14)
 УИА 1027
 СЧ АБУФ1
 И П3
 УИ М12           М12:= N СТОЛБЦА ИПЗ
 СЧ АБУФ1
 СДА 64+2
 НТЖ П7
 УИ М13           М13:= N СТРОКИ ИПЗ
 СЛИ М13(М2)
 СЧ 24(М13)
 И ПРИП(М12)
 ЗП РАБ
 НТЖ 24(М13)
 ЗП 24(М13)
 СЧ РАБ
 СБР ПРИП(М12)
 СДА 64+38
 УИ М11           М11:= ФИЗ. АДРЕС БУФ1
 ЗП ФИЗАЛМ
 ПВ УПРИ(М10)
 СЧ Е41П1
 УИА 1026
 И ТОП(М11)
 ЗП ТОП(М11)
 УИА 1027
 СЧ ЛИСТУП
 СДА 64-СДВМЛ
 ИЛИ ЕОТКЛ
 УИА 1026
 НТЖ ТОП(М11)
 И ВИОЛПМ
 НТЖ ТОП(М11)
 ЗП ТОП(М11)
 УИА 1027
 СЧИ М3
 СДА 64+10
 УИ М11
 СДА 64-38
 РЗБ ПРИП(М12)
 ИЛИ 24(М13)
 ЗП 24(М13)
 СЧ Е41П1
 УИА 1026
 И ТОП(М11)
 ЗП ТОП(М11)
 УИА 1027
 СЧ АБУФ1
 СДА 64-СДВМЛ+ТБДТР
 ИЛИ ЛВИРТ1
 СДА 64-ТБДТР
 УИА 1026
 НТЖ ТОП(М11)
 И ВИОЛПМ
 НТЖ ТОП(М11)
 ЗП ТОП(М11)
 УИА 1027
* ПОДГОТОВКА К I-ИМУ ЭТАПУ  В РЕЖМАТ
 СЧ Е48-1(М1)
 ПВ ВШГП(М15)
 СЧ 0
 ЗП ШЗУПР
 СЧИ М1
 СДА 64-30
 ИЛИ ЭТУПР
 ЗП ЭТУПР
 УИА 3
 СЧ БУД3ЭТ
 ЗП БУДУПР
 СЧ NБОБ
 ПВ ПЕРЕВ(М15)
 ЗП NБОБС         NБОБС := N БОБИНЫ В УПП
 ПБ ВЫХОД-У(М7)
 СТРОК 3
*
* ПОД-МА ДОЗАКАЗА ОБЛАСТИ
*      УПРЯТОВАНИЯ
*
ДОБЛУ СЧ ИСДОЗ
 ЗП ИС63
 СЧ КСВВН
 НТЖ  0
 СЧ КЛЮЧАР
 Э63 ИС63
 СДА 64-12
 ЗП НУОБЛУ         НУОБЛУ := ВН ОБЛ. КПР.
 СЧИ М16
 ЗП КОМАРХ        КОМАРХ := КОТ АРХИВА
 ПО (М10)         ДОЗАКАЗ ВЫПОЛНЕН
 НТЖ НЕТТОМ
 ПЕ АВОМАТ        ПРИЧИНА НЕ ПОНЯТНА
*КОТ АРХИВА - ’НЕ УСТ. ТОМ’
 ЗП КОМАРХ         КОМАРХ := 0 ДЛЯ СЛЕД.ЦИКЛА
 СЧ NБОБС
*
 СДА 64-16
 ИЛИ NТОМА
 ЗП NТОМА
 МОДА ТЕКОПТ
 УИА (М15)
 Э71 ИС71
 СЧ БУДОПТ
 Э50 ’7700’
 ПБ ДОБЛУ
 СТРОК 3
* УПРЯТЫВАНИЕ/ВОССТАНОВЛЕНИЕ ЛИСТОВ,ТРАКТОВ
*                            СЕГМЕНТОВ,БУФЕРНЫХ ЛИСТОВ
*
УПРВОС НОП
 ЗП ЧТЗП
 СЧ ИНФОЛ
 ЗП РАБ
 УИА 0(М15)
ЗАПЛИС СЧ Е48М
 СДА 64(М15)
 И РАБ
 ПО СЛЛИСТ
 НТЖ РАБ
 ЗП РАБ
 СЧ ЧТЗП
 ПО УПРМЛ
*  ПЕРЕКЛ.ЛИСТА ПО ТАБЛ.ВИРТ.ЛИСТОВ
 СЧИ М15
 И П3М
 УИ М14           СТОЛБЕЦ
 СЧИ М15
 СДА 64+2
 УИ М5            СТРОКА
 МОДА (М5)
 СЧ ТАБДЛ
 МОДА (М14)
 СД ТАБСД
 И П7777М
 ЗП РАБ2           НОМЕР ВИРТ.ЛИСТА
 СЧИ М15
 НТЖ П37М
 НТЖ РАБ2
 ПО УПРМЛ         В.Л. = М.Л.
 СЧИ М15
 НТЖ П37М
 СДА 64-12
 ИЛИ РАБ2
 Э57 ’601’
УПРМЛ СЧИ М15
 НТЖ П37М
 СДА 64-30
 ИЛИ NЗОНЫ
 ИЛИ НУОБЛУ
 ИЛИ ЧТЗП
 ЗП КУСРАБ
 Э70 КУСРАБ
 СЧ NЗОНЫ
 СЛЦ Е1М
 ЗП NЗОНЫ
СЛЛИСТ СЛИА 1(М15)
 СЧ РАБ
 ПЕ  ЗАПЛИС
* ПЕРЕПИСЬ ТРАКТОВ
 УИА -31(М15)
 ЗП НУБАР         НУБАР :=00
 СЧ АБУФ2
 СДА 64-30
 ИЛИ ЧТЗП
 НТЖ Е40М
 ЗП КУСЧТ
 НТЖ Е40М
 ИЛИ НУОБЛУ
 ИЛИ NЗОНЫ
 ЗП КУСЗП
СЛБАР МОДА ИНФОТ
 СЧ 31(М15)
 ЗП РАБ
 УИА 0(М14)
ПЕРБАР СЧ Е48М
 СДА 64(М14)
 И РАБ
 ПО СЛТРАК
 НТЖ РАБ
 ЗП РАБ
 СЧИ М14
 НТЖ П37М
 ИЛИ НУБАР
 ИЛИ КУСЧТ
 ЗП КУСРАБ
 СЧ ЧТЗП
 ПЕ ВОСЛТ
 Э70 КУСРАБ
 Э70 КУСЗП
ЛИСТР1 НОП
 СЧ КУСЗП
 СЛЦ Е1М
 ЗП КУСЗП
СЛТРАК СЛИА 1(М14)
 СЧ РАБ
 ПЕ ПЕРБАР
 СЧ НУБАР
 СЛЦ Е13М
 ЗП НУБАР
 НТЖ БАР30
 ПЕ НЕ7НАП
 СЧ Е18М
 СЛЦ НУБАР
 ЗП НУБАР         БАР 30->70
НЕ7НАП МОДА СЛБАР
 ЦИКЛ (М15)
* ПЕРЕПИСЬ СЕГМЕНТОВ
 УИА -11(М15)
НАЧСЕГ МОДА 11(М15)
 СЧ УСВЕВН
 И П7777М
 ПО СЛСЕГ
 МОДА 11(М15)
 СЧ УСВЕВН
 И КВЫДВН
 ИЛИ ЧТЗП
 НТЖ Е40М
 ЗП КУСЧТ
 СЧ АБУФ2
 СДА 64-30
 ИЛИ КУСЧТ
 ЗП КУСЧТ
ПЕРСЕГ СЧ ЧТЗП
 ПЕ ЗАПСЕГ
 Э70 КУСЧТ
 Э70 КУСЗП
СЛЗСЕГ СЧ КУСЗП
 СЛЦ Е1М
 ЗП КУСЗП
 СЧ КУСЧТ
 СЛЦ Е1М
 ЗП КУСЧТ
 МОДА 11(М15)
 НТЖ УСВЕВН
 И П7777М
 ПЕ ПЕРСЕГ
СЛСЕГ МОДА НАЧСЕГ
 ЦИКЛ (М15)
* ПЕРЕПИСЬ БУФЕРНЫХ ЛИСТОВ
 СЧ ИНФБДЛ
 ЗП РАБ
 УИА ’37’(М5)
 МОД АБУФ2
 УИА (М15)         ДЛЯ Э53
 УИА 0(М13)        ДЛЯ Э53 ПРИ УПР
 СЧ ЧТЗП
 ПО ПЕРБЛ        УПРЯТЫВАНИЕ
 УИА ’40’(М14)
 СЧ Е2М
 Э53 ’51’          ДЕЛАЕМ БУФ2 В 0 СЕГМЕНТЕ ОЗУ
 УИА 1(М13)        ДЛЯ Э53 ПРИ ВОС.
ПЕРБЛ СЧ РАБ
 ПО ПЕРДЛ
 СЛИА 1(М5)         М5 := *+1 (N БУФ.ЛИСТА)
 СДА 64-1
 ЗП РАБ
 СЧМР
 ПО ПЕРБЛ
 УИИ М14(М5)       М14 := N БУФ.ЛИСТА
 СЧ ЧТЗП
 ПЕ ЗАПБЛ
 СЧ Е2М
 Э53 ’51’
 Э70 КУСЗП
БЫЛБЛ СЧ КУСЗП
 СЛЦ Е1М
 ЗП КУСЗП
 ПБ ПЕРБЛ
* ПЕРЕПИСЬ ДОПОЛИТЕЛЬНЫХ ЛИСТОВ
ПЕРДЛ НОП
 УИА 0(М13)        ПРИЗНАК Э57 ’601’
 УИА 1-LДОП(М15)
 СЧ АБУФ2
 СДА 64-12
 ЗП РАБ1           ИНФОРМАЦИЯ ДЛЯ Э50 175
ЦМОД МОДА LДОП-1(М15)
 СЧ ИНФДЛ
 ЗП РАБ            ОЧЕРЕДНАЯ МОДИФИКАЦИЯ
 СЧ ЧТЗП
 ПЕ ЦПЕРДЛ       ВОССТ
 МОДА LДОП-1(М15)
 СЧ ИНФДОП
 ЗП РАБ
ЦПЕРДЛ СЧ РАБ
 ПО ПРКДЛ
 НЕД П37М
 УИ М14
        счмр
 СДА 64-31(М14)
 ЗП РАБ
 СЧ ШКТП+1
 ПЕ НЕПЕР         ОТКЛ.ЛИСТЫ ЕСТЬ
 СЧИ М14
 И П37М
 НТЖ П37М
 УИ М14            НОМЕР СТОЛБЦА
 УИИ М5(М15)
 СЛИА LДОП-1(М5)
 СЧИ М5
 СДА 64-5
 УИ М5
 СЛИ М5(М14)       НОМЕР ОТКЛЮЧ.ЛИСТА
 СЧИ М5
 ИЛИ РАБ1
 Э57 ’601’         ПЕРЕИМЕНОВАНИЕ ОТКЛ-->АБУФ2
 УИА 1(М13)        БЫЛ Э57 601
 Э70 КУСЗП
НЕПЕР СЧ КУСЗП
 СЛЦ Е1М
 ЗП КУСЗП
 ПБ ЦПЕРДЛ
ПРКДЛ МОДА ЦМОД
 ЦИКЛ (М15)
 МОДА (М10)
 ПИО (М13)         НЕ БЫЛО НИ ОДНОГО Э57 601
 СЧ ЛВИРТ2
 ИЛИ РАБ1
 Э57 ’601’         ПОДАЛ БУФ2 НА МАТЛИСТ
 ПБ (М10)          ВЫХОД
ЗАПБЛ Э70 КУСЗП
 СЧ Е2М
 Э53 ’51’
 ПБ БЫЛБЛ
ЗАПСЕГ СЧ ШКТП+1
 ПЕ СЛЗСЕГ
 Э70 КУСЗП
 Э70 КУСЧТ
 ПБ СЛЗСЕГ
ВОСЛТ СЧ ШКТП+1
 ПЕ ЛИСТР1
 Э70 КУСЗП
 Э70 КУСРАБ
 ПБ ЛИСТР1
*
 СТРОК 3
*
*
* ПОД-МА   Ч Т Е Н И Е  Б.К.
* ВЫХОД : М4  = БАЗА Б.К
*         М5  = АДРЕС ИНФ.О ЗАДАЧИ В  Б.К.
*         РАБ = КУС Б.К
*
ЧТБК СЧ 0
 ПВ ТБУФ(М15)
 УИА 3
 СДА 64-8
 УИ М4            М4 := БАЗА Б.К.
 СДА 64-2
 ИЛИ НОММЛ1
 СЛЦ КУСБК
 ЗП РАБ
 ПВ ЕNQ(М15)
 СЧ РАБ
 ПВ ФИЗОБМ(М16)
 УИА 3
 СЧ NСКВ
 СДА 64-3
 УИ М5
 СЛИ М5(М4)        М5 := АДРЕС ЗАДАЧИ В Б.К.
 ПБ (М14)
 СТРОК 3
*
* ПОД-МА   КОРРЕК. КАТАЛОГОВ И  0-ОГО МАССИВА
* ВХОД : РАБ - КУСБК
*
КОРКАТ СЧ ШКТП
 ПО КОРУП
 СЧ РАБ
 МОДА КОРВЫВ
 УИА (М16)
 ПБ ФИЗЗП          ЗАПИСЬ БК ПРИ КТ
КОРУП УИИ М17(М5)
 СЧ (М10)
 СЧМ 1(М10)
 СЧМ 2(М10)
 СЧМ 3(М10)
 СЧМ 4(М10)
 ЗП (М17)
 СЧ РАБ
 ПВ ФИЗЗП(М16)    ЗАПИСЬ  Б.К.
 СЧ 5(М5)
 И П1777          СМ := ЗОНА МАС0
 СДА 64-24
 СЛЦ НОММЛ2
 ЗП КУСЗП
 СЧИ М4
 СДА 64-2
 ИЛИ КУСЗП
 ЗП КУСЗП         КУСЗП := КУС ЗАПИСИ 0-ОГО МАССИВА
 ПВ ФИЗЗП(М16)    ЧТЕНИЕ 0-ОГО МСССИВА
 УИА 3
* ПЕРЕПИСЬ 5-ТИ ЯЧ.БК В МАС0
 МОДА 2(М4)
 УИА (М17)
 СЧ (М10)
 СЧМ 1(М10)
 СЧМ 2(М10)
 СЧМ 3(М10)
 СЧМ 4(М10)
 ЗП (М17)
 СЧ 8(М4)
 НТЖ НОВБК6
 И П7777
 НТЖ 8(М4)
 ЗП 8(М4)
 СЧ (М11)
 ЗП ЯЧМЛ(М4)
 СЧ 1(М11)
 ЗП ЯЧМЛ+1(М4)
 СЧ (М12)
 ЗП 17(М4)
 СЧ УПРМ0(М4)
 СДА 64+12
 ПЕ СТАРМ         ОСТАВИТЬ ПЕРВЫЙ N МАШ.
 СЧ ГОД
СТАРМ И П7
 СДА 64-12
 ИЛИ NБОБ
 ЗП УПРМ0(М4)
 СЧ КУСЗП
 ПВ ФИЗОБМ(М16)   ЗАПИСЬ  0-ОГО МАССИВА
* КОРРЕКЦИЯ КАТАЛОГА ВЫВОДА
КОРВЫВ УИА 3
 УИА 0(М5)         М5 = 0,НЕТ ЗОН ВЫХОДНО ПОТОКА
 СЧИ М4
 СДА 64-2
 ИЛИ КУС550
 СЛЦ НОММЛ1
 ЗП КУСЧТ
 ПВ ФИЗОБМ(М16)   ЧТЕНИЕ КАТАЛОГА ВЫВОДА
 УИА 3
 СЧ ИПЗ+ЗОНЫ
 СДА 64-8
 ЗП РАБ1
 МОДА ЗВЫВ-1
 УИА (М16)
КОРВЫП СЧ РАБ1
 ПО КОНВЫП
 СЛИА 1(М16)
 СДА 64-10
 ЗП РАБ1
 СЧМР
СЛЗОНА ПО КОРВЫП
 УИ М5
 СЛИ М5(М4)
 СЧ ШКТП
 ПО НЕКТВ
 СЧ (М16)
 ИЛИ ЕУПРВП
 ЗП (М5)          ВОССТ.ПОСЛЕДН.ЗОНЫ ВЫВОДА
 ПБ КОРВЫП
НЕКТВ СЧ (М5)
 ИЛИ ИЛИВЫП
 И ИВЫП
 ЗП (М5)
 СДА 64+11
 И П1777
 ПБ СЛЗОНА
КОНВЫП МОДА НЕТЗОН
 ПИО (М5)
 СЧ КУСЧТ
 ПВ ФИЗЗП(М16)   ЗАПИСЬ КАТАЛОГА ВЫВОДА
НЕТЗОН НОП
 СЧ РАБ
 ПВ DЕQ(М15)
 СЧ РАБ
 ПВ ТБУФ(М15)
 УИА 3
 ПБ (М14)
 СТРОК 3
* ПОД-МА ЧТЕНИЯ/ЗАПИСИ БУФЕРА МАТЕМ.В Э64
* М14
*
ДАЙЭ64 МОДА БУФЭ64
 УИА (М15)
 МОДА УПРЯЧЬ
 УИА (М13)
 Э64 0
 ПБ (М12)
 СТРОК 3
* ПОД-МА ФОРМИРОВАНИЯ ИМЕНИ
* ВХОД: СМ - N ЭВМ
*
ФОРИМЯ И П7
 СДА 64-32
 ИЛИ КИМЯ
 ЗП ИМЯ
 СЧ NСКВ
 СДА 64-41
 РЗБ КРСКВ
 ИЛИ ИМЯ
 ЗП ИМЯ
 ПБ (М17)
 СТРОК 3
* ПОД-МА УВЕЛИЧЕНИЯ КВАНТА
*     НА ЕДИНИЦУ
*
УВКВАН МОД ТУСП-1(М1)
 СЧ КВНЗАД
 СЛЦ Е1
 МОД ТУСП-1(М1)
 ЗП КВНЗАД
 ПБ (М17)
* Р А Б О Ч И Е  Я Ч Е Й К И
РАБ КОНД В’0’
РАБ1 КОНД В’0’
РАБ2 КОНД В’0’
ИЛИВЫП КОНД В’0’
ИВЫП КОНД В’0’
ЧТЗП КОНД В’0’
NЗОНЫ КОНД В’0’
ЗОНАМ0 КОНД В’0’
КУСРАБ КОНД В’0’
КУСЧТ КОНД В’0’
КУСЗП КОНД В’0’
НУБАР КОНД В’0’
НУОБЛУ КОНД В’0’
КОМАРХ КОНД В’0’          КОД ОТВЕТА МАТ.ОТ АРХИВА
NБОБС КОНД В’0’
NБОБ КОНД В’0’
ФИЗАЛМ КОНД В’0’
СМЕОЛ КОНД В’0’
АДРОЛ КОНД В’0’
ЗОНВВ ПАМ 1
ШКТП ПАМ 2
*
* К О Н Т А Н Т Ы
ТЕКРАЗ КОНД П’0РАЗМЕ’М47В’1’
 КОНД П’Р ОБЛ.’
 КОНД П’УПРЯТЫ’
 КОНД П’ВАНИЯ ’
ТЕКL КОНД П’000000’М40В’143’М32В’143’
 КОНД П’ ЗОН↑0’
ТЕККЗ КОНД П’ L=’М40В’143’М32В’143’М24В’143’
СТРЕЛА КОНД П’0000↑0’
Е22Е21 КОНД М20В’3’
КУСБК КОНД М24В’446’М17В’1’
КУС550 КОНД М24В’450’М17В’1’
КУСОЛ КОНД М24В’7770’М17В’1’
НЕЭВМ КОНД В’-1’М39В’7’
УПРЯЧЬ КОНД П’УПРЯЧЬ’
ЛИСТУП КОНД В’50’
НЕТЛТ КОНД В’-1’М20В’777777’
Е32П1 КОНД В’-1’М32В’-1’
Е16П1 КОНД В’177777’
Д12 КОНД В’14’
БАР30 КОНД М12В’30’
МИ21 КОНД М15В’2003’
ПРИЧУП КОНД В’103’
КОНКВА КОНД М47В’1’М8В’7’В’102’
КНСБР КОНД П’00    ’
КНРЗБ КОНД П’007777’
ВРЕМЯ КОНД В’6041’
КРСКВ КОНД М16В’1’М8В’7’В’7’
НОВБК6 ПАМ 1
* К О Н С Т А Н Т Ы   М А Т Е М А Т И К А
КЛЮЧАР КОНД П’КЛЮЧАР’
КИМЯ КОНД П’Э0К000’
ИС63 КОНД В’0’           Н  Р  Д  Я   !
ИМЯ КОНД В’0’           Е  А  Е  Т   !
 КОНД М24П’   ’Х’16’    З  Л  Ь   !
ИСДОЗ КОНД М42В’12’В’1’
ИСУНОУ КОНД М42В’2’В’1’
Е48М КОНД М47В’1’
Е40М КОНД М39В’1’
Е18М КОНД М17В’1’
Е13М КОНД М12В’1’
Е2М КОНД В’2’
Е1М КОНД В’1’
Е42П37 КОНД М36В’77’
П3М КОНД В’3’
П37М КОНД В’37’
КСВВН КОНД М16В’-1’
КВЫДВН КОНД М12В’77’
П7777М КОНД В’7777’
КУСЧЛУ КОНД М39В’1’М30В’36’
КУСЧ1З КОНД М39В’1’В’1’
ТАБСД КОНД М41В’144’ ------------
      КОНД М41В’130’     НЕ
      КОНД М41В’114’ РАЗДЕЛЯТЬ !
      КОНД М41В’100’ ------------
БУДОПТ КОНД В’1200’
ИС71 КК ’220’,(М15)
 КК ’100’,7(М15)
ТЕКОПТ КОНД П’1ДЛЯ У’
 КОНД П’ПР/ВОС’
 КОНД П’ УСТ.С’
 КОНД П’РОЧНО ’
 КОНД М16П’ТОМ ’М8В’143’В’143’
NТОМА КОНД П’0000↑0’
*
НЕТТОМ КОНД В’12’         НЕ УСТАНОВЛЕН ТОМ
НЕТМЕС КОНД В’22’         НЕТ МЕСТА НА ТОМЕ
*
* В Н Е Ш Н И Е
ДИСП70 ВНЕШ ТУС,УПРЯТ,ТЕРЕЗА,ПОДЧ,И,ШККЗ,АХ
ДИСП70 ВНЕШ БУДУПР,ЭТУПР,ТВ40,БЛИСКН
ДИСП70 ВНЕШ ЗАХЗАН,ГАШЗАН,П3777,П37,КСО
ДИСП70 ВНЕШ ЗАПВЕТ,Ш1,П77777,Е48П9,ИНФ
ДИСП70 ВНЕШ П3,П5,П6,П7,П17,П77,П7777,НОММЛ1,НОММЛ,УКАЗД
ДИСП70 ВНЕШ П777,П1777,ШЗН,НОММЛ2,ВИСП15
ДИСП70 ВНЕШ ПРИП,Е48П7,ПРМЗОН,ЗАНПРП
ДИСП70 ВНЕШ ГОД,ШКВОС,Е24П1,СОБА40,Е15П11
ДИСП70 ВНЕШ ТЗНМЛ,ТЗНМД,ОБЩТОМ,Е46П48,ОБЩМЛ
ДИСП70 ВНЕШ ИНФСЛП,АВОСТА,АВОС,МАСГЛ,СОБЫТ,ШПЭГ
ДИСП70 ВНЕШ ШИФРМ,ЯЧКУПР,ЕКУПР,ЯЧИУПР,ЕИУПР,ПЕРЕВ
ДИСП70 ВНЕШ МГРП,ВСЕЕД,МЧПЗ,НПЗ,ШЗУПР,ШККТ,ЯЧБКИО,ЕКТ
ВИСП ВНЕШ ВШГП
ДИСП70 ВНЕШ ЗОНЫ,ЕУПРВП,ЕСТОП
ДИСП70 ВНЕШ ТУСП,ШГ,ТСЛ,КВНЗАД,ТБУФ
ДИСП70 ВНЕШ Е41П1,П17777,П37777
*
БОП1 ВНЕШ ЕТЕЛ
*
БОЭК1 ВНЕШ ЗАПВЫХ,Л
*
ДИСКИ ВНЕШ КТОМ,КТОМЛ,ЕNQ,DЕQ
*
ВЗУ ВНЕШ ФИЗЗП,ФИЗОБМ
*
*
КАЧКА ВНЕШ ШКРЗ,Е48П17
КИТ ВНЕШ Е48П42
*
В3В4 ВНЕШ УПРМ0
*
СОСТАВ ВНЕШ ТОП,ТБДТР,ТБДМБ,ТБД,ВР,ЯЧТОП,ЕБУФЛ
СОСТАВ ВНЕШ СДТ,ЯЧЧТР,ЯЧЧАВ,ЯЧВР,ЛИСТМБ,АРХМЛ
СОСТАВ ВНЕШ ЯЧТР,ЯЧЛИС,СДЛИ,МДР,ШЗНМБ,ССТБД
СОСТАВ ВНЕШ ЕОБМ,ЯПЭ74,СДВМЛ,ЕОТКЛ
ГЕНС1 ВНЕШ ВИОЛПМ,КВВЛМ
ХЛАМ ВНЕШ УПРИ
УПРЯЧЬ ВНЕШ (У,УПРЯЧЬ),НЕТ,NЗАДМ
УПРЯЧЬ ВНЕШ СОХЛУ,ОТКЛУ,ВЫХОД,ВЫХД,ИЗКВКЛ
УПРЯЧЬ ВНЕШ КОТАРХ,СТПАС
УПРЯЧЬ ВНЕШ РЯУПР,КВИПЗ,ВХКТ,УПЛ
*
ТУПР ВНЕШ ЧПУПР,ТЕКЛИС,АРХ,ВНЗАН
*
ДИСП70 ВНЕШ СТ175
МОТТ ВНЕШ ИСКУС
*
*    Э К В И В
 ЭКВИВ (БУД1ЭТ,Е10),(БУД3ЭТ,Е10)      ИЗМЕНИТЬ
 ЭКВИВ (СБОЙ,65)
 ЭКВИВ (ЯЧМЛ,10),(ЗАЩ,28)
*      В Х О Д
 ВХОД НАЧУПР,ДЕШЭТ,РАБ,NСКВ,NЭВМУП,ИНФАРХ
*КОНЕЦ ЧАСТИ
