ТРУБКА СТАРТ ’10000’
 Б
 Е
 М
*
	ГБЛВ ∧К71,∧БЭСМ
*∧БЭСМ УСТВ 0
∧К71 УСТВ 1
*
 УПОТР ТРУБКА(7)
 ПАМ 1
 КОНД М41В’3’
 ПАМ 21
 КОНД В’0’     НЕ ЗАНИМАТЬ
 ПАМ 9
 КОНД М47В’1’
РАБ КОНД В’0’
КУС7Н КОНД В’0’
 КОНД В’0’
РУБИ КОНД В’-1’М23В’17777’
 КОНД В’0’
СОБР КОНД В’71717’
* ЗП РАБ НОМ.ЗАДАЧИ
 НТЖ 0
 ПО ВЫДТТ
 И П77
 УИ М1
 СЧ ТУСП-1(М1)
 УИ М2 ИПЗ ПОЛЬЗ-ЛЯ
 СЧ 4(М2)
 ЗП 3(М2)
 СЧ 5(М2)
 И Е48П16
 ЗП 5(М2)
 СЧ 8(М2) М16
 УИ М3
 МОДА ЛИСТЧ
 УИА (М15)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 СЛИА -’1200’(М3)
 МОДА Э5200
 ПИНО (М3)
 СЧ (М2) Э1200
 ИЛИ ПРИП+4
 НТЖ ПРИП+4
 И Е42П1
 ЗП КУС7Н
 СДА 64-10
 УИ М12         свс: М16
 СЧ (М2)
 И П37
 НТЖ П37
 УИ М4
        и       П30
        нтж     П30
        уи      М6
        сда     64+3
        уи      М3
 УИА 16(М17)
        сч      КУС7Н
        и       Е21
        пе      G10100
 УИА ’2000’
 СЧ 40(М12)     свс: М16
 УИА ’2003’
 СЧ 32(М2)
 ИЛИ Е48(М4)
 ЗП 32(М2) ЗАКРЫТИЕ ЛИСТА
G10100     ноп 
 СЧ НЗАД
 СДА 64-42
 ИЛИ КУС7Н
 ЗП КУС7Н
 И П3
 УИ М15
 СЧИ М4
 СДА 64+2
 УИ М16
 МОДА (М16)
 СЧ 24(М2)
 СБР ПРИП(М15)
 РЗБ ПРИП+4
 ИЛИ КУС7Н ФОРМ.КУС 7Н
 ЗП КУС7Н
 И Е23
 ПЕ ОБМИНИ
 СЧ КУС7Н
 ИЛИ П77
 НТЖ П77
 ИЛИ П3         Е1-ТИП СДВИГА,Е2-БЛСЛСЛ
 ЗП КУС7Н
 УВВ ’4023’     ОПРОС РС
 ЗП (М2)
 И П7
 НТЖ П5
        уи      М5
 ПО ВЫХОД      У-ВО В АВТОНОМЕ
G10116	сч	КУС7Н
	и	E18
	сда	64+3
	уи	М5
	пе	ОБМЕН
	сч	КУС7Н
	и	Е42Е21
	по	ОБМЕН
	уиа	-7(М15)
G10123	уиа	'2000'
	мода	0(М12)
	сч	-1(М15)
	уиа	'2003'
	зп	'77'(М15)
	мода	G10123
	цикл	0(М15)
	уиа	-7(М15)
G10127	зп	1
	мода	G10127
	цикл	0(М15) 
ОБМЕН СЧ Е25
 ПВ ТВ67(М15)
 СЧ КУС7Н
 УВВ 7
 МОДА ВЫХОД1
 УИА (М10)
 СЧ П3777
 ПВ ТАЙМЕР(М15)
ИДК УИА ’2003’
 УИИ ’33’(М10)
 СЧ ИВ25
 УИ ’27’
 СЧ Е37
 УИА ТВ18(М15)
 ПБ ИЗШГ
ОБМИНИ НОП 0
 НТЖ КУС7Н
 ИЛИ П77
 НТЖ П77
 ЗП КУС7Н
 ПБ G10116              свс: ОБМЕН
Е42Е21  конд    м41в'1'м20в'1'
АВХОД СЧ РОДОН
 ИЛИ Е48
 ЗП РОДОН
 ПБ ВТРУБУ
