ХЛАМ	СТАРТ	'66171'
	Е
	М
*** ИПЗ 54 и 55 каналов, по 81 слово на канал
*
	ГБЛВ ∧К71,∧БЭСМ
*∧БЭСМ SЕТВ 0
∧К71 SЕТВ 1
*
ИПЗ54	пам	81
ИПЗ55   пам     81
********************
Н533	счи	М16
	нтж	ЕС5017
	пе	ДИСЛ
	пб	Е533
н587	счи	М16
	нтж	ЕС5017
	пе	В587
	пб	Е587
зпмг	счи	М16
	нтж	ЕС5017
	пе	ВЫХ3
	пб	езпмг
подвес	счи	М16
	нтж	ЕС5017
	по	еподве
ПОДВ80 УИА 1(М10)
 СЧ ЗОНАТР
 ВЧ ЗОНАМЛ
 ПО ПОДВ95        БУДЕТ ДВИЖЕНИЕ ВПЕРЕД
 СЧ СОЛ-3(М16)
 ИЛИ Е24(М15)
 ЗП СОЛ-3(М16)    ПРИЗНАК РЕВЕРСА
	счи	М16
	нтж	ЕС5017
	пе	ПОДВ94 РЕВЕРС НМЛ БЭСМ-6
 УИА ’40’(М10)
 ПБ ЗАПДВ
ПОДВ94 УИА 3(М10)
 ПБ ПОДВ91
ПОДВ95	счи	М16
	нтж	ЕС5017
	пе	ПОДВ91
	пб	ЗД
Н1193	счи	М16
	нтж	ЕС5017
	пе	зкмл4м
	пб	закес
н1241	счи	М16
	нтж	ЕС5017
	пе	В1241
	пб	е1241
ПРУСТ	счи	М16
	нтж	ЕС5017
	пе	Б62
	пб	устмгз
Н1314	счи	М16
	нтж	ЕС5017
	пе	ВЫКМГ
	пб	е1314
н1348	счи	М16
	нтж	ЕС5017
	пе	НОРМА
	пб	е1348
Н1351	счи	М16
	нтж	ЕС5017
	пе	НОРМА2
	пб	е1351
н1352	счи	М16
	нтж	ЕС5017
	пе	прл
	пб	е1352
НЕОХ	счи	М16
	нтж	ЕС5017
	по	НЕОХ2
	увв	'4100'(М16)
	и	E16(М15)
	пб	ОХ5017
н1469	счи	М16
	нтж	ЕС5017
	пе	ПРЛСЧ7
	пб	е1469
наб70	счи	М16
	нтж	ЕС5017
	пе	набоб3
	пб	наб77
ОБХ3	уиа	9(М7)
	сч	ТЗНМЛ-24(М1)
	и	E13
	пе	СМИ1 !МАЛ. ЛЕНТА ЕС
И7И1	уии	М1(М7)
	пб	ВЫХ1
прлб	счи	М16
	нтж	ЕС5017
	пе	прлб1
	пб	прлб3
несчет	счи	М16
	нтж	ЕС5017
	пе	ПОДВ80
	пб	несч1
врмл	сч	ЕС5017
	пе	START
	сч	СЧПР2
	пб	U4115
МВ	сч	ЕС5017
	по	ФЗО5
	пб	МВ1
ЛЕСН СЧ РЯО
 И Е6П1
 УИ М14
 СЧ ТЗНМЛ-24(М14)
 И Е13
 ПО ФЗОН         ЛЕНТА РАБОТАЕТ В РЕЖИМЕ БЭСМ-6
 ПБ ЕЛЕС
Э70	счрж	'77'
	зп	РК
	сч	ЕС5017
	по	U5350
	сч	СМ
	мода	КОНРЗ
	нтж	
	пе	U5350
	пб	РЗЕС
ПРЕС7	пам	0
	счи	М16
	нтж	ЕС5017
	пе	ДИСП5В
	пб	ПРЕС
ПРЛЧП НОП
	уиа	(М5)
 СЧ БОБ
 НТЖ Е24П16
 ПО ПРЛКЛ
 СЧ РЯО5
 И Е39П25
 НТЖ КЛЮЧ
 ЧЕД 0
 СДА 64+2
 ПО ПРЛКЛ        КЛЮЧ ПРАВИЛЬНЫЙ
 СЧ КУС2-1(М2)
 И Е5
 ПЕ АВ           ЗАКАЗ ОТ НОМБОБА
 СЧ ТЗНМЛ-24(М1)
 И Е39
 ПЕ АВ           БОБ. НАЗВАНА ПО ПРИКАЗУ
 ПБ ПРЛКЛ
ПРЛ2Е	пам	0
	счи	М16
	нтж	ЕС5017
	пе	ПРЛ2В
	пб	ПРЛЕС
норма1	счи	М16
	нтж	ЕС5017
	пе	В1404
	пб	норм1а
****************** ДИСКИ ******************
ПЕРЕН	уиа	2(М5)
	уиа	-255(М2)
ПЕРЕ	сч	ОЧКУСД-1(М14)
	и	E18
	сда	64+17   ПРИ ЗП: 0 -> М17, 1 -> М2
	уи	М17     ПРИ ЧТ: 1 -> М17, 0 -> М2
*
	сч	ОЧКУСД-1(М14)
	сда	64(М5)
	и	П3
	сда	64-8
	или	E12      ПРИ ЧТ: N АБЗ + "4000" -> М6
	уи	М5(М17)  ПРИ ЗП: N АБЗ + "4000" -> М5
	счи	М17
	нтж	E1
	уи	М17
	сч	ОЧКУСД-1(М14)
	и	П3
	сда	64-8    ПРИ ЧТ: N СЕКТ + "2000" -> М5
	или	E11     ПРИ ЗП: N СЕКТ + "2000" -> М6
	уи	М5(М17)
	уиа	'2'
ПЕРЕН1	сч	(М5) ПЕРЕНОС МАССИВА:
	зп	(М6) М5 -> М6 (256 СЛ.)
	слиа	1(М5)
	слиа	1(М6)
	цикл	ПЕРЕН1(М2)
	уиа	'3'
	уиа	-7(М2)
A66563	зп	1
	цикл	A66563(М2)
	пб	(М10)
ДБИР	уии	М17(М12)
	пв	ЗАНПРП(М15)
	уиа	'3'
	мод	НЗАД(М12)
	уиа	(М15)
	сч	ИНФСД
	сда	64+20
	и	Е15П11
	уи	М16
	сда	64+10
	нтж	П37
	уи	М17
	уиа	'2003'
	сч	22(М15)
	нтж	32(М15)
	и	E48(М17)
	пе	ФФ
	уии	М6(М15)
	сч	E44
	или	ОТВКАЧ
	зп	ОТВКАЧ
	уиа	НЕТКАЧ(М15)
	уиа	'2000'
МФ	сч	20(М16)
	уиа	'2003'
	сч	E48(М17)
	или	32(М6)
	зп	32(М6)
	уии	М15(М6)
