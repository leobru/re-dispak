ПРИК6 СТАРТ ’21000’
 УПОТР ПРИК6(М1)
 М
 Е
 Б
*
* Д Е Ш И Ф Р А Т О Р
*
 СЛИА -’37’(М2)
 УИА 3
 МОДА НОТ
 ПИО (М2)         НОТ
*
 СЛИА -1(М2)
 МОДА ПУЛ
 ПИО (М2)         ПУЛ
*
 СЛИА -3(М2)
 МОДА НУС
 ПИО (М2)         НУС
*
*
*
*      Д И Р Е К Т И В А  N 42
*      -----------------------
*
*         ПОД <N ПРОГР.КАНАЛА>
*         ТР5 = <N ПРОГР.КАНАЛА>
*
ПОД МОДА NПРКАН-П(М7)
 ПВ (М17)
 СДА 64-20
 ЗП П6РЯ
 МОД НОМУС1
 УИА (М3)
 МОДА ТНЕТ-П(М7)
 ПИО (М3)
 СЧ ШЗНКТ
 И Е48-1(М3)
 ПЕ ТНЕТ-П(М7)
 УИА 1027
 СЧ Е48-1(М5)
 НТЖ ЕЗАР
 ПЕ НАРХ
 СЧ Е1
 ПБ ЭТАР
НАРХ СЧ ЧПТ(М14)
 И П77
ЭТАР ЗП П6РЯ1
 СЧ ТЕРЕЗА(М14)
 ЧЕД 0
 нтж П6РЯ1 на СВС: ВЧ
 ПО ТНЕТ-П(М7)
 СЧ ТСЛ-1(М3)
 И О26П21
 ИЛИ П6РЯ
 ЗП ТСЛ-1(М3)
 СЧ ТЕРЕЗА(М14)
 ИЛИ Е48-1(М3)
 ЗП ТЕРЕЗА(М14)
 СЧ ШЗНКТ
 ИЛИ Е48-1(М3)
 ЗП ШЗНКТ
 СЧИ М5
 ИЛИ Е36
 ПВ ЗАПВЕТ(М16)
 УИА 3
 ПБ ТВЫП-П(М7)   С:ЕСТЬ
*
*      Д И Р Е К Т И В А  N 43
*      -----------------------
*
*         НУС [<N ТЕРМ> <ТИП>]
*            ТР5 = <N ТЕРМ>
*            ТР4 = <ТИП ТЕРМ>
*
*            ТИП ТЕРМ: 0 --> VТ-340,ТТ,СОNSUL
*                      1 --> ЭЛЕКТРОНИКА
*                    2 --> РИН’Ы
*                   3 --> VDТ 52129, 52130
*
НУС СЧ ТР5-П(М7)
 ПЕ НУС1
 СЧ НОМУС1
 ПО ВЫБ          ОТСУТСТВ.N ТЕРМ  С:!
НУС1 УИ М16
 ЗП NТ
 ВЧОБ П60
 ПЕ НУС8         С:Т>60
*------ ФОРМ.КОНСТАНТУ ГАШЕНИЯ
 СЧ Е48-1(М16)
 НТЖ ВСЕЕД
 ЗП РЯ1П6
 ЗП ФЛАГ         ПРИЗН: 1-НОРМ.ПОДКЛ. ПО НУС
*------ НУС ДЛЯ ОТБРАК.ТЕРМИНАЛА
 СЧ ШКУСТР
 ИЛИ ШКАС
 И Е48-1(М16)
 ПО НУС2А        ТЕРМ ОТБР: РЕЖ.НЕ ГАСИМ
*
*
 СЧ ШКОПТТ
 МОД НОМУС1
 И Е48-1
 ПЕ НУС1А        ТЕРМИНАЛ ОПЕРАТОРА
*
*------ ДОПУСК ПОЛЬЗ-ЛЮ НА ДИР-ВУ НУС ------*
*
 СЧ NТ
 НТЖ НОМУС1
 ПО НУС1А        ПОЛЬЗ: "НУС" ОNLУ WIТН ОWN ТЕRМ.
 ПБ ВЫБ          С: !
