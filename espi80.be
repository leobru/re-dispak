 Б
ЕСПИ80 СТАРТ ’10000’
 УПОТР ЕСПИ80(М7)
*************************************************************** *
 М
 Е
*************************************************************** *
*ВНЕШНИЕ ПЕРЕМЕННЫЕ
ДИСП70 ВНЕШ ТУС,ТБУФ,ЗАНОСМ,БЛИСКН,ФИЗОБМ,ТВ40
ДИСП70 ВНЕШ ШИФРАЦ,ЕСАЦ1,СТУСТР,ШКПЛАН,АЗУ,НОММБ
КИТ ВНЕШ КОНСБР
*************************************************************** *
*   ВНЕШНИЕ КОНСТАНТЫ
ДИСП70 ВНЕШ П3,(Е8П1,П377),(Е10П1,П1777),ВСЕЕД
П11 ВНЕШН ДИСКИ.П11
ИПЗ КОНД В’0’ СМ
*************************************************************** *
 КОНД М41В’3’ РЖАУ
 КОНД (20)В’0’
П33 КОНД В’33’
РЯ КОНД В’0’
ИМЯПИ КОНД Х’5D’
КВИТ КОНД П’00ПАУК’
 КОНД П’ЕСПИ’М44В’13’
 КОНД М33В’1’
КУСПИ КОНД В’400104’
ПРДЛИН КОНД В’0’
МАКЕТ КОНД В’4000020000100000’
Е15П9 КОНД В’77400’
П340 КОНД В’340’
 КОНД М47В’1’
ТНЕТПИ КОНД П’4НЕТ Е’
 КОНД П’СПИ  ↑’
 ПАМ 1             ИСПОЛЬЗУЕТСЯ ПРИ ВЫЗОВЕ
ТНЕТГТ КОНД П’4НЕ ГТ’
 КОНД П’ ЕСПИ ’
 КОНД П’00   ↑’
НАЧАЛО УИА ’2003’
 СЧ ШИФРАЦ
 ИЛИ Е2
 ЗП ШИФРАЦ ЕСПИ80 В РАБОТЕ
	сч	ЕСАЦ1
	и	=в'77600000'
	уиа	-20(М1)
	пе	G10072
	мод	ТУС-1+'31'
	уиа	0(М3)
G10055	уиа	'3'
	сч	E20
	мода	ИМЯПИ
	уиа	0(М15)
	мод	ТУС-1+'31'
	пв	'413'(М16)
	уи	М15
	нтж	
	по	G10160
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
	и	Е8П1
	сда	64-16
	или	ЕСАЦ1
	зп	ЕСАЦ1
G10072	уиа	'3'
	сч	ЕСАЦ1
	сда	64+16
	и	Е8П1
	или	E34
	зп	КВИТ+2
*
*
*
 УИА (М13) ЗАНЕСЕНИЕ ПЕРФОКАРТЫ-
 МОДА ФИЗОПИ С ШИФРОМ ЗАДАЧИ НА-
 ПВ (М14) АБЗАЦ ДЛЯ ПИЕС.
ГЛЦИКЛ СЧИ М13 КОЛИЧЕСТВО ОБРАБОТАННЫХ СЛОВ С ТРАКТА.
 НТЖ ПРДЛИН ДЛИНА ИНФОРМАЦИИ НА ТРАКТЕ.
 И Е10П1
 ПО КОНТРА ИНФОРМАЦИЯ С ТРАКТА ВЫБРАНА.
 УИА -23(М1)
ЗАПБУФ СЧ (М10)   ЦИКЛ-
 МОДА БУФПФК ПЕРЕПИСИ-
 ЗП 23(М1) ИНФОРМАЦИИ-
 СЛИА 1(М10) С АБЗАЦА-
 СЛИА 1(М13) ПИБЭСМ-
 МОДА ФИЗОПИ НА БУФЕР ’БУФПФК’-
 ПВ (М14) ДЛИНОЙ-
 МОДА ЗАПБУФ 24-
 ЦИКЛ (М1) ЯЧЕЙКИ.
 СЧ Е1 ЗАПИСЬ ОЧЕРЕДНОЙ-
 МОДА ФИЗОЕС ПЕРФОКАРТЫ НА-
 ПВ (М14) БУФЕРНЫЙ АБЗАЦ ДЛЯ ПИЕС.
 ПБ ГЛЦИКЛ
КОНТРА НОП ,
	сч	ВСЕЕД
	зп	26(М11)
	зп	12(М11)
	сда	64-32
	зп	13(М11)
	сч	ВСЕЕД
	сда	64+16
	зп	25(М11)
	сч	E2
 МОДА ФИЗОЕС ПИЕС ПЕРФОКАРТЫ-
 ПВ (М14) РАЗДЕЛИТЕЛЯ.
 СЧ ПРДЛИН
 И Е48
	по	G10125
 УИА -3(М10)
