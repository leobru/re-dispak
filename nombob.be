*
*
*
*********************************************************
*******                                           *******
*******                Е26                        *******
*******                NЗАД= 27(134)              *******
*******                ТУС = 2151                 *******
*******                                           *******
*********************************************************
*
*
*
НОМБОБ СТАРТ ’10000’
 УПОТР НОМБОБ(М7)
 Б
 М
 Е
*
    ГБЛВ ∧К71,∧БЭСМ
*∧БЭСМ УСТВ 0
∧К71 УСТВ 1
*
 КОНД В’0’
 КОНД М41В’3’ РЖА 3
 КОНД (3)В’0’
 КОНД М15В’2003’
 КОНД (14)В’0’
 КОНД В’0’
 КОНД В’0’
 КОНД В’0’        СВБОДНО
ТМЛ1 КОНД П’  0000’
 КОНД П’ - 00,’
R1 КОНД В’0’
R3 КОНД В’0’
МСК2 КОНД В’1603400’
ТМЛ4 КОНД П’1ПР.МГ’М46В’1’
К2 КОНД В’37777777777’
ПАР КОНД В’0’
 ПАМ 1    ПРИП
 КОНД В’0’
 КОНД М47В’1’
ТМЛА КОНД П’1ВКЛМГ’
КУСП КОНД М17В’1’М10В’3’М2В’21’В’0’    СМЕНА1
 КОНД В’0’ 44-Я ЯЧ.ПОРТИТСЯ П0И ПЕЧ.ТТ(1÷21РР)
 ПАМ 2    СВ-НА
*
	АПУ   (∧К71).ДА0
пртаб	пам	1
*
.ДА0 АНОП
ПРИЗ КОНД В’1’
* ДЛЯ ТЕРМИНАЛЬНОГО РАСПИСАНИЯ
 СЧ ФЛАТЕР
 И Е24П1
 ПО НАЧ
 ВЧ ВРЕМЯ
 ПО НАЧ
 СЧ ФЛАТЕР
 И БЛР
 ПЕ НАЧ
 УИА 1027
 СЧ ФЛАТЕР
 ИЛИ Е47
 ЗП ФЛАТЕР
 СЧ ШКИВ
 ИЛИ ЕПУСК
 ЗП ШКИВ
 УИА 3
НАЧ УИА -1(М2)
 СЧ Е48П17 свс: ЕЗАР
 ЗП МИН
 УИА 1-КГРУП(М16)
МИНИ СЧ КМИН
 И Е1(М16)
 ПО ПМИ2 КЛ БЕЗ МИН
 УИА -МЧПЗ+1(М15)
 УИА 1(М14)
 ЗП R1
ПМИН СЧ ГРУП+КГРУП-1(М16)
 И ШКРЗ
 И Е48+МЧПЗ+НПЗ(М15)
 ПО ПМИ1
 МОД ТУСП+МЧПЗ+НПЗ(М15)
     уиа        0(М17)
 СЧ 33(М17)
 СДА 64+24
 ВЧ R1
 ПЕ ПМИ1
 УИИ М14(М15)
 СЛ R1
 ЗП R1
ПМИ1 МОДА ПМИН
 ЦИКЛ (М15)
 СЧ Е48+МЧПЗ+НПЗ(М14)
 ИЛИ МИН
 ЗП МИН
ПМИ2 МОДА МИНИ
 ЦИКЛ (М16)
 УИА (М12)
 ПБ вдисп svs: ОБХОДИ
ДЛЯУПР ВЧ Е1
 ЗП БУДУПР
ВСЕУПР НОП
       сч       пав
       по       СЛЕДМБ
       уиа      0(М5)
       уи       М15
ВУЗ МОДА (М5)
 СЧ БУР+2-АВМД(М15)
 ПО ВАЗ
 МОДА ВОЗ
 УИА (М16)
 УИИ ’32’(М16)
 МОДА (М5)
 МОДА БУР+2-АВМД(М15)
 УИА (М16)
 ПБ ПЧТ
ВОЗ СЧ 0
 ЗП (М16)
ВАЗ СЧИ М5
 НТЖ П30
        по      СЛЕДМБ
 СЛИА 8(М5)
 Пб ВУЗ         свс: ПЕ
*
***************************************************
*                                                 *
*               ПЕЧАТЬ ОШИБОК  М Б                *
*                                                 *
***************************************************
*
СЛЕДМБ НОП ,
 УИА 3          свс: 1027
 ЗП ЧПОД
 ЗП R1
 УИА КУСП-Н(М5) СМЕНА 1
 МОДА ВНОР
 УИА (М16)
ВЫЗАСЧ СЛИ М5(М7)
 СЧИ М7
 СДА 64-2
 ИЛИ (М5)
 СЛЦ НОММБ1
 ПБ ФИЗОБМ
ВНОР ноп
     уиа -3(м16)
 СЧ 0
буд1 ноп
        сда 64-8
 ЗП РМЛ
 СЧ ЗАНЯТА
 И Е47
 ПО ВГЕНС
        увв     '4106'(М16)
        сда     64+8
        и       П377
        или     РМЛ
        мода    буд1
        цикл    (М16)
        или     ДЛЯНБ
        зп      РМЛ
        пб      ГОТЕС1-У1(М7)
вдисп  уиа     -1(М16)
        уиа     1027
мм1  сч      БУДГРА+1(М16)
        по      ммм
        слц     Е46
        зп      БУДГРА+1(М16)
        пе      ммм
        нтж     Е48
        зп      БУДГРА+1(М16)
        сч      ШКИВ
        или     Е37
        зп      ШКИВ
ммм  мода    мм1
        цикл    (М16)
ОБХОДИ СЧ РАБЕ16
 ПО ВСЕУПР
 СЧ БУДУПР
 ПЕ ДЛЯУПР
 СЧ ШКИВ
 ИЛИ Е16
 ЗП ШКИВ
 ПБ ВСЕУПР
МГЗАН СЧ ТЗНМЛ-24(М3)
 НТЖ R3
 И П7777
 ПЕ МГЗЫ
 СЧ ТЗНМЛ-24(М3)
 И О40
 ЗП ТЗНМЛ-24(М3)
 ПБ МЛ2А
МЛ6 СЧ ЕС5017   свс: ТМЛ+1
        пе      мл1ес
        сч
 ПБ МЛ1Б-У1(М7)       ВТ
МЛ2АБ УИА 3
 СЧ ПРИЗ
 ПО ВМЛ1-У1(М7)
 ПБ МЛ2А
******
МДПМ1 ЗП ТЗНМЛ-24(М3) ПОЧИСТ ЯЧ
 СЧ Е1
 ЗП ПАР
 ПБ ВМЛ1-У1(М7)
