ЭК6    СТАРТ ’10000’
  УПОТР ЭК6-768(М7)
 Е
 М
Э202 НОП
 СЧ (М3)
 УИ М5            М5:= N ПРИЧИНЫ(N КОТ-А АРХИВА)
 СДА 64+47
 УИ М4            М4 =0 - ДАЙ ПРИЧИНУ АВРАСП-А
 УИА ТЕКАРХ-ТУПР(М11)
 ПЕ Э202А         ДАЙ КОТ АРХИВА
 УИА РАСПЕЧ-АВРАСП(М11)
 МОДА Э202А
 ПИО (М5)          ПРИЧИНА КЗ
 СЛИА -13(М5)
Э202А СЧ 0
 ПВ ТБУФ(М15)
  УИА 3
 СДА 64-8
 УИИ М10(М5)
 СЛИ М10(М5)
 СЛИ М10(М5)       М10 := N*3
 УИ М5
 СДА 64-2
 ИЛИ НОММЛ1
 МОДА (М4)
 СЛЦ КУС202
 МОДА ПР30-Э(М7)
 ПВ (М6)          ЧТЕНИЕ ЗОНЫ
 МОДА КНЦ-Э(М7)
 УИА (М15)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 СЧИ  М10
 И П1777
 УИ М10           ЧТОБЫ НЕ ПЕРЕПИСАТЬ ’НЕНУЖНОЕ’
 СЛИ М10(М11)
 СЛИ М10(М5)
 УИА 58(М6)        М6 - АВОСТ ’ЛИСТ В ЭК.ЧУЖОЙ’
 МОД 9(М3)
 УИА (М17)
 УИА -2(М16)
ПЕРЕ СЧ (М10)
 УИА 0
 ЗП (М17)
 УИА 3
 СЛИА 1(М10)
 МОДА ПЕРЕ
 ЦИКЛ (М16)
 ПБ КОНЕЦ-Э(М7)
Э204 СЧ (М3)
 УИА 1027
 ПЕ УБР
 СЧ ЯЧСLС(М3)
 ИЛИ ЕСLС
СМИ ЗП  ЯЧСLС(М3)
 ПБ Э105Г-Э(М7)
УБР СЧ ВСЕЕД
 НТЖ ЕСLС
 И ЯЧСLС(М3)
 ПБ СМИ
Р1 ПАМ 1
Р2 ПАМ 1
 ПАМ 1   ЗАНЯТА ГЕНС
*
Э205 НОП ПЕЧАТЬ В ПЗ ОТ ИМЕНИ ГЗ
*
* СМ : 6 - 1 Р - НОМЕР КАНАЛА ПЗ
* М15 : АДРЕС НАЧАЛА ИНФОРМАЦИИ В ГЗ ДЛЯ
*       ПЕЧАТИ В ПЗ
*
* РЖА 3
 СЧ (М3)
 УИ М5
        ВЧ      МИНЗ
        ПЕ      ЧЛ-Э(М7)
        ВЧ      МАКЗ
        ПО      ЧЛ-Э(М7)
 СЧ ОСПОД
 И Е48-1(М5)
 ПО НЕОСТ2   ПЗ НЕ ОСТАНОВЛЕНА
 И ПОДЧ(М3)
 ПО НЕОСТ2   ЧУЖАЯ ПЗ
 СЧ 9(М3)
 УИ М11
	мода	НЕОСТ3
	уиа	(М15)
	счи	М15
	мода	0
	пв	ЗАПВЫХ(М15)
 УИА 1-ЧСЛОВ(М15)
ПЕРС НОП
 УИА 0
 МОДА (М11)
 СЧ ЧСЛОВ-1(М15)
 УИА 3
 МОДА СТРОКА
 ЗП ЧСЛОВ-1(М15)
 МОДА ПЕРС
 ЦИКЛ (М15)
 СЧ ИЗАХВ(М7)
 ЗП Р1
 СЧИ М5
 ИЛИ ЕЗП
 ЗП ИЗАХВ(М7)
 СЧИ М7
 СДА 64+5
 ЗП 31(М7)
 Э64 ПЧ-ЭК6+1792
 СЧ Р1
 ЗП ИЗАХВ(М7)
* СЧ П77777
 ПБ НОРМА-Э(М7)
*НЕОСТ СЧ Е1
* ПБ Э105Г-Э(М7)
НЕОСТ2 СЧ Е2
 ПБ Э105Г-Э(М7)
НЕОСТ3 СЧ Е3
 ПБ Э105Г-Э(М7)
*
Э206 НОП  ВЫДАЧА НОМЕРА КАНАЛА ПО ШИФРУ
*  СМ : ШИФР В 2 - 10 ВИДЕ
*
        уиа     3
 СЧ ШКРЗ