ФФ	сч	ГУС
	и	КРОМЕ
	зп	ГУС
	уии	М16(М10)
	сч	ИНФСД
	сда	64+30
	и	П37
	зп	РЯД2
	уи	М13  N СТР. (МАТ) -> М13
	и	П3
	уи	М7
	счи	М13
	сда	64+2
	нтж	П7
	уи	М5
	уиа	'2003'
	сли	М5(М15)
	сч	24(М5)
	сбр	ПРИП(М7)
	сда	64+38
	уи	М14
	сч	24(М5)
	или	ПРИП(М7)
	нтж	ПРИП(М7)
	зп	24(М5)
	уиа	'3'
	сч	E48
	или	Е36
	и	E48(М15)
	пе	МЯ
	сч	ШМАРС
	и	Е48-1(М12)
	пе	МЯ
	сч	Е48-1(М12)
	мода	
	пв	ВШГП(М15)
	уиа	'3'
	пб	МЯ
НЕТКАЧ	уиа	'2003'
	сч	E44
	нтж	ОТВКАЧ
	зп	ОТВКАЧ
	сч	ШКОДП
	или	Е48-1(М12)
	зп	ШКОДП
	пб	Д3
ДВОЧД	ржа	'3'
	сч	СЧЗАКД
	вч	E1
	зп	СЧЗАКД
ДВОЧ	сч	ОЧКУСД-1(М14)
	зп	РЯД2
	сда	64+42
	уи	М12
	сч	ОЧЛИСД-1(М14)
	зп	РЯД1
	сч	ВСЕЕД
	нтж	Е48-1(М14)
	зп	РЯД
	уиа	'3'
ДВОЧД1	сч	СИСТ(М2)
	сбр	РЯД
	зп	СИСТ(М2)
	цикл	ДВОЧД1(М2)
	уии	М2(М14)
	слиа	-16(М2)
ДВОЧД2	сч	ОЧЛИСД+16(М2)
	зп	ОЧЛИСД+15(М2)
	сч	ОЧКУСД+16(М2)
	зп	ОЧКУСД+15(М2)
	цикл	ДВОЧД2(М2)
	пб	(М10)
ПРУ12	сда	64-2
	уиа	'2003'
	рзб	припа(М2)
	зп	СМ
	сч	припа(М2)
	нтж	ВСЕЕД
	мод	ГУС
	и	31
	или	СМ
	пб	УПРИ1
УПРИ	уиа	'2003'
	сч	ЛТБД
УПРИ1	мод	ГУС
	зп	31
	уии	М32(М2)
	уиа	-7(М2)
вытбрз	зп	1
	цикл	вытбрз(М2)
ФИФ	рег	'20'
	счи	М32
	уи	М2
	сч	ГУС
	и	КРОМЕ
	зп	ГУС
	сч	
	рег	'30'
	уи	
	пб	(М10)
ТОПСН НОП
 СДА 64+36
 УИ М2
 ПВ УПРИ(М10)
топсн1 ноп
 МОД ТУСП-1(М12)
 УИА (М10)
 УИА ’2002’
 СЧ ТОП(М2)
 ИЛИ ЕОБММ
 НТЖ ЕОБММ
 ЗП ТОП(М2)
	и	ЕОТКЛМ
	уиа	(М2)
 УИА 1027
 ПЕ (М7)
 МОД ТУСП-1(М12)
 УИА (М2)           М2 := АДР.ИПЗ
 СЧ
 ПБ (М7)
*
СНЗЩД НОП ,
 СЧ РЯД1
 УИИ М17(М7)
 ПВ ТОПСН(М7)
снзщд1	 УИИ М7(М17)
 ПЕ СНЯЛИЗ        ЛИСТ ОТКЛЮЧЕН
	сч	РЯД1
 И П37
 УИ М13
 НТЖ П37
 УИ М17
 СДА 64+2
 УИ М5
 СЛИ М5(М2)
 СЧ 32(М2)
 НТЖ Е48(М17) СНЯТИЕ ЗАЩ
 ЗП 32(М2)
 СЧИ М13
 И П3
 УИ М17
 СЧ РЯД1
 РЗБ П14037
 СБР ПРИП+4
 РЗБ ПРИП(М17) ВОССТ ПРИП
 ИЛИ 24(М5)
 ЗП 24(М5)
 ПБ СНЯЛИЗ
обрвн1	уиа	2(М5)
	пб	вызав
*
*** ГАШЕНИЕ 29(28)Р ГРП ***
*
* ХЛАМ-100 СТР. 453/423
* закрытие прерываний по готовности направления в М16
гашгрп	уиа	'2003'
	сч	ВСЕЕД
	нтж	E32(М16)
	уи	
	рег	'37'
	пб	(М10)
ОСВУ	сч	ОЖОСВ-3(М16)
	пе	ОСВ1
	уиа	'2003'
	сч	ШЗПОМД
	пе	ОСВН
	сч	ШГ
	или	E44
	зп	ШГ
	счи	М16
	зп	ИПЗМД+8
	сч	АПРО
	слц	E1
	зп	ИПЗМД+3
	сч	
ОСВН	или	E29(М16)
	зп	ШЗПОМД
	пб	ОСВ1
ПРЗ	ноп
ВХД	сч	ОЖОСВ-3(М16)
	зп	ЗАНЛ-3(М16)
	мода	
	пв	МДНАП(М2)
	сда	64-3
	уи	М2
	сч	ВРЕМЯ
	вчаб	БУДП(М16)
	вчаб	E13
	пе	ПЗАП
	сч	
	зп	БУДП
	счи	М3
	и	П3
	уи	М10
	мод	КНАПР-1(М10)
	уиа	1(М10)
	уиа	-7(М11)
ПЗА	сч	ТЗНМД(М2)
	слиа	-1(М10)
	и	П7777
	по	ПРЗ1
	сч	E40
	или	ТЗНМД(М2)
	зп	ТЗНМД(М2)
	сч	E25(М10)
	или	ОСВЛИН(М16)
	зп	ОСВЛИН(М16)
ПРЗ1	слиа	1(М2)
	цикл	ПЗА(М11)
ПЗАП	сч	ВРЕМЯ
	зп	БУДП(М16)
	сч	ШЗПОМД
	нтж	64(М16)
	или	E40
	зп	ШЗПОМД
	счи	М3
	сда	64-3
	зп	ЗАНКМД-3(М16)
	уиа	'3'
	уиа	Д101(М10)
	сч	п3700(М16)
*
	АПУ     (&К71).ДА
	АПБ	.НЕТ
	по	дз
.ДА АНОП
	по	дз
	пб	мотди3 !РАБОТА К-71
.НЕТ АНОП
*! МАЛ.   Р З X
зсс	сч	ВСЕЕД
	зп	хладис+1
чтре	счи	М11
	увв	'20'(М16)
	уи	
	увв	'4000'(М16)
	уи	
	зп	РЯД2
	сч	
	увв	'20'(М16)
	уи	
	сч	РЯД2
	нтж	хладис+1
	по	(М5)
	сч	РЯД2
	зп	хладис+1
	пб	чтре
чр	сч	ГОД
	и	П7
	уи	М11
	сч	РЯД2
	и	E5(М11)
	по	чр4
	нтж	РЯД2
	зп	РЯД2
	сч	E1
	или	РАОБЩ
	зп	РАОБЩ ЕСТЬ СООБЩ ОТ ДР. Б.
	сч	Е47П43
	или	РМЛ
	зп	РМЛ
	уиа	чр4(М5)
	уиа	47(М11)