ВЫХОД1 СЧ П17
 СЛЦ ЖДЕТ(М2)
 ЗП ЖДЕТ(М2)
 СЧ ШЗБУДС
 И Е37
 ПЕ ВЫХОД2     ВОШЛИ ПО ПРЕР.
 СЧ П77777
 ЗП (М2)       ВОШЛИ ПО БУД-КУ
 СЧ Е25
 ПВ ТВ67А(М15)
 СЧ Е1
 УВВ ’31’       УСТ.РБУС7
ВЫХОД2 СЧ 0
 ПВ ТАЙМЕР(М15) СНЯТЬ БУД-К
ВЫХОД   ноп
        сч      КУС7Н
        и       Е21
        пе      G10162
 СЧ 32(М2)
 НТЖ Е48(М4)
 ЗП 32(М2)
	сда	64-4(М6)
	рег	'30'(М3)
G10162	мода	ПОТОР
	пио	0(М5)
	уиа	1024(М6)
	сч	КУС7Н
	и	Е42Е21
	по	G10173
	уиа	ИПЗМЛ(М4)
	уии	М15(М12)
	слиа	-64(М15)
	уиа	-7(М14)
	уиа	'76071'(М10)
	уиа	(М13)
	мода	G10202
	пв	0(М5)
	сч	КУС7Н
	и	E21
	пе	G10200
G10173	сч	КУС7Н
	и	E41
	по	G10200
	уиа	1024(М4)
	уии	М15(М12)
	уиа	-1023(М14)
	уии	М10(М14)
	уии	М13(М12)
	мода	G10202
	пв	0(М5)
G10200	сч	К2013
	уи	М21
	пб	ПОТОР
G10202	мода	'211'(М7)
	уиа	(М3)
	счи	М3
	сда	64-24
	зп	ТРУБКА+4
G10205	счи	М4
	уи	М21
	мода	0(М13)
	сч	'1777'(М10)
	уи	
	мода	G10213
	пино	0(М13)
	пам	0
	уии	М21(М6)
	мода	0(М15)
	зп	'1777'(М10)
G10213	уиа	'3'
	слиа	1(М10)
	мода	G10205
	цикл	0(М14)
	пб	0(М5) 
* ПБ ПОТОР
Э5200 СЧИ М3
 УИА 36(М17) ЗАПРЕЩЕННЫЙ ЭКСТРАКОД
 СДА 64+5
 ПЕ ЛИСТЧ
 СЧ 19(М2)     М3 ПОЛЬ-ЛЯ
 НТЖ СОБР
 ПЕ ЛИСТЧ
 СЧИ М3
 И Е5
 ПЕ ЭК1203     ЭК 1220-1237 ДЛЯ КАРАТА
 МОДА ЭК1201-1
 ПБ (М3)
ЭК1201 СЧИ М3
 ПБ Э1240
ЭК1202 СЧИ М3
 ПБ Э1240
ЭК1203 СЧИ М3
 ПБ Э1240
ЭК1204 СЧ (М2)
 ПБ Э1204
ЭК1205 СЧ (М2)
 ПБ ГРАФИК
ЭК1206 СЧ (М2)
 ПБ БОБН
 УИА ’2003’
  ПБ ЗАХВ ЭКД ПОЛЬЗ
*
*!В К-71 ВМЕСТО ГРАФОПОСТРОИТЕЛЯ
*ИСПОЛЬЗ. ДРУГОЕ ОБОРУДОВАНИЕ, ЛИБО
*ОН ИСПОЛЬЗУЕТСЯ НЕ НАПРЯМУЮ.
*
	АПУ	(&К71).ДА
*
	СЧ	(М2) !ШТАТНО
 	ПБ ЛИСТЧ
	 СЧ (М2)
 	ПБ ГРАИТМ
*
	АПБ	.ОБЩ
*
.ДА АНОП
 СЧ 0         свс: (М2)
 ПБ трбк7б	!ДРУГОЕ ОБОРУДОВАНИЕ!
 СЧ (М2)
 ПБ трбк7а   ГРАИТМ    ГРАФАЛ
