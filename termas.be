ТЕРМАС СТАРТ '62000'
	Б
	Е
	М
*
	ГБЛВ ∧К71
∧К71 УСТВ 1
*
 УПОТР ТЕРМАС(М12)
********************************************
*                                          *
*      С Е Т Ь   Э В М   Н Е Р П А         *
*------------------------------------------*
*  ДРАЙВЕР СИСТЕМЫ СВЯЗИ БЭСМ-6 <--> МАМС  *
*  ЧАСТЬ 1.                                *
********************************************
*
*
*
*
*  СОГЛАШЕНИЯ ПРИ РАБОТЕ С МОДУЛЕМ  Т Е Р М А С
***********************************************
*
*   1.РАСПОЛОЖЕНИЕ В ПАМЯТИ
*     1.1.ТЕРМАС ЯВЛЯЕТСЯ РЕЗИДЕНТОМ ОС ДИСПАК
*     1.2.ЗАГРУЖАЕТСЯ ПРИ ВЫЗОВЕ СИСТЕМЫ
*     1.3.ЗА БАЗИРОВАНИЕМ СЛЕДИТ САМ
*   2.ОБРАЩЕНИЕ К ТЕРМАСУ
*     2.1.ОБРАЩЕНИЕ ПРОИЗВОДИТСЯ ЧЕРЕЗ ФИКСИРОВАННЫЕ
*         ЯЧЕЙКИ. ДЛЯ УДОБСТВА ВСЕ ВХОДНЫЕ ТОЧКИ
*         ОПИСАНЫ "ВХОДН" (СМ. ПЕРЕКЛЮЧАТЕЛЬ РАБОТ)
*     2.2.ПРИ ЗАГРУЗКЕ СИСТЕМЫ НЕОБХОДИМО ОБРАТИТЬСЯ
*         К ТЕРМАСУ (ТОЧКА "ВХПУСК"). ПО ЭТОЙ РАБОТЕ
*         ТЕРМАС ОБЯЗАН УСТАНОВИТЬ АДРЕСА ПЕРЕХОДОВ
*         В ПЕРЕКЛЮЧАТЕЛЕ ПРЕРЫВАНИЙ И СФОРМИРОВАТЬ
*         НЕОБХОДИМЫЕ ДЛЯ СВОЕЙ РАБОТЫ ЯЧЕЙКИ
*     2.3.КАЖДЫЙ ВИД РАБОТЫ ОПИСАН В ПЕРЕКЛЮЧАТЕЛЕ
*
* ИСПОЛЬЗУЕМЫЕ РЕГИСТРЫ:
* 10 Р ПРП - ПРЕРЫВАНИЕ ПО ВЫВОДУ
* 12 Р ПРП - ПРЕРЫВАНИЕ ПО ВВОДУ
* 7 Р РГ КВУ (033 4102) - ГОТОВНОСТЬ ВВОДА
* 8 Р РГ КВУ (033 4102) - ГОТОВНОСТЬ ВЫВОДА
*
* ИСПОЛЬЗУЕМЫЕ КОМАНДЫ:
* 033 0174 - ВЫВОД БАЙТА
* 033 4174 - ВВОД БАЙТА
* 033 0176 - УСТАНОВКА СИГНАЛА ВДЗП
*
*
*  П А Р А М Е Т Р Ы   Т Р А Н С Л Я Ц И И
******************************************
*
*
* !ДАЛЕЕ ТОЛЬКО BEPCИЯ ИTM
* !ВЕРСИЮ ДЛЯ ИПМ СМ. ОТДЕЛЬНО /ИЛЬИН/
*
*
*
*** ВХОДНЫЕ МЕТКИ
*
BXПУCK 	счи	М12 BXОД ПPИ ПУCKE CИCTEMЫ
	уиа	ТЕРМАС(М12)
	зп	ИР12
	пб	ПУСК
ВХВВ	счи	М12 BXОД ПО ПPEPЫBAHИЮ ПО BBОДУ
	уиа	ТЕРМАС(М12)
	зп	ИР12
 	пб	ПРВВ
ВХВЫВ	счи	М12 BXОД ПО ПPEPЫBAHИЮ ПО BЫBОДУ
	уиа	ТЕРМАС(М12)
	зп	ИР12
	пб	ПРВЫВ
ВХТАЙМ	счи	М12 BXОД ПО TAЙMEPУ
	уиа	ТЕРМАС(М12)
	зп	ИР12
	пб	ТАЙМЕР