чр2	счи	М5
	зп	ЗАНЛ-3
	сч	РЯД2
	зп	хладис
чр3	счи	М11 М5 СООБЩЕНИЕ ДР. Б. ДЛЯ ОБЩ. МЛ.
	увв	'20'(М16)
	уи	
	сч	РЯД2
	увв	'20'(М16)
	уи	
	сч	
	увв	'20'(М16)
	уи	
	слиа	2(М11)
	мода	
	пв	зсс(М5)
чр3а	слиа	-2(М11)
	сч	РЯД2
	нтж	хладис
	мод	ЗАНЛ-3
	по	
	сч	хладис
	зп	РЯД2
	пб	чр3
чр4	сч	РЯД2
	сда	64-36
	рзб	Е32П25(М17)
	нтж	НГД-3(М16)
	и	Е32П25(М17)
	нтж	НГД-3(М16)
	зп	НГД-3(М16)
чр5	нтж	РАЗЛ(М16)
	уиа	'3'
	и	НГД-3(М16)
	нтж	ВСЕЕД
	зп	ИНФСД
	уиа	48(М11)
	мода	
	пв	зсс(М5)
	сч	РЯД2
	зп	негтб
	сч	ЗУС-3(М16)
	и	Е32П25(М17)
	пб	чр6
зс4	уиа	'2003'
	сч	ЗУС-3(М16)
	нтж	E32(М14)
	зп	ЗУС-3(М16)
	счи	М16
	и	E3
	сда	64-3
	уи	М2
	сли	М2(М14)
	сч	ШОЧМД(М2)
	или	ШОЧНМД-3(М16)
	зп	ШОЧНМД-3(М16)
	сч	ШОЧМД(М2)
	или	ШОЧЛ(М3)
	зп	ШОЧЛ(М3)
	уиа	'3'
зс11	сч	рс
	нтж	E32(М14)
чр6	зп	рс
	по	д102
	нед	Е15П1
	уи	М14
	и	П3
	уи	М2
	слиа	-16(М14)
	счи	М14
	сда	64+2
	и	E1
	уи	М11
	слиа	16(М11)
	мода	
	пв	зсс(М5)
	сч	ГОД
	и	П7
	сд	нм(М2)
	зп	РЯД1
	сч	П7
	сд	нм(М2)
	и	РЯД2
	пе	зс1
зс13	сч	ИНФСД
	и	E32(М14)
	по	зс11
	уиа	'2003'
	сч	РЯД1
	или	РЯД2
	слиа	-2(М11)
	зп	РЯД2
	мода	
	пв	чр2(М5)
	пб	зс4
ДОС	сч	ШЗПОМД
	и	Е46Е45
	по	Д1000
	нед	
	уи	М16
	пб	ПРО
Д1000	сч	ШЗПОМД
	и	Е26Е25
	по	Д10
	сда	64-20
	нед	
	уи	М16
	пб	ПРОХ
ЗАКВЫП	по	ЗКВ
	уиа	4(М16)
ЗКВ	мода	
	пв	ОСВУ(М6)
	уиа	'3'
	уии	М16(М12)
	сч	ЯКУС
	пб	(М5)
зсс1	сч	СОД-3(М16)
	и	Е24П17
*
    	АПУ     (&К71).ДА1
*	по	зсс
	АПБ	.НЕТ1
.ДА1 АНОП
	по	дтпре2	!РАБОТА К-71
.НЕТ1 АНОП
	пб	ПС1
* !МАЛ. КОН. Р З Х
Д101	сч	НЕТНАП
	и	ОЖОСВ-3(М16)
	по	необ
	нтж	E48
	пб	дзс
необ	зп	ОЖОСВ-3(М16)
зс100	сч	ШОЧЛ(М3)
	и	СИСТ
	пе	зс10а
	сч	ШОЧЛ(М3)
	по	ДИ
зс10а	нед	
	уи	М14
	пб	Д1
дз	сч	ОЖОСВ-3(М16)
	и	НЕТНАП !МАЛ. НЕТНАП = В'7707 7777 7777 7777'
дзс	пе	д110
	уиа	Д7В(М6)
д3а	уиа	'2003'
	зп	ОЖОСВ-3(М16)
	сч	ШЗПОМД
	или	E47(М16)
	нтж	E40
	зп	ШЗПОМД
	пб	(М6)
д110	сч	ОЖОСВ-3(М16)
	и	Е24П1
	нтж	П377
	пе	д11
	уиа	ОПРГД(М6)
	пб	д3а
осж	сч	ОСУ-3(М16)
	и	Е32П25(М17)
	по	(М11)
	зп	рс
	пб	ос4+2
освм	сч	рс
	нтж	E48(М15)
	зп	рс
	пб	ос4+2
выза	счи	М6
	зп	рс
вызав	уии	М6(М16)
	уии	М10(М15)
	сч	пав
	по	вав
	уи	М7
	пб	(М7) !МАЛ. НА АВМД
осс	мод	рс
	уиа	(М6)
* !МАЛ. НАЧ. РЗХ
ос1	сч	п3700(М16)
	по	ост
	счи	М16
	сда	64-39
	нтж	НОММЛ1
	и	E42
	пе	ост
	сч	РАОБЩ
	и	Е48П42
	по	ост
	уиа	49(М11)
	пв	зсс(М5)
	сч	ГОД
	и	П7
	уи	М11
	сч	П17
	нтж	E5(М11)
	или	РЯД2
	зп	РЯД2
	уиа	47(М11)
	мода	
	пв	чр2(М5)
	мода	
	пв	дисвх3(М11)
	уиа	'2003'
	сч	РАОБЩ
	и	Е1П25
	зп	РАОБЩ
* !МАЛ. КОН. РЗХ
ост	уиа	'2003'
	сч	E4
	увв	'20'(М16)
	уи	
	сч	E48
	зп	ЗАНКМД-3(М16)
	сч	ОСВЛИН
	увв	'20'(М16)
	уи	
	сч	ВСЕЕД
	нтж	E32(М16)
	уи	
	уи	
	рег	'37'
	уи	
	уи	
	рег	'237'
	уи	
	и	E32(М16)
	по	ОСВ1
	сч	NКОБ(М16)
	зп	ЗАНКМД-3(М16)
	пб	ОСВ1
	пам	0
	уии	М15(М2)
	уии	М16(М6)
	уии	М17(М11)
	пб	(М14)
осе	сч	ЗУС-3(М16)
	по	ос1
	сч	НГД-3(М16)
	пв	чр5(М10)
	пб	ос1
ДИХ	ноп	
	пв	ДЛЯДИС(М10)
	сч	СОЛ-3(М16)
	и	E8(М15)
	пе	ВХСМ
	счи	М1
	сда	64-42
	рзб	НАПРМГ
	нтж	КУС2-1(М2)
	и	НАПРМГ
	по	ВХСМ
	сч	СОЛ-3(М16)
	и	E32(М15)
	по	ДИСЛ
	сч	СОЛ-3(М16)
	или	E40(М15)
	зп	СОЛ-3(М16)
	пб	ВХСМ