*
ДАР НОП
 СЧ ПАР
	по	ББ1-У1(М7)
	сч	
	зп	ПАР
	уиа	'2003'
	сч	ШАРСИС
	или	E26
	зп	ШАРСИС
	сч	СОБА40
	пв	ЗАПВЕТ(М16)
	пб	ББ1-У1(М7)
МГЗАД СЧ ТЗНМЛ-24(М3)
 НТЖ R3
 И П7777
 ПО СВП
 МОДА МЛ
 ПИО (М12)
МГЗЫ СЧ Е40
 ИЛИ ТЗНМЛ-24(М3)
 ЗП ТЗНМЛ-24(М3)
 СЧ Е48-24(М10)
 ИЛИ НОВМЛ
 ЗП НОВМЛ
 СЧ R3
 ИЛИ Е47
 МОДА НТЗНМЛ-24-Н(М7)
 ЗП (М3)
 УИИ М11(М2)
 СЛИ М11(М7)
 СЧ Е48-24(М10)
 ИЛИ ДР-Н(М11)
 ЗП ДР-Н(М11)
 СЧ ПР-Н(М11)
 ИЛИ Е48-24(М10)
 НТЖ Е48-24(М10)
 ЗП ПР-Н(М11)
 ПБ ВТЕК-У1(М7)
МЛ СЧ ТЗНМЛ-24(М3)
 И Е39
 ПО МГЗЫ
 ПБ ВТЕК-У1(М7)
СВП СЧ ПЕРЕ2
 ИЛИ Е48-24(М3)
 НТЖ Е48-24(М3)
 ЗП ПЕРЕ2
СОВП СЧ ТЗНМЛ-24(М3)
 И О40
 ИЛИ Е47
 ЗП ТЗНМЛ-24(М3)
ВЫВОД СЧ Е48-24(М10)
 ИЛИ R1
 ЗП R1 НОВЫЙ МГ (48Р.R1-3 НАПР.0 МГ)
МЛ2А НОП 0
 СЧ РМД(М2)
 НТЖ РМД1(М2)
 И К2
 ПЕ МЛ1А-У1(М7)
 УИА ’2003’
 СЧ Е6
 ИЛИ ШКИВ
 ЗП ШКИВ
 СЧ R1
 ПО ДАР
 НЕД П77777
 УИ М10
 МОДА ТМЛ-1
 УИА (М17)
 МОДА МЛ4
 УИА (М11)
МЛ3Е СЧ ТЗНМЛ(М10)
 И П7777
 ПВ ПЕРЕВ(М15) 8-10
 ИЛИ ТМЛ1
 ЗП 1(М17)
 УИИ М16(М10)
 СЛИ М16(М12)
 СЛИА 24(М16)
 СЧИ М16
 СДА 64-42
ФОРМТ РЗБ МСК2
 ИЛИ ТМЛ1+1
 ЗП 2(М17)
 ПБ (М11)
МЛ4 СЧ Е3
 СЛЦ 2(М17)
 ЗП 2(М17) ПРИФОРМ.КОНЕЦ
 СЧ ТМЛ
 И Е41П1
 ЗП ТМЛ
 МОДА ДАР
 УИА (М15) А ВОЗВР.
 УИА ТМЛ-НОМБОБ(М16)
МЛТТ СЛИ М16(М7)
 УИИ ’32’(М15)
ПЧТ СЧ Е23
 ПБ ТВ40
ПОИС6 СЧ ЗАНЯТА
 И Е47
 ПО ПОИСК
 ПБ ВЫХ

*************************************************
*   ПРОВЕРКА  ЗАВИСАНИЯ       М     П    Д      *
*************************************************
ЗВ2 ПАМ 0
 СЧ ЗАНЯТА      свс: ВРЕМПД
        и       Е7
 ПО НЕЗАВИ С
       АПУ     (&К71).ДА
       АПБ	.НЕТ
.ДА АНОП
********** БЛОК РАБОТЫ ДЛЯ К-71 ***********
* АС К-71. ВЫДАЧА ДИАГНОСТИЧЕСКИХ СООБЩЕНИЙ
***
диасм7	пам	0
	сч	рсвсм1         КОНФУС
	по	ИНЦ677         КОНФУС
	нед	П77777
	уи	М16
	и	П77777
	сда	64-24
	или	ткcм7б
	зп	ткcм7а
	сч	рсвсм1
	нтж	E48(М16)
	зп	рсвсм1
	сч	рсвясм(М16)
	сда	64-6
	рзб	шесть7
	зп	пробел
	мода	ткчкр7
	уиа	0(М16)
	мода	диасм7
	уиа	0(М15)
	уии	М32(М15)
	сч	E23
	пб	ТВ40
************* КОН. БЛОКА К-71 ******************
.НЕТ АНОП
НЕЗАВИ НОП
*	сч	ШКОЛА
*	зп	RT
*	УИА 3	!РАБОТА ДЛЯ К-71?
 	УИА -47(М15)
        пв      ЗАНОСМ(М16)
ЗВ1 СЧ ВППС+47(М15)
 УИА 1027
 ПО ЗВ1А    НЕТ БУД
 РЖА 19
 ПЕ ЗВ1А    ОБРЫВ
 СЛЦ Е46
 ЗП ВППС+47(М15)
 ПЕ ЗВ1А
* СЧ ШКОЛА    БУД
* И Е1(М15)
* ПЕ АС762    ПРИН.ПЕРЕКЛ
 СЧ ШЗПРИМ
 ИЛИ Е1(М15)
 ЗП ШЗПРИМ
 СЧ ШБУДИЛ
 ИЛИ Е1(М15)
 ЗП ШБУДИЛ
 СЧ ШКОРАБ
 ИЛИ ЕЗВ
 ЗП ШКОРАБ   БУД
ЗВ1А УИА 3
 МОДА ЗВ1
 ЦИКЛ (М15)
        уиа       1027
*!МАЛ. УДАЛЕНА ПРОЦЕДУРА РАБОТЫ С АС СТР. 401-440
*
       АПУ     (&К71).ДА1
*
	СЧ 	ЗАНЯТА
	И	Е42
	ПО	АС761	АС РАБ
	НТЖ 	ЗАНЯТА	АС РАБ
	ЗП 	ЗАНЯТА	СБОЙ АС
	СЧ 	ШКОПТТ
	И 	тпп
	НТЖ 	ШКОПТТ
	ЗП 	ШКАС
	ИЛИ 	ШЗПРИМ
	НТЖ 	ШКАС
	ЗП	ШЗПРИМ
	ПВ 	УСТПРП(М15)