ПУСТО4 СЧ Е2 НА АБЗАЦ ПИЕС-
 МОДА ФИЗОЕС ЗАПИСЫВАЮТСЯ ЧЕТЫРЕ-
 ПВ (М14) ЧИСТЫЕ ПЕРФОКАРТЫ-
 МОДА ПУСТО4 ПОСЛЕ ПОСЛЕДНЕЙ-
 ЦИКЛ (М10) ПОРЦИИ ПЕРФОКАРТ.
G10125	счи	М12
	по	G10130
	сч	E3
	мода	ФИЗОЕС
	пв	(М14)
G10130	сч	ПРДЛИН
	и	E48
G10131	по	G10151
	мода	G10151
	уиа	0(М15)
	мода	ТКВ
	уиа	0(М16)
 УИА ’2003’
 СЧ ШИФРАЦ
 НТЖ Е2
 ЗП ШИФРАЦ
 УИИ М32(М15)
 СЧ Е23
 ПБ ТВ40
ТКВ	конд	п'4     '
	конд	п'ХХХХХХ'
	конд	п'ХХХХХХ'
	конд	п' КВ ЕС'
	конд	п'ПИ   ↑'
ВЫХОШ1	уиа	'2003'
	сч	СТУСТР+6
	слц	E25
	зп	СТУСТР+6
 СЧ ШИФРАЦ
 ИЛИ Е26           СБОЙ ПИ
 ЗП ШИФРАЦ
	мода	ВЫХОД
	пино	(М14)
G10151	счи	М11
	сда	64-2
	пв	ТБУФ(М15)
 СЧ КУСПИ
 ПВ ТБУФ(М15)
ВЫХОД	уиа	'2003'
 СЧ ШКПЛАН
 ИЛИ Е2
 ЗП ШКПЛАН ДАЙ ТРАКТЫ ДЛЯ ПИ.
 ПВ ЗАНОСМ(М16) ВРЕМЯ
 СЧ Е18
 ПБ БЛИСКН ОТКАЗ ОТ ЕСПИ80
G10160	сч	ШИФРАЦ
	и	E14
	пе	G10072
	пам	0
	мода	ТНЕТПИ
	уиа	0(М16)
	уиа	1(М14)
	пб	ВЫДОПТ
НЕТГТ	сч	КВИТ+2
	сда	64-40
	рзб	=п'  0000'
	слц	ТНЕТГТ+2
	зп	ТНЕТГТ+2
	уиа	0(М14)
	мода	ТНЕТГТ
	уиа	0(М16)
ВЫДОПТ НОП ,
	мода	ВЫХОШ1
	уиа	0(М15)
 УИИ М32(М15)
 СЧ Е23
 ПБ ТВ40
ПРОПИ	сч	E1
	пб	G10131
*************************************************************** *
*П/П ПОДКАЧКИ (ПОСЕКТОРНО) ИНФОРМАЦИИ С МБ ДЛЯ ПИБЭСМ
*М10-БАЗА АБЗАЦА ДЛЯ СЧИТАННОИ ИНФОРМАЦИИ;М13-КОЛИЧЕСТВО
*ОБРАБОТАННЫХ СЛОВ С ТРАКТА;М14-ВОЗВРАТ ИЗ П/П;М11,М12,М15,М17-
*РАБОЧИЕ МОДИФИКАТОРЫ (РМ),ИСПОЛЬЗУЕМЫЕ ТОЛЬКО ПРИ ОБРАБОТКЕ ИН Ф
*С НУЛЕВОГО СЕКТОРА;М16-РМ.
ФИЗОПИ МОДА ФИЗПИ1
 ПИНО (М13) КУС ОБМЕНА СФОРМИРОВАН
 СЧ Е1
 ПВ ТБУФ(М15) ДАИ АБЗАЦ ДЛЯ ПИБЭСМ
 СДА 64-8
 УИ М10 АДРЕС АБЗАЦА ДЛЯ ПИБЭСМ
 СДА 64-2
 ИЛИ КУСПИ 21 ТРАКТ С ИНФОРМАЦИЕЙ ДЛЯ ПИБЭСМ
 ИЛИ НОММБ
 ЗП КУСПИ КУС ЧТЕНИЯ СЕКТОРА С 21 ТРАКТА
