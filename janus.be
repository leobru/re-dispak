        macro
&l      call    &a,&r
&l      мода    &a
        пв      &r
        mend
        macro
&l      loop    &a,&r
&l      мода    &a
        цикл    &r
        mend
        macro
&l      lea    &a,&r
&l      мода    &a
        уиа    &r
        mend
        macro
&l      brz    &a,&r
&l      мода    &a
        пио    &r
        mend
ЯНУС	СТАРТ	'50000'
	Б
	Е
	М
	употр	ЯНУС+8(М15)
	пам	8
	мод	АДРЭ77
	уиа	8(М15)
	сч	ФЛАГИ
	или	E4
	нтж	E4
	зп	ФЛАГИ
	рег	'101'
	сч	ГУС
	call	G50237,(М16)
	уии	М10(М15)
	отмен	(М15)
	употр	ЯНУС+8(М10)
	пб	G50773
П134	конд	в'134'
D50017	конд	в'0000000000000021'
LF	конд	п'000214'
D50021	конд	в'7740000000077777'
Е16П1	конд	в'177777'
БАЙТЫ	конд	в'7760000000000000'
	конд	в'0017740000000000'
	конд	в'0000037700000000'
Е24П17	конд	в'0000000077600000'
	конд	в'0000000000177400'
П377	конд	в'0000000000000377'
ПРОБЕЛ	конд	п' '
ПЛЮС	конд	п'+'    ASCII LF
ТЧК	конд	п'.'
ДВЕТЧК	конд	п':'
РАВНО	конд	п'='
СЛЕШ	конд	п'/'
D50037	пам	1
D50040	пам	1
D50041	пам	1
D50042	пам	1
D50043	пам	1
D50044	пам	1
D50045	пам	1
D50046	пам	1
D50047	пам	1
D50050	пам	1
ЗАГОЛ	конд	м40в'162'м32в'142'м24в'177'м16в'177'м8в'177'в'177'
	текст	п' <<  СДО  Я Н У С  * ВЕР. ОТ 26 ЯНВ '
	конд	п'83 >>0'в'377'
ПРИГЛ	конд	п'Я>0000'м24в'376'
СТРОК	конд	в'15'
МАХСТР	конд	в'15'
D50064	пам	1
D50065	пам	1
D50066	пам	1
D50067	пам	1
СЛОГ	пам	1
D50071	пам	1
D50072	пам	1
АДРЕС	пам	1
СИМ	пам	1
D50075	пам	1
D50076	пам	1
БОЛЬШЕ	конд	п'>'
ТИПЫ	конд	п'- ЖДУ0'в'377'
	конд	п'- КРА0'в'377'
	конд	п'- ЗП00'м8в'377'
	конд	п'(Е00) '
	конд	п'- СЧ00'м8в'377'
ЕЩЕ	конд	п'ЕЩЕ000'м16в'136'м8в'170'в'376'
ВСЕ370	конд	м40в'370'м32в'370'м24в'370'м16в'370'м8в'370'в'370'
ПРОБ4	конд	м40в'143'м32в'143'м24в'143'м16в'143'п'  '
D50110	конд	в'0000002700000005'
	конд	в'0000003200000004'
	конд	в'0000003300000003'
	конд	в'0000003400000026'
	конд	в'0000003500000027'
ЦИФРЫ	конд	п'0'
	конд	п'1'
	конд	п'2'
	конд	п'3'
	конд	п'4'
	конд	п'5'
	конд	п'6'
	конд	п'7'
	конд	п'8'
	конд	п'9'
	конд	п'А'
Е6Е2	конд	п'В'
П61	конд	п'С'
П77	конд	п'D'    ASCII вопр. знак
	конд	п'Е'
	конд	п'F'
МПРАВ5	конд	п'077777'
МАСКА3	конд	п'000777'
МЛЕВ5	конд	п'777770'
МАСКА4	конд	п'007777'
МАСКА2	конд	п'000077'
ОТЛАДЧ	конд	в'3410424242024242'
	конд	в'4210424276024242'
	конд	в'4210427624026242'
	конд	в'4210424224765244'
	конд	в'4210424224424670'
	конд	в'4210424224424244'
	конд	в'4210222224424242'
	конд	в'3476161614424242'
D50152	пам	10
D50164	конд	в'0000000000002152'
D50165	конд	п'000009'
NТЕРМ	пам	1
D50167	конд	в'0000000001410000'
* next insn used as data
УСТКИК	мода	
	пб	МОЙКИК-ЯНУС-8
D50171	уиа	КОНТЧК-ЯНУС-8(М15)
	пб	ТВ202
* next insn used as data
D50172	уиа	КОНТЧК-ЯНУС-8(М15)
	пб	ТВ201
* next insn used as data
ВОСКИК	мод	И17
	уиа	0(М17)
* next insn used as data
G50174	уиа	ТВ215(М15)
	пб	ТВ202
* next insn used as data
G50175	уиа	ЗАПРК(М15)
	пб	ТВ201
*
* ФЛАГИ:
* Е9: принят слог во время ожидания выдачи
* Е8: идет выдача строки
*
ФЛАГИ	пам	1
G50177	сч	D50067
	уи	М15
	сда	64+15
	по	'1424'  в ДИСП70: ПАМ 1
	уи	М21
	сч	(М15)
	уиа	'2003'
	пб	(М13)