АС761	СЧ	rt	НЕТ ОПР. ЛИН.
	ИЛИ ШКОЛА
	ИЛИ ШКВЫД
	ЗП	ШКВЫД
	СЧ	Е6
	ПВ	УСТПРП(М15)
АС76	НОП
	СЧ	ТАБЛО
	УВВ	'147'
	НТЖ	пртаб
	И	Е48П16
	ПО	ВЫ1
	СЧ	ТАБЛО
	ЗП	пртаб
	ПБ	ВЫ
ВЫ1	СЧ	ТАБЛО
	И	П77777
	ЗП	ТАБЛО
*!МАЛ. КОНЕЦ УДАЛЕННОГО ФРАГМЕНТА
.ДА1 АНОП
вы      сч      7    что такое 48р ТР7 !НОМБОБ-117 МЕТ. "ВЫ"
        рзб     Е19
        зп      факел+1 !дисп70.факел д.б. по этому адресу
        сч      ШРНОМБ
вы9  	нтж     Е48 !ПРОЦЕДУРА МОДИФИЦИРОВАНА
        пе      ВЫХНБ
        зп      ШРНОМБ
        пб      ОЧКСУМ-6(М7) уточнить
ВЫХНБ СЧ Е26 !ШТАТН. "ВЫ9"
 ПБ ОТКАЗН
****** БЛОК ДЛЯ РАБ. К-71 ***********
ткчкр7	конд	п'2КЧ КР'
ткcм7а	конд	п'К:0 СМ'
пробел	конд	п'      '
е44е40	конд	в'0420000000000000' !НЕИСП
ткcм7б	конд	п'К:0 СМ'
шесть7	конд	п'777777'
********** КОНРАБ К-71 ************
О40 КОНД В’-1’М39В’1’
 КОНД В’0’ ПЕРЕД ТМЛ
ТМЛ КОНД П’  0000’
 КОНД П’ - 00,’
 КОНД В’0’
ИНФ1 КОНД В’0’
ПРЗП КОНД В’0’ ПР ЗП НА МД ДЛЯ МЛ ТЗНМЛ
НОВМЛ ПАМ 1
*!МАЛ. УДАЛЕНЫЙ ФРАГМЕНТ РАБОТЫ С АС СТР. 452-459
*
       АПУ     (&К71).ДА2
*
АС762	НТЖ	ШКОЛА
	ЗП	ШКОЛА
	СЧ	ШКВЫД
	ИЛИ	Е1(М15)
	ЗП	ШКВЫД
	СЧ
	ЗП	ВППС+47(М15)
	ПБ	ЗВ1А
*!МАЛ. КОНЕЦ УДАЛЕННОГО ФРАГМЕНТА
	АПБ	.НЕТ1
*
.ДА2 АНОП
АС762   ноп		*!ВИДИМО ЗАГЛУШКА. !РАБОТА К-71
        мода    есб	*
        уиа     (М17)	*
*
.НЕТ1 АНОП
ЕСТЬБ СЧИ М4
 СЛЦ П30
 ЗП Р2 СТАРЫЙ МГ
 СДА 64+3
 УИ М16 НАПР
	сч	общ
	по	врем
	мод	дт
	сч	-32(М4)
	и	е30п28
	зп	Б1+9
	нтж	НОВД+3
врем  ноп
 ЗП ПРБ
 СЧ Р2
 СДА 64-42
 РЗБ НАПРМГ
 ЗП Р5 СТАРЫЙ
	сч	Р2
	и	П7
	нтж	П7
	уи	М15 ОБРАТН. УСТР.
 СЧИ М12
 СЛЦ П30
 ЗП Р3 НОВЫЙ
 СДА 64-42
 РЗБ НАПРМГ
 ЗП Р4
 СЧ 0
 ЗП НОВД+1
        пб      (М17)
есб  ноп
 ЗП ТЗОНМЛ(М4)
 ПВ ДЛЯДИС(М10)
 СЛИ М11(М3)
 ПВ ОЧ3И6(М10)
 СЧ НОВД
 УИ М10
 СЛИ М10(М3)
 УИА 1027
 СЧ К
 СДА 64(М15)
 НТЖ ВСЕЕД
 И СОЛ-3(М16)
 ЗП СОЛ-3(М16)
*СМЛ
 СЧ ШОЧМГ(М4)
 ЗП Р-1
 ЗП Р7
ЗАММЛ СЧ Р7
 ПО ПЕРЕЛ2
 НЕД 0
 УИ М1
 СЧ Е32(М12)
 ИЛИ СМЕМЛ
 ЗП СМЕМЛ
 СЧ Е48-1(М1)
 НТЖ Р7
 ЗП Р7
 СЧ НЕТНАП
 НТЖ Е23
 И ОЧКУС-1(М1)
 ИЛИ Р4
 ЗП ОЧКУС-1(М1)
 СЧ ВСЕЕД
 НТЖ Е48-1(М1)
 И ЗОЧ2-5(М2)
 ЗП ЗОЧ2-5(М2)
        сч      Р1
	по	ЗАММЛ       свс: ПБ
 	сч	ПРБ
	пе	ЗАММЛ
	сч	НОВД+2 !"НОВД+5"
	сда	64-4
	или	E20
	зп	Р
	сч	ОЧКУС-1(М1)
	и	номм
	или	Р	НОМ. МАШ., ГДЕ МЛ.
	зп	ОЧКУС-1(М1)
	счи	М11
	зп	Б1+10    подозрительно !"Б1+10"
	мода	тре
	уиа	0(М11)
	пам	0
	сч	ОЧКУС-1(М1)
	сда	64+42
	уи	М17
	пам	0
	сч	ОЧКУС-1(М1)
	и	E17
	пе	зсл
	слиа	64(М17)
зсл	мод	ТУС-1(М17)
	уиа	0(М17)
	сч	ОЧКУС-1(М1)
	и	П14
	пе	тр
	уиа	'3'
	сч	счзк(М3)
	слц	E1
	зп	счзк(М3)
	уи	М16
	сч	НОВД+2
	уи	М15
	сч	Е48-1(М15)
	или	кробш
	зп	кробш
	сли	М15(М3)
	сч	Е48-1(М16)
	или	закарб-1(М15)
	зп	закарб-1(М15)
	сч	Е48-1(М16)
	или	откуда-1(М10)
	зп	откуда-1(М10)
	сч	Е48-1(М16)
	или	перст-1(М15)
	зп	перст-1(М15)
	сли	М16(М3)
	сч	ШИФРМ(М17)
	зп	ши-1(М16)
	сч	ОЧКУС+15(М1)
	зп	очкс1-1(М16)
	сч	номм
	нтж	ЗОБ
	и	ОЧКУС-1(М1)
	зп	очку1а-1(М16)
	сч	зон(М3)
	нтж	ВСЕЕД
	нед	П77777
	уи	М15
	сда	64-42
	рзб	ЗОБ
	зп	Р
	сч	очку1а-1(М16)
	или	Р
	зп	очку1а-1(М16)
	сч	зон(М3)
	или	E48(М15) ЗАНИМ. СВОБ. ЗОНУ
	зп	зон(М3)
	сч	П3
	и	ОЧКУС-1(М1)
	пе	(М11)
	сч	ОЧКУС-1(М1)
	и	Е21Е18
	нтж	Е21Е18
	по	за2
	и	E18
	по	(М11)