ФИЗПИ1 СЧИ М13
 И Е8П1
 ПЕ (М14) ИНФОРМАЦИЮ С АБЗАЦА ЕЩЕ НЕ ВЫБРАЛИ,ВЫХОД
 СЧИ М13
 СДА 64+8
 И П3
 ИЛИ КУСПИ КУС ЧТЕНИЯ+НОМЕР СЕКТОРА
 ПВ ФИЗОБМ(М16) ЧТЕНИЕ ОЧЕРЕДНОГО СЕКТОРА
 УИА 3
 СЧИ М13
 ПО ФИЗПИ2 СЧИТАЛИ НУЛЕВОЙ СЕКТОР
 СЛИА -256(М10)
 ПБ (М14) СЕКТОР НЕ НУЛЕВОИ,ВЫХОД
ФИЗПИ2 СЧ (М10) 48Р=1-ПОСЛЕДНИЙ ТРАКТ;1:10Р-КОЛИЧЕСТВО СЛОВ
 ЗП ПРДЛИН С ИНФОРМАЦИЕЙ НА ТРАКТЕ
 СЧ 1(М10) ШИФР ЗАДАЧИ
 РЗБ =П’      ’
 ЗП ТКВ+1          1- 6 ЦИФРЫ ШИФРА
 СЧ 1(М10)
 СДА 64-24
 РЗБ =П’      ’
 ЗП ТКВ+2          7-12 ЦИФРЫ ШИФРА
 СЧ ШИФРАЦ
 И Е14
 ПЕ ПРОПИ ДИРЕКТИВА ОПЕРАТОРА ’ПРО ПИ’
*ПЕРФОРАЦИЯ ШИФРА ЗАДАЧИ В НАЧАЛЕ ОЧЕРЕДНОЙ ПОРЦИИ ПФК
ШИФР УИА -3(М17)
 СЛИА 2(М13)
 СЧ ТКВ+1
 ЗП РЯ
ШИФР1 МОДА БУФПФК 24 ЯЧЕЙКИ ДЛЯ ПФК В МАКЕТЕ ПИБЭСМ
 УИА (М11)
 СЧ РЯ
 СДА 64-8
 ЗП РЯ
 СЧМР
 УИ М16 ОЧЕРЕДНАЯ ЦИФРА ШИФРА
 УИА -5(М15)
ШИФР2 МОДА ЦИФРЫ
 СЧ (М16)
 СБР КОНСБР+5(М15)
 СДА 64+8(М12)
 ИЛИ 3(М11)
 ЗП 3(М11)
 СЛИА 2(М11)
 МОДА ШИФР2
 ЦИКЛ (М15) НА ШЕСТЬ СТРОК ПФК
 СЛИА 10(М12)
 МОДА ШИФР1
 ЦИКЛ (М17) НА ЧЕТЫРЕ ЦИФРЫ ШИФРА
 СЧ
 УИА -9(М17)
ЧИСТ10 МОДА БУФПФК+14
 ЗП 9(М17)
 МОДА ЧИСТ10
 ЦИКЛ (М17)
 СЛИА 2(М10)
 ПБ ФИЗОЕС
*КОНЕЦ П/П ФИЗОПИ
*************************************************************** *
*П/П ПЕРЕВОДА ИЗ ПИБЭСМ В ПИЕС С ВЫДАЧЕЙ НА ЕСПИ
*ВХОД:СМ=Е1-ЗАПИСЬ НА АБЗАЦ ЕСПИ ОДНОЙ ПФК С ПЕРЕВОДОМ,
*СМ=Е2-ЧИСТАЯ ПФК,СМ=Е3-ВЫТАЛКИВАНИЕ БУФЕРА.
*М11-БАЗА АБЗАЦА ДЛЯ ПИЕС,М12-КОЛИЧЕСТВО ПФК В АБЗАЦЕ,
*М14-ВОЗВРАТ ИЗ П/П,М1:М6,М15:М17-РМ.
ФИЗОЕС УИ М1
 ПЕ ФИЗЕС1 ОБРАЩЕНИЕ НЕ ИЗ ФИЗОПИ
 СЧ Е1
 ПВ ТБУФ(М15) ДАЙ АБЗАЦ ДЛЯ ПИЕС
 СДА 64-8
 УИ М11 АДРЕС АБЗАЦА ДЛЯ ПИЕС
 УИА (М12) ЧИСЛО ПФК:=0
 УИА 3
ФИЗЕС1 СЧИ М1
 И Е3
 ПЕ ФИЗЕС9 БЕЗУСЛОВНОЕ ВЫТАЛКИВАНИЕ БУФЕРА
 СЧИ М1
 И Е2
 ПЕ ФИЗЕС8 ЧИСТАЯ ПФК
 СЧИ М12
 ПЕ ФИЗЕС2 ПЕРЕВОД ИЗ ПИБЭСМ В ПИЕС
 УИА -255(М15)
