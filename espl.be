ЕСПЛ СТАРТ ’10000’
	Б
	Е
	М
 УПОТР ЕСПЛ(М7)
ИПЗ КОНД В’0’ СМ
 КОНД М41В’3’ РЖАУ
 КОНД (20)В’0’
П33 КОНД В’33’
РЯ КОНД В’0’
ИМЯПЛ КОНД Х’7В’
КВИТ КОНД П’00ПАУК’
 КОНД П’ЕСПЛ’М44В’13’
 КОНД М33В’1’
КУСПЛ КОНД В’400114’
ПРДЛИН КОНД В’0’
МАКЕ1 КОНД В’4000020000100000’
Е15П9 КОНД В’77400’
П340 КОНД В’340’
 КОНД М47В’1’
ТНЕТПЛ КОНД П’4НЕТ Е’
 КОНД П’СПЛ  ↑’
 ПАМ 1            ИСПОЛЬЗУЕТСЯ ПРИ ВЫЗОВЕ
ТНЕТГТ КОНД П’4НЕ ГТ’
 КОНД П’ ЕСПЛ ’
 КОНД П’00   ↑’
НАЧАЛО УИА ’2003’ ПЛ В РАБОТЕ
 СЧ ШИФРАЦ
 ИЛИ Е4
 ЗП ШИФРАЦ
	мод	ТУС-1+'31'
	уиа	0(М3)
	уиа	-20(М1)
	сч	ЕСАЦ1
	и	=в'177400'
	пе	G10072
G10055	уиа	'3'
	сч	E20
	мода	ИМЯПЛ
	уиа	0(М15)
	мод	ТУС-1+'31'
	пв	'413'(М16)
	уи	М15
	нтж	
	по	G10130
	сч	5(М15)
	зп	КВИТ+2
	счи	М15
	мод	ТУС-1+'31'
	пв	'2126'(М17)
	сч	КВИТ+2
	и	E32
	по	G10067
	мода	G10055
	цикл	(М1)
	стоп	
G10067	уиа	'2003'
	сч	КВИТ+2
	и	П377
	сда	64-8
	или	ЕСАЦ1
	зп	ЕСАЦ1
G10072	уиа	'3'
	сч	ЕСАЦ1
	сда	64+8
	и	П377
	или	E34
	зп	КВИТ+2
	пб	G10144
контр1	сч	ПРДЛИН
	и	E48
G10077	по	ВЫХОД
	мода	G10105
	уиа	0(М15)
	мода	ТКВ
	уиа	0(М16)
	уиа	'2003'
	сч	ЕСАЦ1
	нтж	E44
	зп	ЕСАЦ1
	уии	М32(М15)
	сч	E23
	пб	ТВ40
G10105	уиа	
 СЧ ШИФРАЦ
 НТЖ Е4
 ЗП ШИФРАЦ        ПЛ СВОБОДЕН
	пб	ВЫХОД
ТКВ	конд	п'4     '
	конд	п'ХХХХХХ'
	конд	п'ХХХХХХ'
	конд	п' КВ ЕС'
	конд	п'ПЛ00 ↑'
G10115	уиа	'2003'
	сч	СТУСТР+6
	слц	E37
	зп	СТУСТР+6    В СТАТИСТИКУ СБОЕВ
 СЧ ШИФРАЦ
 ИЛИ Е28
 ЗП ШИФРАЦ        СБОЙ ПЛ
	сч	ЕСАЦ1
	нтж	E44
	зп	ЕСАЦ1
	мода	G10124
	пино	(М14)
ВЫХОД НОП ,
 СЧ КУСПЛ
 ПВ ТБУФ(М15)
G10124	уиа	'2003'
 СЧ ШКПЛАН
 ИЛИ Е4
 ЗП ШКПЛАН        ДАЙ ТРАКТ ДЛЯ ПЛ
 ПВ ЗАНОСМ(М16)   ВРЕМЯ
 СЧ Е22
 ПБ БЛИСКН
*
G10130	сч	ШИФРАЦ
	и	E16
	пе	G10072
	пам	0
	мода	ТНЕТПЛ
	уиа	0(М16)
	уиа	1(М14)
	пб	G10140
G10134	сч	КВИТ+2
	сда	64-40
	рзб	=п'  0000'
	слц	ТНЕТГТ+2
	зп	ТНЕТГТ+2
	уиа	0(М14)
	мода	ТНЕТГТ
	уиа	0(М16)
G10140	мода	G10115
	уиа	0(М15)
	уии	М32(М15)
	сч	E23
	пб	ТВ40
ПРОПЛ	сч	E1
	пб	G10077
G10144	ноп
 СЧ Е1
 ПВ ТБУФ(М15) ДАЙ АБЗАЦ
 СДА 64-8
 УИ М11 АБЗАЦ ДЛЯ ЕСПЛ
 СДА 64-2
 ИЛИ КУСПЛ 23 ТРАКТ ДЛЯ ЕСПЛ
 ИЛИ НОММБ
 ЗП КУСПЛ
 ПВ ФИЗОБМ(М16) 0 АБЗАЦ
 УИА 3
 УИА (М13)
 СЧ 1(М11)
 РЗБ =П’      ’
 ЗП ТКВ+1         7 -12 ЦИФРЫ ШИФРА
 СЧ 1(М11)
 СДА 64-24
 РЗБ =П’      ’
 ЗП ТКВ+2         1 - 6 ЦИФРЫ ШИФРА
 СЧ (М11)
 ЗП ПРДЛИН
 УИ М4
 СЧ ШИФРАЦ
 И Е16
 ПЕ ПРОПЛ ДИРЕКТИВА ОПЕРАТОРА ’ПРО ПЛ’
 СЧ ЕСАЦ1
 И Е44
 ПЕ ФИЗПЛ1 ШИФР ВЫДАН
 УИА -64(М1)
 СЧ