за2	сч	ОЧЛИС-1(М1)
	уиа	'2003'
	зп	РМР
	сч	E18
	и	ОЧКУС-1(М1)
	зп	Р
	слиа	дельт(М15)
	счи	М15
	сда	64-24
	слц	НОММЛ1
	или	Р
	пв	ФИЗУР(М16)
	пб	(М11)
тр	уиа	ВЫБМГ(М16)
	счи	М16
	зп	3(М17)
	сч	5(М17)
	и	E20
	или	ИВ25
	нтж	E19
	зп	5(М17)
	сч	ВЫМГ
	или	Е48-1(М1)
	зп	ВЫМГ
	сч	в1
	зп	2(М17)
	пб	(М11)
тре	мод	Б1+10
	уиа	0(М11)
	сч	ОЧКУС-1(М1)
	и	П14
	по	ЗАММЛ
	сч	ШОЧМГ(М4)
	или	ВЫМГ
	зп	ВЫМГ
	уиа	'3'
	пб	по6
ПЕРЕЛ2 СЧ ШОЧНАП-3(М2)
 ИЛИ Р-1
 НТЖ Р-1
 ЗП ШОЧНАП-3(М2)
 СЧ ШКЗЗП-5(М2)
 ИЛИ Р-1
 НТЖ Р-1
 ЗП ШКЗЗП-5(М2)
 СЧ ПЕРЕ2
 ИЛИ Е48(М12)
 НТЖ Е48(М12)
 ЗП ПЕРЕ2
	сч	Р1
	по	дарк
	мода	дрб1-У2(М7)
	уиа	0(М16)
	уиа	кусп2-Н(М5)
	пб	ВЫЗАСЧ
дарк  ноп
 СЧ ПЕРЕ2
 ИЛИ Е48(М4)
 НТЖ Е48(М4)
 ЗП ПЕРЕ2
	сч	общ
	по	ПРЛ2
	сч	ПРБ
	по	ПРЛ2
	уиа	'3'
	уиа	прл3-Н(М17)
прлза	сч	закарб-1(М10)
	нтж	R1
	мода	возв
	пв	(М1)
прлзб	сч	НЕТНАП
	и	очку1а(М16)
	или	Р4
	зп	очку1а(М16)
	сч	R1
	или	E48(М11)
	зп	R1
	пб	прлза
прл3	мода	дрбэ2-У2(М7) !Н-117. "ДРБЭ2(ВНЕШ.СМЕНА2)-У2(ВНЕШ.СМЕНА2)"
	пв	(М16)
	зп	Р
	сч	ТЗНМЛ(М4) N МГ И Б, ГДЕ СТОЯЛА МГ.
	и	квтзл
	или	Р
	зп	ТЗНМЛ(М4)
	уиа	'2003'
ПРЛ2 МОДА НОВИЛ
 ПИНО (М13)
 СЧ ШОЧМГ(М12)
 ЗП ШОЧМГ(М4)
 СЧ Р-1
 ЗП ШОЧМГ(М12)
 СЧ КВТ
 И ТЗНМЛ(М4)
 ЗП Р
	мод	дт
	сч	-32(М4)
	и	е30п28
	или	Р
	зп	Р
 СЧИ М14
 ПО СММЛ
 СЧ КВТ
 И ТЗНМЛ(М12)
	зп	ТЗНМЛ(М4)
	мод	дт
	сч	-32(М12)
	и	е30п28
	или	ТЗНМЛ(М4)
СММЛ ЗП ТЗНМЛ(М4)
 СЧ Р
 ЗП ТЗНМЛ(М12)
	сч	общ
	по	нол
	сч	ТЗНМЛ(М4)
	мод	дт
	зп	-32(М4)
	сч	Р
	мод	дт
	зп	-32(М12)
нол	сч	ПРБ
	по	СМЛ1
	сч	ДР
	по	СМЛ1
по6	сч	И10
	уиа	'3'
	уи	М12
	сч	
	зп	R1
	уиа	КУСП-Н(М5)
	мода	CНВМЛ1-У1(М7)
	уиа	0(М16)
	пб	ВЫЗАСЧ
НОВИЛ УИА 1(М14) 2-Й РАЗ
 СЧ НМЛ
 НТЖ Е48(М4)
 ЗП НМЛ
 УИА (М13)
 СЧ ПРБ
 ЗП ДР
 ПБ ЕСТЬБЭ
пров	сч	негтб
	и	E12(М10)
	по	ВКЛМЛ-У1(М7)
	пб	пров1
ПЕРЕМЛ МОДА (М4)
 СЧ НТЗНМЛ
 НТЖ ТЗНМЛ(М12)
 И П7777
        по      АС762
        пб      CПЕМ-У1(М7)
ОБЩСТО 	мода	(М3)
	сч	(М11)
	сда	64+27 NБ, КОТ. ПРИНАД. МЛ.
	нтж	НОВД
	и	П7
	зп	швоз ПЕРЕСТАН.
	уии	М1(М10)
	сли	М1(М3)
	мода	пемл
	пино	(М13)
ПЕМ СЧИ М12
 НТЖ П7
	уи	М16
	сч	РМЛ
	и	E32(М16)
	пе	вык
НВМЛ1	сч	крмл(М1)
	и	E32(М17)
пров1	по	пров
	сч	швоз
	пе	есс
	уиа	0(М10)
	мода	ЕСТЬБ
	пв	(М17)
взв1	сч	E48(М4)
	или	выбз(М1)
	зп	выбз(М1) ЭТИ ЗАКАЗЫ ВЫБР.
	счи	М1
	и	П7
	сда	64-5
	уи	М2
	сли	М2(М3)
	сли	М2(М4)
	мода	взвра
	пино	(М13)
	уиа	'710'(М17)     "ВЗВ2-Н" НЕ ХВАТ. СТР.
	сч	КВТ
	или	е30п28
	и	(М2)
	зп	ТЗНМЛ(М12)
	мод	дт
	зп	-32(М12)
	сч	E46
	зп	(М2)