* !МАЛ. НАЧ. РЗХ
ДИ	сч	п3700(М16)
	уиа	'3'
	по	Д3
	счи	М3
	и	П3
	уи	М17
	сч	СОД-3(М16)
	и	Е24П17
	пе	Д3
	сч	ШОЧЛ(М3)
	зп	ФКУСД
	сч	НГД-3(М16)
	мода	
	пв	чр5(М10)
	сч	64(М16)
	или	E47(М16)
	и	ШЗПОМД
	пе	Д3
	сч	ЗАНКМД-3(М16)
	и	E48
	пе	Д3
	сч	ФКУСД
	нтж	ШОЧЛ(М3)
	пе	зс100
	уиа	Д3(М6)
*
    	АПУ     (&К71).ДА2
	пб	ОСВМД !ШТАТНЫЙ РЕЖИМ РАБОТЫ
	АПБ	.НЕТ2
.ДА2 АНОП
	пб	дисшк6	!РАБОТА ДЛЯ К-71
.НЕТ2 АНОП
*вхм	сли	М16(М7) !НУЖНО ЛИ?
*	сч	Е23
*	пб	ТВ40
*
	АПУ     (&К71).ДА3
СНЗКМЛ	счи	М16	
	АПБ	.НЕТ3
.ДА3 АНОП
***** БЛОК РАБОТЫ ДЛЯ К-71 *****
СНЗКМЛ	счи	М16
	нтж	ЕС5017
	пе	снзкм1
	сч	ВРЕМЯР(М14)
	и	E7
	по	снзкм1
	сч	ВРЕМЯР(М14)
	или	E17
	нтж	E17
	зп	ВРЕМЯР(М14)
***** ?КОН БЛОКА К-71 *****
.НЕТ3 АНОП
снзкм1	счи	М16
	зп	РЯО5
	сч	E18
	пв	ЗАХЗАН(М15)
	уиа	(М17)
	пв	ДВОЧ1(М5)
	сч	E18
	пв	ГАШЗАН(М15)
	уиа	'3'
	мод	РЯО5
	уиа	(М16)
	пв	ОПРБ6А(М5)
	уии	М2(М11)
	пб	ПРЛ17А
г6	нтж	ШР
	пе	анвоб
	сч	РАЗМГ
	по	АНВО9
	уиа	'2000'
	сч	23
	уиа	'2003'
	зп	СМ
	пб	U5542
	пам	0
опс1	сч	ЗУС-3(М16)
	и	НГД-3(М16)
	по	Д7В
	сч	ШОЧНМД
	или	ШОЧНМД+1
	чед	
	нтж	СЧЗАКД
	по	Д7В
	уиа	(М5)
	пб	вызав
* !МАЛ. КОН. РЗХ
****************** КОНЕЦ ДИСКОВ ******************
eq	сч	п3700(М16)
	по	enq2
* !МАЛ. НАЧ. РЗХ
	сч	ОСУ-3(М16)
	и	E32(М17)
	пе	eq1
	сч	ENQМДС-3(М16)
	и	E32(М17)
	по	enq2
	и	ЗУС-3(М16)
	пе	enq2
	сч	E32(М17)
	или	ШЗМД-3(М16)
	зп	ШЗМД-3(М16)
	пб	Q1
ПРОГПР НОП 0   ПРОГ ПРЕР
	сч	ЭКО+1
	по	пир
* ПО ВЫЗАС     ВЫЗ ОБР АСИНХ ПРОЦ
 МОД ЭКО
 УИА (М15)
 МОД ТУСП-1(М15)
 УИА (М16)
 СЧ 0
 ЗП ЭКО
 ЗП ЭКО+1
	сч	ш+1
	по	пар
	сч	E6
	увв	'31'
пар	сч	36(М16)
	и	Е48П42
	пе	БМВ
	сч	Е48Е47
	или	36(М16)
	зп	36(М16)
	счи	М15
	или	E41
	уиа	БПУ(М16)
	пб	ЗАПВЕТ
ЕСЭ	нтж	НЗАД
	и	П377
	пе	КИК
	сч	E6
	зп	ЭКО+1
	увв	'31'
	пб	КИК
ХЛИМ	сч	ГУС
	и	E41
	по	ХЛУ
	уиа	ЗАПРК(М15)
	уиа	69(М17)
	пб	ТВ201
ХЛУ	сч	E7
	пб	ТВ40
CC	сч	РЭ3
	пе	СУ
	сч	62(М15)
	и	Н19
	зп	62(М15)
СУ	сч	РМР3
	сда	64-5
	и	E43(М15)
	по	пуп
	сч	E46(М15)
	и	E43
пуп	пе	БПУ
	сч	E46(М15)
	и	Н19
	зп	E46(М15)
	пб	БПУ
общ7	сч	РЯО !ХЛАМ-100 СТР. 1289/1413
	нтж	Е48-1(М15)
общ4	зп	РЯО
	нед	
	уи	М15
	мода	(М10)
	сч	'356'(М15) !ДОЛЖЕН БЫТЬ "ОЧКУС1" .ВНЕШ ДИСКИ
	нтж	ЯКУС
	и	НАПРМГ
	пе	общ7
	уиа	-6(М17)
	сч	ШИФРПЛ(М16)
	нтж	Е48-1(М15)
	зп	ШИФРПЛ(М16)
об	мода	(М10)
	сч	ШКМГОС(М17)
	и	Е48-1(М15)
	пе	обл
	цикл	об(М17)
обл	сч	E42(М17)
	зп	РЯО
	сли	М17(М10)
	сч	ШИФРПЛ(М17)
	или	Е48-1(М15)
	зп	ШИФРПЛ(М17)
	сч	'553'(М10) !ХЛАМ-100 МЕТ. "ОТВ" .ВНЕШ СМЕНА
	или	Е48-1(М15)
	пино	общ6(М4)
	нтж	Е48-1(М15)
общ6	зп	'553'(М10)
	сч	ЯКУС
	сда	64+6
	и	E1
	уи	М15
	сч	
	зп	ШИМЛ(М15)
	сч	РЯО5
	нтж	E18
	пв	ФИЗОБМ(М16)
	сч	РЯО5
	пв	DEQ(М15)
	сч	РЯО5
	пв	ТБУФ(М15)
	сч	РЯО
	или	РАОБЩ
	зп	РАОБЩ
	уии	М15(М6)
	сч	НОММЛ1
	уиа	3(М16)
	и	E42
	пб	ЗАКВЫП
	сда	64-10
	зп	ЯЛИС
	сда	64-24
	зп	ФКУСАД(М14)
	сч	ВРЕМЯР(М14)
	зп	ЯКУС
	уиа	обчт(М16)
	и	Е21Е18
	нтж	Е21Е18
	по	общ2а
	и	E18
	по	обчт
общ2	сч	ЯКУС
	сбр	ЗОБ
	сда	64+18
	слц	ДЕЛ
	или	E18
	слц	НОММЛ1
	зп	РЯО5
	сч	ЯКУС
	и	E18
	нтж	РЯО5
	или	ЯЛИС
	зп	РЯО5
	пб	ФИЗОБМ
общ2а	сч	ЯКУС
	нтж	E18
	зп	ЯКУС
	пб	общ2