G50203	сч	СТРОК
	вч	E1
	зп	СТРОК
	ржа	'7'
	пе	(М13)
	счи	М13
	зп	D50064
	счи	М15
	зп	D50066
	счи	М6
	зп	D50040
	сч	МАХСТР
	зп	СТРОК
	lea	ЕЩЕ,(М3)
	call	ВЫДСТР,(М13)
	lea	D50152,(М3)
	call	G50410,(М15)
	сч	D50152
	нтж	БАЙТЫ
	и	БАЙТЫ
	пе	G51007
	мод	D50066
	уиа	0(М15)
	мод	D50040
	уиа	0(М6)
	мод	D50064
	пб	
G50223	call	G50677,(М15)
	сч	АДРЕС
	сда	64+15
	уи	М16
	мода	(М16)
	сч	ТИПЫ
	зп	D50743
	сч	АДРЕС
	сда	64+41
	вчоб	П61
	call	G50725,(М15)
	сда	64-16
	или	ТИПЫ+3
	зп	D50742
	сч	АДРЕС
	сда	64-6
	пе	G50740
	сч	ПРОБ4
	зп	D50741
	пб	G50740
        отмен   (М10)
        употр   ЯНУС+8(М15)
G50237	уи	М17
	счи	М16
	зп	D50041
	сч	4(М17)
	и	Е48П16
	зп	D50042
	счи	М27
	зп	D50043
	сч	СМ
	счм	РК
	счм	РМР
	счим	М33
	счим	М32
	или	D50042
	счм	(М17)
	и	Е48П16
	или	D50043
	счм	И20
	счм	И17
	счм	И16
	счм	И15
	уиа	13(М16)
G50252	счим	-1(М16)
	слиа	-1(М16)
	мода	G50252
	пино	(М16)
	мод	D50041
	пб	
        отмен   (М15)
        употр   ЯНУС+8(М10)
ИНИЦ	увв	'153'
	сч	E8
	call	СЛУЖСЛ,(М14)
	call	ВЫДСЛ,(М7)
ЖДСЛСЛ	call	ЖДИСЛ,(М14)
	увв	'4143'
	увв	'153'
	зп	СЛОГ
	и	E15
	по	ЖДСЛСЛ
	сч	СЛОГ
	и	П30
	нтж	E4
	по	G50270
	сч	СЛОГ
	или	П30
	нтж	П30
	зп	СЛОГ
	пб	G50270
G50270	сч	П140
	увв	'34'
	увв	'153'
	сч	E4
	call	СЛУЖСЛ,(М14)
	call	ВЫДСЛ,(М7)
	уиа	-2(М2)
	сч	П377
	call	ФОРМСЛ,(М14)
G50276	call	ВЫДСЛ,(М7)
	loop	G50276,(М2)
	call	СЛУЖСЛ,(М14)
	call	ВЫДСЛ,(М7)
	сч	
	увв	'153'
	увв	'30'
	пб	(М17)
ЧИТ8	call	G50654,(М15)
	и	ВСЕ370
	пе	ОШИБ
	сч	D50075
	сбр	МПРАВ5
	сда	64+33
	пб	(М13)
G50310	call	G50654,(М15)
	сбр	ПРОБ6
	сда	64+24
	зп	D50041
	уиа	-5(М5)
G50313	сч	D50075
	мода	П377
	сбр	(М5)
	слпа	64+59
	по	ОШИБ
	loop	G50313,(М5)
	сч	D50041
	уии	М15(М13)
	пб	G50715
*
* сделай служебный слог(М14)
*
СЛУЖСЛ	зп	D50041
	сч	ГОД
	и	П7
	или	E15
	или	D50041
*
* сделай слог(М14)
*
ФОРМСЛ	зп	D50041
	сч	NТЕРМ
	сда	64-8
	или	D50041
	зп	D50041
	пб	(М14)
*
* выдача строки(М13), строка на М3
*
ВЫДСТР	call	G50560,(М14)
	уиа	-5(М2)
	сч	E4
	call	СЛУЖСЛ,(М14)
	call	ВЫДСЛ,(М7)
	сч	ФЛАГИ
	или	E8
	зп	ФЛАГИ
	сч	П377
	пб	ВЫДСИМ
СЛЕДСИ	call	ВЫБСИМ,(М14)
	уи	М16
	слиа	-'146'(М16)
	brz 	G50366,(М16)
	слиа	'146'-'162'(М16)
	brz 	G50367,(М16)
	слиа	'162'-'167'(М16)
	brz 	G50367,(М16)
	слиа	'167'-'170'(М16)
	brz 	G50367,(М16)
	слиа	'170'-'171'(М16)
	brz 	G50367,(М16)
	слиа	'171'-'172'(М16)
	brz 	КОНЕЦС,(М16)
	слиа	'172'-'175'(М16)
	brz 	G50364,(М16)
	слиа	'175'-'176'(М16)
	brz 	G50367,(М16)
	слиа	'176'-'177'(М16)
	brz 	G50367,(М16)
	слиа	'177'-'214'(М16)
	brz 	G50365,(М16)
	слиа	'214'-'376'(М16)
	brz 	G50403,(М16)
	слиа	'376'-'377'(М16)
	brz 	КОНЕЦС,(М16)
	вч	П143
	пе	G50367
	ржа	'7'
	по	СЛЕДСИ
	ржа	'3'
	сч	П77
	пб	ВЫДСИМ
G50364	сч	П134
	пб	ВЫДСИМ
G50365	сч	ПЛЮС
	пб	ВЫДСИМ
G50366	сч	П143+2
	пб	ВЫДСИМ
G50367	мод	СИМ
	сч	ТАБКОД
	сда	64+32
	и	П377
ВЫДСИМ	call	ФОРМСЛ,(М14)
	call	ВЫДСЛ,(М7)
	пб	СЛЕДСИ
КОНЕЦС	сч	ПЛЮС
	call	ФОРМСЛ,(М14)
	call	ВЫДСЛ,(М7)
	сч	ФЛАГИ
	нтж	E8
	зп	ФЛАГИ
	call	G50270,(М17)
	пб	G50203