взв4	уиа	-15(М2)
	сч	закарб(М1)
	мод	НОВД
	нтж	ШКМГОС(М3)
	мода	вж
	пио	(М13)
	или	перст(М1)
	нтж	перст(М1)
вж	мода	возв1
	уиа	0(М1)
возв	зп	Р
	мода	(М7)
	по	(М17)
	нед	П77777
	уи	М16
	уи	М11
	сли	М16(М3)
	сч	очку1а(М16)
	сбр	НАПРМГ
	сда	64+42
	зп	Р7
	счи	М4
	слц	П30
	нтж	Р7
	по	(М1)
возв4	сч	Р
	нтж	E48(М11)
	пб	возв
взвра	сч	ПРБ
	по	взвр
	сч	E48(М4)
	или	выбз1(М1)
	зп	выбз1(М1)
взвр	мод	дт
	уиа	0(М17)
	сли	М17(М12)
	сч	-32(М17)
	сда	64+27
	нтж	НОВД+2
	и	П7
	пе	взвр1
	сч	(М2)
	и	E14
	пе	взвр1
	сч	(М2)
	или	E14
	зп	(М2)
	сч	-32(М17)
	или	E14
	зп	-32(М17)
	пб	взв5
взвр1	сч	кс
	и	(М2)
	зп	Б1
	сч	кс
	и	-32(М17)
	или	E47
	зп	(М2)
	сч	Б1
	или	E47
	зп	-32(М17)
взв5	уиа	СМЛ1-Н(М17)      НАРМД+10
	пб	взв4
возв1	сч	ОЧКУС+15(М2)
	по	возв2
	и	E20
	по	возв2 НЕ ДР. МАШ.
	сч	ОЧКУС+15(М2)
	нтж	очку1а(М16)
	и	конс
	по	возв3
возв2	мода	возв1
	цикл	(М2)
	уиа	-15(М2)
	пб	возв4
возв3	сч	ОЧКУС+15(М2)
	сда	64+4
	нтж	НОВД+2
	и	П7
	пе	возв2 НЕ ТОТ ЗАКАЗ
	уиа	'2003'
	сч	номм
	нтж	E20
	нтж	НАПРМГ
	и	ОЧКУС+15(М2)
	мода	(М10)
	или	Р4
	зп	ОЧКУС+15(М2)
	сч	Е33(М2)
	или	ШОЧМГ(М12)
	зп	ШОЧМГ(М12)
	сч	СМЕМЛ
	или	E32(М12)
	зп	СМЕМЛ
	уиа	'3'
	пб	возв2
есс	счи	М1
	и	П7
	уи	М11
	сч	негтб
	и	E12(М11)
	по	ессс
	сч	сохра
	или	E44
	и	ТЗНМЛ(М12)
	зп	ТЗНМЛ(М12)
	пб	еси
ессс	сч	ТЗНМЛ(М12)
	или	E48
еси	мод	дт
	зп	-32(М12)
	сч	E48(М4)
	или	просм(М1)
	зп	просм(М1)
	сч	Е48П42
	зп	кробш
	пб	CНВМЛ1-У1(М7)
вык	сч	крмл(М1)
	и	E32(М17)
	пе	ВКЛМЛ-У1(М7)
	пб	ЕСТЬБЭ
пемл	мода	(М3)
	сч	ШКАРУ(М11)
	нтж	ТЗНМЛ(М12)
	и	П7777
	пе	CПЕМ-У1(М7)
	сч	швоз
	по	ЕСТЬБЭ
	мода	(М3)
	сч	(М11)
	мод	дт
	нтж	-32(М12)
	и	е30п28
	пе	ЕСТЬБЭ
	мод	дт
	сч	-32(М12)
	сда	64+27
	нтж	НОВД+2
	и	П7
	по	CНВМЛ1-У1(М7)
ЕСТЬБЭ УИИ М16(М4)
 УИИ М4(М12)
 УИИ М12(М16)
	пб	АС762
взв2	сч	НОВД+2
	зп	НОВД+1
	сч	
	зп	НОВД+2
СМЛ1 НОП ,
 УИА -46(М1)
 УИА 3
ПОМ НОП ,
 СЧ ШКРЗ
 И Е48+46(М1)
 ПО по8      свс:НЕТЗАД
 МОД ТУСП+46(М1)
 УИА (М11)        М11 := АДРЕС ИПЗ
        уиа       1027
 УИА 45(М16)
 УИА -3(М2)
ПО1 УИА -2(М4)
 СЛИА -3(М16)
ПО1А УИА -1(М17)
 УИИ М15(М7)
* УИА 1027
ПО МОДА  (М11)
 СЧ ОБЩТОМ+3(М2)
 СД КТОМ+2(М4)
 МОДА 1(М17)
 НТЖ Р2
 И П77
ПО3 ПО ЭТОТ
 СЛИА -1(М15)
 МОДА ПО
 ЦИКЛ (М17)
ПО2 СЛИА -3(М16)
 МОДА ПО1А
 ЦИКЛ (М4)
 МОДА ПО1
 ЦИКЛ (М2)
по8  ноп
        уиа     3
        уи
НЕТЗАД НОП ,
 МОДА ПОМ
 ЦИКЛ (М1)
* УИА 3
 СЧ ПРИ
 ПО по6 свс: ПО4
	уиа	КУСНЕР-Н(М5)
	мода	ЗК2В-У3(М7) !"ЗК2В(ВНЕШ.СМЕНА3)-У3(ВНЕШ.СМЕНА3)(М7)"
	уиа	0(М16)
	пб	ВЫЗАСЧ
арвэ1  ноп
	зп	Р
	сч	о31п37
	и	(М11)
	или	Р
	зп	(М11)
*ОБЩСТО СТОП ’1150’     ОБЩИХ ЛЕНТ БЫТЬ НЕ ДОЛЖНО
*ПБ ЗК2В*
ПО4     ноп
        уиа     1027
        сч
        зп      ШОЧМГ(М4)      может ШОЧМГ
        пб      по6          свс: НВМЛ1
ЭТЛЕ СЧ УКАЗД(М11)
 И Е32(М13)
 ПЕ ПО3 МД
 СЧ Р3-Н(М15)
 СД КТОМЛ+2(М4)
 ЗП Б1+7
	сч	Р1
	по	этали
	сч	ОБЩМЛ(М11)
	сда	64(М16)
	мода	(М7)
	нтж	НОВД+2-Н(М17)
	и	П7
	пе	ПО3
	счи	М16
	вчоб	
	уи	М17
	сч	НОВД+2-Н(М15)
	сда	64(М17)
	зп	Р
	сч	П7
	сда	64(М17)
	нтж	ВСЕЕД
	и	ОБЩМЛ(М11)
	или	Р	НОВАЯ ЭВМ
	зп	ОБЩМЛ(М11)