ВХУСВД	счи	М12 УCTAHОBKA PAБОTЫ ПО BЫBОДУ (ИЗ MОTT'A)
	уиа	ТЕРМАС(М12)
	зп	ИР12А
	пб	ВХМОТТ УCTAHОBKA PAБОTЫ ПО BЫBОДУ
о12прп	счи	М12	!ДОП. ПРОЦЕДУРА
	уиа	ТЕРМАС(М12)
	зп	ИР12А
	стоп	
	пб	о12прп
* TAБЛИЦA CCЫЛОK HA ШKAЛЫ TИПA TEPMИHAЛОB
*----------------------------------------
* !БЛОК НИЖЕ ОПУЩЕН
*
*KTИПT ЭKB 2
*TИПT HОП 0
* KОHK M16B'13' 15ИЭ-00-013
* KОHK A(ШHP)
* KОHK M16B'16' VDT-52130
* KОHK A(ШVD130)
* KОHK M16B'17' VT-340
*
* ЯЧEЙKИ ДЛЯ CTATИCTИKИ ПО ОШИБKAM
*---------------------------------
*
* B CЛУЧAE BЫБPACЫBAHИЯ HEОБXОДИMО BЫБPОCИTЬ
* ОШПPП, BЫBОШ, BBОШ
СТАТ1	пам	1	 12 P ПPП (BBОД). !НЕ ИСП.
СТАТ2	пам	1	10 P ПPП (BЫBОД)
СТАТ3	пам	1	ПОДKЛЮЧEHИE
СТАТ4	пам	1	HУЛEBОЙ БAЙT B AДPECATE
*			ИЛИ KОЛ-BE БAЙT
*
* П A P A M E T P Ы    Г E H E P A Ц И И
*---------------------------------------
*
НОМАБ	конд	в'1' KОHД B'0' HОMEP AБОHEHTA БЭCM
* ECЛИ HОMAБ=0 TО, ПPОИЗBОДИTCЯ
* ЗAПPОC HОMEPA AБОHEHTA ЭTОЙ ЭBM
ВРЕАРХ	конд	в'1' KОHД B'0' CЧETЧИK BPEMEHИ
*				    APXИBHОЙ ЗAДAЧИ
*48 P = 1 - APXИBHУЮ ЗAДAЧУ HE KОHTPОЛИPОBATЬ
КЛТРМ	пам	1	KОHД П'KЛT001' KЛЮЧ TEPMACA
ДЛБУФ ЭKB 50 ДЛИHA БУФEPA
*
*  PAБОЧИE  ЯЧEЙKИ  BXОДHОГО KAHAЛA
*----------------------------------

*
ВРЕВВ	пам	1	CЧETЧИK BPEMEHИ
ППКВВ	пам	1	ПPИЗHAK ПОДKЛЮЧEHИЯ
МВВ	пам	1	MACKA BBОДA
АЗБВВ	пам	1	ДPEC ЗAПИCИ B БУФEP BBОДA
СБВВ	пам	1	CЧETЧИK ПPИHЯTЫX БАЙT
М15ВВ	пам	1	CЧETЧИK БAЙT B CЛОB
АПГВВ	пам	1	AДPEC ПEPEXОДA ПО ГОTОBHОCTИ BBОДA
АПВВ	пб	ВХВВ-ТЕРМАС+'62000'	ПEPEKЛЮЧATEЛЯ ДИCП70
        зп
*ДK '30',BXBB
*ДK '22',0
АДРВВ	конд	A(ПРАДР)
	конд	A(ПРКБ)
	конд	A(ПРСООБ)
	конд	A(ПАВВ)
БУФВВ	пам	ДЛБУФ	БУФEP BBОДA
*
*  PAБОЧИE  ЯЧEЙKИ  BЫXОДHОГО KAHAЛA
*-----------------------------------
*
ВРЕВЫВ	пам	1	CЧETЧИK BPEMEHИ
ППКВЫВ	пам	1	ПPИЗHAK ПОДKЛЮЧEHИЯ
ПЗБВЫВ	пам	1	ПPИЗHAK: "ЗAHЯT БУФEP BЫBОДA"
АЗБВЫВ	пам	1	AДPEC ЗAПИCИ B БУФEP BЫBОДA
СБВЫВ	пам	1	CЧETЧИK БAЙT BЫBОДA
М15ВЫВ	пам	1	CЧETЧИK БAЙT B CЛОBE
*U KОHД B'0' AДPEC ПEPEXОДA ПО ГОTОBHОCTИ BЫBОДA
АПГВЫВ	пам	1	ДЛЯ ПEPEKЛЮЧATEЛЯ ДИCП70
АПВЫВ	пб	ВХВЫВ-ТЕРМАС+'62000'
        зп
*ДK '30',BXBЫB
*ДK '22',0
АДРВЫВ	конд	A(ПЕРАДР)
	конд	A(ПЕРКБ)
	конд	A(ПЕРСОБ)
	конд	A(ПАВЫВ)
БУФВЫВ	пам	ДЛБУФ	БУФEP BЫBОДA
*
*  PAБОЧИE  ЯЧEЙKИ  БУФEPA  BBОДA  APXИBA
*----------------------------------------
*
ПЗАВВ	пам	1	ПPИЗHAK: "ЗAHЯT БУФEP BBОДA APXИBA"
БАРВВ	пам	ДЛБУФ
*
*  PAБОЧИE  ЯЧEЙKИ  БУФEPA  BЫBОДA  APXИBA
*-----------------------------------------
*
ПЗАВЫВ	пам	1
БАРВЫВ	пам	ДЛБУФ
*
*  PAБОЧИE ЯЧEЙKИ CЛУЖEБHОГО БУФEPA
*----------------------------------
*
ПЗСЛБ	пам	1	ПPИЗHAK: "ЗAHЯT CЛУЖEБHЫЙ БУФEP"
БСЛУЖ	пам	ДЛБУФ	CЛУЖEБHЫЙ БУФEP
*
*  ОБЩИE PAБОЧИE ЯЧEЙKИ, TAБЛИЦЫ, KОHCTAHTЫ
*-------------------------------------------
*
*
ТНФ	пам	48	HОMEPA ФИЗИЧECKИX TEPMИHAЛОB
НОМТЕР	пам	1	HОMEP TEPMИHAЛA ДЛЯ BЫBОДA
ШККРТ	конд	в'-1' ШKAЛA KPEДИTA TEPMИHAЛA
ШКЗАВ	пам	48	ШKAЛA ЗABEPШEHИЯ BЫДAЧИ
CЧКРТ	пам	1	CЧETЧИK KPEДИTA
РЯ1	пам	1	PAБОЧAЯ
ИР12	пам	1
ИР12А	пам	1
ВРЕМ	пам	1	CЧETЧИK BPEMEHИ
Е48П41	конд	в'7760000000000000'
	конд	в'0017740000000000'
	конд	в'0000037700000000'
	конд	в'0000000077600000'
п177к7	конд	в'0000000000177400'
п377к7	конд	в'377'
АВХТ	пб	ВХТАЙМ-ТЕРМАС+'62000'	ДЛЯ ПEPEKЛЮЧATEЛЯ ДИCП70
*							(16 MCEK)
        зп
*ДK '30',BXTAЙM
*ДK '22',0
ВРЕСЕК	конд	в'333' !'62' - 1 СЕК. У НАС ПО-ДРУГОМУ
ВРЕМАВ	конд	в'12'
ДЛКВЫВ	экв	7
КЛПВЫВ	пам	4
	конд	в'377'
	конд	в'252'
	конд	в'125'
ДЛКВВ	экв	3
КЛПВВ	конд	в'377'
	конд	в'252'
	конд	в'125'
*
* О Б Щ И E   Б Л О K И
***********************
*
*
* БЛОK ЗAKPЫTИЯ BXОДHОГО KAHAЛA
*------------------------------
*
*  M15 - AДPEC ПPИЗHAKA ЗAHЯTОCTИ БУФEPA
*  M16 - AДPEC BЫXОДA
*
ЗКВВ	сч	(М15)
	по	(М16)
	счи	М17
	зп	АПГВВ
	сч	E1
	зп	МВВ
	пб	(М16)
*
* БЛОK ОTKPЫTИЯ BXОДHОГО KAHAЛA
*------------------------------
ОТКВВ	сч	МВВ
	по	(М16)
	сч	E12
	увв	'142' "1" -> 12 P ПPП
	сч	
	зп	МВВ
	пб	(М16)
*
* БЛОK УCTAHОBKИ ЗAKAЗA HA ЗAПPОC HОMEPA ЭBM
*-------------------------------------------
*
*УCTЗH ПAM 0 !БЛОК ОПУЩЕН
* CЧ E10
* УBB '142' "1" --> 10 P ПPП
* CЧ HОMAБ
*
* ПE (M15) HОMEP ЭBM ЗAДAH
* CЧ П3
* ЗП ШKИHФ
* ПБ (M15)
*
* БЛОK УCTAHОBKИ PEЖИMA ПОДKЛЮЧEHИЯ
*----------------------------------
*
УСТРП	сч	E10 УCTAHОBKA HA PAБОTAЮЩEЙ ОC
	или	E12
	пв	БВЗ32+4(М15)
УСТРПН	сч	E10 УCTAHОBKA ПPИ ГEHEPAЦИИ ОC
	увв	'142' 1 -> 10 P ПPП
	сч	E12
	увв	'142' 1 -> 12 P ПPП
	сч	ВРЕАРХ
	по	(М16)
	сч	СТАТ3
	слц	E1
	зп	СТАТ3
	счи	М17
	зп	РЯ1 CОXPAHEHИE M17
	сч	
	зп	ППКВВ
	зп	ППКВЫВ
*
* УCTAHОBKA BBОДA
*
	уиа	ВРЕМАВ+8(М17) КЛПВВ
	счи	М17
	зп	АЗБВВ
	уиа	3(М17) ДЛКВВ
	счи	М17
	зп	СБВВ
	сч	АДРВВ+3 АДРВВ+3
	зп	АПГВВ
*
* УCTAHОBKA BЫBОДA
*
	уиа	7(М17) ДЛКВЫВ
	счи	М17
	зп	СБВЫВ
	уиа	ВРЕМАВ+1(М17) КЛПВЫВ
	счи	М17
	зп	АЗБВЫВ АЗБВЫВ
	сч	АДРВЫВ+3 АДРВЫВ+3
	зп	АПГВЫВ
	зп	ПЗБВЫВ
	сч	РЯ1
	уи	М17
	пб	(М16)
*
* БЛОK ПEPEПИCИ BXОДHОЙ БУФEP --> БУФEP APXИBA
*---------------------------------------------
* !БЛОК ОПУЩЕН
*
*ПБBA ПAM 0
*
**
** ПEPEПИCЬ БУФEPA
* УИA -ДЛБУФ+1(M16)
*ПБAPX ПAM 0
* MОДA БУФBB
* CЧ ДЛБУФ-1(M16)
* MОДA БAPBB
* ЗП ДЛБУФ-1(M16)
* ЦИKЛ ПБAPX(M16)
**
** CОБЫTИE B APXИBHУЮ ЗAДAЧУ
* CЧ HЗДAPT
* ПО BЫXПP APXИBHОЙ ЗAДAЧИ HET
* ЗП ПЗABB
*
* ИЛИ E27
* ПB ЗAПBET(M16) E3 --> ШKAЛA CОБЫTИЙ
* ПБ BЫXПP
*
*  C T A P T    T E P M A C A
*****************************
*
ПУСК	сч	МПРП
	или	E10
	или	E12
	зп	МПРП УCTAHОBKA MACKИ ПPП
	сч	АПВВ
*
        АПУ     (&К71).ДА
	мода	обвнп3+12
	АПБ	.ОБЩ
*
.ДА АНОП
	мода	обвнп3-6
.ОБЩ АНОП
	зп	0	AДPEC ПEPEXОДA ПО BBОДУ
	сч	АПВЫВ
*
        АПУ     (&К71).ДА1
	мода	обвнп3+14
	АПБ	.ОБЩ1
*
.ДА1 АНОП
	мода	обвнп3-4 !ЗАГЛУШКА?
*
.ОБЩ1 АНОП
	зп	0	AДPEC ПEPEXОДA ПО BЫBОДУ
	сч	АВХТ
*
        АПУ     (&К71).ДА2
	мода	обвнп1+38
	АПБ	.ОБЩ2
*
.ДА2 АНОП
        мода    обвнп1+20
*
.ОБЩ2 АНОП
	зп	0 AДPEC ПEPEXОДA ПО TAЙMEPУ (16 MCEK)
	уиа	РАБАРХ+1(М16) !В ОРИГ. "ВХЭ77-10"
	счи	М16
*	ЗП AДPЭ77 AДPEC BXОДA ПО Э77
	зп	
	пв	УСТРПН(М16)
	мод	ИР12
	уиа	0(М12)
	пб	(М15)
*
* ПPEPЫBAHИE ПО TAЙMEPУ (16 MCEK)
*********************************
*
ТАЙМЕР	сч	1
	и	E25
	пе	ТАЙМН TAЙMEP BЫKЛЮЧEH
	сч	ВРЕМ
	слц	E1
	зп	ВРЕМ
	нтж	ВРЕСЕК
	пе	ТАЙМН TAЙMEP BЫKЛЮЧEH
	зп	ВРЕМ
****** БЛОК НИЖЕ ОПУЩЕН *******
*	CЧ BPEAPX
* 	И E48
* 	ПE TAЙBB APXИBHУЮ З-ЧУ HE KОHTPОЛИPОBATЬ
* 	CЧ BPEAPX
* 	CЛЦ E1
* 	ЗП BPEAPX
* 	И E7
* 	ПО TAЙBB BPEMЯ HE ПОДОШЛО
* 	CЧ 0
* 	ЗП HЗДAPX
* 	ЗП BPEAPX
* 	ПB ОTKBB(M16)
	сч	АПГВВ !МЕТ. "ТАЙВВ"
	нтж	АДРВВ
	по	ТАЙВЫВ BXОДHОЙ KAHAЛ CBОБОДEH
	сч	ВРЕВВ
	слц	E1
	зп	ВРЕВВ
	нтж	ВРЕМАВ
	по	ТАЙМАВ
ТАЙВЫВ	сч	АПГВЫВ
	нтж	АДРВЫВ
	по	ТАЙМН BЫXОДHОЙ KAHAЛ CBОБОДEH
	сч	ВРЕВЫВ
	слц	E1
	зп	ВРЕВЫВ
	нтж	ВРЕМАВ
	пе	ТАЙМН
ТАЙМАВ	зп	ВРЕВВ
	зп	ВРЕВЫВ
	пв	УСТРП(М16)
ТАЙМН	сч	ЧСТР
	мод	ИР12
	уиа	0(М12)
	пб	н1469
*
*
*****************************
*   ПPОTОKОЛ  1-ГО УPОBHЯ   *
*****************************
*
*  ПPEPЫBAHИE ПО BBОДУ  (12 P ПPП)
**********************************
*
ПРВВ	увв	'4102'
	и	E7
	по	ВВОШ ЛОЖHОE ПPEPЫBAHИE
	мод	АЗБВВ
	уиа	0(М16)
	мод	М15ВВ
	уиа	0(М15)
	мод	АПГВВ
	пб	
*
* ОШИБKA 12 P ПPП
*----------------
*
ВВОШ	уиа	о12прп+3(М16)
	пб	ОШПРП
*
* УCTAHОBKA HAЧAЛЬHОЙ CBЯЗИ
*==========================
*
*
*  ГОTОBHОCTЬ BBОДA
*------------------
*
ПАВВ	увв	'4174' ЧTEHИE БAЙTA
	нтж	(М16)
	пе	ПАВВ1 БAЙT HE CОBПAЛ
	зп	ВРЕВВ
	слиа	1(М16)
	сч	СБВВ
	слц	П7777
	и	П7777
	зп	СБВВ
	пе	ВЫХВВ BBОД HE ОKОHЧEH
	сч	E1
	зп	ППКВВ ПОДKЛЮЧEHИE BXОДHОГО KAHAЛA
	сч	АДРВВ
	зп	АПГВВ
	сч	E12
	пв	БВЗ4+7(М15)
	сч	ППКВЫВ
	по	ВЫХВВ BЫXОДHОЙ KAHAЛ HE ПОДKЛЮЧEH
	сч	E10
	или	E12
	пв	БВЗ32+4(М15) !УСТПРП
	сч	E10 !УСТЗН
	увв	'142' !НЕТ В ОРИГ.
	пб	ВЫХВВ
ПАВВ1	уиа	3(М16) ДЛКВВ
	счи	М16
	зп	СБВВ
	уиа	ВРЕМАВ+8(М16)
	пб	ВЫХВВ
*
* ПPИEM CООБЩEHИЯ (1-ЫЙ УPОBEHЬ)
*===============================
*
*
*  ПPИEM AДPECATA
*----------------
*
ПРАДР	сч	АДРВВ+2
	зп	АПГВВ
	сч	E2
	зп	СБВВ
	уиа	БУФВВ(М16)
	уиа	-5(М15) CЧETЧИK БAЙTОB B CЛОBE
	сч	
	зп	2(М16)
	слиа	2(М16)
	увв	'4174'	ЧTEHИE БAЙTA
	по	АВРВВ ПPИHЯT HУЛEBОЙ БAЙT ==> ПОДKЛЮЧEHИE
	зп	РЯ1
	нтж	НОМАБ
* CЧ HОMAБ
* ПО ПPAДP1 HE ЗAДAH HОMEP ЭBM
* HTЖ PЯ1
	и	П177
	пе	АВРВВ
	сч	РЯ1
ПРАДР1	зп	-2(М16)
	и	E8
	по	ВЫХВВ
	сч	АДРВВ+1
	зп	АПГВВ
	пб	ВЫХВВ
*
*  ПPИEM KОЛИЧECTBA БAЙT
*-----------------------
*
ПРКБ	увв	'4174' ЧTEHИE БAЙTA
	по	АВРВВ ПPИHЯT HУЛEBОЙ БAЙT ==> ПОДKЛЮЧEHИE
	зп	-1(М16)
	зп	СБВВ
	сч	АДРВВ+2
	зп	АПГВВ
	пб	ВЫХВВ
*
* ПPИEM ИHФОPMAЦИОHHОЙ ЧACTИ CООБЩEHИЯ
*-------------------------------------
*
ПРСООБ	увв	'4174'	ЧTEHИE БAЙTA
	сда	64-40
	мода	Е48П41
	рзб	5(М15)
	или	(М16)
	зп	(М16)
	цикл	ПРС1(М15)
	слиа	1(М16)
	уиа	-5(М15)
	сч	
	зп	(М16)
ПРС1	сч	СБВВ
	слц	П7777
	и	П7777
	зп	СБВВ
	пе	ВЫХВВ ПPИEM HE ОKОHЧEH
	сч	АДРВВ
	зп	АПГВВ
	сч	
	зп	ВРЕВВ
	пб	АНСООБ
ВЫХВВ	увв	'177' !В ОРИГ. '176' BДЗП:=1
	счи	М16
	зп	АЗБВВ
	счи	М15
	зп	М15ВВ
	пб	ВЫХПР
*
* УCTAHОBKA PEЖИMA ПОДKЛЮЧEHИЯ
*-----------------------------
*
АВРВВ	увв	'177' !В ОРИГ. '176' BДЗП:=1
	сч	СТАТ4
	слц	E1
	зп	СТАТ4
	пв	УСТРП(М16)
АВРВ1	пб	ВЫХПР !ЭТОЙ МЕТКИ НЕТ
*
*  AHAЛИЗ CООБЩEHИЯ
*==================
*
АНСООБ	сч	БУФВВ
	и	E8
	по	ВВСИМ KОPОTKОE CООБЩEHИE ==> ОT TEPMИHAЛA
	сч	БУФВВ+2
	сда	64+37
	и	П3
	уи	М16 HОMEP ПPОTОKОЛA 2-ГО УPОBHЯ
	пб	ППРОТ(М16)
ППРОТ	пам 	0 ПEPEKЛЮЧATEЛЬ ПPОTОKОЛОB
	пб	CЛУЖ CЛУЖEБHЫЙ ПPОTОKОЛ
	пам	0	
	пб	ТЕРМИН TEPMИHAЛЬHЫЙ ПPОTОKОЛ
	пам	0
	пб	ФАЙЛ ФAЙЛОBЫЙ ПPОTОKОЛ
	пам	0
	пб	ИНФК71 ИHФОPMAЦИОHHЫЙ ПPОTОKОЛ
*
*  ПPEPЫBAHИE ПО BЫBОДУ  (10 P ПPП)
***********************************
*
ПРВЫВ	увв	'4102'
	и	E8
	по	ВЫВОШ ЛОЖHОE ПPEPЫBAHИE
	сч	ПЗБВЫВ
	пе	ВЫВБУФ ИДET BЫBОД
*
* AHAЛИЗ TPEБОBAHИЙ HA ЗAПУCK BЫBОДA
*-----------------------------------
*
	пв	РАБИНФ(М16)
РАБИН	ноп	, !В ОРИГ. ТРЕХ МЕТОК НЕТ
	пв	РАБТЕР(М16)
РАБТЕ	ноп	
	пв	РАБАРХ(М16)
РАБАР	пб	ВЫХПР

*
* BЫДAЧA BЫXОДHОГО БУФEPA
*------------------------
*
ВЫВБУФ	мод	АЗБВЫВ
	уиа	0(М16)
	мод	М15ВЫВ
	уиа	0(М15)
	мод	АПГВЫВ
	пб	
*
* ОШИБKA 10 P ПPП
*----------------
*
ВЫВОШ	уиа	СТАТ2(М16)
	пб	ОШПРП
*
* УCTAHОBKA HAЧAЛЬHОЙ CBЯЗИ
*==========================
*
ПАВЫВ	сч	СБВЫВ
	по	ПАВЫВ1 BЫBОД ОKОHЧEH
	сч	(М16)
	увв	'174' BЫДAЧA БAЙTA
	слиа	1(М16)
	сч	СБВЫВ
	слц	П7777
	и	П7777
	зп	СБВЫВ
	пб	ВЫХВЫВ
ПАВЫВ1	зп	ПЗБВЫВ
	зп	ВРЕВЫВ
	сч	E1
	зп	ППКВЫВ ПОДKЛЮЧEHИE BЫXОДHОГО KAHAЛA
	сч	АДРВЫВ
	зп	АПГВЫВ
	сч	E10
	пв	БВЗ4+7(М15)
	сч	ППКВВ
	по	ВЫХПР BXОДHОЙ KAHAЛ HE ПОДKЛЮЧEH
	сч	E10
	или	E12
	пв	БВЗ32+4(М15)
	сч	E10 	!"ПВ УСТЗН(М15)"
	увв	'142'	!НЕТ В ОРИГ.
	пб	ВЫХПР
*
* ПEPEДAЧA CООБЩEHИЯ (1-ЫЙ УPОBEHЬ)
*==================================
*
*
* ПEPEДAЧA AДPECATA
*------------------
*
ПЕРАДР	сч	АДРВЫВ+2 	!АДРВЫВ+2
	зп	АПГВЫВ
	сч	E2
	зп	СБВЫВ
	уиа	БУФВЫВ(М16) !БУФВЫВ+2
	уиа	-5(М15) CЧETЧИK БAЙT B CЛОBE
	слиа	2(М16)
	сч	-2(М16)
	увв	'174' ПEPEДAЧA БAЙTA
	и	E8
	по	ВЫХВЫВ KОPОTKОE CООБЩEHИE
	сч	АДРВЫВ+1 !АДРВЫВ+1
	зп	АПГВЫВ
	пб	ВЫХВЫВ
*
* ПEPEДAЧA KОЛИЧECTBA БAЙT
*-------------------------
*
ПЕРКБ	сч	-1(М16)
	увв	'174'
	зп	СБВЫВ
	сч	АДРВЫВ+2
	зп	АПГВЫВ
	пб	ВЫХВЫВ
*
* ПEPEДAЧA ИHФОPMAЦИОHHОЙ ЧACTИ CООБЩEHИЯ
*----------------------------------------
*
ПЕРСОБ	сч	(М16)
	мода	Е48П41
	сбр	5(М15)
	сда	64+40
	увв	'174' ПEPEДAЧA БAЙTA
	цикл	ПЕРС1(М15)
	слиа	1(М16)
	уиа	-5(М15)
ПЕРС1	сч	СБВЫВ
	слц	П7777
	и	П7777
	зп	СБВЫВ
	пе	ВЫХВЫВ BЫBОД HE ОKОHЧEH
	зп	ПЗБВЫВ
	зп	ВРЕВЫВ
	сч	АДРВЫВ
	зп	АПГВЫВ
ВЫХВЫВ	счи	М16
	зп	АЗБВЫВ
	счи	М15
	зп	М15ВЫВ
*
* BЫXОД ИЗ ПPEPЫBAHИЯ
*********************
*
ВЫХПР	мод	ИР12
	уиа	0(М12)
	пб	спи1 !БМВ
*
* О Ш И Б K И   П P П
*--------------------
*
* M16 - AДPEC ЯЧEЙKИ ДЛЯ CTATИCTИKИ
ОШПРП	сч	(М16)
	слц	E1
	зп	(М16)
	пб	ВЫХПР
********************************************
*                                          *
*      C E T Ь   Э B M   H E P П A         *
*------------------------------------------*
*  ДPAЙBEP CИCTEMЫ CBЯЗИ БЭCM-6 <--> MAMC  *
*  ЧACTЬ 2.                                *
********************************************
*
*
*
*
*****************************************
*   CЛУЖEБHЫЙ ПPОTОKОЛ (2-ОЙ УPОBEHЬ)   *
****************************************
*  *
CЛУЖ	уиа	ПЗСЛБ(М15)
	уиа	CЛУЖ(М17)
	пв	ЗКВВ(М16)
	пе	ВЫХПР
	увв	'177' !'176' BДЗП:=1
	сч	АДРВВ
	зп	АПГВВ
	сч	БУФВВ+2
	сда	64+32
	и	П3
* ПО BЫXПP KОП = 0
* УИA (M17) KОП:=0
* CЧ 0 3 БAЙT:=0
	уи	М16 !УИA (M16) 4 БAЙT:=0
	пб	ФОТВ4А(М16)
ФОТВ4А	сч	0	!БЛОК СУЩЕСТВЕННО МОДИФИЦИРОВАН	
	пб	ВЫХПР	ЕГО ЗДЕСЬ БЫТЬ НЕ ДОЛЖНО
	сч	НОМАБ
	пб	ВЫХПР
	сч	НОМАБ
	пб	ФОТ4Б
	сч	НОМАБ
	пб	ВЫХПР
ФОТ4Б	пб	ВЫХПР
*
*
*******************************************
*   TEPMИHAЛЬHЫЙ ПPОTОKОЛ (2-ОЙ УPОBEHЬ)  *
*******************************************
*
ТЕРМИН	уиа	ПЗСЛБ(М15)
	уиа	ТЕРМИН(М17) !НЕТ В ОРИГ.
	пв	ЗКВВ(М16)
	пе	ВЫХПР
	увв	'177' '176' BДЗП:=1
	сч	АДРВВ
	зп	АПГВВ
	сч	БУФВВ+2
	сда	64+32
	и	П17
	уи	М16
	пб	ПАНСТ(М16)
*
*** ПEPEKЛЮЧATEЛЬ AHAЛИЗA KОП CООБЩEHИЯ
*
ПАНСТ	мода	0	!БЛОК СУЩ. МОДИФИЦИРОВАН
	пб	ВЫХПР
	уиа	-47(М16)
	пб	ПОДКТ ЗAПPОC HA ПОДKЛЮЧEHИE HОBОГО TEPMИHAЛA
	мода	
	пб	ВЫХПР
	сч	БУФВВ+2
	пб	ОТКЛТ ЗAПPОC ОTKЛЮЧEHИЯ TEPMИHAЛA
	мода	
	пб	ВЫХПР ОTBET HA ЗAПPОC ОTKЛЮЧEHИЯ TEPMИHAЛA
*********** ВМЕСТО СТРОК ПОМЕЧ. "*" **************
* УИA KTЗГC(M16)
* ПБ TEPHET ЗAПPОC ПEPEДAЧИ ГPУППОBОГО CООБЩEHИЯ
* УИA KTПГC(M16)
* ПБ TEPHET ПEPEДAЧA ГPУППОBОГО CООБЩEHИЯ
	мода	0	*
	пб	ВЫХПР	*
	мода	0	*
	пб	ВЫХПР	*
	сч	БУФВВ+2
	пб	ОКНВЫД 		ОKОHЧAHИE ОБMEHA
	сч	БУФВВ+2
	пб	ГОТОБМ 		ГОTОBHОCTЬ ПPОДОЛЖEHИЯ ОБMEHA
*********** ВМЕСТО СТРОК ПОМЕЧ. "*" **************
* ПБ TEPHET ЗAПPОC ИЗMEHEHИЯ TИПA ОБCЛУЖИBAHИЯ
* УИA KTОИTО(M16)
* ПБ TEPHET ОTBET HA ЗAПPОC ИЗM-HИЯ TИПA ОБCЛ-HИЯ
* УИA '53'(M16)
* ПБ TEPHET PEЗEPB
* УИA '54'(M16)
* ПБ TEPHET PEЗEPB
* УИA '55'(M16)
* ПБ TEPHET PEЗEPB
* УИA '56'(M16)
* ПБ TEPHET PEЗEPB
* УИA '57'(M16)
* ПБ TEPHET PEЗEPB
	сч	0	*
	пб	ВЫХПР	*
	сч	0	*
	пб	ВЫХПР	*
	сч	0	*
	пб	ВЫХПР	*
	сч	0	*
	пб	ВЫХПР	*
	сч	0	*
	пб	ВЫХПР	*
	сч	0	*
	пб	ВЫХПР	*
	сч	0	*
	пб	ВЫХПР	*
* ОПEPAЦИИ TEPMИHAЛЬHОГО ПPОTОKОЛA
*KTHET  ЭKB '40' BЫПОЛHИTЬ ОПEPAЦИЮ AБОHEHT HE MОЖET
*KTПОД  ЭKB '41' ЗAПPОC ПОДKЛЮЧEHИЯ
KTПП   ЭKB '42' ОTBET HA ЗAПPОC ПОДKЛЮЧEHИЯ
*KTОTK  ЭKB '43' ЗAПPОC ОTKЛЮЧEHИЯ
KTПО   ЭKB '44' ОTBET HA ЗAПPОC ОTKЛЮЧEHИЯ
*KTЗГC  ЭKB '45' ЗAПPОC ПEPEДAЧИ ГPУППОBОГО CООБЩEHИЯ
*KTПГC  ЭKB '46' ПEPEДAЧA ГPУППОBОГО CООБЩEHИЯ
*KTОKОБ ЭKB '47' ОKОHЧAHИE ОБMEHA
*KTГПО  ЭKB '50' ГОTОBHОCTЬ ПPОДОЛЖEHИЯ ОБMEHA
*KTИTО  ЭKB '51' ЗAПPОC ИЗMEHEHИЯ TИПA ОБCЛУЖИBAHИЯ
*KTОИTО ЭKB '52' ОTBET HA ЗAПPОC ИЗM-HИЯ TИПA ОБCЛ-HИЯ
*
* ФОPMИPОBAHИE ОTBETA О HEBОЗMОЖHОCTИ
* BЫПОЛHEHИЯ ЗAДAHHОЙ ОПEPAЦИИ
*-----------------------------
*
*TEPHET HОП 0  		!БЛОК ОПУЩЕН
* УИA KTHET(M17) KОП
* CЧИ M16
* CДA 64-24 3 БAЙT
* УИA (M16) 4 БAЙT
* ПБ ФОTB4
*
* ПОДKЛЮЧEHИE HОBОГО TEPMИHAЛA
*-----------------------------
*
ПОДКТ	сч	БУФВВ+2
* CДA 64+40
	сда	64+32 *
	и	п177к7
	зп	РЯ1
	сч	БУФВВ+2
	сда	64+24
	и	п377к7
	или	РЯ1
	зп	РЯ1 ПОЛHЫЙ HОMEP TEPMИHAЛA
ПОДКТ1	мода	ТНФ
	сч	'57'(М16)
	нтж	РЯ1
	и	П77777
	по	ПОДКТ2 ЭTОT TEPMИHAЛ УЖE ПОДKЛЮЧEH
	цикл	ПОДКТ1(М16)
*
*** ПОИCK CBОБОДHОГО ЛОГИЧECKОГО HОMEPA
*
	сч	СЛОN+'307' !СЛОN
	нед	
	уи	М16
	пио	ПОДОТВ(М16)
	слиа	-1(М16)
*
* !БЛОК НИЖЕ ОПУЩЕН
*
** BEPCИЯ ИTM (ПОИCK CBОБОДHОЙ CTPОKИ B TAC)
* УИA -126(M15)
*ПTAC HОП 0
* CЧ TAC+127(M15)
* И CTACT
* ПО HTAC CTPОKA HAЙДEHA
* ЦИKЛ ПTAC(M15)
* УИA (M16)
* ПБ ПОДОTB HET CBОБОДHОЙ CTPОKИ
*HTAC HОП 0
* CЛИA 127(M15)
*
*** ЗAXBAT ЛОГИЧECKОГО KAHAЛA
*
	сч	СЛОN+'307'
	нтж	E48(М16)
	зп	СЛОN+'307'         там команды
*
*** УCTAHОBKA ПPИЗHAKA AC
*	
	сч	ШКАС+'310' !ШКАС
	или	E48(М16)
	зп	ШКАС+'310'
*
***  ФОPMИPОBAHИE TCЛ
*
	сч	E16 	KОИ-7 ЧEPEЗ AC
	зп	ТСЛ+1(М16) !ТСЛ
*
*** ФОPMИPОBAHИE THФ
*
	сч	РЯ1
	мода	ТНФ
	зп	(М16)
*
*** BEPCИЯ ИTM (ФОPMИPОBAHИE TAC И ШKCT)
*
* !МОДИФИКАЦИЯ
*
* CЧ ШKCT
* ИЛИ E48(M16)
* ЗП ШKCT
* CЧИ M15
* CДA 64-40
	сч	РЯ1 *
	и	п377к7 *
	уи	М17 *
	сда	64-42 *
	или	ТСЛ+1(М16) !ТСЛ
	зп	ТСЛ+1(М16)
	счи	М16
	слц	E1
	или	E16 		ПPИЗHAK KОИ-7 ЧEPEЗ AC
* ИЛИ TAC(M15)
* ЗП TAC(M15)
* CЧ ГОД
	зп	ТАС+49(М17) * !ТАС
	сч	ГОД
	сда	64-45
	или	ТАС+49(М17) !ТАС
	зп	ТАС+49(М17)
	пв	ПИЛОТ+'113'(М15) !ПИЛОТ. УCTAHОBKA PAБОTЫ БHБОT'У
	слиа	1(М16)
ПОДКТ3	сч	БУФВВ+2 ФОPMИPОBAHИE CЧETЧИKA KPEДИTA
	и	п377к7
	сда	64-8
	зп	РЯ1
	сч	БУФВВ+2
	сда	64+8
	и	п377к7
	или	РЯ1
	мода	ШКЗАВ !ШКЗАВ-1
	зп	(М16)
*
* !БЛОК НИЖЕ ОПУЩЕН
*
* УИA -KTИПT(M17)
*ПTИП1 HОП 0
* MОДA TИПT
* CЧ KTИПT(M17)
* УИ M15
* CЧ (M15)
* ИЛИ E48-1(M16)
* HTЖ E48-1(M16)
* ЗП (M15)
*
* ЦИKЛ ПTИП1(M17)
* УИA -KTИПT(M17)
*ПTИП2 HОП 0
* MОДA TИПT
* CЧ KTИПT(M17)
* HTЖ БУФBB+3
* И E48П41
* ПО ПTИП3 ECTЬ TAKОЙ TИП
* ЦИKЛ ПTИП2(M17)
* CЧ 0
* ЗП PЯ1
* ПБ ПОДОTB
*ПTИП3 HОП 0
* MОДA TИПT
*
* CЧ KTИПT(M17)
* УИ M15
* CЧ (M15)
* ИЛИ E48-1(M16)
* ЗП (M15)
**
****** ДЛЯ KОMETЫ (BPEMEHHО) ****
* AПУ (&TИПОC EQ 0).CОП1
* CЧ БУФBB+3
* HTЖ TИПT+1
* И E48П41
* ПE CОП1 HET VDT-52130
* CЧ ШHP
* ИЛИ E48-1(M16)
*
* ЗП ШHP
*CОП1 HОП 0
*CОП1 AHОП 0
*********************************
*
*** УCTAHОBKA TИПA TEPMИHAЛA
*
ПОДОТВ	уиа	КТПП(М17) ФОPMИPОBAHИE ОTBETA. КОД ОПЕРАЦИИ
	уиа	7(М15) KОЛ-BО БAЙT
	сч	
	зп	БСЛУЖ+3 6,7 БAЙT:=0
	сч	БУФВВ+2
*И E48П41+2  ФИЗИЧECKИЙ HОMEP TEPMИHAЛA
*ИЛИ PЯ1 5 БAЙT
	и	Е48П41+2
	пб	ФОТВТ
ПОДКТ2	слиа	'60'(М16)
	пб	ПОДКТ3
*HKTEP HОП 0
* CЧ 0
* ЗП PЯ1
* ПБ ПОДОTB
*
* ОTKЛЮЧEHИE TEPMИHAЛA
*---------------------
*
ОТКЛТ	сда	64+16
	и	п377к7
	уи	М16 HОMEP ЛОГИЧECKОГО KAHAЛA
	мода	ТНФ-1
	сч	(М16)
	по	ВЫХПР HET ИHФОPMAЦИИ О KAHAЛE
	сда	64+8
	зп	РЯ1
	сч	БУФВВ+2
	сда	64+40
	нтж	РЯ1
	пе	ВЫХПР HE CОBПAЛ HОMEP AБОHEHTA
	сч	ШЗНКТ+'310' !ШЗНКТ
	и	Е48-1(М16)
	пе	ОТКЛН	TEPMИHAЛ ЗAKPEПЛEH ЗA ЗAДAЧEЙ
*
*** BEPCИЯ ИTM (ОЧИCTKA TAC И ШKCT)
*
* !БЛОК ОПУЩЕН
*
* CЧ ШKCT
* HTЖ E48-1(M16)
* ЗП ШKCT
**
* CЧ TCЛ-1(M16)
* CДA 64+40
* УИ M15
* CЧ TAC(M15)
* ИЛИ CTACT
*
* HTЖ CTACT
* ЗП TAC(M15)
	сч	ШКАС+'310'
	или	Е48-1(М16)
	нтж	Е48-1(М16)
	зп	ШКАС+'310'
	сч	СЛОN+'307'
	нтж	Е48-1(М16)
	зп	СЛОN+'307'         там команды
	сч	
	зп	ТСЛ(М16)
	мода	ТНФ-1
	зп	(М16)
ОТКОТВ	уиа	КТПО(М17) ФОPMИPОBAHИE ОTBETA. KОД ОПEPAЦИИ
	сч	БУФВВ+2
	и	Е48П41+2
* CM -  ФИЗИЧECKИЙ HОMEP TEPMИHAЛA
* M16 - ЛОГИЧECKИЙ HОMEP TEPMИHAЛA
	пб	ФОТВ4 !ФОТВ4
ОТКЛН	уиа	0(М16)
	пб	ОТКОТВ
*
* ОKОHЧEHA PEAЛЬHAЯ BЫДAЧA HA TEPMИHAЛ
*-------------------------------------
*
ОКНВЫД	сда	64+24
	и	п377к7
	уи	М15
	мода	ТНФ-1 HОMEP ЛОГИЧECKОГО KAHAЛA
	сч	(М15)
	по	ВЫХПР HET ИHФОPMAЦИИ О TEPMИHAЛ
	сч	ШКЗАВ
	и	Е48-1(М15)
	по	ВЫХПР
	нтж	ШКЗАВ
	зп	ШКЗАВ
	слиа	-1(М15)
	сч	БУФВВ+2
	сда	64+16
	и	п377к7
	или	БУФВВ+2
	и	П77777
	мода	ШКЗАВ  !СЧКРТ
	зп	(М15)
* CЧ ШKKPT
* ИЛИ E48(M15)
* ЗП ШKKPT
	пв	КЛЮЧТМ+12(М16) !КОНВЫД  там пусто
	пб	ВЫХПР
*
* ГОTОBHОCTЬ ПPОДОЛЖEHИЯ ОБMEHA
*------------------------------
*
ГОТОБМ	сда	64+24
	и	п377к7
	уи	М16 	HОMEP ЛОГИЧECKОГО KAHAЛA
	сч	БУФВВ+2
	сда	64+16
	и	п377к7
	или	БУФВВ+2
	и	П77777
	мода	ШКЗАВ
	слц	(М16)
	мода	ШКЗАВ
	зп	(М16)
	сч	ШККРТ
	или	Е48-1(М16)
	зп	ШККРТ
	сч	ПЗБВЫВ
	пе	ВЫХПР BЫXОДHОЙ KAHAЛ ЗAHЯT
	сч	E10
	увв	'142' "1" --> 10 P ПPП (PAБОTA BЫBОДУ)
	пб	ВЫХПР
*
* ФОPMИPОBAHИE 4-X БAЙTHОГО ОTBETA
*---------------------------------
*
*  M17 - 2 БAЙT (KОД ОПEPAЦИИ)
*  CM  - 3 БAЙT
*  M16 - 4 БAЙT
*
ФОТВ4	уиа	4(М15) KОЛ-BО БAЙT
ФОТВТ	зп	БСЛУЖ+2
	счи	М16
	сда	64-16
	или	БСЛУЖ+2
	зп	БСЛУЖ+2
*
* ФОPMИPОBAHИE ОTBETA
*--------------------
*
*  M15 - KОЛ-BО БAЙT B ИHФОPMAЦИОHHОЙ ЧACTИ
*  M17 - KОД ОПEPAЦИИ (2 БAЙT)
*
ФОТВ	сч	E1
	зп	ПЗСЛБ ЗAXBAT CЛУЖEБHОГО БУФEPA
	сч	БУФВВ+2
	сда	64+40
	или	E8
	зп	БСЛУЖ AДPECAT
	счи	М15
	зп	БСЛУЖ+1 KОЛ-BО БAЙT
	сч	НОМАБ
	сда	64-40
	или	БСЛУЖ+2
	зп	БСЛУЖ+2 HОMEP AБОHEHTA БЭCM
	счи	М17
	сда	64-32
	или	БСЛУЖ+2
	зп	БСЛУЖ+2 KОД ОПEPAЦИИ
	сч	ПЗБВЫВ
	пе	ВЫХПР BЫXОДHОЙ KAHAЛ ЗAHЯT
	сч	E10
	увв	'142' "1" --> 10 P ПPП (PAБОTA BЫBОДУ)
	пб	ВЫХПР
*
* ПPИШEЛ CИMBОЛ C TEPMИHAЛA
*--------------------------
*
ВВСИМ	увв	'177' 	!'176'. BДЗП:=1
	сч	БУФВВ+2
	сда	64+40
	и	п377к7
	уи	М17 	HОMEP ЛОГИЧECKОГО KAHAЛA
	слиа	-1(М17)
	мода	ТНФ
	сч	(М17)
	по	ВЫХПР	HET ИHФОPMAЦИИ О TEPMИHAЛE
	сч	БУФВВ+2
	сда	64+32
	уи	М16	ЗAПИCЫBAЙMЫЙ CИMBОЛ
	пв	ЗАПСИМ(М15)
ВВСИМ1	пб	ВЫХПР
*
* УCTAHОBKA ЗAKAЗA HA BЫBОД ОT MОTT'A
*------------------------------------
*
* M17 - ЛОГИЧECKИЙ HОMEP TEPMИHAЛA
* M16 - AДPEC BОЗBPATA ИЗ ПMBЫД

* M15 - AДPEC BОЗBPATA ИЗ TEPMACA B MОTT
*
ВХМОТТ	сч	ПЗБВЫВ
	пе	НАЧВ1	BЫXОДHОЙ KAHAЛ ЗAHЯT
	сч	E10
	увв	'142'	"1" -> 10 P ПPП (PAБОTA BЫBОДУ)
НАЧВ1	мод	ИР12А
	уиа	0(М12)
	пб	(М15)
*
* ПОДГОTОBKA PAБОTЫ ДЛЯ BЫBОДA CЛУЖEБHЫX CООБЩEHИЙ
*-------------------------------------------------
*
* M16 - AДPEC BОЗBPATA (ПPИ ОTCУTCTBИИ CООБЩEHИЙ)
* ECЛИ ECTЬ CООБЩEHИE ДЛЯ BЫBОДA,
* TО ОCУЩECTBЛЯETCЯ ПEPEXОД HA BЫBБУФ
*
РАБТЕР	сч	ПЗСЛБ
	по	СТЕР	CЛУЖEБHЫX CООБЩEHИЙ HET
	зп	ПЗБВЫВ	ЗAXBAT BЫXОДHОГО KAHAЛA
*
* ПEPEПИCЬ CЛУЖEБHОГО БУФEPA
*
	уиа	-10(М16)
ПСЛБ	мода	БСЛУЖ
	сч	10(М16)
	мода	БУФВЫВ
	зп	10(М16)
	цикл	ПСЛБ(М16)
*
* ОCBОБОЖДEHИE CЛУЖEБHОГО БУФEPA
*
	сч	
	зп	ПЗСЛБ
*
* ОTKPЫTИE BXОДHОГО KAHAЛA
	пв	ОТКВВ(М16)
	пб	ВЫВБУФ
*
* CООБЩEHИE ДЛЯ TEPMИHAЛОB
*-------------------------
*
СТЕР	сч	НОМТЕР
	уи	М15
	пе	СТЕР0 BЫBОДHОЙ TEPMИHAЛ ОПPEДEЛEH
	сч	П215
	нтж	ШКЗАВ
	и	ШКАС+'310'
	и	ШККРТ
	по	(М16) HET BЫДAЧИ ДЛЯ TEPMИHAЛОB
	нед	
	уи	М15 ЛОГИЧECKИЙ HОMEP TEPMИHAЛA
	слиа	-1(М15)
	счи	М15
	зп	НОМТЕР
СТЕР0	сч	E1
	зп	ПЗБВЫВ ЗAXBAT BЫXОДHОГО KAHAЛA
	мод	ТБЛ-16(М15) !ТБЛ
	уиа	0(М16) AДPEC PEKОPДA
	мод	(М16)
	мода	(М16)
	уиа	0(М17) 17-AБCОЛЮTHЫЙ AДPEC BЫДABAEMОГО CЛОBA
	пам	0	!НЕТ В ОРИГ.
	сч	9(М17) !Н
	сда	64-8
	зп	9(М17)
	счмр	
	зп	РЯ1 BЫДABAEMЫЙ CИMBОЛ
	пе	СТЕР2 BЫДAЧA HE ОKОHЧEHA
	сч	ШКЗАВ
	или	E48(М15)
	зп	ШКЗАВ
	сч	
	зп	РЯ1
	зп	НОМТЕР
	пб	ФБВЫВТ
СТЕР2	сч	9(М17)
	пе	ФБВЫВТ CЛОBО EЩE HE BЫДAHО
	сч	(М16)
	слц	E1
	зп	(М16)
	слц	П77777
	нтж	3(М16)
	и	П7777
	пе	ФБВЫВТ PEKОPД HE BЫДAH
	сч	ТСЛ+1(М15)
	и	Е36
	пе	ФБВЫВТ
	сч	1(М16)
	по	СТЕР3
	зп	ТБЛ-16(М15) AДPEC ОЧEPEДHОГО PEKОPДA --> TБЛ
	пб	ФБВЫВТ
СТЕР3	сч	(М16)
	слц	П77777
	и	П77777
	зп	(М16)
*
*** ФОPMИPОBAHИE БУФEPA ДЛЯ BЫДAЧИ HA TEPMИHAЛ
*
ФБВЫВТ	мода	ТНФ
	сч	(М15)
	сда	64+8
	зп	БУФВЫВ
	мода	ТНФ
	сч	(М15)
	сда	64-40
	зп	БУФВЫВ+2
	сч	РЯ1
	сда	64-32
	или	БУФВЫВ+2
	зп	БУФВЫВ+2
	уиа	ШКЗАВ+1(М16)
	сли	М16(М15)
	сч	(М16)
	по	ВЫВБУФ KPEДИT БECKОHEЧHЫЙ
	слц	П77777
	и	П77777
	пе	ВЫВБУФ KPEДИT HE ИCЧEPПAH
	сч	ШККРТ
	или	E48(М15)
	нтж	E48(М15)
	зп	ШККРТ
	сч	
	зп	НОМТЕР
	пб	ВЫВБУФ
*
*
* БЛОK ЗAПИCИ CИMBОЛA B PEKОPД TEPMИHAЛA
*---------------------------------------
*
*  BXОДHЫE ЗHAЧEHИЯ:
*    M16 - ЗAПИCЫBAEMЫЙ CИMBОЛ
*
ЗАПСИМ	пам	0
*HTЖ CTRLS
*ПО (M15) ЭTОT CИMBОЛ HE ПPИHИMATЬ
	сч	П215+1 !ШЗПРИМ
	и	E48(М17)
	пе	(М15) ПРИЕМ ЗАКРЫТ
	счи	М15
	зп	АДРВЫХ
	счи	М13
	зп	Р
	счи	М14
	зп	Р1
	уиа	0(М13)
	уиа	0(М14)
	счи	М16
	зп	R(М13)
	пв	ОБЛ-'112'(М15) !ОБЛ
	пб	ПОСОБЛ+'60' !VIDEOT. HA ПEPEДAЧУ CИMBОЛA MОTT'У
ВЫХКТ	мод	АДРВЫХ
	уиа	0(М15)
	мод	Р
	уиа	0(М13)
	мод	Р1
	уиа	0(М14)
	пб	(М15)
*
*AДPBЫX BHEШH MОTT.AДPBЫX
*CTRLS KОHД B'23
АДРВЫХ	пам	1 *
*
********************************************
*                                          *
*      С Е Т Ь   Э В М   Н Е Р П А         *
*------------------------------------------*
*  ДРАЙВЕР СИСТЕМЫ СВЯЗИ БЭСМ-6 <--> МАМС  *
*  ЧАСТЬ 3.                                *
********************************************
*
*
****************************************
*   ФАЙЛОВЫЙ ПРОТОКОЛ (2-ОЙ УРОВЕНЬ)   *
****************************************
ФАЙЛ	уиа	ПЗАВВ(М15)
* ПО ФАЙЛН НЕТ АРХИВНОЙ ЗАДАЧИ
* УИА ПЗАВВ(М15)
	уиа	ФАЙЛ(М17)
	пв	ЗКВВ(М16)
ФАЙЛН	пе	ВЫХПР
*
* !В ОРИГ. БЛОК НИЖЕ ЗАМЕНЯЕТ СТР. С "*"
*
* УВВ '176' ВДЗП:=1
* СЧ АДРВВ
* ЗП АПГВВ
* ПБ ПБВА НА ПЕРЕПИСЬ В БУФЕР АРХИВА
**
*ФАЙЛН НОП 0
* УИА ПЗСЛБ(М15)
* ПВ ЗКВВ(М16)
* ПЕ ВЫХПР
* УВВ '176' ВДЗП:=1
* СЧ АДРВВ
* ЗП АПГВВ
* УИА '102'(М17) КОП=102
* СЧ БУФВВ+4
* И Е48П41+3
* СДА 64-8 З БАЙТ-НОМЕР ЗАКАЗА
* УИА '24'(М16) 4 БАЙТ
* ПБ ФОТВ4
	сч	АДРВВ *
	зп	АПГВВ *
	увв	'177' '176' ВДЗП:=1 *
	уиа	-ДЛБУФ+1(М16) *
ФАЙЛН1	мода	БУФВВ !НЕТ В ОРИГ. *
	сч	ДЛБУФ-1(М16) *
	мода	БАРВВ	*
	зп	ДЛБУФ-1(М16) *
	цикл	ФАЙЛН1(М16) *
	сч	0	*
	по	ВЫХПР	*
	зп	ПЗАВВ	*
	нед	0	*
	или	E27	*
	пв	ВЕТКА(М16)	*
	пб	ВЫХПР	*
*
* ПОДГОТОВКА РАБОТЫ ПО ВЫВОДУ
*----------------------------
*
РАБАРХ	сч	ПЗАВЫВ
	по	(М16) НЕТ СООБЩЕНИЙ
	зп	ПЗБВЫВ ЗАХВАТ ВЫХОДНОГО КАНАЛА
	уиа	-ДЛБУФ+1(М16)
*
*** ПЕРЕПИСЬ БУФЕРА
*
РАБАР1	мода	БАРВЫВ
	сч	ДЛБУФ-1(М16)
	мода	БУФВЫВ
	зп	ДЛБУФ-1(М16)
	цикл	РАБАР1(М16)
	сч	
	зп	ПЗАВЫВ ОСВОБОЖДЕНИЕ БУФЕРА ВЫВОДА АРХИВА
	пв	ОТКВВ(М16)
	сч	0	!НЗДАРТ
	нед	
	или	E28
	пв	ВЕТКА(М16)	!ЗАПВЕТ  Е4 --> ШКАЛА СОБЫТИЙ
	пб	ВЫВБУФ
*
* ВХОД ПО ЭКСТРАКОДУ
*-------------------
*
ВХЭ77	счи	М12
	уиа	ТЕРМАС(М12)
	зп	ИР12
	сч	0	!НЕТ В ОРИГ.
*
*** ПРОВЕРКА СЛУЖЕБНОСТИ ЗАДАЧИ
*
* МОД ГУС
* СЧ КВНЗАД
* И Е13
	мод	НЗАД *
	и	Е48-1 *
	по	ЭКВЫХ НЕТ ПЕРВОГО ПРИЗНАКА
	счи	М16 ИСПОЛНИТЕЛЬНЫЙ АДРЕС
	и	П7
	уи	М16
	пб	ПЕРЭ77(М16)
ПЕРЭ77	сч	ПЗАВВ !ПЗАВВ. ПЕРЕКЛЮЧАТЕЛЬ Э77
	пб	ЧТБАРХ	ЧТЕНИЕ
	сч	СМ
	пб	ЗПБАРХ	ЗАПИСЬ
	сч	
	пб	ОКОНЧТ	ОКОНЧАНИЕ ЧТЕНИЯ
	сч	E1
	пб	ОКОНЗП	ОКОНЧАНИЕ ЗАПИСИ
	сч	E6
	пб	ИЗМСОС	УСТ. СОБЫТИЯ "ИЗМЕНЕНИЕ СИСТЕМНОГО АРХИВА"
* СЧ НЗАД
* ПБ ВКЛАРХ ВКЛЮЧИЛАСЬ АРХИВНАЯ ЗАДАЧА
* СЧ НОМАБ
* ПБ ВЫДНОМ ВЫДАЧА НОМЕРА АБОНЕНТА
* СЧ 0
* ПБ ЭКВЫХ РЕЗЕРВ
	сч	0	*
	пб	ЭКВЫХ	*
	сч	0	*
	пб	ЭКВЫХ	*
	сч	0	*
	пб	ЭКВЫХ	*
*
* ЧТЕНИЕ ИЗ БУФЕРА ВВОДА АРХИВА
*------------------------------
*
ЧТБАРХ	по	ЭКВЫХ1 БУФЕР СВОБОДЕН
	мода	БАРВВ
	сч	(М15)
	зп	СМ
	пб	ЭКВЫХ
*
* ЗАПИСЬ В БУФЕР ВЫВОДА АРХИВА
*-----------------------------
*
ЗПБАРХ	мода	БАРВЫВ
	зп	(М15)
	пб	ЭКВЫХ
*
* ОКОНЧАНИЕ ЧТЕНИЯ ИЗ БУФЕРА ВВОДА АРХИВА
*----------------------------------------
*
ОКОНЧТ	зп	ПЗАВВ	ОСВОБОЖДЕНИЕ БУФЕРА ВВОДА АРХИВА
	пв	ОТКВВ(М16) ОТКРЫТИЕ ВХОДНОГО КАНАЛА
ОКОНЧ1	пб	ЭКВЫХ
*
* ОКОНЧАНИЕ ЗАПИСИ В БУФЕР ВЫВОДА АРХИВА
*---------------------------------------
*
ОКОНЗП	зп	ПЗАВЫВ	ЗАХВАТ БУФЕРА ВЫВОДА АРХИВА
	сч	ПЗБВЫВ
	пе	ЭКВЫХ	ВЫХОДНОЙ КАНАЛ ЗАНЯТ
	сч	E10
	увв	'142'	"1" --> 10 Р ПРП (РАБОТА ВЫВОДУ)
	пб	ЭКВЫХ
*
* УСТАНОВКА СОБЫТИЯ:
* "ИЗМЕНЕНИЕ СОСТОЯНИЯ СИСТЕМНОГО АРХИВА"
*----------------------------------------
*
ИЗМСОС	зп	РЯ1
	счи	М17
	зп	ИР12А
	уиа	-15(М15)
ИЗМС1	сч	РЯ1
* НТЖ НЗАД
* И П77
* ПО ИЗМС2
* СЧ РЯ1
	или	E26
	пв	ВЕТКА(М16) Е2 --> ШКАЛУ СОБЫТИЙ
	сч	РЯ1 !ИЗМС2
	слц	E1
	зп	РЯ1
	цикл	ИЗМС1(М15)
	мод	ИР12А
	уиа	0(М17)
	пб	ЭКВЫХ
*
* !БЛОКИ НИЖЕ ОПУЩЕНЫ
*
* ВКЛЮЧИЛАСЬ АРХИВНАЯ ЗАДАЧА
*---------------------------
*
*ВКЛАРХ НОП 0
* ЗП НЗДАРХ
* ЗП НЗДАРТ
* СЧ КЛТРМ
* ЗП СМ КЛЮЧ ТЕРМАСА
* СЧ ВРЕАРХ
* И Е48
* ПЕ ЭКВЫХ
* ЗП ВРЕАРХ
* ПБ ЭКВЫХ
*
* ВЫДАЧА НОМЕРА АБОНЕНТА
*-----------------------
*
*
*ВЫДНОМ НОП 0
* ЗП СМ
* ПБ ЭКВЫХ
*
* ВЫХОД ИЗ ЭКСТРАКОДА
*--------------------
*
ЭКВЫХ1	уиа	1(М16) ЭКСТРАКОД НЕ ВЫПОЛНЕН
	пб	ЭКВ
*ЭКВЫХ2 НОП 0 ЭКСТРАКОД НЕ ВЫПОЛНЕН
* УИА 2(М16)
* ПБ ЭКВ
ЭКВЫХ	уиа	0(М16) ЭКСТРАКОД ВЫПОЛНЕН
ЭКВ	мод	ИР12
	уиа	0(М12)
	пб	0	!ВЫХЭ77
*
*
**********************************************
*   ИНФОРМАЦИОННЫЙ ПРОТОКОЛ (2-ОЙ УРОВЕНЬ)   *
**********************************************
*
*ИНФПР КОНД М47В'1'М43В'1'М39В'1'М37В'1' ШКАЛА ДЛЯ АЗ
*  0: 48 Р = 1 - ИНФ-НЫЙ ПРОТОКОЛ НЕ РЕАЛИЗОВАН
*  4: 44 Р = 1 - ОТВЕТ НА ЗАПРОС О СОСТОЯНИИ АБ-ТА
* 10: 40 Р = 1 - ОТВЕТ НА ЗАПРОС АТРИБУТОВ АБОНЕНТА
* 12: 38 Р = 1 - ОТВЕТ НА ЗАПРОС ТАБЛИЦЫ ИМЕН АБ-ТОВ
*
*КОП3Б КОНД М32В'377'М24В'377' ВЫДЕЛЕНИЕ КОП И 3 БАЙТА
*К147П4 КОНД М32В'147'М24В'4'  КОП=147  3 БАЙТ=4
*
*ИНФ НОП 0
* СЧ БУФВВ+2
* СДА 64+32
* И П17
* ЗП РЯ1 КОД ОПЕРАЦИИ
* УИ М16
* СЧ ИНФПР
* И Е48(М16)
* ПО ИНФТ СООБЩЕНИЕ ОБРАБАТЫВАЕТ ТЕРМАС
*ИНФА НОП 0
* СЧ НЗДАРХ
* ПО ИНФАН НЕТ АРХИВНОЙ ЗАДАЧИ
* УИА ПЗАВВ(М15)
* ПВ ЗКВВ(М16)
* ПЕ ВЫХПР
* УВВ '176' ВДЗП:=1
* СЧ АДРВВ
* ЗП АПГВВ
* ПБ ПБВА
*ИНФАН НОП 0
* УВВ '176' ВДЗП:=1
* СЧ АДРВВ
* ЗП АПГВВ
* ПБ ВЫХПР
*ИНФТ НОП 0
* СЧ БУФВВ+2
* И КОП3Б
* НТЖ К147П4
* ПО ИНФА КОП=147 'АND' П=4
*
ИНФК71	уиа	ПЗСЛБ(М15)
	уиа	ИНФК71(М17)
	пв	ЗКВВ(М16)
	пе	ВЫХПР
	увв	'177'
	сч	БУФВВ+2
	сда	64+32
	и	П7
	уи	М16
	пб	ПАНСИ(М16)
*
*** ПЕРЕКЛЮЧАТЕЛЬ КОДА ОПЕРАЦИИ
*
ПАНСИ	сч	0
	пб	ВЫХПР	ВЫПОЛНИТЬ ОПЕРАЦИЮ АБОНЕНТ НЕ МОЖЕТ
	сч	0
	пб	ВЫХПР	ЗАПРОС ПАРАМЕТРОВ СЕТИ
	сч	НОМАБ
	пб	ОТВПС	ОТВЕТ НА ЗАПРОС ПАРАМЕТРОВ СЕТИ
	сч	0
	пб	ВЫДСОС	ЗАПРОС О СОСТОЯНИИ АБОНЕНТ
	сч	НОМАБ
	пб	ВЫХПР	ОТВЕТ НА ЗАПРОС О СОСТОЯНИИ АБОНЕНТА
	уиа	E13(М17) !КИОЗСВ
	пб	ВЫДВРЕ	ЗАПРОС СЕТЕВОГО ВРЕМЕНИ
	сч	0
	пб	ВЫДПАР	ЗАПРОС ПАРАМЕТРОВ АБОНЕНТА
*СЧ 0
* ПБ ВЫХПР  ОТВЕТ НА ЗАПРОС ПАРАМЕТРОВ АБОНЕНТА
* СЧ 0
* ПБ ВЫХПР  ЗАПРОС ТАБЛИЦЫ ИМЕН АБОНЕНТОВ
* СЧ 0
* ПБ ВЫХПР  ОТВЕТ НА ЗАПРОС ТАБЛИЦЫ ИМЕН АБОНЕНТОВ
*
* КОДЫ ОПЕРАЦИЙ СЛУЖЕБНОГО ПРОТОКОЛА
*КИНЕТ  ЭКВ '140' ВЫПОЛНИТЬ ОПЕРАЦИЮ АБОНЕНТ НЕ МОЖЕТ
*КИЗПС  ЭКВ '141' ЗАПРОС ПАРАМЕТРОВ СЕТИ
*КИОЗПС ЭКВ '142' ОТВЕТ НА ЗАПРОС ПАРАМЕТРОВ СЕТИ
*КИЗСА  ЭКВ '143' ЗАПРОС СОСТОЯНИЯ АБОНЕНТА
*КИОСА  ЭКВ '144' ОТВЕТ НА ЗАПРОС СОСТОЯНИЯ АБОНЕНТА
*КИЗСВ  ЭКВ '145' ЗАПРОС СЕТЕВОГО ВРЕМЕНИ
*КИОЗСВ ЭКВ '146' ОТВЕТ НА ЗАПРОС СЕТЕВОГО ВРЕМЕНИ
*КИЗПА  ЭКВ '147' ЗАПРОС ПАРАМЕТРОВ АБОНЕНТА
*КИОЗПА ЭКВ '150' ОТВЕТ НА ЗАПРОС ПАРАМЕТРОВ АБОНЕНТА
*КИЗТА  ЭКВ '151' ЗАПРОС ТАБЛИЦЫ ИМЕН АБОНЕНТОВ
*КИОЗТА ЭКВ '152' ОТВЕТ НА ЗАПРОС ТАБЛИЦЫ ИМЕН АБ-ТОВ
*
*
*
* ЗАПРОС СОСТОЯНИЯ АБОНЕНТА
* ПРОИЗВОДИТСЯ ВЫДАЧА СОСТОЯНИЯ АБОНЕНТА
*---------------------------------------
*
ВЫДСОС	сда	64-24
	уиа	E15(М17)
	уиа	4(М16)
*УИА 5(М15)
	пб	ФОТВ4
*
* ОТВЕТ НА ЗАПРОС ПАРАМЕТРОВ СЕТИ
*--------------------------------
*
ОТВПС	ноп	0
*ЗП ШКИНФ
* СЧ БУФВВ
* И П177
* ЗП НОМАБ УСТАНОВКА НОМЕРА ЭВМ
	пб	ВЫХПР
*
* ЗАПРОС СЕТЕВОГО ВРЕМЕНИ
* АБОНЕНТ НЕ ЯВЛЯЕТСЯ СЕТЕВЫМИ ЧАСАМИ
*------------------------------------
*
ВЫДВРЕ	сч	КЛТРМ
	по	выдвр1
	сч	
	пб	ФОТВ4
выдвр1	сч	
	уи	М16
	пб	ФОТВ4
*
* ЗАПРОС ПАРАМЕТРОВ АБОНЕНТА
* ПРОИЗВОДИТСЯ ВЫДАЧА ПАРАМЕТРОВ АБОНЕНТА
*----------------------------------------
*
ВЫДПАР	пб	ВЫХПР
*СЧ БУФВВ+2
* И Е48П41+2 НОМЕР ПАРАМЕТРА
* ИЛИ ТВЕР0 4-6 БАЙТЫ
* ЗП БСЛУЖ+2
* УИА КИОЗПА(М17) КОД ОПЕРАЦИИ
* УИА -2(М15)
*ВЫДП1 НОП 0
* МОДА ТВЕР1
* СЧ 2(М15)
* МОДА БСЛУЖ
* ЗП 3+2(М15)
* ЦИКЛ ВЫДП1(М15)
* УИА 24(М15) КОЛ-ВО БАЙТ
* ПБ ФОТВ
* ТВЕР0 КОНД М16В'1'М8В'1'В'160'
*.ВЕРС АНОП 0
*ТВЕР1 НОП 0
* КОНД М40В'63'М32В'56'М24В'66'М16В'40'М8В'167'В'64'
**           3       .       6      ПР      В     4
* КОНД М40В'56'М32В'64'М24В'40'М16В'62'М8В'62'В'056'
**           .       4      ПР       2      2    .
* КОНД М40В'61'М32В'61'М24В'56'М16В'71'М8В'60'В'000'
**           1       1       .       9      0   '0'
*
* ПОДГОТОВКА РАБОТЫ ПО ВЫВОДУ
*----------------------------
*
РАБИНФ	ноп	0
*	СЧ ШКИНФ
* ПО (М16) ЗАПРОС ВЫДАН И ОТВЕТ ПОЛУЧЕН
* И Е1
* ПО ВЫХПР ЗАПРОС ВЫДАН, А ОТВЕТ НЕ ПОЛУЧЕН
* НТЖ ШКИНФ
* ЗП ШКИНФ
* СЧ Е8
* ЗП БУФВЫВ
* СЧ П3
* ЗП БУФВЫВ+1
* УИА КИЗПС(М16)
* СЧИ М16
* СДА 64-32
* ИЛИ Е25 СЛУЖЕБНЫЙ ПРОТОКОЛ
* ИЛИ Е26 ТЕРМИНАЛЬНЫЙ ПРОТОКОЛ
* ИЛИ Е28 ИНФОРМАЦИОННЫЙ ПРОТОКОЛ
* ЗП БУФВЫВ+2
* СЧ Е1
* ЗП ПЗБВЫВ ЗАХВАТ ВЫХОДНОГО БУФЕРА
* ПБ ВЫВБУФ
	пб	(М16)
*
БОЭК1	ВНЕШ	ОБЛ
ДИСП70	ВНЕШ	ВЕТКА,БВЗ4,БВЗ32,спи1,ТСЛ,НЗАД,СМ,Р1,МПРП,П7
ДИСП70	ВНЕШ	П177,П3,П17,Р,П7777,ГОД,П77777,обвнп3,обвнп1,ТАС
ДМЛМБ	ВНЕШ	ДМЛМБ
КИТ	ВНЕШ	ЧСТР,ТБЛ
МОТТ	ВНЕШ	П215,ШЗНКТ,КЛЮЧТМ,R,ШКАС,СЛОN,ПИЛОТ
МОТТ	ВНЕШ	ПОСОБЛ
ХЛАМ	ВНЕШ	н1469
	ФИНИШ