G50403	сч	ФЛАГИ
	нтж	E8
	зп	ФЛАГИ
	пб	(М13)
*
* выдай слог(М7)
*
ВЫДСЛ	call	ЖДИВЫД,(М14)
	сч	D50041
	увв	'143'
	сч	
	пб	(М7)
G50410	сч	D50047
	или	E1
	зп	D50047
	сч	МАХСТР
	зп	СТРОК
	call	G50270,(М17)
	уиа	-5(М2)
G50415	call	ЖДИСЛ,(М14)
	увв	'4143'
	увв	'153'
	зп	СИМ
	сда	64+8
	и	П77
	нтж	NТЕРМ
	пе	G50415
	сч	СИМ
	и	E16
	пе	ERR
	сч	СИМ
	и	E15
	пе	ERR
	сч	СИМ
	и	П177
	уи	М5
	мода	ТАБКОД
	сч	(М5)
	сда	64+8
	и	П377
	зп	СИМ
	и	E8
	по	G50441
	сч	СИМ
	уи	М5
	слиа	'77576'(М5)
	brz 	G50446,(М5)
	слиа	-2(М5)
	brz 	ERR,(М5)
	слиа	-1(М5)
	brz 	G50453,(М5)
	слиа	-1(М5)
	brz 	I,(М5)
	пб	G50415
G50441	call	G50500,(М14)
	счи	М3
	вч	D50164
	вчоб	D50165
	по	G50415
	lea	G50737,(М3)
	пб	G50470
G50446	счи	М2
	слц	П5
	и	П377
	по	G50451
	слиа	-1(М2)
	пб	G50415
G50451	слиа	-1(М3)
	уиа	0(М2)
	пб	G50415
G50453	сч	П377
	зп	СИМ
	call	G50500,(М14)
	lea	D50152,(М3)
	сч	D50047
	или	E1
	нтж	E1
	зп	D50047
	call	G50560,(М14)
	lea	G50737,(М3)
	уии	М13(М15)
	пб	ВЫДСТР
I	call	G50470,(М3)
        конд    м40в'167'м32в'170'м24п'I'м16в'376'
ERR	call	G50470,(М3)
        конд    м40в'167'м32в'170'м24в'170'м16в'170'п'ER'
	конд	м40п'R'м32в'376'
G50470	call	ВЫДСТР,(М13)
	lea	D50152,(М3)
	пб	G50410
*
* выбор символа(М14) по М3, М2
*
ВЫБСИМ	сч	(М3)
	мода	П377
	сбр	(М2)
	сда	64+40
	зп	СИМ
	loop	(М14),(М2)
	уиа	-5(М2)
	слиа	1(М3)
	пб	(М14)
G50500	сч	(М3)
	мода	П377
	или	(М2)
	мода	П377
	нтж	(М2)
	зп	(М3)
	сч	СИМ
	сда	64-40
	мода	П377
	рзб	(М2)
	или	(М3)
	зп	(М3)
	loop	(М14),(М2)
	слиа	1(М3)
	уиа	-5(М2)
	сч	
	пб	(М14)
G50511	зп	D50042
	нтж	ВСЕЕД
	уи	
	рег	'37'
	lea	G50514,(М11)
G50514	рег	'237'
	и	D50042
	по	БАННЕР
	нтж	ВСЕЕД
	сда	64
	рег	'37'
	пб	(М14)
*
* жди слог(М14)
*
ЖДИСЛ	сч	E7
	пб	G50546
*
* жди разрешения на выдачу, пожирая ввод(М14)
*
ЖДИВЫД	увв	'4034'
	и	E7
	по	ПУСТО
	увв	'4143'
	увв	'153'
	сда	64+8
	нтж	NТЕРМ
	и	П77
	пе	ЖДИВЫД
	сч	ФЛАГИ
	или	E9
	зп	ФЛАГИ
	пб	ЖДИВЫД
ПУСТО	сч	ФЛАГИ
	и	E9
	по	G50543
	нтж	ФЛАГИ
	зп	ФЛАГИ
ЖДУГОТ	увв	'4034'
	и	E6
	по	ЖДУГОТ
	сч	NТЕРМ
	сда	64-8
	или	E4
	или	E15
	зп	D50042
	сч	ГОД
	и	П7
	или	D50042
	увв	'143'
	сч	ФЛАГИ
	и	E8
	пе	G50403
G50543	увв	'4034'
	и	E6
	пе	(М14)
	lea	ЖДИВЫД,(М11)
	пб	БАННЕР
G50546	зп	D50042
G50547	увв	'4034'
	и	D50042
	по	G50547
	нтж	ВСЕЕД
	увв	'30'
	пб	(М14)
*
* "ОТЛАДЧИК" на БРЗ(М11)
*
БАННЕР	уиа	-7(М16)
	сч	
ВТБРЗ	зп	1
	loop	ВТБРЗ,(М16)
	уиа	-7(М16)
НАБРЗ	мода	ОТЛАДЧ
	сч	7(М16)
	рег	'7'(М16)
	loop	НАБРЗ,(М16)
	пб	(М11)
G50560	сч	D50047
	по	(М14)
	и	E1
	пе	(М14)
	уиа	-5(М2)
	счи	М3
	зп	D50037
	счи	М14
	зп	D50065
	сч	E3
	мод	D50046
	увв	'14'
	call	G50641,(М7)
G50567	call	ВЫБСИМ,(М14)
	нтж	ПРОБЕЛ
	по	G50623
	сч	СИМ
	вч	П140
	пе	G50602
	сч	СИМ
	нтж	П377
	пе	G50576
	lea	G50630,(М7)
	пб	G50634