ПШФ НОП
 ЗП Р1
 ПО Э105Г-Э(М7)
 НЕД 0
 УИ М16
 МОД ТУСП-1(М16)
 УИА (М15)
 СЧ ШИФРМ(М15)
 НТЖ (М3)
 ПО НАШ
 СЧ Е48-1(М16)
 НТЖ Р1
 ПБ ПШФ
НАШ НОП
 СЧИ М16
 ПБ Э105Г-Э(М7)
*
Э207 НОП  ДАЙ КАНАЛ ГЗ
*
 СЧ ДС(М3)
 СДА 64+21
 И П77
 ПБ Э105Г-Э(М7)
*
Э210 НОП 0
 СЧ (М3)
 И П77
 ЗП Р1
	вч	П30
	пе	ЧЛ-Э(М7)
	вч	E6
	по	ЧЛ-Э(М7)
	сч	Р1
	и	E1
	сда	64-2
 УИ М16
 СЧ Р1
 ВЧ П30
 СДА 64+1
 УИ М15
 СЧ УКАЗД(М3)
 МОД Р1
 И Е32-24
 ПЕ НЕОСТ2
 МОДА (М15)
 СЧ ШЗНМБ(М3)
 СДА 64+8(М16)
 ЗП Р1
 И П3
 ПО НЕОСТ3
 НТЖ П3
 СДА 64-4
 УИ М16
 СЧ Р1
 СДА 64+2
 УИ М15
 МОДА (М15)
 СЧ ОБЩТОМ(М3)
 СДА 64(М16)
 И П77
 УИ М15
 СЧ ТЗНМЛ-24(М15)
 И Е13
 ПЕ ЕС
 СЧ ТЗОНМЛ-24(М15)
 И Е24П1
 ВЧ Е16Е4
 ПО ФЗОНА
 СЧ 0    ПРЕДЗОНА
ФЗОНА НОП
 СДА 64+1
 И О12
 ИЛИ Е48
 ПБ Э105Г-Э(М7)
ЕС НОП 0
* СЧИ М15
* ЗП 2(М3)          РМР := N УСТ-ВА
 СЧ П3
 ПБ Э105Г-Э(М7)
*
Э211 НОП .          ВЫДЕЛЕНИЕ ЛОГ.N СВЯЗНЫМ ЛИНИЯМ
        уиа     3
 СЧ ШСВЯТ
 ПЕ Э105Г-Э(М7)
 ЗП Р1
 ПРЕ 1027
 СЧ СЛОN
 ЧЕД 0
 СДА 64+1
 ПО ЧЛ-Э(М7)      ОСТ.< 2-Х ЛОГ.N
 СЧ ЛИНСББ
 ПО Э105Г-Э(М7)   НЕТ ПАРАМ.ГЕН.
 НТЖ ЛИНСББ+1
 ЗП ЛИНСББ+1
 УИА -1(М4)
ЗСТ НОП
 СЧ СЛОN
 НЕД
 УИ М16
 СЧ СЛОN
 НТЖ Е48-1(М16)
 ЗП СЛОN
 МОД ЛИНСББ+1(М4)
 УИА (М17)
 СЧ 0
 ЗП ЛИНСББ+1(М4)
 СЧИ М16
 ИЛИ ЕVТ
 ЗП ТАС(М17)
 СЧИ М17
 СДА 64-АТ
 ИЛИ ЕVТ
 ЗП ТСЛ-1(М16)
 СЛИА -1(М16)
 СЧ Е48(М16)
 ИЛИ ШКАС
 ЗП ШКАС
 ПВ ПИЛОТ(М15)    РАБОТУ БОНБОТУ
 СЧ Е48(М16)
 ИЛИ ШСВЯТ
 ЗП ШСВЯТ
 МОДА ЗСТ
 ЦИКЛ (М4)
 ПРЕ 3
 ПБ Э211
*
* ЕСТЬ ЛИ АРХИВ НА ЭВМ
*
Э212 НОП 0
 СЧ ПРЕДЕЛ
 И Е16
 ПО Э105Г-Э(М7)   НЕТ АРХ
 СЧ ПРЕДЕЛ
 И Е20
 НТЖ Е20
 ПО Э105Г-Э(М7)   ПРИК:НЕТ АРХ
 СЧ ШКРЗ
 СБР Е17
 СДА 64+47
 ПБ Э105Г-Э(М7)
*
Э213 НОП ,
 СЧ (М3)