ЧИСТ64 МОДА (М11)
 ЗП 64(М1)
 МОДА ЧИСТ64
 ЦИКЛ (М1)
 УИА -11(М1)
 СЧ ТКВ+1
 ЗП РЯ
 СЧ ЕСАЦ1
 ИЛИ Е44
 ЗП ЕСАЦ1
 УИА -5(М3)
ШИФР СЧ РЯ
 СДА 64-8
 ЗП РЯ
 СЧМР
 УИ М2
 МОДА ЦИФРЫ
 СЧ (М2)
 МОДА (М11)
 ЗП 31(М1)
 МОДА ПРОП
 ЦИКЛ (М3)
 УИА -5(М3)
 СЧ ТКВ+2
 ЗП РЯ
ПРОП МОДА ШИФР
 ЦИКЛ (М1)
 СЧ Е7 ПЕРФОРАЦИЯ
 МОДА ВЫВПМ6 ШИФРА
 ПВ (М10) ЗАДАЧИ
 СЧ КУСПЛ
 ПВ ФИЗОБМ(М16)
ФИЗПЛ1 УИА 3
 УИА -253(М1)
ФИЗПЛ2 МОДА (М11) ЦИКЛ ПЕРЕПИСИ-
 СЧ 255(М1) ИНФОРМАЦИИ-
 МОДА (М11) ДЛЯ ЕСПЛ-
 ЗП 253(М1) СЧИТАННОЙ С-
 МОДА ФИЗПЛ2 НУЛЕВОГО СЕКТОРА-
 ЦИКЛ (М1) В НАЧАЛО АБЗАЦА.
 СЛИА 256(М13)
ГЛЦИКЛ СЧИ М13
 ЗП РЯ
 СЧИ М4
 ВЧ РЯ
 ПЕ ГЛЦ3 СЕКТОР ПОСЛЕДНИЙ
 СЧИ М13
 НТЖ Е9
 По ГЛЦ1 (свс:ПЕ) НЕ 0-ОЙ СЕКТОР
 УИА 254(М1)
 ПБ ГЛЦ2
ГЛЦ1 УИА 256(М1)
ГЛЦ2 СЧИ М1
 ИЛИ Е11
 МОДА ВЫВПМ6
 ПВ (М10)
 СЧИ М13
 СДА 64+8
 И П3
 ИЛИ КУСПЛ
 ПВ ФИЗОБМ(М16)
 УИА 3
 СЛИА 256(М13)
 СЧИ М13
 НТЖ ПРДЛИН
 И Е10П1
 ПЕ ГЛЦИКЛ
 ПО КОНТРА КОНЕЦ ТРАКТА
ГЛЦ3 СЛИА -256(М13)
 СЧИ М13
 ПЕ ГЛЦ4
 СЛИА 2(М13)
ГЛЦ4 СЧИ М13
 ЗП РЯ
 СЧ ПРДЛИН
* И П7777
 ВЧ РЯ
 ИЛИ Е11
 МОДА ВЫВПМ6
 ПВ (М10)
КОНТРА СЧ ПРДЛИН
 И Е48
 ПО ВЫХОД
* ТРАКТ ПОСЛЕДНИЙ
 УИА -64(М1)
 СЧ
ЧИСТКА МОДА (М11)
 ЗП 64(М1)
 МОДА ЧИСТКА
 ЦИКЛ (М1)
 СЧ Е7
 МОДА ВЫВПМ6 ПЕРФОРАЦИЯ-
 ПВ (М10) СИНХРОДОРОЖКИ
	пб	контр1
ВЫВПМ6	зп	РЯ
	сч	КВИТ
	и	'47'(М3)
	зп	КВИТ
	сч	РЯ
	и	Е10П1
	сда	64-32
	или	КВИТ
	зп	КВИТ
	счи	М11
	и	Е15П9
	мода	КВИТ
	уиа	0(М15)
	мод	ТУС-1+'31'
	пв	'413'(М16)
	мода	КВИТ+1
	уиа	0(М15)
	сч	D10305
	мод	ТУС-1+'31'
	пв	'413'(М16)
	нтж	
	по	G10134
	уи	М15
	сч	4(М15)
	сда	64+32
	и	П377
	уи	М2
	счи	М15
	мод	ТУС-1+'31'
	пв	'2126'(М17)
	счи	М2
	пе	G10134
 СЧ РЯ          свс:РЯ1
 И Е11
 ПО (М10)
 СЧ АЗУ+1
 СЛЦ Е10
 ЗП АЗУ+1
 ПБ (М10) ВЫХОД ИЗ П/П
*******************************************
ЦИФРЫ КОНД Х’Е11110Е’
 КОНД Х’81F’ 1
 КОНД Х’9131509’ 2
 КОНД Х’12111916’ 3
 КОНД Х’2060А1F’ 4
 КОНД Х’1D151512’ 5
 КОНД Х’Е151512’ 6
 КОНД Х’11121418’ 7
 КОНД Х’А15150А’ 8
 КОНД Х’915150Е’ 9
D10305	конд	в'0000000006000000'
БОЭК1   ВНЕШ    ЛИСТМБ
ВЗУ	ВНЕШ	ФИЗОБМ
ДИСП70	ВНЕШ	ЗАНОСМ,ТБУФ,БЛИСКН,ТВ40,РRРТАВ,АЗУ,ШКПЛАН,НОММБ
ДИСП70	ВНЕШ	ШИФРАЦ,П377,П3,П5,(Е10П1,П1777),ТУС,ЕСАЦ1,СТУСТР
	ФИНИШ