G50576	нтж	E1
	по	G50630
	lea	G50567,(М7)
	сч	СИМ
	нтж	LF
	по	G50634
	пб	G50623
G50602	сч	D50044
	нтж	СИМ
	по	G50606
	call	G50644,(М7)
	пб	G50602
G50606	сч	D50045
	слц	E45
	зп	D50045
	пе	G50612
	lea	G50602,(М7)
	пб	G50644
G50612	и	П7
	уи	М14
	сч	D50045
	и	П377
	сда	64+3
	вчоб	
	уи	М16
	сч	D50046
	сда	64-3
	уи	М7
	сч	E1
	сда	64(М16)
	сли	М14(М7)
	увв	'40'(М14)
	уи	
	уи	
	увв	
G50623	сч	D50045
	слц	E1
	зп	D50045
	и	E8
	по	G50567
	call	G50634,(М14)
	пб	G50567
G50630	сч	ПЛЮС
	мод	D50046
	увв	'14'
	мод	D50037
	уиа	0(М3)
	мод	D50065
	пб	
G50634	сч	D50047
	сда	64+15
	зп	D50041
	сч	E1
	мод	D50046
	увв	'14'
G50637	увв	'31'
	и	D50041
	пе	G50637
	зп	D50045
G50641	сч	П377
	зп	D50044
	сч	D50047
	call	G50511,(М14)
G50644	сч	D50045
	и	П377
	зп	D50045
	сч	D50050
	call	G50511,(М14)
	сч	D50044
	слц	E1
	и	П177
	зп	D50044
	вч	П140
	пе	G50653
	сч	
	зп	D50044
G50653	сч	D50044
	пб	(М7)
G50654	сч	
	зп	D50075
	зп	D50076
G50656	call	ВЫБСИМ,(М14)
	уиа	-6(М16)
G50660	сч	СИМ
	мода	П377
	нтж	6(М16)
	по	G50671
	loop	G50660,(М16)
	сч	СИМ
	нтж	БОЛЬШЕ
	по	G50654
	сч	D50075
	сда	64-8
	или	СИМ
	зп	D50075
	сч	D50076
	сда	64-8
	или	П377
	зп	D50076
	пб	G50656
G50671	сч	D50075
	пб	(М15)
G50672	сч	D50076
	и	Е24П17
	пе	(М15)
	сч	D50075
	сда	64-8
	зп	D50075
	сч	D50076
	сда	64-8
	зп	D50076
	пб	G50672
G50677	сч	ФЛАГИ
	и	E3
	по	G50703
	нтж	ФЛАГИ
	зп	ФЛАГИ
	сч	ПРОБ4
	зп	D50741
	пб	(М15)
G50703	сч	D50067
	сда	64-33
	рзб	МЛЕВ5
	или	ПРОБЕЛ
	зп	D50741
	пб	(М15)
G50706	сч	D50041
	сда	64-3
	зп	D50041
	счмр	
	зп	СИМ
	пб	(М15)
G50711	lea	D50741,(М3)
	call	ВЫДСТР,(М13)
	сч	D50067
	слц	E1
	зп	D50067
	пб	(М15)
G50715	сда	64-32
	зп	D50041
	уиа	-3(М5)
	сч	
G50717	умн	R
	счмр	64
	зп	D50042
	сч	D50041
	сда	64-4
	зп	D50041
	счмр	
	слц	D50042
	loop	G50717,(М5)
	пб	(М15)
G50725	зп	D50041
	уиа	-5(М16)
G50726	сда	64+8
	зп	D50042
	сч	D50041
	умн	Ч01Д
	зп	D50041
	счмр	64
	умн	R
	сда	64-40
	или	D50042
	loop	G50726,(М16)
	пб	(М15)
ОШИБ	call	ВЫД6СИ,(М3)
	конд	п' ОШИБ0'в'377'
	call	ВЫД6СИ,(М3)
G50737	конд	м40в'141'м32в'142'м24в'142'м16в'142'м8в'376'
G50740	call	ВЫД6СИ,(М3)
D50741	пам	1
D50742	пам	1
D50743	пам	18
G50765	call	ВЫД6СИ,(М3)
	конд	п'НИГДЕ0'в'377'
WAIT	call	ВЫД6СИ,(М3)
	конд	п'WАIТ!0'в'377'
НЕТ	call	ВЫД6СИ,(М3)
	конд	п' НЕТ!0'в'377'
G50773	уиа	'2003'
	ржа	'3'
	мода	D50152
	или	,       пустышка для счи М20
	счи	М20
	зп	D50164
	сч	4
	и	Е24П16
	нтж	Е24П16
	пе	ЗАПЭКС
ЖДУТР4	сч	4
	и	П77
	по	ЖДУТР4
	зп	NТЕРМ
	вчоб	П60
	пе	ЖДУТР4
	сч	П140
	увв	'34'
	call	ИНИЦ,(М17)
	lea	ЗАГОЛ,(М3)
ВЫД6СИ	call	ВЫДСТР,(М13)
G51007	lea	ПРИГЛ,(М3)
	call	ВЫДСТР,(М13)
	lea	D50152,(М3)
	call	G50410,(М15)
	уиа	-5(М2)
	lea	D50152,(М3)
	уиа	-16(М5)
	call	G50654,(М15)
	сч	D50076
	по	G51007
	сч	D50075
	и	ВСЕ370
	по	G51233
	call	G50672,(М15)
G51022	мода	G51036
	сч	16(М5)
	нтж	D50075
	и	D50076
	по	G51026
	loop	G51022,(М5)
	пб	ОШИБ