*
.ОБЩ АНОП
 СЧИ М1
 ПБ ОТКВЫ    ОТКАЗ ОТ ВЫДАЧИ НА АЦПУ
 СЧ (М2)
 ПБ ЛИСТЧ
 СЧ (М2)
 ПБ ЛИСТЧ
 СЧ (М2)
 ПБ ЛИСТЧ
*
	АПУ     (&К71).ДА1
	 СЧ (М2)
	 ПБ ЛИСТЧ
	 СЧ (М2)
	 ПБ ЛИСТЧ     Э1217
*
	АПБ	.ОБЩ1
.ДА1 АНОП
 СЧ Е1
 ПБ трбк7б
 СЧ 0
 ПБ трбк7б     Э1217
*
.ОБЩ1 АНОП
ГРАИТМ НОП ------
Э1240 НОП ------
*
        АПУ     (&К71).ДА2
	 УИА 36(М17)    ЗАПРЕЩ ЭК-Д
	 ПБ ЛИСТЧ
*
	АПБ	.ОБЩ2
*
.ДА2	АНОП
        зп      КЛЮЧ
        уиа     8(М3)
        сч      ВХ1220
        по      трбк7б
        уи      М11
        пб      (М11)
*
	АПУ     (&К71).ДА3
.ОБЩ2 АНОП
 УИ М4
 УИА 58(М17)
 УИА 1027
 СЧ ГРАСИ
 ПО СВОБ
 И Е48-1(М1)
 ПО МОЖНО
 СЧ ГРАСИ
 И Е1
 ПО СВОБ
МОЖНО СЧ Е48-1(М1)
 ИЛИ ГРАСИ+1
 ЗП ГРАСИ+1
 ПБ ЗАКРО
СВОБ УИА -63(М16)
СЛТ УИА 0
 СЧ (М4)
 УИА 3
 ЗП ГРАФАЛ+63(М16)
 СЛИА 1(М4)
 МОДА СЛТ
 ЦИКЛ (М16)
 УИА 1027
 СЧ Е48-1(М1)
 ИЛИ Е1
 ИЛИ ГРАСИ
 ЗП ГРАСИ
 УИА 3
 УИА КОБГР(М16)
 СЧИ М16
 ЗП РОДОН
 СЧ Е8
 СЧ Е5
 ПВ УСТПРП(М15)
 СЧ Е40
 ЗП БУДГРА
 СЧ ПРЕДЕЛ
 И ЕГРА
 СДА 64+СДГРА
 УИ М15
 СЧ Е8(М15)
 ЗП ГРАФАЛ+64
*
.ДА3 АНОП
ПОТОР СЧ 33(М7)
 НТЖ Е48
 СЛЦ 33(М2)
 ЗП 33(М2)
 СЧ Е48
 ЗП 33(М7)
ПОЛЬЗ СЧ Е48-1(М1)
 ПВ ВШГП(М15)
 СЧ ТУСП-1(М1)
 И РУБИ
 ЗП ТУСП-1(М1)
ОКОНЧ СЧ Е37
*
	 АПУ     (&К71).ДА4
	 ПБ	БЛИСКВ
*
	АПБ	.ОБЩ4
*
.ДА4 АНОП
 ПБ ОТКАЗН 
*

*
.ОБЩ4 АНОП
Э1204 УВВ ’147’
 ПБ ПОТОР
ЛИСТЧ УИИ М15(М2)
 ПВ АВОСТА(М16)
 УИА ’2003’
 ПБ ПОЛЬЗ
ГРАФИК СЧ Е8
 ПВ УСТПРП(М15)
    СЧ  Е9
   ПВ  ТАЙМЕР(М15)
 МОДА АВХОД
 УИА (М15)
 СЧИ М15
 ЗП РОДОН
 МОДА ИДК
 ПВ (М10)
 СЧ Е8
  ПВ  ГАШПРП(М15)
   СЧ  РОДОН
  И  Е48
    ПЕ  БУДИЛ
  МОДА  ПВЫД
  УИА  (М15)
 ПБ ВЫДТ
ВЫДТТ МОДА ОКОНЧ
 УИА (М15)
ВЫДТ УИИ ’32’(М15)
   МОДА  ВКЛ
   УИА  (М16)
 ПБ ВЫДТ1