*
*  ЭК-КОД   00 050 0214
*
 И П3
 УИ М16
 СЧ ЗОНЫ(М3)
 МОДА (М16)
 СД КСДВГ
 И П1777
 ПО Э105Г-Э(М7)
 ЗП Р1
 УИА 3
 СЧ 0
 ПВ ТБУФ(М15)
 УИА 3
 СДА 64-8
 УИ М4
 СДА 64-2
 ИЛИ НОММЛ1
 СЛЦ КУСВЫВ
 ЗП Р2
 ПВ ФИЗОБМ(М16)
 МОД Р1
 УИА (М16)
 СЧ 0
 ЗП Р1
ВВЕРХ   уиа     3
 МОДА (М4)
 СЧ (М16)
 СДА 64+42
 И П3
 СЛЦ Р1
 СЛЦ Е1
 ЗП Р1
 МОДА (М4)
 СЧ (М16)
 СДА 64+11
 И П1777
 УИ М16
 ПЕ ВВЕРХ
 СЧ Р2
 ПВ ТБУФ(М15)
 СЧ Р1
 ПБ Э105Г-Э(М7)
*
Э214 НОП ,
        сч      0
        пб      Э213
*
Э215 СЧ (М3)
 И П77
 УИ М5
 СДА 64+4
 ВЧОБ Е2
 ЗП Р1   СЕКТОР
         пе     ОШКА-Э(М7)
 СЧ Е1
 ПВ ТБУФ(М15)
 УИА 3
 СДА 64-8
 УИ М4
 СДА 64-2
 ИЛИ МАЛКАТ
 ИЛИ Р1
 ЗП Р1
 ПВ ФИЗОБМ(М16)
 СЧИ М5
 И П17
 УИ М5
 СЛИ М5(М4)
 СЧ ИН(М5)
 ЗП (М3)
 СЧ Е1          свс: Р1 
 ПВ ТБУФ(М15)
 ПБ КОНЕЦ1-Э(М7)
*
*
Э203 НОП .            ЗАНЕСЕНИЕ ПРИЗНАКА УПО
 СЧ (М3)
 НТЖ ПАРОЛЬ
 ПЕ Э105Г-Э(М7)
 СЧ ЯЧУПО(М3)
 ИЛИ ЕУПО
 ЗП ЯЧУПО(М3)
 ПБ Э105Г-Э(М7)
*
* ЭК-КОД   0 0  0 5 0  0 2 1 6
*
*  ФИКСАЦИЯ 2-ОГО ЛИСТА АРХИВА
*
Э216 НОП ,
 СЧ Е48-1(М2)
 И ЕЗАР
 ПО ЧЛ-Э(М7)       КОТ := 1
 МОДА НЕОСТ2
 УИА (М15)
 СЧИ М15           КОТ ПРИ Ч.ЛИСТЕ = 2
 ПВ ЗАПВЫХ(М15)
 УИА 1024
 СЧ '4000'
 УИА 1027
 СЧ ’37’(М3)
 СБР ПРИП+2
 СДА 64+38
 УИ М11           М11 := N ФИЗ.ЛИСТА
 ПВ УПРИ(М10)     УСТАНОВИМ ПРИПИСКУ ТОП
 УИА 1026
 СЧ ТОП(М11)
 СДА 64-7
 СДА 64+7
 ЗП ТОП(М11)      ЗАФИКСИР.ЛИСТ ,УБРАВ N ЗАДАЧИ
 УИА 3
 СЧ 0
 ПБ Э105Г-Э(М7)   КОТ := 0
*
* ЭК-КОД   0 0  0 5 0   0 2 2 1
*
* РАЗРЕШЕНИЕ ПОД.ЗАДАЧЕ ВЫПОЛНЯТЬ  00 050 0220
*
Э221 НОП ,
 СЧ (М3)
 И П77
 УИ М15
 СЧ ШКРЗ
        или     '113'(М3)
 И Е48-1(М15)
 ПО ЧЛ-Э(М7)
 МОД ТУСП-1(М15)
 УИА (М16)
 СЧ ЕИ220
 ИЛИ ЯЧИ220(М16)
 ЗП ЯЧИ220(М16)
        пб      ОШКА-Э(М7)
*
Э171	сч	0(М3)
	и	П77
	пе	G11664
	уии	М4(М2)
	пб	G11670
G11664	уи	М4
	вч	E1
	пе	ЧЛ-Э(М7)
	вч	МАКЗ
	по	ЧЛ-Э(М7)
	сч	E40(М3)
	и	Е48-1(М4)
	по	НЕОСТ2