G51026	сч	D51035
	и	E8(М5)
	по	G51031
	сч	ФЛАГИ
	и	E1
	по	НЕТ
G51031	сч	D51035
	и	E32(М5)
	по	G51034
	сч	СИМ
	нтж	П377
	по	ОШИБ
G51034	мода	G51036
	пб	16(М5)
D51035	конд	в'3174020001600000'
G51036	пб	ГДЕ
	конк	п'ГДЕ'
	пб	АДР
	конк	п'АДР'
	пб	ВЫП
	конк	п'ВЫП'
	пб	ВЫХ
	конк	п'ВЫХ'
	пб	ИДИ
	конк	п'ИДИ'
	пб	КРА
	конк	п'КРА'
	пб	КЗП
	конк	п'ЗП0'
	пб	КСЧ
	конк	п'СЧ0'
	пб	КИР
	конк	п'ИР0'
	пб	ЖДУ
	конк	п'ЖДУ'
	пб	КСМ
	конк	п'СМ0'
	пб	КРМР
	конк	п'РМР'
	пб	КРК
	конк	п'РК0'
	пб	КНЦ
	конк	п'КНЦ'
	пб	ПВА
	конк	п'ПВА'
	пб	ВОС
	конк	п'ВОС'
	пб	ШАГ
	конк	п'ШАГ'
ГДЕ	сч	ФЛАГИ
	и	E1
	по	G50765
	сч	АДРЕС
	зп	D50067
	пб	G50223
ПВА	сч	СИМ
	нтж	П377
	по	G51072
	call	ЧИТ8,(М13)
	зп	D50046
	сда	64+1
	пе	ОШИБ
	мод	D50046
	сч	E39
	зп	D50047
	мод	D50046
	сч	E48
	зп	D50050
	пб	G51007
G51072	зп	D50047
	пб	G51007
КНЦ 	рег	'101'
	сч	ВОСКИК
	зп	КИК
	сч	G50174
	зп	GRР24+12
	сч	G50175
	зп	ЗПСЧ
	сч	АДРЭ77
	и	Е15П1
	сда	64-2
	или	E19
	пв	ТБУФ(М15)
	сч	ФЛАГИ
	нтж	E48
	нтж	ФЛАГИ
	зп	ФЛАГИ
	зп	АДРЕС
	счмр	
G51104	и	E4
	уиа	ЭКВЫХ(М1)
	по	G51610
	пб	G51605
ШАГ	call	G50310,(М13)
	зп	СТРОК
	вч	П3
	пе	ОШИБ
	сч	СТРОК
	зп	МАХСТР
	пб	G51007
ВЫП	lea	G51132,(М1)
	счи	М1
	зп	D50067
	уиа	0(М6)
	сч	ФЛАГИ
	или	E5
	зп	ФЛАГИ
	пб	КОМ
G51117	нтж	ФЛАГИ
	зп	ФЛАГИ
	мод	ГУС
	уиа	22(М17)
	уиа	-12(М16)
	сч	(М17)
G51122	уим	М15(М16)
	мод	АДРЭ77
	loop	G51122-ЯНУС,(М16)
	уим	М16
	зпм	И17
	уим	М20
	уим	М27
	уим	М32
	уим	М33
	сч	И17
	уи	М17
	сч	РМР
	нтж	
	сч	СМ
	рж	РК
G51132	уи	
	уи	
	уиа	'2003'
	зп	СМ
	счрж	'77'
	зп	РК
	ржа	'3'
	счмр	
	зп	РМР
	счи	М20
	зп	И20
	счи	М17
	зп	И17
	счи	М16
	зп	И16
	счи	М15
	зп	И15
	мод	АДРЭ77
	уиа	8(М15)
	сч	ГУС
	call	G50237-ЯНУС-8(М15),(М16)
	уии	М10(М15)
	пб	G51007
ВОС	сч	СИМ
	нтж	П377
	пе	G51151
	сч	7
	уиа	2(М1)
	пб	G51164
G51151	call	ЧИТ8,(М13)
	зп	D50041
	вчоб	П27
	пе	ОШИБ
	вч	ПРОБЕЛ
	по	ОШИБ
	сч	D50041
	сда	64+3
	уи	М1
	сч	D50041
	и	П7
	сда	64-7
	или	D50167
	зп	D50041
	сч	СИМ
	нтж	П377
	по	ОШИБ
	call	ЧИТ8,(М13)
	сда	64-2
	или	D50041
G51164	увв	(М1)
	сч	
	сда	64
	рег	'37'
G51166	рег	'237'
	и	E47(М1)
	по	G51166
	уии	М16(М10)
        отмен   (М10)
*--------------------
        употр   ЯНУС+8(М16)
	сч	П2007
	уи	М27
	или	E4
	уи	М21
	уиа	-12(М17)
	сч	
G51173	уи	М15(М17)
	loop	G51173,(М17)
	уиа	-7(М17)
G51175	рег	'7'(М17)
	loop	G51175,(М17)
	уиа	-7(М17)
G51177	рег	'27'(М17)
	loop	G51177,(М17)
	уиа	-3(М17)
G51201	уи	М35(М17)
	рег	'33'(М17)
	loop	G51201,(М17)
	уи	М16
	уи	М20
	рег	'101'
	увв	'34'
	увв	'30'
	рег	'36'
	рег	'37'
	нтж	
	ржа	'4'
	пб	ТОП
        отмен   (М16)
*--------------------
        употр   ЯНУС+8(М10)
КСМ	уиа	0(М6)
	пб	G51225
КРМР	уиа	2(М6)
	пб	G51225
КРК	уиа	1(М6)
	пб	G51225