обчт	уии	М16(М10)
	уии	М15(М6)
	уиа	(М17)
	пб	дмлзак
НАЧАЧУ	сч	ИНФМБ
	и	П377
	зп	ФКУСМБ
	нтж	ИНФМБ
	зп	ИНФМБ
	сч	ФКУСМБ
	сда	64+2
	зп	ФКУСМБ
	счмр	64
	сда	64+40
	или	ФКУСМБ
	или	ИНФМБ
	зп	ИНФМБ
НАМБ	сч	ИПОБМ+9
	зп	УСММБ
	мода	
	пв	УПРИ(М10)
МОЖНО	сч	ИНФМБ
	сбр	НБТ
	сда	64+18
	зп	ФКУСМБ
	сч	E44(М15) ждет
	слц	E1
	зп	E44(М15)
	уиа	ФТ1(М7)
	сч	21(М15)
	нтж	П37
	уиа	'3'
	пе	ОЯ
	сч	ИНФМБ
	и	E41
	по	ОЯ
	сч	СКБЭ
	по	ОЯ
	нтж	ИНФМБ
	сда	64+12
	и	П77
	по	охр
ОЯ	сч	ИНФМБ
	или	E41
	нтж	E41
	зп	ИНФМБ
	уии	М1(М15)
	уиа	'2003'
	сч	ЗАНЯТА
	и	E5
	по	фтс
	сч	УСММБ
	сда	64+41
	уи	М16
	сч	ШКОБП
	или	2(М16)
	зп	ШКОБП
	пб	ДИСПМБ
фтс	сч	E5
	пв	ЗАХЗАН(М15)
	уии	М15(М1)
	пб	ффф
фтзи	уиа	фт31(М17)
фи	уии	М13(М15)
	сч	E5
	мода	
	пв	ГАШЗАН(М15)
	уии	М15(М13)
	пб	(М17)
охр	сч	ИНФМБ
	сда	64+12
	и	П37
	сда	64-5
	зп	ФКУСМБ
	сч	ИНФМБ
	и	П37
	уи	М3
	или	ФКУСМБ
	уи	М6
	слиа	-255(М6)
	счи	М6
	сда	64+5
	и	П37
	уи	М1
фт31	уиа	1(М17)
	слиа	8(М1)
	уиа	'2'
	сч	ТБД-1(М6)
	уиа	'3'
	сбр	ТОБ+2
	сда	64+22
	зп	ФКУСМБ
	сч	ИНФМБ
	и	E41
	сда	64+12
	или	ФКУСМБ
	зп	ФКУСМБ
	пб	УЗЩ
фт32	счи	М17
	зп	И17
	счи	М15
	зп	И15
	мод	НЗАД
	сч	Е48-1
	или	ШКЗЗК1
	зп	ШКЗЗК1
	мод	НЗАД
	сч	Е48-1
	мода	
	пв	ИЗШГП(М15)
	счи	М32
	уи	М33
	сч	E32
	пб	ТВ41
Э62	счи	М16 !ХЛАМ-100 СТР. 1446/1570
	зп	И16
	счмр	64
	зп	РМР
	счрж	'37'
	или	П23
	нтж	E1
	зп	РК
	сч	E18
	пв	ПЕЭКС(М16)
	пино	обмен(М16)
	сч	ШКОК
	мод	НЗАД
	и	Е48-1
	по	тв210
обмен	счи	М16
	нтж	П7
	пе	э62а
	счи	М15
	нтж	E1
	по	ЭКВЫХ1
*
   	АПУ	(&К71).ДА3А
	АПБ .ОБЩ3А
.ДА3А АНОП
***** РАБОТА К-71 ******
э62а	слиа	к71шк6(М16)
	счи	М16
	слиа	'6200'(М16) !КОНСТАНТА
	сда	64+2
	по	Э62ГРУ
	сч	E31
***** КОНРАБ К-71 ******
*
	АПУ     (&К71).ДА3Б
*
.ОБЩ3А АНОП
****** ВСТ. ДЛЯ ШТАТ. РАБ. *****
э62а	сч	Е31
.ДА3Б АНОП
*
	пб	ВЫЗОВ
Э71	зп	И16
	сч	ГУС
	и	E48
	по	неот
	счрж	'37'
	или	П30
	или	E1
	зп	РК
	сч	E14
	пв	ПЕЭКС(М16)

э71б	мод	ГУС
	сч	33
	и	E14
	пе	надо
неот	уиа	'2000'
	сч	(М16)
	уиа	'2003'
	пио	э71в(М16)
	и	E41
	пе	э71в
	зп	СМ
	сч	E20
	пб	ТВ40
э71в	сч	E10
	пб	ТВ40
анкобм	сч	ТЗНМД(М1)
	и	е36е35
	по	(М10)
	нтж	е36е35
	по	(М10)
	пб	дисвх1
Э66	счи	М16
	зп	И16
	счрж	'37'
	или	П23
	слц	П3
	зп	РК
	сч	E18
	пв	ПЕЭКС(М16)
	сч	E28
	пб	ТВ40
хм	рег	'237'
	и	E30
	по	ТВ201
	сч	ЭКО
	нтж	НЗАД
	пе	ТВ201
	зп	ЭКО+1
	сч	ЕДК10Р
	нтж	E30
	уи	
	рег	'37'
	пб	ТВ201
вызнп	уиа	'3' ВЫЗОВ НЕРЕЗИДЕНТНОЙ ПРОЦЕДУРЫ
G67532	уиа	'2003'
	зп	РМР
	зп	2(М7)
	уии	М32(М16)
	счи	М15
	зп	И16
	зп	8(М7)
	счи	М17
	зп	И17
	зп	7(М7)
	сч	2(М7)
	и	E20
	нтж	E20
	по	A67544
	сч	РМР
	или	E19
	нтж	E19
	зп	РМР
	зп	2(М7)
	сч	E1
A67544	мода	
	пв	ТБУФ(М15)
	сда	64-10
	или	2(М7)
	зп	2(М7)
	сч	8(М7)
	уи	М15
	сч	7(М7)
	уи	М17
	пб	чтнп
чтнп	сч	2(М7)
	уиа	'2003'
	зп	РМР
	сда	64-29
	сда	64+29
	или	E18
	или	НОММБ1
	зп	(М7)
	мода	
	пв	ФИЗОБМ(М16)
	уиа	'2003'
	по	чтнп
	сда	64+10
	сда	64-8
	уии	М16(М17)
	уи	М17
	счи	М16
	сда	64-15
	счим	М32
	или	(М17)
	сда	64-15
	счим	М15
	или	(М17)
	счм	2(М7)
	уиа	'3'
	уиа	12(М16)
упстек	счим	(М16)
	сда	64-15
	счим	-1(М16)
	или	(М17)
	сда	64-15
	счим	-2(М16)
	или	(М17)
	слиа	-3(М16)
	пино	упстек(М16)
	счм	-5(М17)
	сда	64+40
	уи	М15
	сли	М15(М17)
	счи	М17
	сда	64+8
	сда	64-8
	уи	М1
	пб	(М15)
выхнп	уиа	'3' ВЫХОД ИЗ НЕРЕЗИДЕНТ. ПРОЦЕДУРЫ
	уии	М17(М1)
	слиа	6(М17)
	уиа	-12(М16)