ПВЫД   СЧ   5(М2)
    И  П77777
   ПЕ  ПОТОР
   СЧ  3(М2)
    И  П77777
 СЛЦ П77777
 НТЖ 3(М2)
 И П77777
 НТЖ 3(М2)
 МОДА 3
ВЫХПОТ ЗП (М2)
 ПБ ПОТОР
БУДИЛ ПВ ТАЙМЕР(М15)
  СЧ  (М2)
  РЕГ  ’35’
 ПБ ПОТОР
БОБН УИА 36(М17)
 И П777
 НТЖ ПРОАРХ
 ПО ВАРХ
 СЧ (М2)
   ПВ  ИЗ10В8(М15)
 ЗП РАБ
 СДА 64+12
 ПЕ ЛИСТЧ
 УИА -А+1(М17)
ИЩИ СЧ РАБ
  НТЖ  ТЗНМЛ+А-1(М17)
  И  П7777
  ПО  НАШЛИ
   МОДА  ИЩИ
   ЦИКЛ  (М17)
 СЧИ М1
 СДА 64-42
 РЗБ МИС
 ИЛИ КИН
 ЗП СРМГ+1
 СЧ (М2)
 СДА 64-32
  РЗБ РЗБ
 ИЛИ СРМГ+3
 ЗП СРМГ+2
 МОДА ВВЫД
 УИА (М15)
 УИИ ’32’(М15)
 МОДА СРМГ
 УИА (М16)
ВЫДТ1 СЧ Е23
 ПБ ТВ40
ВАРХ СЧ (М2)
 МОД ТУСП-1(М1)
 ЗП ИНФ
 СЧ СОБА40
 ПВ ЗАПВЕТ(М16)
 СЧ Ш1
 ИЛИ Е48-1(М1)
 ЗП Ш1
 СЧ 1(М2)
 И Е48П9
 ИЛИ Е4
 ЗП 1(М2)
 ПБ ОКОНЧ
ВВЫД СЧ 0
 ПБ ВЫХПОТ
НАШЛИ НТЖ РАБ
 ПБ ВЫХПОТ
ЗАХВ СЧ ЗАХВМЛ
 ПЕ ЗАХ1
 СЧ Е48-1(М1)
 ПБ ЗАХ2
ЗАХ1 И Е48-1(М1)
 ПО ЗАХ3
 НТЖ ЗАХВМЛ
 ПВ ВШГП(М15)
 СЧ 0
ЗАХ2 ЗП ЗАХВМЛ
 ПБ ПОЛЬЗ
ЗАХ3 СЧ ЗАХВМЛ
 ИЛИ Е48-1(М1)
 ЗП ЗАХВМЛ
ЗАКРО СЧ П2007
 И П77777
 ИЛИ 5(М2)
 ЗП 5(М2)
 УИА ’550’(М15)
 СЧИ М15
 ЗП 3(М2)
  ПБ ОКОНЧ
ОТКВЫ ЗП 25(М7)
 УИА 1027
 СЧ АВОС(М2)
 ИЛИ Е32
 ЗП АВОС(М2)
 Э64 0
 УИА 1027
 СЧ АВОС(М2)
 НТЖ Е32
 ЗП АВОС(М2)
 ПБ ПОТОР
*
 	АПУ     (&К71).ДА5
	АПБ	.ОБЩ5
*
.ДА5 АНОП
трбк7б	слиа	-8(М3)
	пв	ТБУФ(М15) !ВЗЯТЬ ЛИСТ?
	уиа	'3'
	сда	64-8
	уи	М16
	сда	64-2
	зп	РАБ
	мода	трбк7д
	пино	0(М3)
	или	трб7ш2
трбк7в	зп	РАБ
	сч	НОММЛ
	и	МАС
	или	РАБ
трбк7г	уии	М11(М16)
	пб	ФИЗОБМ
трбк7д	слиа	-7(М3)
	счи	М16
	зп	БНСО
	мода	0(М3)
	слц	'410'(М7)
	зп	трб7яч
	сч	РАБ
	мода	трбк7е
	пио	0(М3)
	или	трб7ин
	или	НОММБ1
	пб	трбк7г