*
НУС2А ЗП ФЛАГ         ПРИЗН: 0-АВТОМ.ПОДК.ТЕРМ
 уиа 1027
	сч	ТСЛ-1(М16)
	и	Е18П1
	зп	ТСЛ-1(М16)
 ПБ A21057 СВС: НУС2
НУС1А СЧ ТР4-П(М7)
 УИ М6
 уиа 1027
 ПЕ НУС3А        ИЛИ Э ИЛИ РИН
 СЧ ТР5-П(М7)
 ПО A21057 СВС: НУС2 НЕ ОТМ.РЕЖ. ПРИ АВТОМАТ.ПОДКЛЮЧ.
*
*------ ГАШЕНИЕ РЕЖИМОВ ------*
*
 УИА -2(М15)
* УИА 1027
НУС1АА СЧ ШНР+2(М15)
 И РЯ1П6
 ЗП ШНР+2(М15)
 МОДА НУС1АА
 ЦИКЛ (М15)
* УИА 3
A21057	сч	ШЗПРИМ
	или	Е48-1(М16)
	нтж	Е48-1(М16)
	зп	ШЗПРИМ
*
*      *--- Е N D ---*
*
МОТТ ВНЕШ ШНР,ШVD130,ШРИН
*
НУС2 СЧ ШКАС
 И Е48-1(М16)
* ПБ НУС10
	пе	НУС10
	сч	D77000
	и	Е48-1(М16)
	уиа	0(М6)
	пе	A21065
	уиа	2(М6)
A21065	сч	ТСЛ-1(М16)
	и	E17
	по	A21126
	мода	ВЫБ
	пио	(М6)
	пб	A21132
НУС3А СЧ ТР4-П(М7)
 НТЖ Е1
 ПЕ НУС3Б        НАВЕРНО РИН
 СЧ ШНР
 ИЛИ Е48-1(М16)
 ЗП ШНР
*
****** ГАШЕНИЕ VDТ, РИН
 СЧ ШVD130
 И РЯ1П6
 ЗП ШVD130
 СЧ ШРИН
 И РЯ1П6
 ЗП ШРИН
НУС7 СЧ ШКАС
 И Е48-1(М16)
 ПО НУС8
*    == УСТ.ТИП ТЕРМ.В "ТАБТИП" ==
 СЧ ТСЛ-1(М16)
 СДА 64+АТ
 СЛЦ П30
 УМН Д1НА12
 УИ М16          N СТРОКИ "ТАБТИП"
 СЧМР 64
 УМН УП60
 УИ М15
 СЛИА -3(М15)      N ПОЗИЦ. (4 РАЗР.) В ДАННОЙ СТРОКЕ
*
 СЧИ М15
 ВЧОБ Е7
 УИ М15          ДОПОЛН.КОД: СДВИГ ВПРАВО
*
 СЧ ТР4-П(М7)
 СДА (М15)
 ЗП РЯ1П6
 СЧ П17
 СДА (М15)
 НТЖ ВСЕЕД
 И ТАБТИП(М16)
 ИЛИ РЯ1П6
 ЗП ТАБТИП(М16)
НУС8 УИА 3
 СЧ ФЛАГ
 ПО A21156 СВС: НУС11        ВЫДАТЬ ПРИВЕТ
 ПБ ТВЫП-П(М7)
НУС3Б НТЖ Е2
 ПЕ НУС3В        ЭТО РИН
 СЧ ШVD130
 ИЛИ Е48-1(М16)
 ЗП ШVD130
 СЧ ШНР
 ИЛИ Е48-1(М16)
 ЗП ШНР
*
 СЧ ШРИН
 И РЯ1П6
 ЗП ШРИН
*
 ПБ НУС7
****** ИДЕНТИФИКАЦИЯ "РИН’А"
НУС3В СЧ ШРИН
 ИЛИ Е48-1(М16)
 ЗП ШРИН
*
****** ГАШЕНИЕ VDТ И НР
 СЧ ШНР
 И РЯ1П6
 ЗП ШНР
 ПБ ТВЫП-П(М7)
******
A21126  уиа     '2003'
        сч      ТСЛ-1(М16)     
        или     E16
        мода    A21131
        пио     (М6)
        нтж     E16