распст	слиа	13(М16)
	сч	(М17)
	уи	(М16)
	сда	64+15
	уи	М1(М16)
	сда	64+15
	уи	М2(М16)
	слиа	-10(М16)
	пино	распст(М16)
	сч	(М17)
	уиа	'2003'
	зп	СМ
	счи	М17
	зп	И17
	сч	СМ
	и	E20
	сда	64+1
	или	СМ
	и	Е40П1
	пв	ТБУФ(М15)
	сч	И17
	уи	М17
	сч	
	зп	СМ
	сч	(М17)
	уи	М15
	сда	64+15
	уи	М16
	сда	64+15
	уи	М17
	сч	СМ
	уиа	'3'
	пб	(М16)
Э63	счмр	64
	зп	РМР
 СЧРЖ 31
 ИЛИ П23
 ЗП РК
 СЧИ М16
 ЗП И16
 СЧ Е18
 ПВ ПЕЭКС(М16)
 СЧ СМ
 НТЖ КЛЮЧАР
 ПЕ Э72
 МОД НЗАД
 СЧ Е48-1
 И ЕЗАР
 ПО НЕАРХ
 СЧ И16
 ЗП СЕМАРХ
 ПЕ ЭКВЫХ         АРХИВ ЗАКРЫЛ ТАФ
* АРХИВ ОТКРЫЛ РАБОТЫ С ТАФ
 СЧ ШКЭ70А
 ИЛИ ШГП
 ЗП ШГП
 СЧ 0
 ЗП ШКЭ70А
 ПБ ЭКВЫХ
*
НЕАРХ НОП ,
 УИА 1024
 СЧ (М16)
 УИА 1027
 МОД ГУС
 УИА (М16)
 ЗП ИНФСЛП(М16)
	сч	РМР
	зп	СМ
	сч	41(М16)
	или	E47
	зп	41(М16)
	пб	U5443
прп	уиа	-1023(М2)
	уиа	прпсс2(М5)
прпб	сч	П3
	пв	ПОК(М13)
	сч	
	уи	М21
прп1	сч	ТБД-1(М2)
	уи	
	цикл	прп1(М2)
	уиа	'2003'
	сч	П13
	пв	ПОК(М13)
	рег	'101'
	пб	(М6)
МЛМД СЧ ИНФСД
 И П7777 ЗОНА свс: П1777
 ЗП РЯД
 СЧ РЯД2
 СДА 64+12
 И П17
 РЖА 3
 СДА 64-5
 ВЧОБ РЯД
 ПО ЗВНЕПР
*
    АПУ     (&К71).ДА4
    АПБ		.НЕТ4
.ДА4 АНОП
	пб	мотвс1	!К-71 ВНЕШ. МОТТ
прп2а	ноп	!К-71	ВХОДН.
.НЕТ4 АНОП
 СЧИ М16
 СДА 64-29
 СЛЦ НОМЛД
 НТЖ Е27
 ЗП ФКУСД НАЧ ЗОНА
 СЧ НОМЛД
 СБР НАПРМГ
 УИА 1027
 ЗП РЯОД
 ПВ ПРКА(М3)
 УИА 3
	уиа	1(М11)  свс: 2(М11)
 ПБ (М10)
*
    АПУ     (&К71).ДА4А
*****	БЛОК ДЛЯ ШТАТНОЙ РАБОТЫ АС (В МОТТ) *****
маска	сч	7
	и	Е48Е47
	по	БМВ
	уиа	БМВ(М15)
	сч	РАБШК
	или	ШКВЫД
	и	шквид1  МОТТ
	по	гашм
	сч	7
	и	Е48
	по	БМВ
	увв	'4100'
	кк	27,'4100'
	сда	64-24
	нтж 	Е48П25
	и	тппv
	или	шквид1
	зп	шквид1
	и	р	!БЕРЕТСЯ ИЗ ДИСКОВ, А НЕ ИЗ КАНАЛА
	по	БМВ
*зажм	сч	МГРП	!ТЕПЕРЬ В БОЭК1
*	и	Е19
*	нтж	Е19
*	пб	ТВ67
гашм	сч	Е19
	пб	ТВ67А
*********** КОН. БЛОКА **************
.ДА4А АНОП
ХЛУМ СДА 64+24
 ЗП РЯД
 СЧ ПРД
 ПЕ ПИБ
 СЧ ИНФСД
 И Е40
	пб	ПИБ     свс: ПЕ ПИБ
 СЧИ М16
 СДА 64-42
 НТЖ НФИЗ
 И Е48П43
 ПЕ ПИБ
 СЧ Е48-1(М12)
 НТЖ ЕЗАР
 ПО ПИБ          АРХИВ
 УИА ОТКЗОН(М10)
МММ СЧ (М10)
 ПО БОК
ММ ЗП РЯД1
 И П7777
 ВЧ РЯД
 ПЕ МУ
 СЧ РЯД1
 СДА 64+12
 И П7777
 ВЧОБ РЯД
МУ ПО ПИБ
 СЧ РЯД1
 СДА 64+24
 ПЕ ММ
 ЦИКЛ МММ(М10)
* диапазоны открытых на чтение зон 2053
ОТКЗОН	конд	в'0030006700710071'
	конд	в'1734777705400544'
	конд	в'0630066706750675'
	конд	в'0710071107310731'
	конд	в'0750075104400452'
	конд	в'0'
БОК СЧ ИНФСД
 ИЛИ Е40
 ЗП ИНФСД
 ПБ ХЛОМ
ПИБ СЧ ИНФСД
 ПБ ХЛОМ
ВОС1 УИА 1024
 РЕГ 65
 ЗП 2047
 УИА 3
 ПБ (М10)
ПРОКАН УИИ М13(М10)
 ПВ УПРИ(М10)
 УИА -1(М2)
 СЧ Р-К(М5)
 СДА 64+38
 УИ М14
 СЧ РФ-К(5)
 СДА 64+38
 УИ М3
 УИА 2
 СЧ ТОП(М14)
 НТЖ 0
 СЧ ТОП(М3)
 УИА 3
 ЗП Н-К(М5)     ЗАД.
 СЧМР 64
 ЗП Н+1-К(М5)
 УИИ М10(М13)
 УИИ М11(М3)
 СЧ Н+1-К(М5)
ПОТОП НОП ,
 УИИ М15(М1)
 УИИ М16(М5)
 ПВ ИСКЛИС(М17)
 СЛИА 1(М11)
 ПВ ССЫ(М17)
 УИИ М1(М15)
 УИИ М5(М16)
 УИИ М13(М12)
 УИИ М11(М14)
 СЧ Н-К(М5)
 ЦИКЛ ПОТОП(М2)
 СЧ Н-К(М5)
 И Е48П17
 УИА 2
 ЗП ТОП(М14)
 УИА 3
 СЧ Н+1-К(М5)
 И Е48П17
 УИА 2
 ЗП ТОП(М3)
 УИА 3
 СЧ Е5
 ПВ ГАШЗАН(М15)
 УИА 3
 ПБ НОР-К(М5)
КЗ НОП 0    М333
 СЧ 23(М1)
 СДА 64+15
 И П177
 НТЖ ПРИУПР-АВР(М7)
 ПО УПРЯ-АВР(М7)