КИР	call	ЧИТ8,(М13)
	зп	D50075
	по	ОШИБ
	вчоб	D50017
	уи	М6
	слиа	5(М6)
	по	G51225
	уиа	-4(М16)
G51220	мода	D50110
	сч	4(М16)
	уи	М6
	сда	64+24
	нтж	D50075
	по	G51225
	loop	G51220,(М16)
	пб	ОШИБ
G51225	мод	ГУС
	слиа	0(М6)
	сч	ФЛАГИ
	или	E3
	зп	ФЛАГИ
	счи	М6
	уиа	0(М6)
	пб	G51235
АДР	call	G50654,(М15)
	и	ВСЕ370
	пе	WAIT
G51233	сч	D50075
	сбр	МПРАВ5
	сда	64+33
	уиа	0(М6)
G51235	зп	D50067
	сч	К2003
	сда	64-15
	или	D50067
	зп	D50067
	сч	СИМ
	нтж	СЛЕШ
	пе	G51244
	сч	П3
	сда	64-15
	нтж	D50067
	зп	D50067
	call	ВЫБСИМ,(М14)
G51244	сч	СИМ
	нтж	П377
	по	ФСЛО
	сч	СИМ
	нтж	ПЛЮС
	пе	G51255
	call	G50654,(М15)
	сч	D50075
	сбр	МАСКА3
	сда	64+39
	по	G51255
	вчоб	
	слц	E1
	уи	М6
	сч	СИМ
	нтж	П377
	по	ФСЛО
G51255	сч	СИМ
	нтж	ДВЕТЧК
	по	G51436
	уиа	-4(М5)
	call	G50654,(М15)
	сч	D50075
	по	ФСЛО
	call	G50672,(М15)
G51262	мода	Ф+4
	сч	(М5)
	нтж	D50075
	и	D50076
	мода	Ф+4
	по	(М5)
	loop	G51262,(М5)
	пб	ОШИБ
Ф	пб	ФУПП
	конк	п'УПП'
	пб	ФХ
	конк	п'Х00'
	пб	ФКОМ
	конк	п'КОМ'
	пб	ФСЛО
	конк	п'СЛО'
	пб	ФБАЙ
	конк	п'БАЙ'
ФУПП	call	G50677,(М15)
	call	G50177,(М13)
	зп	D50742
	сч	БАЙТЫ
	зп	D50743
	call	G50711,(М15)
	loop	ФУПП,(М6)
	пб	G51007
ФСЛО	сч	П60
	пб	G51307
ФБАЙ	lea	G51307,(М13)
	сч	СИМ
	нтж	П377
	пе	G50310
	сч	E4
G51307	зп	D50043
	по	ОШИБ
	уи	М5
	вчоб	П60
	пе	ОШИБ
	call	G50177,(М13)
	зп	D50075
	call	G50677,(М15)
	lea	D50742,(М3)
	уиа	-5(М2)
	сч	ВСЕЕД
	сда	64(М5)
	счмр	
G51320	зп	D50042
	чед	
	уиа	1(М13)
G51322	слиа	-1(М13)
	вч	П3
	пе	G51325
	ржа	'7'
	пе	G51322
G51325	вчоб	
	уи	М16
	сч	D50075
	сбр	D50042
	сда	64(М16)
	зп	D50041
G51330	call	G50706,(М15)
	call	G50500,(М14)
	loop	G51330,(М13)
	сч	ПРОБЕЛ
	зп	СИМ
	call	G50500,(М14)
	сч	D50042
	сда	64(М5)
	пе	G51320
	сч	П377
	зп	СИМ
	call	G50500,(М14)
	call	G50711,(М15)
	сч	D50043
	loop	G51307,(М6)
	пб	G51007
ФХ	call	G50677,(М15)
	lea	D50742,(М3)
	уиа	-5(М2)
	уиа	-11(М5)
	call	G50177,(М13)
G51350	зп	D50041
	сда	64-4
	зп	D50041
	счмр	
	зп	СИМ
	мод	СИМ
	сч	ЦИФРЫ
	зп	СИМ
	call	G50500,(М14)
	сч	D50041
	loop	G51350,(М5)
	сч	П377
	зп	СИМ
	call	G50500,(М14)
	call	G50711,(М15)
	loop	ФХ,(М6)
	пб	G51007
ФКОМ	call	G50677,(М15)
	lea	D50742,(М3)
	уиа	-5(М2)
	call	G50177,(М13)
	уиа	-1(М5)
G51371	сда	64-1
	зп	D50041
	счмр	
	зп	СИМ
	call	G50500,(М14)
	call	G50706,(М15)
	call	G50500,(М14)
	сч	ПРОБЕЛ
	зп	СИМ
	call	G50500,(М14)
	сч	D50041
	и	E48
	по	G51410
	сч	D50041
	сда	64-2
	зп	D50041
	счмр	
	зп	СИМ
	call	G50500,(М14)
	call	G50706,(М15)
	call	G50500,(М14)
	уиа	-4(М7)
	пб	G51420
G51410	сч	D50041
	сда	64-2
	зп	D50041
	счмр	
	зп	СИМ
	уиа	-1(М7)
	call	G50500,(М14)
G51414	call	G50706,(М15)
	call	G50500,(М14)
	loop	G51414,(М7)
	уиа	-3(М7)
G51420	сч	ПРОБЕЛ
	зп	СИМ
	call	G50500,(М14)
G51422	call	G50706,(М15)
	call	G50500,(М14)
	loop	G51422,(М7)
	сч	ПРОБЕЛ
	зп	СИМ
	call	G50500,(М14)
	сч	D50041
	loop	G51371,(М5)
	сч	П377
	зп	СИМ
	call	G50500,(М14)
	call	G50711,(М15)
	loop	ФКОМ,(М6)
	пб	G51007