ЭТЛ СЧ П77
 СД КТОМЛ+2(М4)
 НТЖ ВСЕЕД
 МОДА (М11)
 И ОБЩТОМ+3(М2)
 ИЛИ Б1+7
 МОДА (М11)
 ЗП ОБЩТОМ+3(М2)
 ПБ ПО2
этали	сч	ОБЩМЛ(М11)
	сда	64(М16)
	и	П7
	по	ЭТЛ
	пб	ПО3
просто 	сч	общ
	по	НВМЛ4
	сч	ВРЕМЯ
	вчаб	БУДЗП
	вчаб	ВР3М
	по	заказ1
	сч	ЗАНЯТА
	и	E47
	по	заказ1
НВМЛ4 ПАМ
 СЧ СМЕМЛ
 ИЛИ ВЫМГ
 ПО ЗАНИ
 УИА 1027
 СЧ ШЗЗОБМ
 ПЕ ЗАН1
 СЧ Е39
 ПВ ВШГ(М15)
 УИА ВХСМЕ(М16)
 СЧИ М16
 ЗП ИПЗМЛ+3
 СЧ 0
ЗАН1 ИЛИ Е1
 ЗП ШЗЗОБМ
ЗАНИ УИА 3
 ПБ ПОИС6-Н(М7)
вз2	сч	ТЗНМД(М3)
	мод	НОВД
	и	Е48-1
	по	вызсмз
н2	мода	н1
	пв	(М17)
вызсмз	мода	заказы-У3(М7)
	уиа	0(М16)
	уиа	КУСНЕР-Н(М5)
	пб	ВЫЗАСЧ
рабди	сч	НЗ
	или	НЗ+1
	по	НВМЛ4
	сч	кробш
	и	Е48П42
	уиа	'2003'
	по	рбб
	или	РАОБЩ
	зп	РАОБЩ
	сч	НОММЛ1
	уиа	3(М16)
	и	E42
	по	рб
	уиа	4(М16)
рб	уии	М10(М6)
	пв	ОСВУ(М6)
	уии	М6(М10)
рбб	сч	РАОБЩ
	и	Е48П25
	зп	РАОБЩ
	пб	НВМЛ4
НВМЛ4А	сч	общ
	по	НВМЛ4
нвл1	мода	вз1
	уиа	0(М17)
н1	уиа	-31(М16)
	сч	НОВД 	ПЕРЕНОС ТЗНМЛ НА МД
	уи	М10
	сда	64-5
И11	уи	М15
	сч	ТЗНМД(М3)
	или	Е48-1(М10)
	нтж	Е48-1(М10)
	зп	ТЗНМД(М3)
	сли	М15(М3)
	уии	М14(М15)
	сли	М10(М3)
	сч	РМЛ
	зп	счзк(М10)
	сч	ЕС5017
	зп	кесмл1-1(М10)
птз	сч	-32(М14)
	и	ПРСВЛ
	сда	64+41
	нтж	П60
	по	птзо
	сч	-32(М14)
	и	E47
	пе	птз1
	сч	-32(М14)
	нтж	E46
	по	птзс
	и	E14
	пе	пт
	сч	ВСЕЕД
	нтж	е30п28
	и	ТЗНМД-1(М16)
	зп	Р7
	сч	е30п28
	и	-32(М14)
	или	Р7
	зп	-32(М14)
	сч	ТЗНМД-1(М16)
	и	E39
	по	пт
	сч	-32(М14)
	и	е30п28
	по	пт
	сч	ТЗНМД-1(М16)
	нтж	E39
	зп	ТЗНМД-1(М16)
пт	мода	(М16)
	сч	НТЗНМЛ+31
	и	П7777
	зп	дтзн-32(М14)
	уиа	'3'
	пб	птз4
птз2	зп	-32(М14)
	уиа	'3'
птз4	слиа	1(М14)
	мода	птз
	цикл	(М16)
	пб	(М17)
птз1	сч	сохр
	и	-32(М14)
птзс	зп	ТЗНМД-1(М16)
	пб	птз2
птзо	уиа	'2003'
	сч	кробш
	или	Е48П42
	зп	кробш
	сч	сохра
	или	E44
	и	-32(М14)
	пб	птзс
бн	и	E1
	по	ББ1-У1(М7)
заказ1	сч	ГОД
	сда	64+45
	по	НВМЛ4
	сда	64-5
	зп	общ
	зп	прмл
	мода	чт-У1(М7) !Н-117. "ЧТ-У(ОБЕ ВНЕШ.СМЕНА1)(М7)"
	пв	(М11)
	сч	НОВД
	уи	М10
	сли	М10(М3)
	сч	просм-1(М10)
	пе	пле-У1(М7)
	сч	закарб-1(М10)
	пе	нвл1
вз1	пам	0
	сч	ВРЕМЯ
	вчаб	БУДЗП
	вчаб	ВР3М
	пе	вз2
	сч	ВРЕМЯ
	зп	БУДЗП
	сч	общ
	уи	М4
	уиа	1(М13)
	уии	М14(М3)
вз	уии	М11(М3)
	сли	М11(М13)
	сч	вр-1(М11)
	и	Е48-1(М13)
	по	взс
	нтж	вр-1(М11)
	зп	вр-1(М11)
	пб	оч1
взс	сч	вр-1(М11)
	и	E42(М13)
	по	взс1
	нтж	вр-1(М11)
	зп	вр-1(М11)
	пб	оч1
взс1	сч	К2
	зп	счзк(М11)
	уиа	-31(М11)
оч	сч	Е48Е47
	или	E14
	мода	(М14)
	и	31(М11)
	пе	оч2а
	мода	(М14)
	зп	31(М11)
	пб	оч2
оч2а	мода	(М14)
	сч	31(М11)
	нтж	НОВД+3
	и	е30п28
	пе	оч2
	счи	М13
	сда	64-8
	или	т1
	зп	т10+3
	уии	М17(М11)
	слиа	'67'(М17)
	счи	М17
	сда	64-42
	рзб	МСК2
	или	ТМЛ1+1
	зп	т10+2
	мода	(М14)
	сч	31(М11)
	и	П7777
	пв	ПЕРЕВ(М15)
	или	ТМЛ1
	зп	т10+1
	уиа	ШКЗЗП(М16)
	уиа	оч2-Н(М15)