* ср. СВС БОЭК1
 СЧ УКАЗД(М1)      в СВС метка М333
 И ЕПЕР
 ПЕ М444
 СЧ ЯЧНИА(М1)
 И ЕНИИАС
 ПО КЗ221-АВРАС(М7)
 СЧ 36(М1)
 СДА 64+41
 ПО КЗ222-АВРАС(М7)
 ПБ КЗ221-АВРАС(М7)
М444 УИА 0(М14)
 ПБ БАЦ
БОЭВХД	ноп
 СЧ АВРР-АВРАС(М7)    ПЕРЕХ В АВРАС
 ЗП 31(М7)   ВОССТ.ПРИП
 СЧ 4(М1)
 УИ М17
 ПБ ВЫХКЗ-АВРАС(М7)
МЭ63 УИА 1(М14)
 ПБ ДИМОН
БАЦ СЧ 31(М7)    ПЕРЕХ В АРФУ
 ЗП АВРР-АВР(М7)
ДИМОН СЧ
 ПВ ТБУФ(М15)
 УИА 3
 СДА 64-8
 УИ М16
 УИИ М10(М16)      М10 - БАЗА ПЕРЕХ-А
 СДА 64-2
	или	хлаарх КУС63 ?
	слц	НОММЛ1
	пб	ФИЗОБМ
*
 ЭКВИВ (ЕОТКЛМ,'3003') - МОЖЕТ В "СОСТАВ"?