A21131  зп      ТСЛ-1(М16)
A21132  сч      
        зп      Р
        сч      D76776
        и       Е48-1(М16)      
        по      НУС9
        мода    A21150
        уиа     0(М15)
        сч      ШКУСТР
        или     Е48-1(М16)      
        зп      ШКУСТР
        мода    A21141
        пио     (М6)
        сч      Е48-1(М16)      
        зп      Р
A21141  сч      ШКАЛ
        или     Е48-1(М16)      
        нтж     Р
        зп      ШКАЛ
        сч      D77000
        или     Е48-1(М16)      
        нтж     Р
        зп      D77000
        сч      D77001
        или     Е48-1(М16)      
        нтж     Е48-1(М16)      
        зп      D77001
        слиа    -1(М16)
        пб      '76530'
A21150  слиа    1(М16)
        пб      НУС7
****** 
НУС9 МОДА РАСПNТ
 ПВ (М16)
 УИА ТНОТ2-П6(М16)  С:<ТЕРМ> НЕ ПОДКЛ.
 ПБ КОНВЫД-П(М7)
 УИА 1027
НУС10 ноп
* СЧ ШЗПРИМ
* ИЛИ Е48-1(М16)
* НТЖ Е48-1(М16)
* ЗП ШЗПРИМ
 УИА 3
 УИА ТНУС-П6(М16)
 ПБ КОНВЫД-П(М7)  С: АС
A21156	сч	НОМУС1
	зп	D21356
	сч	'1327'(М7)
	по	НУС11
	зп	НОМУС1
	уиа	ММГРП(М16)
	мода	'720'(М7)
	пв	(М17)
	сч	D21356
	зп	НОМУС1
	уиа	'355'(М16)
	пб	'717'(М7) 
НУС11 УИА ТЗДРАВ-П6(М16) С: ЗДР-ТЕ! ОС ДИСПАК <N>ВЕРСИИ
 ПБ КОНВЫД-П(М7)
ВЫБ УИА ЧУРКА-П6(М16)  С:!
 ПБ КОНВЫД-П(М7)
*
*
*
*    Д И Р Е К Т И В А  N 37
*    -----------------------
*
*         НОТ [<N ТЕРМ>]
*          ТР5 = <N ТЕРМ>
*
НОТ СЧ 0
 ЗП NТ
 СЧ ТР5-П(М7)
 ЗП Р
 МОДА ПРОВЕР
 ПВ (М17)
 СЧ НОМУСД
 ПО ТВЫП-П(М7)    С: ЕСТЬ
 УИА НОМУСД(М15)
 УИА ВСТНОМ-П6(М16)
 УИА ЗПНОМД-П6(М17)
 ПБ БЛО
ВСТНОМ СЧ НОМУС
 ИЛИ РЯ1П
 НТЖ РЯ1П
 ИЛИ Р
 ЗП НОМУС
 ПБ СДВИГ
ЗПНОМД СЧ НОМУСД
 НТЖ НОМУС
 ПЕ ТВЫП-П(М7)
 ЗП НОМУСД
 ПБ ТВЫП-П(М7)
*
НОТ1 УИА ТНОТ1-П6(М16)  С:NТ>0
 ПБ КОНВЫД-П(М7)
НОТ2 МОДА РАСПNТ
 ПВ (М16)
 УИА ТНОТ2-П6(М16)
 ПБ КОНВЫД-П(М7)
НОТ3 МОДА РАСПNТ
 ПВ (М16)
 УИА ТНОТ3-П6(М16)
 ПБ КОНВЫД-П(М7)  С: ТЕРМ. НЕ ОПЕР
*
*
*      Д И Р Е К Т И В А  N 40
*      -----------------------
*
*      ПУЛ С КАКОГО N> <НА КАКОЙ N>
*         ТР5=<НА КАКОЙ >
*         ТР4=<С КАКОГО N>
*
ПУЛ СЧ ТР4-П(М7)
 И Е48
 ПЕ ПУЛЭ         ПЕРЕВОД НА ЭВМ,УСТ-ВО
 ЗП NТ
 СЧ ТР4-П(М7)
 ЗП Р
 МОДА ПРОВЕР
 ПВ (М17)
 СЧ 0
 ЗП NТ
 СЧ ТР5-П(М7)
 МОДА ПРОВЕР
 ПВ (М17)
 УИА (М6)
 СЧ НОМУСД
 ПЕ БЫЛАЗП
 СЧ НОМУС
 ЗП НОМУСД