G51436	call	ВЫБСИМ,(М14)
	нтж	РАВНО
	пе	ОШИБ
	call	G50654,(М15)
	по	ОШИБ
	уиа	-5(М5)
	call	G50672,(М15)
G51443	мода	G51447+5
	сч	(М5)
	нтж	D50075
	и	D50076
	по	G51455
	loop	G51443,(М5)
	пб	ОШИБ
G51447	пб	КОМ
	конк	п'КОМ'
	пб	G51462
	конк	п'СЛО'
	пб	G51473
	конк	п'Х00'
	пб	G51460
	конк	п'УПП'
	пб	G51564
	конк	п'КЛ0'
	пб	G51570
	конк	п'КП0'
G51455	сч	СИМ
	нтж	П377
	по	ОШИБ
	мода	G51447+5
	пб	(М5)
G51460	call	G50654,(М15)
	зп	D50041
	пб	G51551
G51462	уиа	-16(М5)
	сч	
	зп	D50041
G51464	call	ВЫБСИМ,(М14)
	нтж	П377
	по	G51551
	сч	СИМ
	вчоб	П7
	пе	ОШИБ
	сч	D50041
	сда	64-3
	или	СИМ
	зп	D50041
	loop	G51464,(М5)
	пб	ОШИБ
G51473	уиа	-12(М5)
	сч	
	зп	D50041
G51475	call	ВЫБСИМ,(М14)
	нтж	П377
	по	G51551
	call	G51504,(М14)
	сч	D50041
	сда	64-4
	или	СИМ
	зп	D50041
	loop	G51475,(М5)
	пб	ОШИБ
G51504	уиа	-15(М7)
G51505	мода	ЦИФРЫ+15
	сч	(М7)
	нтж	СИМ
	по	G51511
	loop	G51505,(М7)
	пб	ОШИБ
G51511	слиа	15(М7)
	счи	М7
	зп	СИМ
	пб	(М14)
КОМ	сч	
	зп	D50041
	уиа	0(М7)
	уиа	-1(М5)
G51515	сч	СИМ
	нтж	П377
	по	ОШИБ
	уиа	3(М4)
	call	G50654,(М15)
	сч	D50075
	сбр	МАСКА2
	сда	64-2(М7)
	или	D50041
	зп	D50041
	сч	СИМ
	нтж	П377
	по	ОШИБ
	call	ВЫБСИМ,(М14)
	сда	64-42(М7)
	или	D50041
	зп	D50041
	сч	СИМ
	вчоб	E1
	по	G51534
	call	G50654,(М15)
	сч	D50075
	сда	64-39(М7)
	или	D50041
	зп	D50041
	уиа	0(М4)
	пб	G51537
G51534	call	G50654,(М15)
	сбр	МАСКА2
	сда	64+6(М7)
	или	D50041
	зп	D50041
G51537	сч	СИМ
	нтж	П377
	по	ОШИБ
	call	G50654,(М15)
	сч	D50075
	и	ВСЕ370
	пе	ОШИБ
	сч	D50075
	мода	МПРАВ5
	сбр	(М4)
	мода	(М7)
	сда	64+9(М4)
	или	D50041
	зп	D50041
	слиа	24(М7)
	loop	G51515,(М5)
	рег	'101'
G51551	сч	D50067
	уи	М15
	сда	64+15
	уи	М16
	сч	D50041
	уии	М21(М16)
	зп	(М15)
	уиа	'2003'
	рег	'107'
	уиа	-7(М5)
G51556	зп	1
	loop	G51556,(М5)
	сч	D50067
	слц	E1
	зп	D50067
	loop	G51551,(М6)
	сч	ФЛАГИ
	и	E5
	пе	G51117
	пб	G51007
G51564	уиа	0(М5)
	уиа	0(М7)
	мод	D50067
	сч	
	и	Е24П1
	зп	D50041
	пб	G51515
G51570	уиа	0(М5)
	уиа	24(М7)
	мод	D50067
	сч	
	и	Е48П25
	зп	D50041
	пб	G51515
ИДИ	сч	СИМ
	нтж	П377
	пе	G51577
	сч	АДРЕС
	по	НЕТ
	пб	G51601
G51577	call	ЧИТ8,(М13)
	мод	ГУС
	зп	3
G51601	сч	D50071
	пе	G51605
	сч	D50072
	пе	G51605
	сч	ФЛАГИ
	или	E1
	нтж	E1
	зп	ФЛАГИ
G51605	уиа	КИК(М1)
	пб	G51610
ВЫХ	сч	ФЛАГИ
	и	E4
	пе	НЕТ
	уиа	ЭКВЫХ(М1)
G51610	call	G50270,(М17)
	call	ЖДИВЫД,(М14)
	сч	СЛОГ
	увв	'143'
	мод	АДРЭ77
	уиа	8(М15)
	отмен   (М10)
*--------------------
	употр   ЯНУС+8(М15)
	счи	М1
	зп	D50041
	мод	ГУС
	уиа	22(М17)
	уиа	-11(М16)
	сч	(М17)
G51617	уим	М14(М16)
	loop	G51617,(М16)
	зпм	И15
	зпм	И16
	зпм	И17
	зпм	И20
	уим	М27
	уим	М32
	уим	М33
	зпм	РМР
	зпм	РК
	зпм	СМ
	сч	ФЛАГИ
	или	E4
	зп	ФЛАГИ
	рег	'107'
	мод	ГУС
	сч	23
	и	E48
	по	G51632
	рег	'101'