ЧИСТКА МОДА (М11)    ОБНУЛЕНИЕ
 ЗП 255(М15)         АБЗАЦА
 МОДА ЧИСТКА         ПОД
 ЦИКЛ (М15)          ПИЕС.
*БЛОК ПЕРЕВОДА ИНФОРМАЦИИ ИЗ МАКЕТА ПИБЭСМ В ПИЕС
ФИЗЕС2 УИА -11(М1)
 МОДА БУФПФК
 УИА (М2)
ФИЗЕС3 СЧ (М2)
 СДА 64-8
 ЗП (М2) А(I,48:9)=А(I,40:1)
 СЧ 1(М2)
 СДА 64-16
 ЗП 1(М2) А(I+1,48:17)=А(I+1,32:1)
 СЧМР
 И Е8П1
 ИЛИ (М2)
 ЗП (М2) А(I, ):=А(I, )V(А(I+1,40:33)’СДВ’+32)
 СЛИА 2(М2)
 МОДА ФИЗЕС3
 ЦИКЛ (М1)
 УИА (М1) I:=0
 УИА (М3) К:=0
 УИА -1(М4) 2 РАЗА ЦИКЛ
ФИЗЕС4 УИА -15(М5) 16 РАЗ ЦИКЛ
ФИЗЕС5 СЧИ М3
 НТЖ П33
 ПО ФИЗЕС8 ПЕРЕВОД ОДНОЙ ПФК ЗАКОНЧЕН
 СЧ МАКЕТ
 ЗП РЯ
 УИИ М2(М1) J:=I
 УИА -1(М6) 2 РАЗА ЦИКЛ
ФИЗЕС6 СЧ РЯ
 СДА 64+2
 ЗП РЯ
 УИА -5(М15) 6 РАЗ ЦИКЛ
ФИЗЕС7 МОДА (М2) J
 СЧ БУФПФК
 РЗБ РЯ
 МОДА (М3) К
 ИЛИ (М11)
 МОДА (М3)
 ЗП (М11)
 МОДА (М2)
 СЧ БУФПФК
 СДА 64-3
 МОДА (М2)
 ЗП БУФПФК
 СЧ РЯ
 СДА 64+1
 ЗП РЯ
 СЛИА 2(М2) J:=J+2
 МОДА ФИЗЕС7
 ЦИКЛ (М15) КОНЕЦ1;
 МОДА ФИЗЕС6
 ЦИКЛ (М6) КОНЕЦ2;
 СЛИА 1(М3) К:=К+1
 МОДА ФИЗЕС5
 ЦИКЛ (М5) КОНЕЦ3;
 УИА 1(М1) I:=1
 МОДА ФИЗЕС4
 ЦИКЛ (М4) КОНЕЦ4; КОНЕЦ БЛОКА ПЕРЕВОДА.
ФИЗЕС8 НОП ,
	слиа	27(М11)
	слиа	1(М12)
	счи	М12
	нтж	П11
	пе	(М14)
ФИЗЕС9	сч	КВИТ
	мод	ТУС-1+'31'
	уиа	0(М3)
	и	'47'(М3)
	зп	КВИТ
	счи	М11
	и	Е8П1
	уи	М1
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
	сч	Е21Е20
	мод	ТУС-1+'31'
	пв	'413'(М16)
	нтж	
	по	НЕТГТ
	уи	М15
	сч	4(М15)
	сда	64+32
	и	Е8П1
	уи	М2
	счи	М15
	мод	ТУС-1+'31'
	пв	'2126'(М17)
	счи	М2
	пе	НЕТГТ
	счи	М12
 СЛЦ АЗУ+1
 ЗП АЗУ+1 КОЛИЧЕСТВО ВЫДАННЫХ ПФК НА ЕСПИ
	уиа	0(М12)
	счи	М11
	и	Е15П9
	уи	М11
 ПБ (М14)
*КОНЕЦ П/П ФИЗОЕС
БУФПФК КОНД (14)В’0’
ЦИФРЫ КОНД В’1714170360741474’ 0
 КОНД В’1701403026034030’ 1
 КОНД В’7774007400741474’ 2
 КОНД В’1714140317003377’ 3
 КОНД В’0157754615414014’ 4
 КОНД В’1714140377140374’ 5
 КОНД В’1714170377140074’ 6
 КОНД В’1403003003001777’ 7
 КОНД В’1714170317141474’ 8
 КОНД В’1700147760741474’ 9
Е21Е20	конд	м19в'3'
	ФИНИШ