G11670	мод	ТУСП-1(М4)
	уиа	(М5)
	сч	0(М3)
	сда	64+6
	и	П77
	уи	М16
	вч	П30
	пе	ЕС
	вчоб	П37
	пе	ЕС
	сч	'50'(М5)
	сбр	'73'(М16)
	сда	64+47
	уи	М10
	счи	М16
	сда	64+1
	уи	М15
	счи	М16
	и	E1
	сда	64-2
	уи	М16
	мода	0(М5)
	сч	29(М15)
	сда	64+8(М16)
	и	П17
	уиа	4(М15)
	по	НЕОСТ3
	уи	М15
	и	П3
	уи	М16
	счи	М15
	сда	64+2
	уи	М15
	мода	0(М5)
	сч	'71'(М15)
	сд	КТОМ-1(М16)
	и	П77
	уи	М16
	уиа	МГНЕИС(М6)
	мода	G11717
	пино	0(М10)
	сч	'73'(М16)
G11715	или	0(М6)
	зп	0(М6)
	сч	0
 ПБ Э105Г-Э(М7)
*
G11717	сда	64+5
	уи	М15
	счи	М16
	и	П37
	уи	М16
	мода	0(М15)
	уиа	МДНЕИС(М6)
	сч	E32(М16)
	пб	G11715
*
ПАРОЛЬ КОНД П’ТМ-УПО’
СТРОКА ПАМ 22
 КОНД М40В’172’   ОТ СТРОКА НЕ ОТДЕЛЯТЬ
ЧСЛОВ ЭКВ 22
ПЧ НОП
 ДК 0,СТРОКА-ЭК6+1792
 ДК 0,СТРОКА-ЭК6+1791
 КК 0,0
 КК 0,(М10)
*КОНСТАНТЫ
КУС202 КОНД М24В’317’М17В’1’  КУС АВРАСП-А
 КОНД М24В’420’М17В’1’  КУС ТУПР-А
КСДВГ КОНД М41Ф’64’    ТАБЛ.СДВ.
 КОНД М41Ф’74’
 КОНД М41Ф’84’
 КОНД М41Ф’94’
Е16Е4 КОНД М12В’10’В’10’
О12 КОНД М11В’1’В’-1’
*ВХОДНЫЕ
 ВХОД Э202,Э203,Э204
 ВХОД Э205,Э206,Э207
 ВХОД Э210,Э211,Э212
 ВХОД Э213,Э214,Э215
 ВХОД Э216,Э221,Э171
*ВНЕШНИЕ
БОЭК1 ВНЕШ ЗАПВЫХ,ЛИСТМБ
ВЗУ ВНЕШ ФИЗОБМ
ДИСП70 ВНЕШ ТБУФ,НОММЛ1,П1777,НЗАРХ,ПРЕДЕЛ
ДИСП70 ВНЕШ ВСЕЕД,ЯЧСLС,ЕСLС,П60
ДИСП70 ВНЕШ ОБЩТОМ,П30,П3,ШЗНМБ,ТЗНМЛ,ТЗОНМЛ
ДИСП70 ВНЕШ Е24П1,УКАЗД,ТАС,ТСЛ,П17,МАЛКАТ
*АВРАСП ВНЕШ АВРАСП,РАСПЕЧ
      эквив (аврасп,0),(распеч,767)
*ТУПР ВНЕШ ТУПР,ТЕКАРХ
      эквив (тупр,0),(текарх,65)
ЭКВВОД ВНЕШ (Э,ЭКВВОД),ЧЛ,Э105Г,ПР30,КОНЕЦ,КНЦ,ОШКА
ЭКВВОД ВНЕШ АВОС,КОНЕЦ1,НОРМА
МОТТ ВНЕШ ШСВЯТ,СЛОN,ЛИНСББ,ШКАС,ПИЛОТ,ШКВИД
 ЭКВИВ (ЕVТ,Е16)
ДИСП70 ВНЕШ П77777,П37,Е48П37,П77,ПОДЧ,ОСПОД
ДИСП70 ВНЕШ ШИФРМ,ТУСП,ДС,МИНЗ,МАКЗ,ЕЗП
ДИСП70 ВНЕШ П7,ПРИП,П177
ДИСП70 ВНЕШ Е41П1,КУСВЫВ,ЗОНЫ
ДИСП70 ВНЕШ МГНЕИС
ДИСКИ ВНЕШ МДНЕИС,КТОМ
КАЧКА ВНЕШ ШКРЗ
*ПЛАН2 ВНЕШ ИН
       эквив (ИН,32)
СОСТАВ ВНЕШ ИЗАХВ,АТ,ЯЧУПО,ЕУПО
ДИСП70 ВНЕШ ЕЗАР
ХЛАМ ВНЕШ УПРИ
ДИСП70 ВНЕШ И
СОСТАВ  ВНЕШ ТОП,ЯЧИ220,ЕИ220
*КОНЕЦ ЧАСТИ