G51632	сч	МПРП
	увв	'34'
	сч	ФЛАГИ
	и	E48
	нтж	E48
	пе	G51636
	зп	АДРЭ77
G51636	мод	D50041
	пб	
	отмен   (М15)
*--------------------
	употр   ЯНУС+8(М10)
КЗП	сч	ФЛАГИ
	или	E7
	зп	ФЛАГИ
	пб	G51643
КСЧ	сч	ФЛАГИ
	или	E7
	нтж	E7
	зп	ФЛАГИ
G51643	call	ЧИТ8,(М13)
	зп	D50072
	рег	'101'
	счи	М10
	сда	64-24
	слц	D50172
	зп	ЗПСЧ
	сч	ФЛАГИ
	и	E7
	по	G51651
	сч	E5
G51651	или	К2003
	сда	64-15
	или	D50072
	зп	D50072
	сч	ФЛАГИ
	или	E6
	зп	ФЛАГИ
	пб	G51667
КРА	call	ЧИТ8,(М13)
	зп	D50071
	сч	ФЛАГИ
	или	E2
	зп	ФЛАГИ
	пб	G51667
ЖДУ	call	G50310,(М13)
	по	ОШИБ
	вчоб	П60
	пе	ОШИБ
	слц	E1
	сда	64-41
	зп	АДРЕС
	сч	ФЛАГИ
	или	П3
	нтж	E2
	зп	ФЛАГИ
G51667	рег	'101'
	счи	М10
	слц	УСТКИК
	зп	КИК
	сч	ФЛАГИ
	и	Е6Е2
	пе	G51007
	сч	ФЛАГИ
	пб	G51104
	отмен   (М10)
*--------------------
МОЙКИК	мод	АДРЭ77
	уиа	8(М17)
	употр   ЯНУС+8(М17)
	сч	ГУС
	нтж	АДРЕС
	и	Е48П42
	пе	ВЫХОД
	сч	ФЛАГИ
	и	E6
	по	G51703
	сч	D50072
	уи	М35
	сда	64+15
	уи	М21
	пб	ВЫХОД
G51703	рег	'101'
	счи	М17
	сда	64-24
	слц	D50171
	зп	GRР24+12
	сч	ФЛАГИ
	и	E2
	пе	G51716
	счи	М27
	сда	64+2
	и	П3
	пе	G51714
	мод	ГУС
	сч	3
	уиа	'2000'
	уи	М34
	уиа	'2003'
	пб	ВЫХОД
G51714	мод	ГУС
	сч	3
	уи	М34
	пб	ВЫХОД
G51716	сч	D50071
	уи	М34
	отмен   (М17)
*--------------------
ВЫХОД	мод	И17
	уиа	0(М17)
	мод	ГУС
	сч	23
	и	E48
	пе	КИК1
	рег	'107'
	пб	КИК1
*--------------------
КОНТЧК	мод	АДРЭ77
	уиа	8(М15)
	употр   ЯНУС+8(М15)
	счи	М27
	сда	64+2
	и	П3
	пе	G51736
	сч	РЭ4
	и	E12
	пе	G51733
	мод	ГУС
	сч	23
	нтж	D50072
	и	Е15П1
	пе	G50175
	пб	G51736
G51733	мод	ГУС
	сч	22
	нтж	D50071
	и	Е15П1
	пе	G50174
G51736	сч	ГУС
	call	G50237,(М16)
	уии	М10(М15)
	отмен   (М15)
*--------------------
	употр   ЯНУС+8(М10)
	ржа	'3'
	рег	'101'
	сч	ГУС
	и	Е48П42
	зп	АДРЕС
	счи	М33
	или	АДРЕС
	и	D50021
	зп	АДРЕС
	зп	D50067
	сч	РЭ4
	и	E12
	пе	G51761
	сч	ФЛАГИ
	нтж	E6
	зп	ФЛАГИ
	сч	G50175
	зп	ЗПСЧ
	сч	
	уи	М35
	зп	D50072
	сч	РЭ4
	и	E17
	пе	G51757
	сч	РЭ4
	нтж	E16
	зп	РЭ4
	сч	E18
	пб	G51765
G51757	нтж	РЭ4
	зп	РЭ4
	сч	E17
	пб	G51765
G51761	нтж	РЭ4
	зп	РЭ4
	сч	G50174
	зп	GRР24+12
	сч	
	зп	D50071
	уи	М34
	сч	E16
G51765	или	АДРЕС
	зп	АДРЕС
	call	ИНИЦ,(М17)
	сч	D50071
	или	D50072
	пе	G50223
	сч	ВОСКИК
	зп	КИК
	пб	G50223
Ч01Д	экв	'2050'
ЗПСЧ	экв	'3604'
ТВ202	экв	'3614'
ТВ215	экв	'3616'
GRР24	экв	'4015'
ВЗУ	ВНЕШ	АДРЭ77,ЗАПЭКС
ГЕНС	ВНЕШ	ШКVТ2
ДИСП70	ВНЕШ	ЭКВЫХ,КИК1,КИК,ЗАПРК,ТВ201,П27,И20,И17,И16,И15
ДИСП70	ВНЕШ	РМР,РК,СМ,РЭ4,ТУС,МПРП,П7,П177,П140,П60,П30
ДИСП70	ВНЕШ	П3,ГУС,П2007,П5,R,ГОД,К2003,ВСЕЕД,ТБУФ,Е24П1
ДИСП70	ВНЕШ	Е48П25,Е15П1,Е24П16,Е48П16
КИТ	ВНЕШ	Е48П42
МОТТ	ВНЕШ	ПРОБ6,П143
СОСТАВ	ВНЕШ	ТОП
ТЕРМ	ВНЕШ	ТАБКОД
	ФИНИШ