трбк7е	или	трб7ш3
	пб	трбк7в
	мод	трб7яч
	пб	0
трбк7ж	сч	E1
	пв	ТБУФ(М15)	!ВЕРНУТЬ ЛИСТ?
	сда	64-8
	уи	М10
	сда	64-2
	или	НОММБ1
	или	трб7ш1
	уии	М16(М10)
	пб	ФИЗОБМ
трб7ш1	конд	в'400022'
	конд	в'121'
	конд	в'421'
трб7яч	пам	1
трб7ин	конд	п'00020Ц'
трб7ш2	конд	в'4070301400000'
трб7ш3	конд	в'4056401400000'
*
.ОБЩ5 АНОП
СРМГ КОНД П’5УСТ С’
 КОНД П’РОЧНО ’
КЛЮЧ ПАМ 1
 КОНД П’Б0000↑’
РЗБ КОНД П’0    0’
МАС КОНД В’0070000000001600’
ВКЛ КОНД П’2ВК.Г↑’
КИН КОНД П’РЧ.К00’
МИС КОНД П’000077’
*
 	АПУ     (&К71).ДА6
	АПБ	.ОБЩ6
*
.ДА6 АНОП
трбк7а	и	П37
	уи	М4
	сч	шкот7а
	или	Е48-1(М1)
	нтж	Е48-1(М1)
	пе	ЛИСТЧ
	счи	М4
	сда	64-10
	уи	М15
	уиа	16(М17)
	уиа	'2000'
	сч	'50'(М15)
	уиа	'2003'
	сч	Е48-1(М1)
	зп	шкот7а
	сч	шкот7б
	или	E48(М4)
	зп	шкот7б
	пб	ПОТОР
*
.ОБЩ6 АНОП
ПРОАРХ КОНД Х’ЕЕ’
* 
 ЭКВИВ (А,96)
*
ДИСП70 ВНЕШ СОБА40,Е48П9,П777,ЗАПВЕТ,Ш1,ИНФ,К2013
ДИСП70 ВНЕШ АВОС,АВОСТА,БЛИСКВ,БНСО,ИВ25 --
ДИСП70 ВНЕШ ГАШПРП,Е42П1,Е48П16,ЖДЕТ,ЗАНЯТА,ЗАХВМЛ
ДИСП70 ВНЕШ ГРАФАЛ,БУДГРА,ГРАСИ,ВХ1220
ДИСП70 ВНЕШ ТУСП,П30,ИПЗМЛ
БОЭК1 ВНЕШ КОБГР
ВИСП ВНЕШ ИЗШГ,ВШГП
ДИСП70 ВНЕШ ИЗ10В8,МГРП,НЗАД,НОММБ1,НОММЛ,П77777,П7777
ДИСП70 ВНЕШ П2007,П77,П60,П37,П17,П7,П5,П3,ПРИП,РОДОН,ТАЙМЕР
ДИСП70 ВНЕШ ТБУФ,ТВ18,ТВ40,ТВ67,ТВ67А,ТЗНМЛ,ТУС,ОТКАЗН
ДИСП70 ВНЕШ УСТПРП,ШГ,ШЗБУДС,П3777,ПРЕДЕЛ --,ЕГРА,СДГРА
БОЭК1 ВНЕШ ЗАПВЫХ
ВЗУ ВНЕШ ФИЗОБМ
*
 ВХОД ИДК,КЛЮЧ,КУС7Н,ЛИСТЧ,ОКОНЧ,ПОЛЬЗ,РАБ
 ВХОД ПОТОР,ОБМЕН
*
 	АПУ     (&К71).ДА7
***************ВНЕШ ДЛЯ ШТАТНОЙ РАБОТЫ *******************
ВЗУ ВНЕШ втрубу
*********************************************************
	АПБ	.ОБЩ7
.ДА7 АНОП
******************* ВНЕШ ДЛЯ РАБОТЫ К-71 ******************
МОТТ ВНЕШ шкот7а,шкот7б
ВЗУ ВНЕШ (втрубу,загл7а)
***********************************************************
*ЧП
.ОБЩ7 АНОП
         ФИНИШ ,             В ВАШЕМ ФИНИШЕ ОШИБКА ИЛИ ЕГО НЕТ