ОСВ УИА НОМУС(М15)
 УИА ОСВ1-П6(М17)
 УИА ЗАМЕНА-П6(М16)
 ПБ БЛО
*
*
ОСВ1 МОДА ТВЫП-П(М7)
 ПИНО (М6)
 ЗП НОМУСД
 ПБ ТВЫП-П(М7)
БЫЛАЗП УИА 1(М6)
 ПБ ОСВ
ЗАМЕНА СЧ (М15)
 ИЛИ РЯ1П
 УИА 1(М6)
 НТЖ РЯ1П
 ИЛИ NТ
 ЗП (М15)
 ПБ СДВИГ
*
*
*      ПУЛ. ПЕРЕВОД ЛИСТИНГА НА ЭВМ,АЦПУ  N 40
*      ---------------------------------------
*
*         ТР5 = <ШИФР>
*        1-3РР ТР4 = <N АЦПУ>; А0=Е1; А1=П3
*        4-6РР ТР4 = <N ЭВМ>;
*
*
ПУЛЭ	сч	ШКЗЗП(М7)
	и	П3
	нтж	E2
	по	'434'(М7)
 СЧ КУСТК СВС: метка ПУЛЭ была здесь
 ЗП КУС-П(М7)
 СЧ 0
 ПВ ТБУФ(М15)
 УИА 3
 СДА 64-8
 УИ М2
 СДА 64-2
 ИЛИ НОММЛ1
 СЛЦ КУС-П(М7)
 ЗП КУС-П(М7)
 ПВ ЕNQ(М15)
 СЧ КУС-П(М7)
 ПВ ФИЗОБМ(М16)
*
 СЧ ТР4-П(М7)
 СДА 64-7
 И Е13П8
 ЗП РЯ1П6
*
*
 УИА 1(М4)
 УИА (М5)         ПРИЗН: ШИФР НЕ НАЙДЕН
 УИА -8(М15)      ПОИСК ПО ВСЕМ КЛАССАМ
*
*
*------ ПРОСМОТР И ИЗМЕНЕНИЕ ОЧ.НА БУФ.ВЫВОДА ------*
*
ПУЛЭУС МОДА (М2)
 СЧ ОЧКЛ+8(М15)
 И Е48П37-1(М4)
 ПО ПУЛЭУ2       НА СЛЕД.КЛАС
 СД КСД1-1(М4)
ПУЛЭУ0 УИ М3
 НТЖ ТР5-П(М7) СВС: сначала СЛИ, потом НТЖ
 СЛИ М3(М2)
 ПО ПУЛНОЧ        СОВПАЛ НОМЕР ПО НОМВ
 И Е48П25
 ПО ПУЛЭУ1        ЭТО НЕ ШИФР,А ИДЕНТИФ.
 СЧ ШОЧ(М3)
 НТЖ ТР5-П(М7)
 И Е48П25
 ПЕ ПУЛЭУ1       ШИФР НЕ СОВПАЛ
ПУЛНОЧ СЧ ШОЧ(М3)
 И Е14
 ПЕ ПУЛЭУ1       ПОЗДНО !... УЖЕ ИДЕТ ВЫДАЧА
*
 СЛИА 1(М5)
 СЧ ШОЧ(М3)
 ИЛИ Е13П8
 НТЖ Е13П8
 ИЛИ РЯ1П6
 ЗП ШОЧ(М3)
ПУЛЭУ1 СЧ ШОЧ(М3)
 И П177
ДИСП70 ВНЕШ ТУСП
 ПЕ ПУЛЭУ0       ОТН.АДР.СЛЕД.ЭЛЕМЕНТА ОЧЕРЕДИ
ПУЛЭУ2 МОДА ПУЛЭУС
 ЦИКЛ (М15)
*
*----------------
*
 МОДА КОНЦ1А-П(М7)
 ПВ (М12)
 СЧ НОММЛ1
 ПВ DЕQ(М15)
 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
 МОДА ТНЕТ-П(М7)
 ПИО (М5)
	уиа	'2003'
	сч	ШКИВ
	зп	ШКИВ
	уиа	'3'
 ПБ ТВЫП-П(М7)