пчс	сли	М16(М7)
	сли	М15(М7)
	уии	М32(М15)
	пб	ПЧТ
оч2	мода	оч
	цикл	(М11)
оч1	слиа	-32(М4)
	мода	чи
	пио	(М4)
	слиа	'40'(М14)
	слиа	1(М13)
	пб	вз
чи	сч	негтб
	по	н2
	сда	64-36
	пб	чи3
чи1	уии	М13(М14)
	сли	М13(М11)
	сч	Е48Е47
	и	-1(М13)
	по	чи2
	сч	-1(М13)
	нтж	Р
	и	е30п28
	пе	чи2
	сч	сохра
	или	E44
	и	-1(М13)
	зп	-1(М13)
	зп	ТЗНМД-1(М11) !Н-117 "ТЗНМЛ+31". НЕ СОВП.
чи2	мода	чи1
	цикл	(М11)
	сч	Р7
	нтж	Е48-1(М15)
чи3	зп	Р7
	по	н2
	нед	
	уи	М15
	сда	64-27
	зп	Р
	сч	НОВД
	сда	64-5
	уи	М14
	сли	М14(М3)
	уиа	-31(М11)
	пб	чи1
ЭТОТ СЧИ М2
 СЛЦ П3
 СДА 64-2
 ЗП Р
 СЧИ М4
 СЛЦ П3
 ИЛИ Р
 ЗП Р НОМ СТР,СТОЛБЦА ОБЩТОМ
 УИА -15(М13)
ЭТТ УИА 4(М10)
ЭТД МОДА (М11)
 СЧ ШЗНМБ+15(М13)
 СДА 64+8(М10)
 НТЖ Р
 И П17
 ПО ЭТДИ
 МОДА ЭТД1
 ПИО (М10)
 УИА (М10)
 ПБ ЭТД
ЭТД1 МОДА ЭТТ
 ЦИКЛ (М13)
ЭТДИ СЛИА 15(М13)
 СЛИ М13(М13)
 МОДА ЭТЛЕ
 ПИО (М10)
 СЛИА 1(М13)
 ПБ ЭТЛЕ
ВЫХ СЧ ВРЕЗП
 СЛЦ Е42        свс: Е43
 УИА 1027
 ПЕ СТАТ
*СТАТ1 НОП ,
* СЧ ЗАНЯТА
* И Е7
* ПО В             НЕ НАБРАНА ДИРЕКТИВА ’ВРЕ’
 МОДА НАЧСТ-УН(М7)
 УИА (М16)
* СЧ ’5000’
 УИА КУСПН-Н(М5)
 ПБ ВЫЗАСЧ       ВЫЗОВ И ПЕРЕХОД В СТАТ1
КНЦСТ МОДА СТАСУТ-УНТ(М7)
 УИА (М16)
        счи     м7
        сда     64-2
        или     кусп5
        или     номмб
        пб      физобм
КНЦСТТ СЧ 0
СТАТ ЗП ВРЕЗП
*В
 СЧ ВРЕМЯ
 ВЧАБ БУДСМЕ
 ВЧАБ КОН
 ПЕ ВОЗ1
 СЧ ШКИВ
 ИЛИ Е25
 ЗП ШКИВ
 СЧ Е3
 ЗП ТУМБ6
 СЧ ВРЕМЯ
 ЗП БУДСМЕ
ВОЗ1 СЧ 0
 ЗП ПРЗП
 ПБ ЗВ2
*
 ЛИТЕР
прмл  пам     1
        конд	в'0000000034402000'
швоз  пам     1
*
НТЗНМЛ КОНД (32)В’0’ НЕ РАЗД С НТЗНМД
НМЛ КОНД В’0’ НЕ РАЗД С НМД
НМД КОНД (2)В’0’
    конд в'1'
КФКУС КОНД М20В’1’М17В’1’М4В’1’
КОН КОНД В’537440’      1 час
ПРЛ КОНД В’0’ НЕ РАЗД С ПР
ПР КОНД (2)В’0’
ДРЛ КОНД В’0’ НЕ РАЗД С ДР
ДР КОНД (2)В’0’ ВЫКЛ МД,ПРИНАДЛ ЗАД
ПРОМ ПАМ 1
сохра  конд	в'0000000001717777'
*НОВД КОНД (4)В’0’
*ВЫЗОС ПАМ 1
*БУДСБ ПАМ 1
квтзл	конд	в'7760000001717777'
кусик	конд	в'0000777000400000'
кус	конд	в'0000777000400000'
И10 КОНД В’0’
е30п28	конд	п'00Ш000'
дт	пам	1
номм	конд	в'7777777777777617'
ПРБ КОНД В’0’
КВТ КОНД М30В’777777’В’1717777’М39В’1’
ПРИ КОНД В’0’
	конд	в'0077777737403617'
о31п37	конд	в'7774007777777777'
в1	конд	п' 0000 '
т10	конд	п'1ВКЛЮЧ'
	пам	2
и6	пам	1
т1	конд	в'0360744102600021'
конс	конд	в'7770177774777617'
ВР3М КОНД В’21450’    3 МИН.
сохр	конд	в'4200007001717777'
кс	конд	в'7760007001717777'
кробш	пам	1
НОВД	пам	4
общ	пам	1
КПАРД	конд	в'0000060100400000'
КПАР	пам	1
вкпар	конд	в'0000060000400000'
О19П15	конд	в'7777777776037777'
кусп2	конд	М17В’1’М10В’3’М2В’21’В’1’ неясно СМЕНА2
КУСНЕР КОНД М17В’1’М10В’3’М2В’21’В’2’    СМЕНА3
КУСПН КОНД М17В’1’М10В’3’М2В’21’В’3’    СТАТ1Б
кусп5	конд	М17В’1’М10В’3’М2В’03’В’2’ СТАТ2Б
КУССТ ПАМ 1
Б1 ПАМ 1
Р ПАМ 1
Р1 ПАМ 1
Р2 ПАМ 1
Р3 ПАМ 1
Р4 ПАМ 1
Р5 ПАМ 1
Р6 пам 1
Р7 ПАМ 1
*
 ЭКВИВ (Н,НОМБОБ),(ДЕЛЬТА,Е19),(заме,379),(выза,356)
 ЭКВИВ (откуда,342),(выбз,371),(очку1а,239),(закарб,335)
 ЭКВИВ (дельт,'700'),(счзк,224),(перст,364),(кесмл1,444)
 ЭКВИВ (зон,378),(очкс1,287),(ши,387),(выбз1,436),(вр,380)
 ЭКВИВ (просм,232),(дтзн,799),(крмл,225),(оскус1,239)
 ЭКВИВ (ячпр,435)
