ТЕРМ	СТАРТ	'7255'
        Е
	М
*
 ГБЛВ ∧К71,∧ОТЛ
∧К71 УСТВ 1
*
*** Б Л О К   П О Д Г О Т О В К И   М А С С И В А ***
**** Д Л Я   В Ы Д А Ч И   Н А   Т Е Р М И Н А Л ****
*
*
*      БЛОК ЯВЛЯЕТСЯ ОБЩИМ ДЛЯ   Б Н Б О Т   И   Э 7 1 Т К,
* ПРИЧЕМ ДЛЯ ПОСДЛЕДНЕГО ОБЕСПЕЧИВАЕТСЯ ПОВТОРНАЯ ВХОДИМОСТЬ,
* КОГДА ВЫДЕЛЕННОГО БУФЕРА НЕ ХВАТАЕТ ДЛЯ РАЗМЕЩЕНИЯ МАССИВА.
*      В КАЧЕСТВЕ РАБОЧИХ ИСПОЛЬЗУЮТСЯ ЯЧЕЙКИ 41
* МОДУЛЕЙ ( М7 ) .
*                    ВХОДНАЯ ИНФОРМАЦИЯ
*
* М2     - НОМЕР ТЕМИНАЛА
* М13    - АДРЕС НАЧАЛА ВЫДАВАЕМОГО МАССИВА / ТЕКУЩИЙ АДРЕС /
* М16    - АДРЕС ВЫХОДА
* 41(М7) - АДРЕС КОНЦА ВЫДАВАЕМОГО МАССИВА + 1
* 42(М7) - ДЛЯ ПЕРВОГО ВХОДА <42>
*          - АДРЕС ПРОДОЛЖЕНИЯ РАБОТЫ ( М17 )
* ТБЛ    - АДРЕС ЗАПОЛНЯЕМОГО РЕКОРДА
*
* КРОМЕ ЭТОГО ИСПООЛЬЗУЮТСЯ:
* М1  - АБСОЛЮТНЫЙ АДРЕС ЗАПИСИ В РЕКОРД
* М5  - СЧЕТЧИК СИМВОЛОВ В СТРОКЕ
* М6  - СДВИГ ПО  Т А Б К О Д
* М10 - СЧЕТЧИК СИМВОЛОВ В СЛОВЕ ИСХОДНОГО МАССИВА
* М12 - СЧЕТЧИК СИМВОЛОВ В СЛОВЕ РЕКОРДА
* М14 - РАБОЧИЙ
* М15 - ИСПОЛЬЗУЕТ ПРОЦЕДУРА ’ПОИСК’
* М17 - РАБОЧИЙ
*
*
*
ККОДПЛ НОП ,
 КОНД В’11336203’   ЕЭ3;РУС;ЛАТ,РУС,ЦИФ
 КОНД В’1453460563323612’ Т,Щ,5;(НАДЧ),З,+
 КОНД В’2565352720122200’ ◇◇◇FД0
 КОНД В’5351061150520533’ О↑9ВБ!
 КОНД В’62034031’   ПРОБ,SШ*
 КОНД В’5325202654735206’ Н ;УЫ6
 КОНД В’2131641520032230’ N<,FФ]
 КОНД В’1311701655303214’ М>.Х6/
 КОНД В’2605431510014413’   (НАДЧ)А*-
 КОНД В’6112542362633402’ LЛ)WЧ2
 КОНД В’6201600461024624’ S≠4LЙ∧
 КОНД В’6042162700000000’ IГ[ ЦИФ
 КОНД В’2072401022436407’ J8VЮ7
 КОНД В’5402720061637001’ РП0RЯ1
 КОНД В’1433303712410222’ СЦ:К⏨(
 КОНД В’6262302500000000’ WЖ= ЛАТ
*
*
****** НАСТРОЙКА ПО ТИПУ ТЕРМИНАЛА ******
*
ДЛЯЭ71 НОП
	мод	ТБЛ(М2) М1 := А РЕКОРДА
	уиа	9(М1)
	сч	ТСЛ(М2) ВХОД ДЛЯ Э71ТК
	сда	64+12
	и	Е6П4
	уи	М6
	слиа	-48(М6)
	пио	ш5(М6)
	и	П30
	уи	М6
	слиа	-8(М6)
*
*
****** НАСТРОЙКА ПО ТИПУ ТЕРМИНАЛА ******
*
ш5 ноп
 УИА -5(М12)      М12 - НОМЕР СИМВОЛА В РЕКОРДЕ
	уиа	(М15)
	уиа	тт0(М17)
	сч	ТСЛ(М2)
	и	E17
	пе	нтт1 ТЕРМИНАЛ АППАРАТУРЫ СОПРЯЖЕНИЯ
	сч	ШКАС
	и	E48(М2)
	пе	нтт1
	уиа	тт4(М17)
нтт1	пино	нтт2(М6) НЕ ВИДЕОТОН
	уиа	П377(М17)
	пе	нтт2 ВИДЕОТОН АППАРАТУРЫ СОПРЯЖЕНИЯ
	уиа	ШСТRLO+1(М17)
	уиа	-3(М12) 4 СИМВОЛА В СЛОВЕ
	уиа	-4(М15)
нтт2	сч	42(М7) "42" = 0
	по	нтт3 ДА - ПЕРВЫЙ ВХОД НА ПМВЫД
	уи	М17 ВОССТАНОВЛЕНИЕ М17
	пб	(М17) КОНЕЦ НАСТРОЙКИ
нтт3	уиа	(М10) М10 := 0
	слиа	1(М17)
	слиа	1(М12)
	уиа	-80(М5) В СТРОКЕ 80 СИМВОЛОВ
	пио	нтт4(М6) ВТ-340
	уиа	-66(М5) В СТРОКЕ 66 СИМВОЛОВ
	сч	ТСЛ(М2)
	и	E17
	пе	ОЧСИМВ КОНСУЛ
	уиа	(М12) ТЕЛЕТАЙП
	сч	E6 РЕГ := ЛАТ
	зп	-3(М1)
нтт4	сч	ТСЛ(М2)
	и	E17
	пе	ОЧСИМВ
	сч	(М17) НУЛЕВОЕ СЛОВО МАССИВА (РАЗГОН)
	зп	(М1)
* ПОДКЛ. ТЕРМ. ЧЕРЕЗ ДКС.
	пб	выдас7 !В ВЗУ->СВ7.СВ7АС1 ВЫДАЧА СИМВ. В ТЕРМ
*АС ДКС
*
*** КОНЕЦ НАСТРОЙКИ ПО ТИПУ ТЕРМИНАЛА ***
*
* !ТЕРМ-100 СТР. 161/100
ОЧСИМВ УИА ОЧСИМВ(М17)   М17:= ОЧСИМВ
 ЦИКЛ ОЧСИМ(М10)    СЛОВО НЕ ПЕРЕКОДИРОВАЛИ
 СЧИ М13
 НТЖ 41(М7)
 ПО КОНМАС        КОНЕЦ МАССИВА
 СЛИА 1(М13)
	сч	ТУС+'22'
	нтж	ГУС
	и	Е48П42
	по	очси Я - БНБОТ (М17 = 0)
 УИА 0 Я - Э71ТК СНТ. БЛП, БЛЗ
очси	ноп
 СЧ -1(М13)       НОВОЕ СЛОВО
 УИА 3
 УИА -5(М10)
 ЗП 43(М7)
ОЧСИМ СЧ 43(М7)        ОЧЕРЕДНОЙ СИМВОЛ
 СДА 64-8
 ЗП 43(М7)
 СЧМР
 ЗП 42(М7)
 УИ М14
 СЧ ТСЛ(М2)
 И Е37
 ПЕ ТЕСТР         БЕЗ ПЕРЕКОДИРОВКИ
 СЧ 42(М7)
*
****** А Н А Л И З   С И М В О Л А ******
*
 СЛИА -’21’(М14)
 ПИО СТРЕЛА(М14)   021
 ВЧ ПОСЛС
 ПЕ УППКУ      ПЕРЕК
 РЖА 7
 ПО ОЧСИМВ
 СЧ 42(М7)
 СЛИА -’123’(М14)
 ПИО КПКОП(М14)    144
 СЛИА -2(М14)
 ПИО СULЕFТ(М14)   146
 СЛИА -’24’(М14)
 ПИО КМ(М14)       172
 СЛИА -3(М14)
 ПИО АТ(М14)       175
 СЛИА -’17’(М14)
 ПИО КС(М14)   214
 СЛИА -’163’(М14)
 ПИО С376(М14)     377
 СЛИА 1(М14)
 ПИО С376(М14)     376
 СЛИА 1(М14)
 ПИО ЕТХ(М14)      375(ЕТХ)
 СЛИА 1(М14)
 ПИО СТRLО(М14)   374(СТRLО=’21’-ДЛЯ LРD-400)
	слиа	1(М14)
	пио	С373(М14)
	слиа	'211'(М14)
 ПИО УППКУ(М14)    162
 СЛИА -5(М14)
 ПИО УППКУ(М14)    167
 СЛИА -1(М14)
 ПИО УППКУ(М14)    170
 СЛИА -1(М14)
 ПИО УППКУ(М14)    171
 СЛИА -5(М14)
 ПИО УППКУ(М14)    176
 СЛИА -1(М14)
 ПИО УППКУ(М14)    177
НДС СЧ НЕДОПС        НЕДОПУСТИМЫЙ КОД
 ПБ УППКУ2
*
*
*
АТ СЧ АТС           СИМВОЛ ’АТ’ ДЛЯ VТ-340
 ПБ УППКУ2
*
*** РАБОТА ДЛЯ К-71
*** ЗАП. В ШК. ТЕРМИНАЛОВ, ПОДКЛ. ЧЕРЕЗ ДКС
*
С373	сч	штерм7
	или	E48(М2)
	зп	штерм7
	пб	С376
*
****** ПЕРЕХОД НА НОВУЮ СТРОКУ ******
*
КС	ноп
 УИА NL3(М17) М17 := NL3
 МОД 46(М7)
 СЧ NLС
nl	пио	nl1(М6) ВТ-340
	зп	44(М7)
	уиа	-66(М5) М5 := 66
	пб	NL3
nl1	ноп
 ПИНО NL2(М5)       ПЕРЕХОД ПО < LF >
 СДА 64-8          ПЕРЕХОД ПО ЗАПОЛНЕНИЮ СТРОКИ БЕЗ LF
NL2 ЗП 44(М7)        М5:= -80
 УИА -80(М5)
	пино	NL3(М5)
	сч	ШVD130
	и	E48(М2)
	пе	ОЧСИМВ
*
NL3 СЧ 44(М7)        ЗАПИСЫВАЕМ NL
 ПО ОЧСИМВ        NL ЗАПИСАНА
NL3А СДА 64-8          ЕЩЕ НЕ ВСЕ
 ЗП 44(М7)
 СЧМР
 УИ М14
	сч	ТАБКОД(М14)
 ПБ УППСЛУ
*
*
СТRLО УИА ’21’(М14)
 ПБ ОБЩ   СТRLS НА LRD-400
ЕТХ УИА 3(М14)
 ПБ ОБЩ     ЕТХ
КПКОП УИА 5(М14)
 ПБ ОБЩ     СТRL,Е
СULЕFТ СЛИА -2(М5)
 УИА ’210’(М14)
ОБЩ ПИНО ОЧСИМВ(М6)    М5=М5-2+1
 СЛИА 1(М5)
 СЧИ М14
 ПБ vton1 свс: ПРНОЛЬ
*
*** ПЕРЕВОД ИЗ КОДА УПП В КОД ТЕРМИНАЛА ***
*
УППКУ	мод	42(М7)
	сч	ТАБКОД
УППКУ2	слиа	1(М5) М5 := "М5"+1 (СЧЕТНЫЙ ВХОД)
	уиа	ОЧСИМВ(М17) М17 := ОЧСИМВ
УППСЛУ	сда	64+32(М6) ВХОД ДЛЯ СЛУЖЕБНЫХ СИМВОЛОВ
	и	П377
	пио	vton1(М6) ВТ-340
	уии	М14(М6)
	слиа	8(М14)
	пино	СГ(М14) КОНСУЛ
ттайп4	уи	М14 ТТ
	и	П140
	по	ттайп8 УСТ. РЕГИСТРА НЕ ТРЕБУЕТСЯ (SP'='<)
	нтж	П140
	зп	42(М7)
	мод	ТСЛ(М2)
	нтж	6
	по	ттайп1 РЕГИСТР ПРЕЖНИЙ
	нтж	42(М7)
	по	ттайп3 БЫЛ "ЦИФРОВОЙ"
	счи	М14
	и	Е8П6
	нтж	е8е6
	пе	ттайп3 ПРИШЕЛ НЕ "РУССКО-ЛАТИНСКИЙ"
	сч	зс1-1(М14)
	сда	64+24 C "ЛАТ" НА "РУС" МОЖНО НЕ ПЕРЕКЛЮЧАТЬ
	и	П377
	пб	ттайп5
ттайп3	сч	42(М7) СМЕНА РЕГИСТРА
	мод	ТСЛ(М2)
	зп	6
	сда	64+5
	уи	М17
	счи	М5 ПРИ ЗАПИСИ РЕГИСТРА ЧИСЛО СИМВОЛОВ
	зп	44(М7) В СТРОКЕ НЕ АНАЛИЗИРУЕСЯ
	уиа	-1(М5) ЧТОБЫ НЕ ПОПАСТ НА NEWLIN
	сч	кодрег(М17)
	пв	ттайп5(М17)
	мод	44(М7) ВОССТАНОВЛЕНИЕ М5
	уиа	(М5)
ттайп1	счи	М14 СИМВОЛ
	и	Е8П6
	нтж	Е8П6
	пе	ттайп2 СИМВОЛ ВЫДАЕТСЯ НЕ КОМБИНАЦИЕЙ
	пино	ттайп6(М5) СТРОКА НЕ ЗАПОЛНЕНА
	уиа	-1(М5) (ESC СИМВОЛ) - В ОДНОЙ СТРОКЕ!
ттайп6	сч	Е8П6 ЗАПИСЬ ПРИЗНАКА ESC
	пв	ттайп5(М17)
	слиа	1(М5)
	сч	АТ(М14)
	сда	64+32 СИМВОЛ НА СУММАТОР
	пб	ттайп4
vton1a	пе	СГ
	нтж	П377
	пб	СГ
ттайп2	уиа	ОЧСИМВ(М17) М17 := ОЧСИМВ
ттайп8	счи	М14 "1" - СТАРТ. 5 КОДОВЫХ "00" - СТОП.
	и	П37
	сда	64-2
	или	E8
ттайп5	зп	42(М7) КОД ГОТОВ
	пб	ЗС ДА, ТТ НЕ ЧЕРЕЗ АС
СЧ42 НОП
 СЧ 42(М7)
ПРНОЛЬ НОП
	пио	vton1a(М15)	ЧЕРЕЗ АС
*
        АПУ     (&К71).ДА
	уиа	-7(М16)	ПОДГОТОВКА КОДА
	АПБ	.НЕТ
.ДА АНОП
	пб	прнол7	!РАБОТА ДЛЯ К-71
.НЕТ АНОП
vton1b	сда	64-8
	зп	42(М7)
vton4	сда	64+15(М6) РАЗВОРОТ
	и	E1
	сда	64(М6)
	или	42(М7)
	зп	42(М7)
	цикл	vton4(М6)
	и	П377
	нтж	П377 ИНВЕРСИЯ
	или	E9
	сда	64-3 "1" -СТАРТ. 8 КОДОВЫХ. 000 - СТОП
***************************
СГ ЗП 42(М7)        СИМВОЛ ГОТОВ
*
****** ЗАПИСЬ СИМВОЛА НА БУФЕР ******
*
ЗС НОП
 СЧ (М1)
	сда	64-8(М15) свс: без м15
 ИЛИ 42(М7)
 ЗП (М1)
	пино	зс1(М5) СТРОКА НЕ ЗАПОЛНЕНА
	уиа	КС(М17) М17 := NEWLIN
зс1	ноп
 МОДА (М17)
 ЦИКЛ (М12)         СЛОВО НЕ ЗАПОЛНЕНО
	счи	М17
	зп	42(М7)
	слиа	'70235'(М17) !ВЕРОЯТНО НЕ АДРЕС
	пио	км2б(М17)
	сч	42(М7)
	уи	М17
	слиа	1(М1) М1 := М1+1
	уиа	-5(М12) М12 := -5
	пио	зс2(М15) НЕ ВТ НАПРЯМУЮ
	уиа	-3(М12) М12 := -3
зс2	ноп
 СЧИ М1
 И П37
 ПЕ (М17)         РЕКОРД НЕ ЗАПОЛНЕН
	сч	ТСЛ(М2)
	и	Е36
	пе	зс2а
	мода	(М16)
	пино	(М13)
зс2а	слиа	-1(М1)
	пб	КМ
*
СТРЕЛА СЧ ГУС
       нтж      ТУС+18  свс: +38
 И Е48П42
	пе	УППКУ   свс: ПО УППКУ. ДЛЯ Э71 @ НЕ КОНЕЦ
*
*
С376 СЧ ШКОПТТ
 И ШКАС
 И Е48(М2)
 ПО КМ            НЕ ОПЕРАТОРСКИЙ АС-ТЕРМИНАЛ
 И ШЗНКТ
 ПЕ КМ
*
* ОПЕРАТОРСКИЕ ТЕРМИНАЛЫ, ПОДКЛЮЧЕННЫЕ ЧЕРЕЗ АС
*
 МОД 42(М7)
 УИА -’376’(М14)
 ПИНО ОТ76(М14)     НЕ ОСВОБОЖДАТЬ ЛИНИЮ ПОСЛЕ ВЫДАЧИ
 СЧ ТСЛ(М2)
 ИЛИ ЕОСВ          ЕОСВ -> ТСЛ
 ЗП ТСЛ(М2)
ОТ76 НОП
	пино	от76в(М6)
	мод	ГОД 	ВТ-340
	сч	ТАБКОД
	и	Е40П33
	или	СNБЭСМ
	пб	от76с
ТЕСТР	сч	42(М7)
	по	КМ
	пино	ттайп5(М6)
	пино	ПРНОЛЬ(М15)
	пб	СГ
от76в	мод	ГОД ТЕЛЕТАЙП
	сч	УЧКОН+10
от76с	уиа	-3(М14) опечатка !ТЕРМ-100 - "УИА ОТ76А(М17)"
* ПРИФОРМИРОВАНИЕ N БЭСМ
 УИА -3(М14)
 ЗП 44(М7)
ОТ76А	уиа	ОТ76А(М17)
 СЧ 44(М7)        ТРИ СИМВОЛА
 СДА 64-8
 ЗП 44(М7)
 СЧМР
 ЦИКЛ СГ(М14)
КМ	уиа	E35(М5)
	пб	кмас7 !В ВЗУ
км1a  ноп
 СЧ ТСЛ(М2)
 И ЕСЛВ
 ПЕ КМ2
 УИА (М10)
 СЧ ТСЛ(М2)
 И Е37
 ПЕ КМ2
	сч	штерм7 = Е48(М2) !К-71
	и	E48(М2)
	пе	КМ2
 МОД 46(М7)
 СЧ NLС
 И Е48П25
 ПВ NL3А(М17)     ПОСЛЕДНИЕ СИМВОЛЫ
КМ1 СЧ 44(М7)
 ПЕ NL3А          ЗАПИСЬ КОНЕЧНОЙ КОМБИНАЦИИ
КМ2 НОП
 СЧ ШVD130
 И Е48(М2)
 ПЕ КМ2А
	пб	слвнр3 в БОЭК1
КМ2А	сч	(М1)
	сда	64-8(М15) ЦИКЛ ДОДВИЖКИ ПОСЛЕДНЕГО СЛОВА
	зп	(М1)
	цикл	КМ2А(М12)
км2б	ноп
 УИИ М17(М2)
	уиа	'2003'
 СЧ ШЗПРИМ
 ИЛИ Е48(М17)
 НТЖ Е48(М17)
 ЗП ШЗПРИМ
	сч	штерм7 !ЗДЕСЬ ВМЕСТО ШЗПРИМ
	или	E48(М17)
	нтж	E48(М17)
	зп	штерм7
 СЧ ШКОПТТ
 И ШКАС
 И Е48(М17)
 ИЛИ ШКОЛА
 ЗП ШКОЛА
 СЧ ТСЛ(М17)
 ЗП ТБЛ(М17)
	и	E17
*
        АПУ     (&К71).ДА1
	по	км2в !ШТАТНАЯ РАБОТА НЕ КОНСУЛ
	АПБ	.НЕТ1
.ДА1 АНОП
*! РАБОТА ДЛЯ К-71
	по	км2бк7 !ВЫДАЧА В ТЕРМ. ЧЕРЕЗ ДКС
.НЕТ1 АНОП
	пв	vidiли(М15)
	сч	E2
	зп	ОЧКУСД+1(М2)
	по	даvidi
	уиа	E45(М10)
км2в	ноп	= км4 !ПРИШЛИ ИЗ СВЯЗЬ7.ас7об2
 СЧ ШСТRLО	ВКЛ./ВЫКЛ. БУДИЛЬНИКА
 И Е48(М17)
 УИА 0(М13)        М13 := 0 - ЗАКОНЧИЛИ ВЫДАЧУ
 ПЕ УСТВД2
 СЧ (М10) ВКЛ./ВЫКЛ. БУДИЛЬНИКА
 ЗП ВППС(М17)
 ПБ УСТВД2
ТАБКОД	конд	в'4003016200100017'
	конд	в'0033054200300025'
	конд	в'0053114600412017'
	конд	в'4063155700702474'
	конд	в'0113216501100022'
	конд	в'4123257601262015'
	конд	в'4143315201500000'
	конд	в'0173354301660014'
	конд	в'0213416302101016'
	конд	в'4223457402300004'
	конд	в'4242555602506037'
	конд	в'0262654702702023'
	конд	в'4312755003100000'
	конд	в'6032617140076000'
	конд	в'6042717040104012'
	конд	в'4572003340103433'
	конд	в'2066014540300005'
	конд	в'6174034640100011'
	конд	в'2122414140100000'
	конд	в'2152456640106470'
	конд	в'6174035240107010'
	конд	в'6273656040100071'
	конд	в'6213574040015003'
	конд	в'2235574103700031'
	конд	в'2015674423300006'
	конд	в'0632534506302013'
	конд	в'7611334340102002'
	конд	в'3622355340100007'
	конд	в'3552175140102075'
	конд	в'3523634740102001'
	конд	в'2313734240102000'
	конд	в'7123516140103000'
	конд	в'1004064710007442'
	конд	в'5036105410255512'
	конд	в'5044124610456017'
	конд	в'1076346410616100'
	конд	в'5116205511053452'
	конд	в'1134265711253105'
	конд	в'1157306011450400'
	конд	в'5177505611615465'
	конд	в'5206446312011054'
	конд	в'1226504512211507'
	конд	в'1244564112414461'
	конд	в'5266606612605104'
	конд	в'1304667013006400'
	конд	в'5324427113205400'
	конд	в'5346767413407114'
	конд	в'1377006213606110'
	конд	в'5405026514000062'
	конд	в'1434165314200456'
	конд	в'1455227614401060'
	конд	в'5477264314601501'
	конд	в'1506305115002102'
	конд	в'5535427215202455'
	конд	в'5546146115403045'
	конд	в'1567716515603477'
	конд	в'1607556416004063'
	конд	в'5627657216204440'
	конд	в'5657445216417513'
	конд	в'1667405016613111'
	конд	в'5717615117016503'
	конд	в'1726014517212506'
	конд	в'1747044217417000'
	конд	в'3104211540057000'
	конд	в'7514311106010441'
	конд	в'7064352403220046'
	конд	в'3214452303421017'
	конд	в'7234510504030464'
	конд	в'3274612604237452'
	конд	в'3324713104422455'
	конд	в'7755050204640000'
	конд	в'3415112505040473'
	конд	в'7425151305426454'
	конд	в'3465250305641060'
	конд	в'7145312003641466'
	конд	в'3055350605225053'
	конд	в'3165511607442000'
	конд	в'4615735440026000'
	конд	в'7243635340042447'
	конд	в'3713735540027061'
	конд	в'7443775640230062'
	конд	в'7672335040043056'
	конд	в'7363755440043457'
	конд	в'3343776240044043'
	конд	в'7562676340031050'
	конд	в'7313656040044465'
	конд	в'3032277040045045'
	конд	в'7722236003645444'
	конд	в'6623752326432472'
	конд	в'7002654726031440'
	конд	в'2605776140046042'
	конд	в'3642055440013463'
	конд	в'3642115440076451'
	конд	в'3622355340014076'
	конд	в'3643755440046400'
	конд	в'3642355340055000'
	конд	в'0000340026236431'
	конд	в'0400502740620031'
	конд	в'0760003522620517'
	конд	в'0007440020233125'
	конд	в'0006060417622027'
	конд	в'0005200007622426'
	конд	в'0006565022432034'
	конд	в'0007300023021526'
	конд	в'0007000020432570'
	конд	в'0007226020624123'
	конд	в'0005323423424574'
	конд	в'0003140021025030'
	конд	в'0005440003625435'
	конд	в'0002140021226116'
	конд	в'0003330424626515'
	конд	в'0006700003627032'
	конд	в'0002600021627527'
	конд	в'0002240022037145'
	конд	в'0011767424030216'
	конд	в'0004540022230421'
	конд	в'0006340020031036'
	конд	в'0002400007231471'
	конд	в'0004640007023121'
	конд	в'0000600025021144'
	конд	в'0010431006435524'
	конд	в'0001400006635132'
	конд	в'0017740040423572'
	конд	в'0006434024234130'
	конд	в'0010675023636020'
	конд	в'0000024025634424'
	конд	в'0011440021433520'
	конд	в'0011536040103067'
	пам	1
	конд	в'0000037000000000'
	пам	2
КОМВРЕ	пам	1
ТКОМУЗ	пам	1
	АПУ   (∧К71).ДА1А
rt	пам	1
.ДА1А АНОП
 эквив (КОНМАС,КМ)
* разные внешние
КАЧКА ВНЕШ ШКРЗ
КИТ ВНЕШ ЕС5017,ТБЛ,ВППС,Е48П42,Е40П33
ДИСКИ ВНЕШ РАБМД,СЧЗАКД
МОТТ ВНЕШ ШКАС,ШVD130,ДШКОПТ,ШЗНКТ,ШЗПРИМ,Е8П6,НЕДОПС
МОТТ ВНЕШ (ПОСЛС,П143),УСТВД2,СNБЭСМ,NLС,е8е6
МОТТ ВНЕШ АТС,ШКОЛА,ШКОПТТ,ЕОСВ,ШСТRLО,ЕСЛВ,тт0,кодрег
МОТТ ВНЕШ тт4
ДИСП70 ВНЕШ ОАС,ВРЕЗП,ТВ206А,КЛЮЧ,ЗАПР1,ВРЗАПР,ВРЕМЯ
ДИСП70 ВНЕШ БМВ,ЭКВЫХ,ШАРКЗМ,Ш1М,ТВ40,э1а,СОБА40
ДИСП70 ВНЕШ ряо2,ССЫЛКА,П7,РЯО1,РЕЖРАЗ,РАЗМГ,ТУС
ДИСП70 ВНЕШ ГАШРП1,ШКМДП,ЯЧКЧ,ту10,ИВ25,СТ175
ДИСП70 ВНЕШ АСБОЙБ,Е37Е36,блобмб,БЯК,Е42П1,ТЗНМД,РСЧРАЗ,П13
ДИСП70 ВНЕШ П27,ипзмл3,тв210,НМБТР,ипзмл9,МИН17
ДИСП70 ВНЕШ ШЗРАЗМ,Е17Е13,БПУ,ЗАПВЕТ,шк14,МИН15
ДИСП70 ВНЕШ П12,АВ,ЗАНПР,КРОМЕ,РТЛ,ГРАНЬБ,П14
ДИСП70 ВНЕШ ВЫМГ,УПОК,шзраз1,ШЗЗ,НЛОГ,НФИЗ
ДИСП70 ВНЕШ НЕТНАП,Е47П1,ЗАПРК,П32,НОМАРС,ЭКВВ,КИК1
ДИСП70 ВНЕШ ТСЛ,Е6П4,ЭК38,ЭК30,УЧКОН,ШКЗЗ,Е48П25
ДИСП70 ВНЕШ СМ,РК,ГУС,Е48П43,СЧЗКМБ,НЗАД
ДИСП70 ВНЕШ П17,И16,ШЗЗПСЧ,ШЗПОМБ,ТМБ,ШГ
ДИСП70 ВНЕШ ГОД
ДИСП70 ВНЕШ Е24П16,ИНФМБ,П377,ИНФСЛЭ
ДИСП70 ВНЕШ УСМ,УСММБ,П777,П3777,П1777,РЯО,Е33П25,ОЧКУС
ДИСП70 ВНЕШ ЗОНАТР,ЗОНАМЛ,Е21Е18,МПРЛ,Е15П2,Е21Е1
ДИСП70 ВНЕШ КУС2,ТРАЗМ,МГНЕИС,ФКУСАД,П3,П30,П140,П37
ДИСП70 ВНЕШ ОЧКУСД,ШКМД
ВЗУ ВНЕШ ВХЛ
ХЛАМ ВНЕШ ПОДВ80,несчет,зпмг,подвес
БОЭК1 ВНЕШ vidiли,слвнр3,даvidi,vton1
*
 ВХОД км1a,ТАБКОД,vton4,СЧ42,ОЧСИМВ,ПРНОЛЬ,ДЛЯЭ71
 ВХОД КМ2А,км2в,КС,ККОДПЛ,ТКОМУЗ,КОМВРЕ
*
        АПУ     (&К71).ДА2
*********** ВХОД И ВНЕШ ДЛЯ ШТАТ. РАБОТЫ ***********
 ВХОД rt
****************************************************
	АПБ	.НЕТ2
.ДА2 АНОП
*********** ВХОДН И ВНЕШ ДЛЯ РАБОТЫ К-71 ***********
ВЗУ ВНЕШ выдас7,кмас7
МОТТ ВНЕШ прнол7,км2бк7,штерм7
***************************************************
.НЕТ2 АНОП
	ФИНИШ