*
ГЕНС ВНЕШ вав
ДИСП70 ВНЕШ ОАС,ТВ206А,КЛЮЧ,ЗАПР1,ВРЗАПР,ВРЕМЯ
ДИСП70 ВНЕШ БМВ,ЭКВЫХ,ШАРКЗМ,Ш1М,ТВ40,э1а
ДИСП70 ВНЕШ ряо2,ССЫЛКА,П7,РЯО1,РЕЖРАЗ,РАЗМГ,ТУС,ЛТБД
ДИСП70 ВНЕШ ГАШРП1,ШКМДП,шдисп3,ЯЧКЧ,ту10,ИВ25,СТ175
ДИСП70 ВНЕШ АСБОЙБ,Е37Е36,шдисп4,БЯК,Е42П1,ТЗНМД,РСЧРАЗ
ДИСП70 ВНЕШ П27,шдисп1,тв210,НМБТР,шдисп2,ТВ67А
ДИСП70 ВНЕШ ШЗРАЗМ,Е17Е13,БПУ,ЗАПВЕТ,шк14
ДИСП70 ВНЕШ П12,ЗАНПР,КРОМЕ,РТЛ,ГРАНЬБ,П14
ДИСП70 ВНЕШ ВЫМГ,УПОК,шдисп5,ШЗЗ,НЛОГ,НФИЗ
ДИСП70 ВНЕШ НЕТНАП,Е47П1,ЗАПРК,П32,НОМАРС,ЭКВВ,КИК1
ДИСП70 ВНЕШ ТСЛ,Е6П4,ЭК38,ЭК30,УЧКОН,Е48П25,ВКАНАЛ,ТАС,ШКЗЗК1
ДИСП70 ВНЕШ СМ,РК,ГУС,Е48П43,СЧЗКМБ,НЗАД,ПРЕДЕЛ,Е48Е47,ШКОБП
ДИСП70 ВНЕШ П17,И16,ШЗЗПСЧ,ШЗПОМБ,П13,ТМБ,ШГ,ИПОБМ,БИЗОН1
ДИСП70 ВНЕШ ГОД,СЧПР1,R,нпрмб,РАБШК,ВИСП16,Е41П1
ДИСП70 ВНЕШ Е24П16,ИНФМБ,П377,ИНФСЛЭ,П177,Е15П1,Е46Е45,Е24П1
ДИСП70 ВНЕШ УСМ,УСММБ,П777,П3777,П1777,РЯО,Е33П25,ОЧКУС,МШГП
ДИСП70 ВНЕШ ВСЕЕД,Е15П11,Е15П2,Р1,РЭ2,РЭ3,ЕЗАР,припа
ДИСП70 ВНЕШ Е18П1,Е21Е1,Е21Е18,Е26Е25,Е46П48,Е47П43
ДИСП70 ВНЕШ ЗОНАМЛ,ЗОНАТР,ЗОЧ1Б,И15,И17,И20,МГРП,врзад,УСТПРП
ДИСП70 ВНЕШ КЛЮЧРЗ,КУС2,ЛИСТА,МБКУС,МГНЕИС,МПРЛ,МШГ,НАПРМГ
ДИСП70 ВНЕШ ОЧКСУМ,ОЧКУСД,ОЧМБ,П140,П2007,П23,П3,П30,ОСПОД
ДИСП70 ВНЕШ П37,П5,П6,П60,П77,П7777,ПРИП,РМЛ,Е16П32,ВСЕ6,Е40П1
ДИСП70 ВНЕШ РМР,РЭ1,РЯО5,СМШГП,СЧЗАК,ТУСП,УКАЧАЙ,КНАПР
ДИСП70 ВНЕШ ГАШЗАН,ЗАХЗАН,ЗАНЯТА,(ЕОБММ,Е18Е17),ПАК,ЕДК10Р
ДИСП70 ВНЕШ ЯЛИС,ЯКУС,ШКОК,НОММБ1,ШГП,НОММЛ1,ТЗФСТР,БОБ
ДИСП70 ВНЕШ РЯР,ШЗНМБО,Е39П25,ЗАНПРП,ОТВКАЧ,ШМАРС,ШКОДП,ШИФРПЛ
ДИСП70 ВНЕШ ШЗЗОБМ,ШЗПОМД,ШКИВ,ШКМБ,Н19,НБТ
ДИСП70 ВНЕШ УКАЧП,ФКУС,ФКУСА,ФКУСАБ,ФКУСАД,ФКУСД,ФКУСМБ,Ш1
ДИСП70 ВНЕШ УКАЗД,ЕПЕР,ЯЧНИА,ЕНИИАС,ИНФСЛП,ОЧЛИСД
ДИСП70 ВНЕШ U4115,СОЛ,ТЗНМЛ,(Е6П1,П77),СЧПР2,Е31П17
ДИСП70 ВНЕШ ТВ201,ТВ41,ТБУФ,УХО,ТОБ,СКБЭ,П14037,ШКМГОС,КИК
ДИСП70 ВНЕШ ВРЕМЯР,ШР
ДИСКИ ВНЕШ Д1,Д3,ОПРГД,Д7В,дисвх3,ЗАНЛ
ДИСКИ ВНЕШ дисвх1,eq1,Q1,ЗВНЕПР,enq2
ДИСКИ ВНЕШ РАБМД,КУСКИ,СЧЗАКД,НОМРМД,РЯД,РЯД1,РЯД2,ИНФСД
ДИСКИ ВНЕШ рс,ЗАНКМД,РЯОД,е36е35,РАЗЛ,ОСВЛИН,негтб
ДИСКИ ВНЕШ пав,д102,д11,НГД,ЗУС,ПРД,НОМЛД,хладис
ДИСКИ ВНЕШ зс1,ос4,прпсс2,DEQ,ХЛОМ,Д10,ПРОХ,ПС1,РАОБЩ
ДИСКИ ВНЕШ ИПЗМД,МДНАП,ОСВ1,СНЯЛИЗ,ПРО,АПРО,ОСУ,п3700,СОД
ДИСКИ ВНЕШ ОСВМД,нм,NКОБ,ЕNQМДС,ШЗМД
БОЭК1 ВНЕШ ВХСМ,МЯ,ПЕЭКС,ВЫЗОВ,ИСКЛИС,ССЫ,пир
ВИСП ВНЕШ ВШГП,ИЗШГП
ВЗУ ВНЕШ ФИЗОБМ,анвоб,УЗЩ
ВЗУ ВНЕШ Э1,ЗОВЫ,УИИ,СММ16,ЗАПЭКС,ЭКЛИСТ,ЭКВЫХ1,АНВО6А
ВЗУ ВНЕШ взук71,ВЫЗКЧ,ST7007,ЗАПРОС,сис1,СБОЙБ,ЭККВМ,ПОК
ВЗУ ВНЕШ ЭКС75,ЭКП,ЗОВИ,ПРХЭ67,ГОША,АЦПУ,ТУМБР,ПРКА
ВЗУ ВНЕШ U7045,U7050,ВХЛ,ВХМД,шквзу1,шкут,ппп3,ФИЗУР
ВЗУ ВНЕШ ФЗОН,U5350,U5443,U5542,АНВО9,ФТН,фзокм1,ФЗО5,Э72
ВЗУ ВНЕШ ПОДВ91,надо
ГРУППА ВНЕШ Э62ГРУ
КИТ ВНЕШ СЧЕ,ЗАК,Е48П2,хлаарх
КИТ ВНЕШ ШКОР,ШКЗ,БРАКТР,КЛЮМК,ММГРП,ШКВМК
КИТ ВНЕШ ШИФР,ГРИФ,СТПМК,КЛМК,РМР3
КИТ ВНЕШ ЗКАТ,НЕН,ЗОБ,КСБГОД,ЧСТР,ЛС641,Ч10,Ч20
КИТ ВНЕШ Е1П25,БУДП,БУДЗП,КУСБУФ,Е34П1,БУДНБ
КИТ ВНЕШ ВРВВОД,ВРВЫД,РЗМГЕС,КОНСБР,Е48П41,ТРТЕСТ
КИТ ВНЕШ Е34Е30,Е48П42,Е39П37,СИСТ,Е26П13,Е32П25
КИТ ВНЕШ Е24П17,Е16П9,Е40П33,КГАШЛ,КГАШК,КРСТР
КИТ ВНЕШ КРЗБТР,ШОЧНМД,ШОЧМД,ШОЧЛ,ОЖОСВ,ЯПРМД,КОМТР
КИТ ВНЕШ РАЗГОН,СТРЕЛА,ШИМЛ,ЕС5017,ПЛОТН
КИТ ВНЕШ ДОП,ДОПВР,ЗАКАЗ,КУС5,КУСДВ,МГЗ,ШКРДО
КИТ ВНЕШ АКТБД,ТОПЛИС,АКТОП,МПРЗ,МПЗС,ТАСТЗ
КИТ ВНЕШ КИ,ПЕРЕ2,СМЕМЛ,ДСТОП,ДЕЛ,ТБЛ,ВППС,КЛЮЧАР
СОСТАВ ВНЕШ ТОП,ТБД
АВРАСП ВНЕШ (АВР,АВРАСП),(АВРАС,АВРАСП),ПРИУПР,УПРЯ
АВРАСП ВНЕШ КЗ221,КЗ222,(АВРР,Р),(ВЫХКЗ,ВЫХОД)
КАНАЛ ВНЕШ (К,КАНАЛ),РФ,Н,НОР
МОТТ ВНЕШ ЭКО,шквид1,тппv,ШКВЫД,ш
КАЧКА ВНЕШ Е48П17
ДМЛМБ ВНЕШ ффф,ФТ1,ДИСПМБ,прл,ВЫХ1,ДВОЧ1,АВ,В1241,НОРМА2
ДМЛМБ ВНЕШ зкмл4м,ПРЛКЛ,ДЛЯДИС,ОПРБ6А,прлб1,ПРЛ17А,ДИСЛ
ДМЛМБ ВНЕШ В587,ВЫХ3,Б62,ВЫКМГ,НОРМА,ОХ5017,ПРЛСЧ7,набоб3
ДМЛМБ ВНЕШ ДИСП5В,ПРЛ2В,В1404,дмлзак
ЕСМЛ ВНЕШ ЕЛЕС,ЗАПДВ,Е533,Е587,езпмг,еподве,ЗД,закес
ЕСМЛ ВНЕШ е1241,устмгз,е1314,е1348,е1351,е1352,НЕОХ2
ЕСМЛ ВНЕШ е1469,наб77,СМИ1,прлб3,несч1,START,МВ1,КОНРЗ
ЕСМЛ ВНЕШ РЗЕС,ПРЕС,ПРЛЕС,норм1а
РЕЗАРХ ВНЕШ ШКЭ70А,СЕМАРХ
 ВХОД зсс,чтре,чр,МЛМД,прлб,СНЗКМЛ,вызнп,выхнп
 ВХОД Э62,Э63,Э66,Э70,Э71,ИПЗ54,ИПЗ55,осс,ПРОКАН,Т,ПРЛЧП
 ВХОД н1352,хм,врмл,ЕСЭ,фт32,фи,УПРИ1,ПРЕС7,НЕОХ
 ВХОД МВ,г6,ХЛИМ,УПPИ,HAMБ,ЛECH,HAЧAЧУ,ПPУ12,Н1351,ПРУСТ
 ВХОД ПEPE,ПOДB80,несчет,зпмг,BXД,ДBOЧ,ДOC,Н533,Н1193
 ВХОД OCBУ,ПEPEH,ДBOЧД,CHЗЩД,ДБИP,ДИ,вызав,ДИХ,н1469,МЭ63,КЗ
 ВХОД опс1,зсс1,зс100,зс4,зс11,зс13,дзс,ос1,н587
 ВХОД осе,осж,чр2,освм,выза,прп,прпб,анкобм,ПРОГПР
 ВХОД обрвн1,гашгрп,eq,ХЛУМ,CC,общ2,фтзи,Н1314
 ВХОД ВОС1,ТОПСН,ОБХ3,ПРЛ2Е,ДИМОН,норма1,наб70,подвес
 эквив (Т,4)
*
    АПУ     (&К71).ДА5
************** ВХОД И ВНЕШ ДЛЯ ШТАТ. РАБОТЫ *************
 ВХОД маска
ДИСП70 ВНЕШ ТВ67,Р
********************************************************
	АПБ	.НЕТ5
.ДА5 АНОП
************** ВХОД И ВНЕШ ДЛЯ РАБОТЫ К-71 **************
МОТТ ВНЕШ дтпре2,мотвс1,мотди3
 ВХОД прп2а
КАНАЛ ВНЕШ Р
ДИСКИ ВНЕШ дисшк6
ЗОН676 ВНЕШ к71шк6
*********************************************************
.НЕТ5 АНОП
	ФИНИШ