* МЕТКА ’КЕСМЛ’ НУЖНА В НПЛАН2 ДЛЯ ОБЩИХ ЛЕНТ,НА СВС
*     ЕЕ ЗНАЧЕНИЕ   Н Е  С У Щ Е С Т В Е Н О.
 ЭКВИВ (КЕСМЛ,0)
*
*
СМЕНА2	ВНЕШ У2,дрбэ2,дрб1
СМЕНА3	ВНЕШ ЗК2В,У3,заказы
АВМД ВНЕШ АВМД,БУР
БОЭК1 ВНЕШ ВХСМЕ
ВЗУ ВНЕШ ФИЗОБМ,ФИЗУР
ВИСП ВНЕШ ВШГ
ГЕНС ВНЕШ ПОИСК,(ВГЕНС,А)
ДИСКИ ВНЕШ КТОМ,КТОМЛ,пав,негтб,РАОБЩ,НЗ
ДИСП70 ВНЕШ ТВ40,Е26Е25,ЧПОД,АЗУ,Е24П1,ГРУП,ОТКАЗН,П14,П60
ДИСП70 ВНЕШ КГРУП,КМИН,ЗАНОСМ,Е41П1,РАБЕ16,БУДУПР,ГОД,Е48П25
ДИСП70 ВНЕШ ШЗЗОБМ,РОЙ,ПЕРЕВ,ВЫМГ,ИПЗМЛ,ТУСП,НПЗ,МЧПЗ,ШКМГОС
ДИСП70 ВНЕШ NБЛ,ПРСВЛ,ПР14,НОММБ1,БУДСМЕ,ЗАНЯТА,ТУМБ6,ОЧКСУМ
ДИСП70 ВНЕШ П7777,П77777,П77,П7,ТБУФ,РМД,РМД1,ТЗНМЛ,ВРЕМЯ,МИН
ДИСП70 ВНЕШ ВРЕЗП,ВСЕЕД,ШКИВ,НАПРМГ,ОБЩТОМ,УКАЗД,К,П30,ТЗНМД
ДИСП70 ВНЕШ РМЛ,РМЛ1,П17,П3,СОЛ,ТЗОНМЛ,ШОЧМГ,ОЧКУС,ЗОЧ2,Е48Е47
ДИСП70 ВНЕШ ШОЧНАП,ШКЗЗП,ЗАПВЕТ,ШАРСИС,СОБА40,НЕТНАП,ШРНОМБ
ДИСП70 ВНЕШ ШГ,(Е12П1,П7777),ДЛЯНБ,ТУС,Е21Е18,ОЧЛИС,факел
ДИСП70 ВНЕШ ЕЗАР,П377,НОММБ,БУДГРА,РМР,НОММЛ1,П777,ИВ25
ДИСП70 ВНЕШ ТАБЛО,УСТПРП,Е48П16,ШИФРМ,ШКАРУ
ДМЛМБ ВНЕШ ДЛЯДИС,ОЧ3И6,ВЫБМГ
ЕСМЛ ВНЕШ мл1ес,готес
КАЧКА ВНЕШ ШКРЗ,Е48П17
КИТ ВНЕШ ЗАКАЗ,РЗМГЕС,ПЕРЕ2,СМЕМЛ,ВППС
КИТ ВНЕШ ЕС5017,ЗОБ,БУДЗП,Е48П42
МОТТ ВНЕШ ШКОЛА,ШКОРАБ,ШЗПРИМ,ШКВЫД,ФЛАТЕР,(ШКРАБН,ШКОРАБ)
МОТТ ВНЕШ ЕХОЛ,ЕЗВ,ШБУДИЛ,ЕЗАВИС,ШКАС,ШКОПТТ,ТПП
ХЛАМ ВНЕШ ОСВУ
СТАТ1С ВНЕШ УН,НАЧСТ
СТАТ2С ВНЕШ УНТ,СТАСУТ
*СТАТ3С ВНЕШ СТАТ3С,СТ3
СКОР1 ВНЕШ БЛР
СМЕНА1 ВНЕШ ВМЛ1,У1,ПМЛ1,МЛ1А,Б,РАЗМ,ВКЛМЛ,ГОТЕС1,ВТЕК
СМЕНА1 ВНЕШ (СПЕМ,ПЕМ),(СНВМЛ1,НВМЛ1),мл1б,чт,пле,ББ1
СОСТАВ ВНЕШ ШЗНМБ,ЕПУСК,ОБЩМЛ
*
 ВХОД ПЕМ,КНЦСТ,КНЦСТТ,КУССТ,НТЗНМЛ,ДАР
 ВХОД КПАР,О19П15,ТМЛА,ПАР
 ВХОД ПРЛ,ДРЛ,ЕСТЬБ,ПРЗП,ПРИЗ,НОВД,КПАРД,ПРОМ,кус,ФОРМТ
 ВХОД НВМЛ4,МСК2,ВЫВОД,ВЫХ,просто
 ВХОД ОБЩСТО,И10,дт,МГЗАД,СМЛ1,заме
 ВХОД R3,ОБХОДИ,ТМЛ,ТМЛ4,К2,ПЧТ,НВМЛ1,общ,НВМЛ4А
 ВХОД Р1,МГЗАН,НМЛ,ПЕРЕМЛ,НОВМЛ,ДР,пчс,бн,прмл,КФКУС
 ВХОД МЛ2АБ,R1,ВЫХНБ,МЛТТ,МЛ6,МДПМ1,ячпр
 ВХОД МЛ3Е,АС762,кробш,кусик,КВТ,очкс1,перст,крмл
 ВХОД вкпар,ПО4,Б1,Р,Р7,кс,Р4,швоз,ПРБ,арвэ1
 ВХОД взв1,конс,в1,ПРИ,номм,е30п28,рабди,очку1а
 ВХОД возв,ЗАММЛ,выза,откуда,выбз,выбз1,оскус1,зон
 ВХОД КЕСМЛ,НЕЗАВИ,Н
*
       АПУ     (&К71).ДА3
******** ВХОД И ВНЕШ ДЛЯ ШТАТ. РАБОТЫ **********
ТЕРМ ВНЕШ rt
************************************************
	АПБ	.НЕТ2
*
.ДА3 АНОП
************* ВХОД И ВНЕШ ДЛЯ К-71 **************
КОНФУС ВНЕШ рсвсм1,ИНЦ677,рсвясм
*************************************************
*
.НЕТ2 АНОП
*        адрес   Н+'1400'
*НЕРЕЗ   ноп
* ПАМ 256        НЕРЕЗИДЕНТЫ
*ВТЕК    экв     НЕРЕЗ+254
*КОНЕЦ ЧАСТИ