*
*      ОБЩ. БЛОК ДЛЯ ПУЛ И НОТ
*      -----------------------
*
БЛО СЛИ М17(М1)
 СЛИ М16(М1)
 СЧ П77
 ЗП РЯ1П
ЦИКЛ СЧ (М15)
 И РЯ1П
 НТЖ Р
 ПО (М16)
СДВИГ СЧ РЯ1П
 СДА 64-6
 ЗП РЯ1П
 СЧ Р
 СДА 64-6
 ЗП Р
 СЧ NТ
 СДА 64-6
 ЗП NТ
 ПЕ ЦИКЛ
 ПБ (М17)
*
РАСПNТ СЧ NТ
 СДА 64-42
 РЗБ =П’007700’
 ИЛИ ТНОТ
 ЗП ТНОТ2
 ЗП ТНОТ3
 ПБ (М16)
*
*
ПРОВЕР ПО НОТ2
 ЗП NТ
 ВЧОБ П60
 ПЕ НОТ1
 СЧ ШКАС
 ИЛИ ШКУСТР
 МОД NТ
 И Е48-1
 ПО НОТ2
 СЧ ШКОПТТ
 МОД NТ
 И Е48-1
 ПО НОТ3
 ПБ (М17)
*
*
*
*
NТ КОНД В’0’
РЯ1П КОНД В’0’
Р КОНД В’0’
ФЛАГ ПАМ 1
О26П21 КОНД В’-1’М20В’77’
Д1НА12 КОНД В’4001252525252525’
УП60 КОНД В’4000000000000060’
Е13П8 КОНД М7В’77’
Е18П1 конд	в'0000000000777777'
КУСТК КОНД М24В’450’М17В’1’
ТНОТ КОНД М8П’2Т00 ’В’143’
ТНОТ1 КОНД П’2Т>60↑’
ТНОТ2 КОНД В’0’
 КОНД П’НЕ ПОД’
 КОНД П’КЛЮЧ.↑’
ТНОТ3 КОНД В’0’
 КОНД П’ПОЛЬЗО’
 КОНД П’ВАТЕЛЬ’
 КОНД П’СКИЙ↑ ’
ТНУС КОНД П’7АС↑  ’
ТЗДРАВ КОНД П’7ЗДРАВ’
 КОНД П’СТВУЙТ’
 КОНД П’Е! ОС ’
 КОНД П’ДИСПАК’
 КОНД П’ 117 В’
 КОНД М8П’ЕРСИЯ’В’377’
 конд	п'7ЕСТЬ↑' СВС: !
D21356 пам 1
ЧУРКА КОНД П’7!↑   ’
*
 ЭКВИВ (ЕVТ,Е16),(ЕСNS,Е17),(ЕЗАР,Е17)
 ЭКВИВ (ОЧКЛ,’1664’),(ШОЧ,’1675’),(РЯ1П6,РЯ1П)
 ЭКВИВ (П6,ПРИК6),(П6РЯ,NТ),(П6РЯ1,РЯ1П)
ПРИКАЗ ВНЕШ (ТНЕТ,ПНЕТ),КУС,КОНЦ1А,ТР4,ТР5
ПРИКАЗ ВНЕШ ТВЫП,КОНВЫД
ПРИКАЗ ВНЕШ NПРКАН,(П,ПРИКАЗ)
МОТТ ВНЕШ ШКАС,ШКУСТР,ШКОПТТ,НОМУС,НОМУСД
МОТТ ВНЕШ НОМУС1,ШКАЛ
МОТТ ВНЕШ ШЗПРИМ,ШЗНКТ,D77000,D76776,D77001
ДИСП70 ВНЕШ ТСЛ,ТУС,ЗАПВЕТ,ТЕРЕЗА
ДИСП70 ВНЕШ НОММЛ1,ТБУФ,Е48П37,КСД1,П177,Е48П25,П7
ДИСП70 ВНЕШ ВСЕЕД,П17,ТАБТИП,П30,ШКИВ,ШКЗЗП,П3
КИТ ВНЕШ ММГРП
ВЗУ ВНЕШ ФИЗОБМ
ДИСКИ ВНЕШ ЕNQ,DЕQ
КАЧКА ВНЕШ ШКРЗ
СОСТАВ ВНЕШ ЧПТ,АТ
ДИСП70 ВНЕШ П77,П60
