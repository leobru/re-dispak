* ЛШ - ХЛАМ, БОЭК1, НОМБОБ - ДЛЯ 64 К
* МАКРОПЕРЕМЕННЫЕ BS, МЫ НИП, G, GL, C, H ДЛЯ СВС МЕНЯЮТ ЗНАЧ.
* ЛГП УСТВ 0 ВМЕСТО G, GL - ТЕПЕРЬ НАДО "1"
*
*BS, G, GL, МЫ, УЧЕТ, ЭФ = 0
*ГП = Х
ВЗУ	СТАРТ	'5176'
	М
        E
*
	ГБЛВ ∧К71,∧БЭСМ
*∧БЭСМ УСТВ 0
∧К71 УСТВ 1
*
ФИЗОБМ	уиа	'2003'
	зп	И20
ФИЗИЧ	зп	СМ
	мод	НЗАД
	сч	E48-1
	нтж	ВСЕЕД
	и	шфзобм
	зп	шфзобм
	пб	ФИЗО
ФИЗУР	зп	И20
	зп	СМ
	мод	НЗАД
	сч	E48-1
	или	шфзобм
	зп	шфзобм
ФИЗО	счрж	'37'
	зп	РК
	уии	М33(М16)
	сч	ИВ25
	уи	М27
	уиа	(М16)
	сч	ГУС
	и	Е48П42
	сда	64-1
	или	СМ
	зп	СМ
	и	E39
	пе	ФИЗОБД  ДИСКИ
	сч	СМ
	слц	E40
	и	E42
	по	физмб
	сч	НЗАД
	нтж	П27
	по	ВХМЛЕ
	сч	СМ
	и	E38
	по	физмб
	пб	ВХМЛЕ
анво9а	сч	ШЗЗПСЧ
	или	E48-1(М16)
	зп	ШЗЗПСЧ
	пб	АНВО9Б
ФИЗЗП	нтж	E18
	пб	ФИЗОБМ
физмб	сч	НЗАД
	нтж	П13
	пе	ФМБ
	сч	ТМБ
	сда	64+3
	пе	ФМБ
	уиа	48(М16)
	пб	ЗПУК
ВХМЛЕ	сч	СМ
	и	E24
	пе	ДЕ
ВХМЛ	сч	ШКМЛ(М16)
	мод	НЗАД
	или	E48-1
	зп	ШКМЛ(М16)
	сч	ШЗЗОБМ
	пе	НЕЛЬ
	сч	E40
	зп	ШЗЗОБМ
	уиа	ВХОДМЛ(М16)
	счи	М16
	зп	ипзмл3
	сч	E39
	пб	ПРОГР
ЭКП	счи	М16
	зп	И16
	счрж	'37'
	или	П30
	или	E3
	зп	РК
	сч	E15
	пв	ПЕЭКС(М16)
	мод	ГУС
	сч	33
	и	E15
	по	тв210
	пб	надо
ДЛЯМБ	сч	ФКУСМБ
	сбр	НМБТР
	сда	64+37
	вч	E9
	слц	E1
	уи	М6
	сч	ФКУСМБ
	уиа	'3'
	и	E18
	пе	фи56
	сч	ФКУСМБ
	и	E19
	по	фи56
	пб	фи5
СИЗ	сч	ТУС-1(М17)
	уи	М15
	зп	ипзмл9
	сч	(М15)
	зп	ФКУС
	и	E5
	пе	нумб
	сч	СЧЗАК
	слц	МИН17
	по	НИС
нумб	сч	шфзобм
	и	E48-1(М17)
	по	нук
	сч	2(М15)
нук	зп	РМР
	сч	ФКУС
	уиа	(М10)
	пб	длядс
физо5	зп	ФКУСМБ
	сда	64+2
	и	E1
	уи	М5
	сч	ФКУСМБ
	уиа	1(М10)
длядс	уиа	'2003'
	сбр	ЛИСТА
	сда	64+7
	зп	ФКУСА(М10)
	сч	ФКУС(М10)
	или	ЛИСТА
	нтж	ЛИСТА
	или	E17
	зп	ФКУС(М10) ФИЗОБМ
	сч	РМР
	или	ФКУСА(М10)
	зп	ФКУСА(М10)
	пио	длямл(М10)
	слиа	-1(М10)
	пио	ДЛЯМБ(М10)
	сч	ряв
	по	дб
	сч	ФКУСД
	нтж	E17
	зп	ФКУСД
дб	сч	ФКУСД
	сбр	мстр
	сда	64+43
	или	ФКУСАД
	зп	ФКУСАД
	пб	ФЗ9А
длямл	сч	ФКУС
	уиа	(М2) НЕ ОБЩ МЛ
	уиа	(М17)
	и	E2
	по	НЕБЕЗ * С НЕ ПОДВОД МЛ БЕЗ ОТВЕТА
	сч	ФКУС ПОДВОД МЛ БЕЗ ОТВЕТА
	сда	64+42
	уи	М13
	сч	ФКУС
	и	E17
	по	МЛФ
	сч	E48-1(М13)
	уиа	НЕБЕЗ(М15)
	пб	ВШГ
МЛФ	сч	E48-1(М13)
	пв	ВШГП(М15)
НЕБЕЗ	уиа	'3'
	сч	П30
	или	П3
	и	ФКУС
	пе	МВ  ПОВОД МЛ, ЗАКАЗ ОТ НОМБОБА ОТ РАЗ
	сч	ФКУС
	и	E18
	пб	ФЗО3А
блразм	пино	вхэ70а(М16) *С М16 <> 0
	слиа	УЗЩ8В+1(М12)
	пио	рзмд(М12)
	слиа	'71775'(М12) !ШТАТНО
рзм	сч	РАЗМГ(М16)
	или	ШЗРАЗМ(М16)
	зп	СМ
	пе	ЭКВЫХ *С РАЗМГ <> 0; ШРАЗМ <> 0
	сч	E1
	зп	ШЗРАЗМ(М16)
	уиа	(М16)
	пб	ЭКВЫХ
рзмд	уиа	1(М16)
	пб	рзм
АЦПУ	зп	И16
	счрж	'37'
	или	E5
	или	E3
	зп	РК
	сч	НЗАД
	и	E48
	по	неон
	мод	ГУС
	сч	62
	мод	ГУС
	или	E46
	и	E43
	пе	мими
	мод	ГУС
	сч	33
	и	E12
	пб	неон
	пб	неон
мими	сч	E12
	пв	ПЕЭКС(М16)
неон	сч	E41
	пб	ТВ40
вхэ70в	сч	СМ
	нтж	КЛЮЧРЗ
	пе	нетест
	уиа	'2000'
	сч	32
	уиа	'2003'
	сч	
	пб	блразм
нетест	счи	М16
	зп	И16
	мод	ГУС
	сч	E43
	сда	64+5
	мод	ГУС
	или	33
	и	Е17Е13
	по	продли
	сч	СМ
нетес1	уиа	'2000'
	сч	(М16)
	уиа	'2003'
	слц	E16
	и	E18
	пе	млсоб
	сч	E22
млсоб	сда	64+5
	зп	РЭ1
	счрж	'77'
	или	П30
	зп	РК
	мод	ГУС
	уиа	(М16)
	сч	62(М16)
	и	E43
	пе	ессобэ
	сч	33(М16)
	и	Е17Е13
	по	ессобэ
	сч	E13
надо	мод	ГУС
	уиа	(М16)
	зп	РЭ1
	нтж	33(М16)
	зп	33(М16)
	сч	РЭ1
	сда	64-5
	или	И16
	мод	E47(М16)
	уиа	(М16)
	уиа	'2000'
	зп	-3(М16)
	уиа	'2003'
	сч	СМ
	уиа	'2000'
	зп	-1(М16)
	счи	М32
	зп	-2(М16) АДРЕС ВОЗВР.
	сч	-3(М16)
	уиа	'2003'
	уии	М32(М16)
	уи	М16
	пб	ЭКВЫХ
ессобэ	сч	РЭ1
	пв	ПЕЭКС(М16)
продли	уиа	'2000'
	сч	(М16)
	уиа	'2003'
	слц	E16
	и	E18
	по	вхэ70а
	сч	Е37Е36
вхэ70а	нтж	ВСЕЕД
	нтж	Е47П43
	уиа	
	уи	
	уиа	'2000'
	и	(М16) ПРОВЕРКА ЗАЩИТЫ СТРАНИЦЫ ИНФ. СЛОВ
АНВО1Е	уиа	'2003'
	мод	ГУС
	зп	E48
	сда	64+20
	и	Е15П11
	уи	М16
	сч	ШОПТИМ
	мод	НЗАД
	или	E48-1
	зп	ШОПТИМ
	уиа	'2000'
	сч	20(М16)
	уиа	'2003'
	счи	М16
	сда	64+10
	нтж	П37
	зп	СМ
	мод	ГУС
	уиа	(М16)
	сч	ШОПТИМ
	мод	НЗАД
	или	E48-1
	мод	НЗАД
	нтж	E48-1
	зп	ШОПТИМ
	сч	E48(М16)
	сда	64+12
	и	П77
	зп	И16
	слц	E4
	и	E6
	по	Э70МБ
	сч	53(М16)
	мод	И16
	и	43
	по	АНВО1
	пб	Э70АРХ
cим	счи	М15
	зп	И15
	мод	НЗАД
	уиа	(М15)
	сч	E48(М16)
	зп	E38(М16)
	сч	Ш1
	или	E48-1(М15)
	зп	Ш1
	счрж	'77'
	или	П23
	зп	РК       МИД
	уии	М27
	счи	М32
	уи	М33
	счи	М17
	зп	И17
	сч	E48-1(М15)
	уиа	БПУ(М16)
	пв	ИЗШГП(М15)
	сч	СОБА40
	пб	ЗАПВЕТ
Э70МБ	сч	E48(М16)
	и	E39
	и	40(М16)
	пе	Э70АРХ
	сч	32(М16)
	мод	СМ
	или	E48
	зп	32(М16)
АНВО1	уиа	'2003'
	мод	ГУС
	уиа	(М16)
	сч	E48(М16)
	слц	E16
	и	E18
	по	анво2  МБ
	сч	E48(М16)
	и	Е37Е36
	нтж	Е37Е36
	пе	анво2  НЕ РАЗМЕТКА МД
	сч	E32
	или	40(М16)
	зп	40(М16) УСТ. ПРИЗНАК: МД 3.0
анво2	сч	40(М16)
	зп	СМ
	сч	E48(М16)
	и	E39
	по	ддуб
	сч	E48(М16)
	и	E40
	пе	гаш36
	сч	27(М16)
	и	E28
	по	заппар
гаш36	сч	E48(М16)
	или	Е37Е36
	нтж	Е37Е36
	зп	E48(М16)
ддуб	сч	E48(М16)
	сда	64+12
	и	П77
	зп	РМР
	слц	E4
	и	E6
	по	дд
	сч	СМ
	мод	РМР
	и	59
	по	дд
АНДИ1	мод	ГУС
	сч	E48
	или	E47
	мод	ГУС
	зп	E48
	пб	анди2
пзз	сч	АСБОЙБ
	уи	М33
	сч	ИВ25
	пб	пз1
дд	сч	41(М16)
	и	E2
	пе	пзз
	счи	М32
	уи	М33
	сч	
пз1	уи	М27
	сч	E48(М16)
	зп	СМ
	слц	E16
	и	E18
	по	АНВО5
	сч	СМ
	и	Е36
	по	анвоб
	сч	63(М16)
	пб	г6
анвоб	сч	Е42П1
	или	E48
	и	E48(М16)
	зп	СМ
	сч	ячобмл(М16)
	слц	E37
	по	вхмлп
	зп	ячобмл(М16)
вхмлп	уиа	1(М16)
	пб	ВХМЛ
заппар	сч	E48(М16)
	зп	СМ
	по	вхмлп
	сда	64+30
	и	П37
	нтж	П37
	зп	РМР
	сч	32(М16)
	мод	РМР
	и	E48
	по	нев
	нтж	32(М16)
	зп	32(М16)
нев	уиа	50(М16)
	пб	ЗАПЭКС
им	уиа	'2003'
	зп	РЕЖРАЗ
	уии	М27
	счи	М32
	уи	М33
	сч	РЕЖРАЗ
	и	E39
	по	анвоб   ОСВ. НАПРАВЛ. РАЗМЕТКИ НЕ ТРЕБУЕТСЯ
	мод	РЕЖРАЗ
	сч	КУС2-1
	и	E4
	по	анвов
	сч	
	увв	'141' ГАШ. РЕЖ. СТИРАНИЯ В КВУ
	мод	РЕЖРАЗ
	зп	КУС2-1 ОСВОБОЖДЕНИЕ НАПРАВЛЕНИЯ РАЗМЕТКИ
анвов	зп	РАЗМГ
	зп	РСЧРАЗ
	зп	РЕЖРАЗ
	пб	ЭКВЫХ
АНВО5	сч	СМ
	и	E39
	по	ДЕП
	сч	E47(М16)
	и	Е24П16
	пе	АНДИ1   ФИЗОБМ С ДИСКОМ
ДЕП	уиа	1(М16)
ДЕ	сч	ШКМБ(М16)
	мод	НЗАД
	или	E48-1
	зп	ШКМБ(М16)
	сч	ШЗПОМБ
	пе	НЕЛЬ
	сч	E40
	зп	ШЗПОМБ
	уиа	ВХЗОБ(М16)
	счи	М16
	зп	ИПОБМ+3
	сч	E42
ПРОГР	уии	М16(М15)
	пв	ВШГ(М15)
	уии	М15(М16)
	пб	НЕЛЬ
АНВО6А	счи	М15
	зп	И15
НАБПУ	счи	М17
	зп	И17
	пб	БПУ
АНВО8	уиа	58(М16) ЛИСТ В ЭКСТРАКОДЕ ЧУЖОЙ
	пб	ЗАПЭК1
АНВО9	уиа	АНВО1(М16)
	уии	М33(М16)
	сч	НЗАД
	уи	М16
	сч	ИВ25
	уи	М27
	мод	ГУС
	сч	E48
	и	Е36
	по	анво9а
	мод	ГУС
	сч	E48
	слц	E16
	и	E18
	по	анво9а ЗАКАЗ НА МБ
	сч	РАЗМГ
	пе	анво9а ЗАДАНИЕ НА РАЗМЕТКУ ОПРЕДЕЛЕНО
	сч	E48-1(М16)
	зп	ШЗРАЗМ ЗАКР. З. РАЗМ. ДО ОПРЕД. ЗАДАНИЯ НА РАЗМ.
	пб	АНВО9Б
НИС	сч	ШКОМЛ(М16)
	или	E48-1(М17)
	зп	ШКОМЛ(М16)
ВХОДМЛ	уиа	'2003'
	сч	ШКМЛ
	уиа	(М16)
	по	ВХЛ
ВХЛ1	нед	
	уи	М17
	сч	E40
	или	ШЗЗОБМ
	зп	ШЗЗОБМ
	сч	ШКМЛ(М16)
	нтж	E48-1(М17)
	зп	ШКМЛ(М16)
	пио	СИЗ(М16)
	сч	НЗАД(М17)
	уи	М15
	зп	ипзмл9
	зп	УСМ
	сч	СЧЗАК
	слц	МИН17
	по	НИС
	сч	56(М15)
	и	E48
	пе	НИС
	сч	(М15)
	зп	ИНФСЛЭ
	и	E37
	пе	ПРШ
	сч	E48-1(М17)
	мода	
	пв	ВШГП(М15)
ПРШ	уиа	(М17)
	пб	УЗЩ
ВХЛ	уиа	1(М16)
	сч	ШКМЛ(М16)
	по	ДИСПО
	пб	ВХЛ1
ВХЗОБ	уиа	(М16)
	пв	УПРИ(М10)
ВХБА	сч	ШКМБ(М16)
	или	блобмб(М16)
	нтж	блобмб(М16)
	пе	ВХБ1
	пио	ВХБР(М16)
	сч	ВСЕЕД
	нтж	E40
	и	ШЗПОМБ
	зп	ШЗПОМБ
	по	ДИСО1А
	пб	ДИСМБ2
ВХБР	уиа	1(М16)
	пб	ВХБА
ВХБ1	нед	
	уи	М17
	сч	E40
	или	ШЗПОМБ
	зп	ШЗПОМБ
	сч	ШКМБ(М16)
	нтж	E48-1(М17)
	зп	ШКМБ(М16)
	уии	М5(М17)
	пино	ВХБП(М16)
ВХБ2	сч	ТУС-1(М5)
	уи	М15
	зп	шк14
	сч	СЧЗКМБ
	слц	МИН15
	пе	РАЗРЕ
	сч	ТУС-1(М5)
	сда	64+41
	нтж	П12
	по	СИСВХ
	нтж	E1
	по	СИСВХ
	нтж	П17
	нтж	E2
	по	СИСВХ
	сч	ШКОМБ(М16)
	или	E48-1(М17)
	зп	ШКОМБ(М16)
	пб	ДИСПМБ
ВХБП	слиа	64(М5)
	пб	ВХБ2
СИСВХ	сч	шфзобм
	и	E48-1(М17)
	по	сисфзо ВХОД ОТ ФИЗОБМ
	сч	2(М15)
сисфзо	зп	РМР
	сч	(М15)
	пб	физо5
РАЗРЕ	пио	СИСВХ(М16)
	уиа	1(М17)
	сч	(М15)
	зп	ИНФМБ
	и	Е36
	пе	НАЧАЧУ
	пб	НАМБ
ФТН	уиа	ДИСПМБ(М1)
	сч	УСММБ
	сда	64+41
	уи	М17
	сч	ИНФМБ
	уиа	32(М16)
ВЫ	сда	64+30
	и	П37
	нтж	П37
	уи	М5
	сч	(М15)
	по	ВЫХОТВ ЧТЕНИЕ ТРАКТА ПРЕЖДЕ ЗАПИСИ
	счи	М16
	зп	8(М15)
	уиа	ЗАПЭКС(М16)
	счи	М16
	уиа	'2003'
	пв	АВ(М16)
ВЫХОТВ	сч	32(М15)
	нтж	22(М15)
	и	E48(М5)
	по	обх
	нтж	32(М15) УБРАТЬ ЗАЩИТУ
	зп	32(М15)
обх	сч	2(М17)
	пв	ВШГП(М15)
	пб	(М1)
ЗПУК	уиа	'2003'
	сч	E48-1(М16)
ВУК	или	УКАЧАЙ
	зп	УКАЧАЙ
ВУК1	сч	ШКИВ
	или	E48
	зп	ШКИВ
	сч	МШГ
	или	Е36
	нтж	Е36
	зп	МШГ ЗАПРЕТ РАБОТЫ
	пио	ДИСПМБ(М16)
	счи	М16
	нтж	П60
	пе	ДИСПМБ
ФМБ	уиа	(М16)
	пб	ДЕ
УЗЩ	пино	УЗЩ8(М17)  МБ М17 = 1
	сч	УСМ
	уи	М6
	сда	64+41
	уи	М17
	уи	М13
	мода	
	пв	ЗАНПР(М15)
узщ1е	сч	ШГП
	и	2(М13)
	зп	ФКУС
	пв	ИЗШГП(М15)
	уиа	'3'
	сч	ИНФСЛЭ
	сда	64+20
	и	Е15П11
	уи	М5
	сда	64+10
	нтж	П37
	уи	М17
	уиа	'2000'
	сч	20(М5)
	уиа	'2003'
	сч	E48(М17)
	или	32(М6)
	зп	32(М6)
	сч	ФКУС
	пв	ВШГП(М15)
	уии	М15(М6)
        пам     0
	сч	ГУС
	и	КРОМЕ
	зп	ГУС
	уиа	'3'
	сч	ИНФСЛЭ
	сда	64+13
	и	П37
	уи	М5
	сч	ИНФСЛЭ
	и	E13
	сда	64+10
	уи	М17
	мода	(М15)
	сч	29(М5)
	сда	64+8(М17)
	и	П17
	зп	ФКУС
	уиа	49(М16) НЕВЕР. ПАРОЛЬ
	пе	узщ8а ЕСТЬ МГ
	уиа	33(М16) НЕТ МЛ
зщ	уиа	КРАХМЛ(М17)
	пб	ВОЗЬМИ
узщ8а	сда	64+2
	зп	РЯО  ДЕЛЬТА МГ
	сч	ЕС5017
	пе	ПОЕС
БИБ	уиа	1(М13)
	сч	ИНФСЛЭ
	и	E40
	пе	УЗЩ8В
би	мода	(М15)
	сч	29(М5)
	пио	УЗЩ8Б(М17)
	уиа	(М13)
УЗЩ8Б	и	E8(М13)
	уиа	(М13)
	пе	УЗЩ8В
	уиа	50(М16)
	уиа	КРАХМЛ(М17)
ВОЗЬМИ	сч	УСМ
	сда	64+41
	уи	М5
	уиа	'2003'
	сч	2(М5)
	или	ШГП
	зп	ШГП
	сч	ИНФСЛЭ
	сда	64+30
	и	П37
	нтж	П37
	уи	М5
	сч	E48(М5)
	нтж	32(М15)
	зп	32(М15)
	пб	(М17)
КРАХМЛ	уиа	ЗАПЭКС(М17)
	сч	ИНФСЛЭ
	зп	(М15)
	счи	М17
	зп	3(М15)
	сч	5(М15)
	и	Е16П32
	или	П2007
	зп	5(М15)
	счи	М16
	зп	8(М15)
	пб	ВХЛ
УЗЩ8В	сч	РЯО
	уи	М5
	сч	ФКУС
	и	П3
	уи	М2
	мода	-1(М2)
	сч	28(М15)
	мода	(М5)
	сда	64+20(М5)
	и	E2(М13)
	по	зщ
	мода	(М15)
	сч	57(М5)
	сд	КТОМ-1(М2)
	зп	РЯО
	и	П77
	уи	М14
	уиа	(М17)
	сч	ЕС5017
	пе	УЗ8Е
УЗЩ8	сч	ИНФСЛЭ(М17)
	сда	64+30
	и	П37
	уи	М13    М13: N СТР. ОБМ. (МАТ.)
	уиа	'2003'
	и	П3
	уи	М7     М7: N СТОЛБЦА КОПРП
	уии	М10(М7)
	счи	М13
	сда	64+2
	нтж	П7
	уи	М4   М4: N CТРОКИ КОПРП
	мода	(М15)
	сч	24(М4)
	сбр	ПРИП(М7)
	сда	64+38
	уи	М12    НОМЕР ФИЗ-ГО ЛИСТА 1-7 РАЗРЯДЫ
	пино	узщ8г(М17)
	сч	ТЗНМЛ-24(М14)
	и	E13
	пе	лес    ЛЕНТА ЕС
узщ8г	мода	(М15)
	сч	24(М4)
вхла2	или	ПРИП(М7)
	нтж	ПРИП(М7)
вхла2а	мода	(М15)  СНЯТИЕ ЛИСТА ИЗ КОП. РП.
	зп	24(М4)
	уиа	'3'
	счи	М12    НОМЕР ФИЗ. ЛИСТА
	и	П37
	сда	64-5
	зп	РЯО1(М17)
	счи	М12
	сда	64-38
	рзб	Е34Е30
	или	РЯО1(М17)    ФОРМИРОВАНИЕ ПРИП. 1-МУ МАТ. ЛИСТУ
	уии	М16(М6)
	мода	
	пв	прип1л(М10)
	уии	М6(М16)
лес	уиа	'3'
	пино	фзо2(М17)
	сч	УСМ
	сда	64+41
	уи	М16
	сч	ИНФСЛЭ
	и	П3777
	нтж	П3777
	по	прзон
	сч	ЕС5017
	пе	ЛЕСН ХЛАМ.ЛЕСН
ФЗОН	сч	ИНФСЛЭ
	и	П777
	сда	64-24
	зп	ФКУС  34-25РР.: N ЗОНЫ + ДЕЛЬТА + 4
	сч	ИНФСЛЭ
	и	Е36
	по	A06056
	сч	ИНФСЛЭ
	и	П1777
	сда	64-24
	или	E4
	пб	ФЗО1Б
прзон	сч	Е26Е25
	пб	ФЗО1Б
A06056	сч	РЯО
	сда	64-18
	и	Е33П25
	слц	ФКУС
	и	Е33П25
	слц	E27
ФЗО1Б	зп	ФКУС
	счи	М5
	сда	64-2
	уи	М10
	сч	ИНФСЛЭ
	и	E37
	по	A06070
	сч	ИНФСЛЭ
	сда	64-25
	рзб	РТЛ
	или	ФКУС
	или	E3
	зп	ФКУС
A06070	сли	М10(М2)
	счи	М10
	или	E48
	умн	П3
	счмр	64
	вчоб	
	уи	М10
	сч	E39(М15)
	сда	64(М10)
	и	Е46П48
	уиа	1(М2)
	пе	фзо1с
	уиа	(М2)
	сч	РЯО
	и	П77
	уи	М16
	сч	ТЗОНМЛ-24(М16)
	сда	64+12
	и	П3777
	зп	ЗОНАМЛ
	сч	ЕС5017
	пе	епек
коп	сч	ФКУС
	сда	64+23
	вчаб	ЗОНАМЛ
	вчаб	
	зп	ЗОНАМЛ
	сч	ИНФСЛЭ
	и	E40
	сда	64+38
	пе	ПР
	сч	П7
ПР	слц	ЗОНАМЛ
	зп	ЗОНАМЛ
	уиа	'2003'
	слц	E37(М15)
	зп	E37(М15)
	сч	ЗОНАМЛ
	сда	64-2
	слц	E44(М15)
	зп	E44(М15) ПРОСТОИ
	пб	ФЗО3
фзо1с	сда	64+41  N Б., ГДЕ МЛ.
	или	ФКУС
	зп	ФКУС
	сч	РЯО
	и	П77
	уи	М16
	пб	ФЗО3
зкмла4	сч	ТРАЗМ
	вч	E4
	пе	зкмла1  ПР. ФОРМ. БЛАНК
	сч	
	увв	'141'  ГАШ. СТИР.
	зп	РСЧРАЗ
	зп	ТРАЗМ
	сч	Е36
	или	РЕЖРАЗ  ПР. НЕ ВЫП. ЗК.
	зп	РЕЖРАЗ
обходр	сч	
	зп	РЯО5
	пб	обход4
фзо2	счи	М6
	вчоб	АКТБД
	пе	фза  ТР. В ОП.
	счи	М6
	вч	E1
	сда	64+5
	вч	ГРАНЬБ
	пе	фзо2а   МБ
	уиа	(М16)
	сда	64-5
	уи	М6
	сли	М6(М3)  АДРЕС ЗП. НА ДИСК
	счи	М6
	сда	64-24 НОМЕР НАПР. И УСТР.
	слц	РАБМД
	нтж	E39
	зп	ФКУСМБ
	сч	ИНФМБ
	и	E48
	сда	64+13
	по	ЛИОБ
	пб	фзо2б
трвоп	слиа	НМБТР+3(М6)
	сч	ФКУСА(М17)
	уиа	1(М2)
	пв	ПРУ12(М10)
	счи	М6
	сда	64-36
	уиа	(М2)       2Л - Т; 1Л - В
	пв	ПРУ12(М10)
	уиа	КСБФИЗ(М14)
	уиа	-1023(М2)
	сч	ФКУСМБ
	и	E19
	пе	лисо
	уиа	-255(М2)
лисо	уиа	10(М5)
	пв	ПЕРЕ(М10)
	счи	М12
	сда	64-38
	рзб	ПРИП(М7)
	уиа	'2003'
	мода	(М15)
	или	24(М4)
	мода	(М15)
	зп	24(М4)
	счи	М13
	нтж	П37
	уи	М5
	сч	32(М15)
	нтж	E48(М5)
	зп	32(М15)
	уиа	'3'
	сч	УСММБ
	сда	64+41
	и	П77
	уи	М12
	сч	E48-1(М12)
	мода	
	пв	ВШГП(М15)
	счи	М12
	или	E30
	уиа	ВХЗОБ(М16)
	пб	ЗАПВЕТ
мачтзп	сч	ИНФМБ
	и	E40
	по	длямд	ЗП
	сч	E18
длямд	или	ФКУСМБ
	зп	E48(М15)
	зп	(М15)
	сда	64+42
	уи	М12	НОМЕР ЗАДАЧИ
	сч	Е42П1
	и	E48(М15)
	зп	E48(М15)
	уиа	'2003'
	сч	ШКМДП
	или	E48-1(М12)
	зп	ШКМДП
	сч	ШЗПОМД
	пе	РДИСКИ
	сч	ШГ
	или	E44
	зп	ШГ
	уиа	ВХМД(М16)
	счи	М16
	зп	ИПЗМД+3
	сч	E40
	зп	ШЗПОМД
РДИСКИ	сч	ТМБ
	вч	П23
	пе	У
	сч	E48-1(М12)
	и	СМШГП
	нтж	СМШГП
	зп	СМШГП
	сч	E48-1(М12)
	или	УКАЧП
	зп	УКАЧП
	уиа	(М16)
	пб	ВУК1
У	сч	ТМБ
	вч	П11
	по	ДИСПМБ
	сч	БЯК
	по	ДИСПМБ
УКИ	уиа	(М16)
	пб	ВУК
фзо2а	уии	М16(М1) М16: 6-4РР. = N НАПР(Ф); 3-1РР. = N МБ(Ф)
	счи	М3
	сда	64-2
	или	ФКУСМБ
	зп	ФКУСМБ  7-3РР. - N ТРАКТА(Ф)
фза	сч	ИНФМБ
	и	E48
	нтж	E48
фзо2б	сда	64+29   19Р. - ПРИЗНАК ПОЛИСТОВОГО ОБМЕНА
	или	ФКУСМБ
	зп	ФКУСМБ
	сч	ИНФМБ
	и	E48
	по	ЛИОБ
	сч	ИНФМБ
	и	Е26Е25
	сда	64+14
	пино	ФУЗ(М16)
	сда	64+8
ФУЗ	или	ФКУСМБ
	зп	ФКУСМБ   12-11РР. - N АБЗАЦА
ЛИОБ	сч	ИНФМБ
	и	E48
	по	ФЗО3   ЛИСТОВОЙ ОБМЕН
	сч	ИНФМБ
	сда	64+6
	и	П3
	или	ФКУСМБ
	зп	ФКУСМБ    2-1Р - N СЕКТОРА
ФЗО3	сч	УСМ(М17)
	сда	64-1
	и	Е48П43
	или	ФКУС(М17)
	зп	ФКУС(М17) 48-43 = ДИСП. N ЗАДАЧИ
	счи	М12       ФИЗ. ЛИСТ
	сда	64-36
	зп	ФКУСА(М17) 48-37РР. - N СТРАНИЦЫ(Ф)
	счи	М13
	пио	МДЧ(М16)
	или	ФКУСА(М17)
	зп	ФКУСА(М17) 12-1РР. - N СТРАНИЦЫ(М)
	счи	М16
	сда	64-42
	рзб	НАПРМГ
	или	ФКУС(М17)
	зп	ФКУС(М17) 40-42РР. - N НАПР.(Ф)
	пино	ФЗО3В(М17)
	сда	64+42
	уи	М12
	мод	НЗАД(М12)
	уиа	(М12)
	уиа	'2003'
	сч	56(М12)
	или	E48
	зп	56(М12)
	сч	ЕС5017
	пе	ФЗО3Е
ФЗО3В	сч	ИНФСЛЭ(М17)
	и	E40
ФЗО3А	пино	ФЗОКМБ(М17)
	по	ФЗО4
	сч	П14
	и	ФКУС
	пе	ФЗО3Б
	сч	E22
ФЗО3Б	или	E18
	или	ФКУС
	зп	ФКУС
	пб	ФЗО5
ФЗО4	сч	ФКУСА
	пв	КСМ(М12)
ФЗО5	зп	РЯО
	сч	СЧЗАК
	слц	E1
	зп	СЧЗАК
	уи	М14
	сч	ФКУСА
	зп	ФКУСАД(М14)
	сч	ФКУС
	зп	ОЧКУС-1(М14)
	сч	РЯО
	зп	ОЧКСУМ-1(М14)
	пино	A06275(М2)
	сч	ОЧКУС-1(М14)
	сда	64+39
	и	П7
	уи	М16
	пб	зкоч1
A06275	уиа	'2003'
	сч	ВЫМГ
	или	E48-1(М14)
	зп	ВЫМГ
	сч	РМЛ
	или	Е47П43
	зп	РМЛ
	пб	ДИСМ
ФЗОКМБ	сда	64+22
фзокм1	или	ФКУСМБ
	зп	ФКУСМБ
	счи	М6
	вчоб	АКТБД
	пе	трвоп
	сч	ФКУСМБ
	слц	E40
	и	E42
	по	пер16
	сч	E20
пер16	или	ФКУСМБ
	зп	ФКУСМБ
	уиа	1(М16)
	и	E40
	пе	н12
	уиа	2(М16)
н12	сч	ОЧМБ
	нед	
	уи	М13   МЕСТО ЗАКАЗА В МБКУС
	сч	СЧЗКМБ
	слц	E1
	зп	СЧЗКМБ
	сч	ОЧМБ
	нтж	E48-1(М13)
	зп	ОЧМБ
	сч	ЗОЧ1Б-1(М16)
	уи	М17
        пам     0
	по	закед   ЗАКАЗ ПЕРВЫЙ К НАПРАВЛЕНИЮ
	сч	ТБЛ+47(М16)
	по	СТ175   ОШИБ.
	уи	М15     ПОСЛ. ЗАКАЗ
	счи	М13
	сда	64-29
	зп	ряо2    ССЫЛКА НА НОВЫЙ ЗАКАЗ
	сч	МБКУС-1(М15)
	и	ССЫЛКА
	или	ФКУСМБ
	зп	МБКУС-1(М13)  ССЫЛКА ИЗ СТ. ЗАКАЗ. - В НОВ. ЗАКАЗ
	и	ССЫЛКА
	нтж	МБКУС-1(М15)
	или	ряо2
	зп	МБКУС-1(М15)
	пб	новзк1
закед	счи	М13
	зп	ЗОЧ1Б-1(М16)
	сч	ФКУСМБ
	зп	МБКУС-1(М13)
новзк1	сч	ФКУСАБ
	зп	ЯЛИСМБ(М13)
	счи	М13
	зп	ТБЛ+47(М16)
	сч	ФКУСМБ
	сда	64+42
	уи	М12
	сч	ФКУСМБ
	и	E17
	пе	ф305а
	сч	E48-1(М12)
	пв	ВШГП(М15)
ф305а	счи	М16
	и	E2
	уиа	'3'
	уи	М12
	сч	ФКУСМБ
	сда	64+7
	и	П7
	уи	М15       N МБ
	сч	ОБРМБ(М15)
	слц	ЕСЧ+1(М12)
	зп	ОБРМБ(М15)
	пино	ДИСПМБ(М17)
	уиа	ДИСПМБ(М11)
	пб	ТВМБ1
ПРИП1С	сда	64-2
	рзб	ПРИП+1
прип1л	уиа	'2003'
	зп	РЯО1(М17)
	счи	М6
	зп	РМР
	сч	ВСЕЕД
	нтж	ПРИП+1
	мод	ГУС
	и	31
	или	РЯО1(М17)
	мод	ГУС
	зп	31
	рег	'30'
	уиа	-6(М6)
очбрз	зп	1
	цикл	очбрз(М6)
	уи	
	мод	РМР
	уиа	(М6)
	рег	'20'
	уиа	'3'
	пб	(М10)
зкоч1	сч	ОЧКУС-1(М14)
	пв	ПРЛ17А(М2)	УСТАНОВКА НА М1 НМГ
	уиа	Д76(М2)
        пам     0
внбо2	сч	ГАШРП1+17(М1)
	по	нсти
	слц	E37
	зп	ГАШРП1+17(М1)
	и	E45
	по	нсти
	сч	ГАШРП1+17(М1)
	пв	ДСЛ(М3)
зквоч	по	нсти
	сч	ГАШРП1+17(М1)
	и	Е18П1
	зп	ГАШРП1+17(М1)
нсти	сч	ОЧКУС-1(М14)
	и	E4
	по	зкоч1а	КУС НЕ ЗАДАЧИ РАЗМЕТКИ
	счи	М1
	или	РЕЖРАЗ
	зп	РЕЖРАЗ	N НАПР, N МГ ДЛЯ ОТВЕТА ЗАДАЧЕ РАЗМ.
	сч	ОЧКУС-1(М14)
	сда	64+42
	уи	М3
	сч	ТЗНМЛ-24(М1)
	и	П7777
	мод	НЗАД(М3)
	зп	2
зкоч1а НОП ,
 СЧ МГНЕИС
 ИЛИ Е32-24(М1)
 НТЖ Е32-24(М1)    МГ ИСПРАВЕН
 ЗП МГНЕИС
 СЧ ШОЧМГ-24(М1)
 ИЛИ Е48-1(М14)    ПОСТАНОВКА ЗАКАЗА В ОЧЕРЕДЬ К МГ
 ЗП ШОЧМГ-24(М1)
 ПБ (М2)
ПОК	уиа	'2003'
	зп	РМР
	и	E4
	сда	64-15
	нтж	УПОК
	мод	ГУС
	зп	5
	сч	РМР
	уи	М21
	пб	(М13)
анди2	уии	М27
	счи	М32
	уи	М33
	мод	ГУС
	сч	E48
	и	E47
	по	АНДИ   В ИНФСЛП. ФИЗ. КУС.
	мод	ГУС
	сч	E48
	сда	64+35
	и	П7
	нтж	П3
	по	андив  ЗАКАЗ ОТ ЗАДАЧИ РАЗМЕТКИ
	нтж	E3
	пе	АНДИ
	зп	РАЗМГ+1
	зп	РЕЖРАЗ-1
	пб	ЭКВЫХ
андив	сч	РАЗМГ+1
	или	РЕЖРАЗ-1
	пе	АНДИ
	уиа	АНВО1(М16)
	уии	М33(М16)
	сч	ИВ25
	уи	М27
	мод	НЗАД
	уиа	(М16)
	сч	E48-1(М16)
	зп	шзраз1  ЗАКРЫТЬ ЗАДАЧУ РАЗМ. ДО ОПРЕД. ЗАДАНИЯ
	пб	АНВО9Б
НЕЛЬ	мод	НЗАД
	уиа	(М16)
АНВО9Б	счи	М15
	зп	И15
	уиа	НАБПУ(М15)
	сч	ГУС
	и	E48
	пе	АНВО9Е
	сч	E48-1(М16)
	пб	ИЗШГ
АНВО9Е	сч	E48-1(М16)
	пб	ИЗШГП
АНДИ	мод	НЗАД
	сч	E48-1
	или	ШКМДП
	зп	ШКМДП
	мод	ГУС
	сч	E48
	и	E40
	сда	64+37
	пе	МИКРОН
	сч	П6
МИКРОН	мод	ГУС
	слц	E44
	мод	ГУС
	зп	E44
ОТКМД	сч	ШЗПОМД
	пе	НЕЛЬ
	сч	E40
	зп	ШЗПОМД
	уиа	ВХМД(М16)
	счи	М16
	зп	ИПЗМД+3
	сч	E44
	пб	ПРОГР
ФИЗОБД	мод	НЗАД
	сч	E48-1
	или	ШКМД
	зп	ШКМД
	пб	ОТКМД
ВХМД	уиа	'2003'
	ржа	'3'
	сч	ШКМД
	уиа	(М16)
	пе	ВХД2
	уиа	1(М16)
	сч	ШКМД(М16)
	по	дипд
ВХД2	нед	
	уи	М17
	сч	E40
	или	ШЗПОМД
	зп	ШЗПОМД
	сч	ШКМД(М16)
	нтж	E48-1(М17)
	зп	ШКМД(М16)
	уии	М5(М17)
	пино	ВХДК(М16)
	сч	шфзобм
	и	E48-1(М17)
	по	нук1
	мод	ТУС-1(М5)
	сч	2
нук1	зп	РМР
ВХДИ	сч	ТУС-1(М5)
	уи	М15
	зп	УСМД
	зп	ИПЗМД+9
	сч	СЧЗАКД
	нтж	E5
	по	ОЖД
	счи	М16
	зп	ряв
	по	ФМД1
	сч	ШЗЗ
	и	E48-1(М17)
	пе	ОЖД
	сч	E48-1(М17)
	нтж	ВСЕЕД
	и	ШКОШ
	зп	ШКОШ
	сч	E48(М15)
	и	E47
	по	ПРДК
	сч	E48(М15)
	пб	ВХОДМД
ВХДК	слиа	64(М5)
	пб	ВХДИ
МБМД	сч	ШМАРС
	и	E48-1(М17)
	пе	МБМД1
	сч	СМ
	и	E6
	пе	МБМД1
	сч	E48-1(М17)
	пв	ВШГП(М15)
МБМД1	сч	СМ
	пб	ф37г
ОЖД СЧ ШКОМД(М16)
 ИЛИ Е48-1(М17)
 ЗП ШКОМД(М16)
 ПБ ЗАН
ПРДК СЧ 2(М15)
 ЗП РМР
ФМД1 СЧ (М15)
 ЗП СМ
 СБР НАПРМГ
 ЗП РЯОД
 УИА ФИ(М3)
 СЧ РЯВ
 ПЕ МЗА1
 СЧ 6(М15)
 ПО МЗА
 СЧ Е5
 ИЛИ Е7
 И (М15)
ПРОВ ПЕ МЗА
ПРКА УИА -5(М1)
 УИА (М2)
ПФИЗ СЧ НЛОГ
 СДА 64(М2)
 НТЖ РЯОД
 И Е48П43
 ПО ПФИЗ1
 СЛИА -6(М2)
 ЦИКЛ ПФИЗ(М1)
МЗА СЧ РЯОД
 СДА 64+42
 УИ М16
 ПБ (М3)
ПФИЗ1 СЧ НФИЗ
 СДА 64(М2)
 РЗБ НАПРМГ
 ЗП РЯОД
 СБР НАПРМГ
 СДА 64+42
 УИ М16
 СЧ НЕТНАП
 И СМ
 ИЛИ РЯОД НОВОЕ УСТР
 ЗП СМ
 ПБ (М3)
ФИ НОП ,
	сч	ряв
	пе	МБМД
	сч	2(М15)
	зп	ИПЗМД+2
	сч	СМ
	пб	физомд
МЗА1 СЧ (М15)
 И Е47
 ПБ ПРОВ
ЭКС75 ЗП (М16)
 УИА ’2003’
 ЗП СМ
 ПИО КОМСВ(М16)
 СЛИА -1(М16)
 ПИО ЧИССВ(М16)
 СЛИА 1(М16)
ППП РЕГ 65
 УИА ’2000’
 ЗП (М16)
 УИА 3
 УИА -6(М16)
 ЗП СМ
A06560	зп	2
	цикл	A06560(М16)
ппп3	ноп
 УИА ’2003’
 МОД ГУС
 СЧ 23
 И Е48
 ПЕ ЭКВЫХ
 РЕГ 71
 ПБ ЭКВЫХ
КОМСВ МОД ГУС
 СЧ 23
 ИЛИ Е48
 ПБ ПТП
ЧИССВ МОД ГУС
 СЧ АВОС
 И ЕСПЕ
 ПЕ ОРЕ
 МОД ГУС
 СЧ 23
 И Е47П1
 СЛИА 1(М16)
ПТП МОД ГУС
 ЗП 23
ОРЕ СЧ СМ
 ПБ ППП
ТУМБР ИЛИ Е5
 ИЛИ Е1
 ЗП РК
 СЧИ М16
 ЗП И16
 СЧ Е11
 ПВ ПЕЭКС(М16)
 СЧИ М15
 МОД ГУС
 ЗП ИНФСЛП
 УИА -6(М15)
ТИКТАК СЧ 7(М15)
 УИА 0
 ЗП (М16)
 УИА 3
 СЛИА 1(М16)
 ЦИКЛ ТИКТАК(М15)
 МОД ГУС
 СЧ ИНФСЛП
 УИА 1027
 УИ М15
УИИ УИИ М27
 ВЫПР (М2)
СБОЙБ	уиа	ячобмл(М17)
	пб	ЗАПРК
ПРХЭ67	сч	E8  Э67А
	пб	ТВ40
ЗОВИ СЧИ М16
 ЗП И16
 СЧРЖ 31
 ИЛИ П32
 ЗП РК
ЗОВЫ СЧ Е14
 ПВ ПЕЭКС(М16)
Э72 СЧ Е31
 ПБ ВЫЗОВ
ГОША СЧМР 64
 ЗП РМР
 СЧИ М16
 НТЖ Е15П11
 ПЕ НТ
 УИА ’70000’(М16)
 СЧИ М16
 ПБ ЭКВЫХ1
НТ НТЖ П1777
 ПО НЭ
НТ1 ПАМ 0
 ПИНО НТ8(М16)
 СЧ ГУС
 ПБ ЭКВЫХ1
НЭ СЧ НЗАД
 НТЖ СОБА40
 И П377
 ПЕ ММАРС
ДДСЛ СЧ РМР
 МОД СМ
 ПБ АЭ
ММАРС СЧ НОМАРС+1
 НТЖ НЗАД
 И П377
 ПЕ НТ1
 СЧ СМ
 И П7
 ПО ДДСЛ
 НТЖ Е1
 ПО ДДСЛ
 НТЖ П5
 ПО ДДСЛ
 ПБ НТ1
АЭ УИА -МЧПЗ(М16)
 ПБ АЭ0     0
  УИИ М16(М7)
 ПБ АЭ1    1
Щ УИА АНВО1(М16)
 ПБ ПРЭ70
 ИЛИ ШАРСИС
 ПБ АЭ3     3
 СЧ ШМАРС
 ПБ АЭ4     4
 СЧ ШАРСИС
 ПБ АЭ5
АЭ3 НТЖ РМР
 ЗП ШАРСИС
 ПБ ЭКВЫХ
АЭ4 ИЛИ Е48-1(М7)
 ПИО ЭКВЫХ(М7)
 ЗП ШМАРС
 УИА АНВО1Е(М16)
 ПБ ПРЭ70
АЭ5 ИЛИ Е29
 ЗП ШАРСИС
МЗК1 СЧ СОБА40
 УИА ЭКВЫХ(М16)
 ПБ ЗАПВЕТ  СОБ АРХИВУ
ПРЭ70 СЧИ М16
 МОД ТУСП-1(М7)
 УИА (М16)
 ЗП 3(М16)
 СЧ РМР
 ЗП ИНФСЛП(М16)
 СЧ 5(М16)
 И Е16П32
 ИЛИ П2007
 ЗП 5(М16)
 УИИ М16(М7)
 ПБ АЭ1
АЭ0 МОД ТУСП+МЧПЗ+НПЗ(М16)
 СЧ ИНФ
 УИА 1024
 МОДА МЧПЗ+НПЗ(М16)
 ЗП (М7)
 УИА 1027
 ЦИКЛ АЭ0(М16)
 УИА -3(М16)
АЭЭ СЧ Ш1+3(М16)
 УИА 1024
 МОДА 48+3(М16)
 ЗП (М7)
 УИА 1027
 ЦИКЛ АЭЭ(М16)
 СЧ СОБА40
 НТЖ НЗАД
 И П377
 ПО ЭКВЫХ
 СЧ Ш1М
 УИА 1024
 ЗП 48(М7)
 УИА 1027
 СЧ ШАРКЗМ
 УИА 1024
 ЗП 50(М7)
 УИА 1027
 ПБ ЭКВЫХ
АЭ1 ПИО НТ1(М16)
 СЧ НЗАД
 НТЖ СОБА40
 И П377
 ПО АРХТ
 СЧ Ш1М
 И Е48-1(М16)
 ПО МКЗ
 НТЖ Ш1М
 ЗП Ш1М
СЛПУСК СЧ РМР
 МОД ТУСП-1(М16)
 ЗП 0
 СЧИ М15
 МОД ТУСП-1(М16)
 ЗП 8
 ПБ ПБ
МКЗ СЧ ШАРКЗМ
 И Е48-1(М16)
 ПО ЭКВЫХ
 НТЖ ШАРКЗМ
 ЗП ШАРКЗМ
 СЧ ШАРКЗ
 ИЛИ Е48-1(М16)
 ЗП ШАРКЗ
 ПБ МЗК1
АРХТ СЧ Ш1
 И Е48-1(М16)
 ПО КЭ
 НТЖ Ш1
 ЗП Ш1
	пб	СЛПУСК
КЭ СЧ Е48-1(М16)
 И ШАРБОП
 ПО ЭКВЫХ
 НТЖ ШАРБОП
 ЗП ШАРБОП
 МОД ТУСП-1(М16)
 СЧ АВОС
 СДА 64+33
 ПО ПБ
 МОД ТУСП-1(М16)
 СЧ АВОС
 И Е28
 ПЕ ПБ
 СЧ ШКОТ
 ИЛИ Е48-1(М16)
 ЗП ШКОТ
 СЧ ЕНРОТ
 ИЛИ ШКИВ
 ЗП ШКИВ
 ПБ ЭКВЫХ
ПБ СЧИ М15
 ЗП И15
 СЧ Е48-1(М16)
 ПВ ВШГП(М15)
 МОД И15
 УИА (М15)
 ПБ ЭКВЫХ
ЭКЛИСТ СЧИ М16
 НТЖ Е8
 ПЕ НАЙДУ         *С НЕ ЭК-Д ПРОВЕРКИ ЛИСТА
 СЧ ГУС           ДАЙ СОСТОЯНИЕ ЛИСТА МАТЕМ.
 УИ М16           АДР.ИПЗ МАТЕМ.
 СЧ СМ            АДРЕС 1-ОЙ ЯЧЕЙКИ ЛИСТА МАТЕМ
 ЗП РМР
 СДА 64+10
 И П37
 НТЖ П37
 ЗП СМ            N ЛИСТА
 СЧ ЛИСТМБ(М16)
 МОД СМ
 И Е48
 ПО ПЖ
 СЧ ЛИСОСТ(М16)
 И Е13
 СДА 64+10
 ИЛИ П3
 ПБ ЭКВЫХ1
ПЖ СЧ 22(М16)
 НТЖ 32(М16)
 МОД СМ
 СБР Е48
 СДА 64+47
 ПБ ЭКВЫХ1
СОСО ПАМ 0
 МОД ГУС
 СЧ 22
 МОД ГУС
 ИЛИ 32
 И Е48П17
 ПБ ЭКВЫХ1
НАЙДУ ПАМ 0
 НТЖ Е1
 ПО СОСО
 НТЖ Е1
 НТЖ Е10
	зп	РМР
 СДА 64+5
 ПО ТРУБ
	сч	РМР
 НТЖ Е12
 ПЕ НАЙДУ1
ТРУБ СЧ Е37	!СВС:Е32       ВХОД ЧЕРЕЗ ЭКВВОД
 ПБ ТВ40
НАЙДУ1 НТЖ Е11
 ПЕ ГРАФИК        *С НЕ Э50 7200
 УВВ ’4023’        Э50 7200
 ПБ ЭКВЫХ1
ГРАФИК НТЖ Е9
*
	АПУ	(not &К71).НЕТ0
	по	эспец !К-71 "ТЕРМАС" 
*Э50 '7600' !ПРОИЗВ. ДЕЙСТВИЯ В РЕЖ. ЯДРА
*
.НЕТ0 АНОП
 НТЖ Е7
 ПО ЭКПАУЗ        Э50 7700-ПАУЗА
 НТЖ Е1
 ПЕ ЭКВВ9
	сч	E29
	пб	ТВ40
ЭКВВ9 НТЖ Е2
 ПО ЭКВВ6
 НТЖ Е1
 ПЕ МЭК
 СЧИ ’32’
 УИ М16
ЭКВЫХ1 ЗП СМ
 ПБ ЭКВЫХ
ЭКВВ6 МОД ГУС
 СЧ 33
 СДА 64+10
 И П3777
 ЗП СМ
 ПБ ЭКВЫХ
МЭК НТЖ П12
 ПЕ ЭКВВ
 СЧ ЕПУСК
 ПБ ТВ40
*
        АПУ     (&К71).ДА		
* БЛОК ГРАФОПОРСТР ВЗУ-117, СТР. 1786-1815
ГРАФИ	УИА	-2(М15)	АДРЕС ИНФОРМ.
	СЧ	СМ
	УИ	М16
НАСЛ	УИА	0
	МОДА	(М15)
	СЧ	2(М16)
	УИА	'2003'
	ЗП	Б+4(М15)
	ЦИКЛ	НАСЛ(М15)
	СЧ	Б+2	ШКАЛА
	ПО	УПРИН
	СДА	64+42
	ЗП	Б
	ПБ	ПЕРОН
УПРИН	СЧ	Б+2	ДВИЖЕНИЕ
	УВВ	'152'	ПЕРО
	СЧ	Б+4	ВРЕМЯ
	ЗП	Б+5	ЧАСЫ
ПЕРОН	МОД	НЗАД
	СЧ 	Е48-1
	ИЛИ	Б+1
	ЗП	Б+1
ЭПЗЗ	СЧИ	М32
	УИ	'33'
	СЧРЖ	'77'
	ЗП	РК
	СЧИ	И17
	ЗП	И17
	УИИ	М27
	ПБ	ВИСП3
*
	АПБ	.НЕТ
.ДА АНОП
*НАЧ. БЛОК. УСТР-ВА К-71
*** ЗАГЛУШКА ГП N1 ***
загл7а	стоп	
	пб	загл7а
*** БЛОК УПРАВЛЕНИЯ АС К-71 N1 ***
шзпри7	пам	1
взук71	уи	М17
	сда	64-1
	счмр	
	уи	М16
	сч	швзк7а(М16)
	и	E48-1(М17)
	по	вз71б
	сч	к71шк9(М17) !ИСП. В РАБ. С Э50133(ЭК7)
	сд	швзк7в(М16) !МАСКА?
	и	П7
	кк	26,'70000'
вз71б	сч	И17
	уи	М17
	пб	КИК1
швзк7а	пам	1
швзк7б	пам	1
швзк7в	конд	в'4400000000000000'
	конд	в'4000000000000000'
шкут	пам	2
.НЕТ АНОП
*КОН. БЛОКА УСТР-ВА К-71
*
	        АПУ     (&К71).ДА1
базэко 		пам     1
шкут		пам	2 !ШКАЛА ОБЩ. НАЗНАЧЕНИЯ
.ДА1 АНОП
ВЫЗКЧ ЗП ЯЧКЧ
 СЧ ГУС
 УИА (М16)
 И Е48
 ПЕ СИС
 МОД ГУС
 СЧ 4
 СДА 64+24
 УИ М16
 ПИО СТ175(М16)	!СВС: НСИСТ
СММ16 СЧ СМ
 ПБ (М16)
СИС СЧ ГРУП+1
 МОД НЗАД
 ИЛИ Е48-1
 ЗП ГРУП+1
 СЧ ЯЧКЧ
 МОД ГУС
 ЗП ИНФСЛП
        пам     0
 СЧИ М27
 И П7
 ПЕ СТ175	!СВС: ТЕСЭКС
 ПБ ХЛИМ
*
	АПУ     (&К71).ДА1А
***** БЛОК N2 ГРАФОПОСТР. *****
графу	по	ТУ10
	увв	'4153'
	и	Е20
	пе	нетгт
	зп	БУДГРА+1
	сч	Б+5	ЧАСЫ
	пе 	ТУ10
	сч	Б	КОЛ-ВО ДВИЖЕНИЙ
	уи	М15
	пио	граф(М15)	НЕТ ДВИЖЕНИЙ
	слиа	-1(М15)
	сч	Б+2	ШКАЛА ДВИЖЕНИЙ
	и	Е1
	уи	М16
	сч	Б+3(М16)
	увв	'152'
	счи	М15	КОЛ-ВО ДВИЖЕНИЙ
	сч	Б+2	ШКАЛА
	сда	64+1	СДВИГ ШКАЛЫ
	зп	Б+2
	пб	ТУ10
нетгт	сч	БУДГРА+1
	слц	Е35
	зп	БУДГРА+1
	пе	ТУ10
	нтж	Е48
	зп	БУДГРА+1
	сч	Е37
	пб	ТВ41
труба	нтж	Е25
	зп	МГРП
	рег	'36'
втрубу	сч	Е37
	пв	ВШГ(М15)
	пб	БПУ
***** КОНЕЦ *****
	АПБ	.ОБЩ1А
.ДА1А АНОП
******* РАБОТА К-71 ********
*** ЗАГЛУШКА ГП N2
загл7б	пб	ту10 !ВОЗВРАТ В ДИСП70
******
***!БЛОК УПРАВЛЕНИЯ АС К-71 N2 ***
шквзу3	пам	1
терм7а	сч	шкут  !РАБОТА С ТЕРМИНАЛАМИ?
	и	E48(М2)
	по	боэте4 !БОЭК1
	мод	базсв7
	пб	ввзу7а-СВЯЗЬ7 !ИСПРАВИТЬ
терм7б	уиа	E45(М10) 
	сч	шкут
	и	E48(М2)  
	мод	базсв7
	пе	ввзу7б-СВЯЗЬ7
	пб	км1a
Э1	сч	ГУС
	и	E48
	по	э1б
	сч	шквзу3
	мод	НЗАД
	и	E48-1
	по	э1а
э1б	слиа	'77645'(М16) !ОТРИЦ. ЧИСЛО
	мод	базэко
	пио	49(М16)
	слиа	E24(М16)
	пб	э1а
	пам	5
***** КОНРАБ К-71 *****
.ОБЩ1А АНОП
ЗАПРОС НОП 0
 РЖА 3
 СЧ ВРЕМЯ
 ВЧ ВРЗАПР
 ЗП РЭ1
 ЗНАК РЭ1
 СДА 64+6
 ПО БМВ         свс: ЗПРС
 СЧ ВРЕМЯ
 ЗП ВРЗАПР
 УИА -3(М15)
 ПБ ЗАПР1
ЭККВМ ПАМ
 НТЖ КЛЮЧ         КОНД М24В’70707’
 ПЕ ПЕК
* СЧИ М3
* СДА 64-24
* НТЖ КЛЮЧ
* ПЕ ВХОДПР        НЕ УСКОРЕННО
* УИА ЭКВЫХ(М15)
 СЧ АДЭК
 МОД АДЭК
 ПЕ 0             ПРЯМОЙ ВХОД В ДОПРЕЗ
	пб	ОШИ     свс: ВХОДПР
ПЕК НОП 0
 СЧ АДРЭ77
 МОД АДРЭ77
ОШИ ПЕ 8
 УИА 36(М16)
ЗАПЭКС СЧИ М17
 ЗП И17
ЗАПЭК1 УИИ М17(М16)
 ПБ ТВ206А
АДЭК	пам	1
АДРЭ77 ПАМ 1
ДСЛ УИА 1027
 ЗП СМ
 СЧ ОАС
 И Е16
 НТЖ Е16
 ПО (М3)
 СЧ ОАС
 СЛЦ Е1
 ЗП ОАС
 И П37
 ЗП РМР
 СЧ СМ
 МОД ОАС
 ЗП СТМГ+Д-1
 И Е46
 ПО ЛЛ
 СЧ СМ
 И Е48
 ПО ЛЛ
 СЧ ОАС
 СЛЦ Е1
 ЗП ОАС
ЛЛ СЧ ОАС
 НТЖ П37
 СДА 64+1
 ПЕ ОЛЛ
 СЧ Е48
 ЗП ВРЕЗП
 СЧ Е16
 ИЛИ ОАС
 ЗП ОАС
ОЛЛ СЧ РМР                                                     Э       44
 ПБ (М3)
ПОДОБМ	нед	
	уи	М14      НОМЕР СТАРШЕГО ЗАКАЗА
	сч	ОЧКУС-1(М14)
	и	E4
	по	выбнв1 КУС НЕ ЗАДАЧИ РАЗМЕТКИ
	сч	РЕЖРАЗ
	и	E44
	по	ЗКМЛ  НЕ РЕВЕРС
	сч	E1
	или	ОЧКУС-1(М14)
	зп	ОЧКУС-1(М14)
	сч	КУС2-1(М2)
	и	E4
	по	выбнв1  НАПРАВЛЕНИЕ ОСВОБОЖДЕНО
	сч	
	увв	'141'
	зп	РСЧРАЗ
	зп	ТРАЗМ
	сч	КУС2-1(М2)
	и	E18
	пе	выбнв1	*C СЧИТЫВАНИЕ
	зп	КУС2-1(М2)
выбнв1	сч	МГНЕИС
	и	59(М1)
	пе	ОБХОД	*С МГ ПО М1 НЕИСПРАВЕН
	сч	ОЧКУС-1(М14)
	сда	64+24
	и	П1777
	сда	64-1
	зп	ЗОНАТР	ТРЕБУЕМАЯ ЗОНА
	сч	ОЧКУС-1(М14)
	и	Е21Е1
	нтж	Е21Е1
	пе	ВЫБНВ3	НЕ ПОДВОД С ЧТ. СЛ. СЛОВ
	сч	ЗОНАТР
	вч	E1
	зп	ЗОНАТР	ПОДВОД К ПРЕДШЕСТВ. ЗОНЕ
ВЫБНВ3	сч	ОЧКУС-1(М14)
	и	E6
	сда	64+5
	или	ЗОНАТР
	зп	ЗОНАТР
	сч	ОЧКУС-1(М14)
	и	E4
	по	ВЫБНВ2	*С ЗАКАЗ НЕ РАЗМЕТКА
	сч	РЕЖРАЗ
	и	E38
	сда	64+37
	или	ЗОНАТР
	зп	ЗОНАТР
ВЫБНВ2	сч	ТЗОНМЛ-24(М1)
	пе	ПОДВ5Б	НОМЕР ТЕКУЩЕЙ ЗОНЫ ОПРЕДЕЛЕН
	сч	ЗОНАТР
	слц	Е15П2
ПОДВ5Б	и	П3777
	зп	ЗОНАМЛ	НОМЕР ТЕКУЩЕЙ ЗОНЫ МЛ.
	мода	
	пв	ЗОНТАБ(М10)	УСТ. В ТЗОНМЛ ЗОНАТР И ЗОНАМЛ
	сч	СОЛ-3(М16)
	и	E32(М15)
	по	ПОДВ1Е	МЛ НЕ УЧАСТВУЕТ В ПОДВОДЕ БЕЗ ОТВЕТ.
	сч	СОЛ-3(М16)
	или	E40(М15)
	зп	СОЛ-3(М16) ЗАКОНЧИТЬ ПОДВОД НА СЛЕДУЮЩЕЙ ЗОНЕ
	пб	ВХЛ  ВХЛ
ПОДВ1Е	сч	ОЧКУС-1(М14)
	и	E2
	по	ПОДВ1	НЕ ПОДВОД БЕЗ ОТВЕТА
	сч	СОЛ-3(М16)
	или	E32(М15)
	зп	СОЛ-3(М16) МЛ УЧАСТВУЕТ В ПОДВОДЕ БЕЗ ОТВЕТА
ПОДВ1	сч	ОЧКУС-1(М14)
	и	E5
	пе	ЗКМЛ *С ЗАКАЗ НОМБОБА
	сч	ОЧКУС-1(М14)
	и	П7
	пе	ПОДВ2	ПОДВОД
	сч	ОЧКУС-1(М14)
	и	E18
	по	ПОДВ3        ЗАПИСЬ НА МЛ
	сч	ОЧКУС-1(М14)
	и	П14
	пе	ПОДВ2       ТЕСТОВЫЙ РЕЖИМ. РАЗМЕТКА
	сч	ОЧКУС-1(М14)
	и	E21
	пе	ПОДВ4       ЧТЕНИЕ СС
ПОДВ2	сч	ЗОНАТР
	нтж	ЗОНАМЛ
	по	ПОДВ92    МЛ. ПОДВЕДЕНА
ПОДОШ	сч	ОЧКУС-1(М14)
	и	E18
ПОДВ3	пе	ПОДВ98   СЧИТЫВАНИЕ С МЛ.
	сч	ФКУСАД(М14)
	и	E19
	пе	ПОДВ80  *С Е19 В ТНЗМЛ
ПОДВ4	сч	ЗОНАТР
	вч	E1      УМЕНЬШИТЬ НА 1 НОМ. ТРЕБ. ЗОНЫ
	зп	ЗОНАТР
	пв	ЗОНТАБ(М10)  УСТ. В ТЗОНМЛ ЗОНАТР И ЗОНАМЛ
	сч	ЗОНАТР
	нтж	ЗОНАМЛ
	по	ПОДВ93  ПОДВЕД К ПРЕДЗОНЕ
ПОДВ90	сч	ОЧКУС-1(М14)
	или	Е21Е18   УСТ. ПРИЗНАК ЧТЕНИЯ СС
	зп	ОЧКУС-1(М14)
ПОДВ98	уиа	несчет(М10) НЕСЧЕТ
	пб	ЗОНТАБ  ЗОНТАБ
ПОДВ91	сч	СОЛ-3(М16)
	или	E16(М15)    ПРИЗНАК ПОДВОДА МЛ
	зп	СОЛ-3(М16)
	счи	М10
ДВИЖМЛ	увв	'50'(М1)     ВЫДАЧА КОМАНДЫ ДВИЖЕНИЯ МЛ
	сч	СОЛ-3(М16)
	или	E8(М15)   ПРИЗНАК ДВИЖЕНИЯ МЛ
	зп	СОЛ-3(М16)
	сч	МПРЛ
	или	E39(М16)
	зп	МПРЛ
	сч	П377
	зп	ошмг-3(М16)
	пб	зпмг   ЗПМГ
ПОДВ82	сч	СОЛ-3(М16)
	и	E40(М15)
	по	ПОДВЕД     ПОДВОД ПРОДОЛЖИТЬ
	или	E16(М15)
	или	E32(М15)
	пв	ГАШСОЛ(М10)  ПОГАСИТЬ ПРИЗНАКИ МАТ. ПОДВ.
обход2	уиа	(М1)       М1 = 0: ОБХОД СН. ЗАЩ. И ВОССТ. ПРИП.
	пб	ВЫХ1
ПОДВЕД	сч	ЗОНАТР
	нтж	ЗОНАМЛ
	пе	подвес  МЛ НЕ ПОДВЕДЕНА
	сч	СОЛ-3(М16)
	и	E48(М15)
	пе	ЗКМЛ    МЕСТОРАСПОЛОЖЕНИЕ МЛ
	сч	СОЛ-3(М16)
	и	E32(М15)
	по	ПОДВ83
	пб	УНПР
ПОДВ83	сч	ОЧКУС-1(М14)
	и	E1
	по	ЗКМЛ
	пб	ВЫХ1А
ПОДВ93	сч	ОЧКУС-1(М14)
	или	Е21Е18
	зп	ОЧКУС-1(М14)
ПОДВ92	сч	ОЧКУС-1(М14)
	и	П3
	по	ЗКМЛ
	сч	E32(М15)
УНПР	или	E16(М15)
	или	E40(М15)
	мода	
	пв	ГАШСОЛ(М10)
ВЫХ1А	сч	ОЧКУС-1(М14)
	и	Е21Е1
	нтж	Е21Е1
	пе	ВЫХОД1
	сч	ТЗОНМЛ-24(М1)
	слц	E13
	зп	ТЗОНМЛ-24(М1)
	пб	ЗКМЛ
шфзобм	пам	1
*
        ЭКВИВ (ЕФ,Е17),(П,1),(АНВО8А,ЗАПЭКС)
* разные внешние
ЕСМЛ ВНЕШ УЗ8Е,епек,ФЗО3Е,ПОЕС
РЕЗАРХ ВНЕШ КСБФИЗ
БОЭК1 ВНЕШ ЛИСТМБ,ПЕЭКС,ВЫЗОВ,ЭКПАУЗ,ФЗ9А,НТ8,боэте4
ВИСП ВНЕШ ВШГ,ВШГП,ИЗШГ,ИЗШГП
КАЧКА ВНЕШ ШКРЗ,Е48П17
КИТ ВНЕШ ЕС5017,ТБЛ,ВППС,АКТБД,Е48П42,Е34Е30
ДИСКИ ВНЕШ РАБМД,СЧЗАКД,дипд,ВХОДМД,ф37г,физомд
ДИСКИ ВНЕШ РЯОД,УСМД,ИПЗМД,КТОМ,П11,ряв,мстр
РЕЗАРХ ВНЕШ Э70АРХ
ТЕРМ ВНЕШ км1a
МОТТ ВНЕШ ШКАС,ШVD130,ДШКОПТ,ШЗНКТ,ШЗПРИМ
ХЛАМ ВНЕШ МВ,г6,ХЛИМ,УПРИ,НАМБ,ЛЕСН
ХЛАМ ВНЕШ НАЧАЧУ,ПРУ12,ПЕРЕ,зпмг,подвес,несчет,ПОДВ80
ДМЛМБ ВНЕШ фи56,фи5,ЗКМЛ,ДИСПМБ,КСМ,ГАШСОЛ,ЗОНТАБ,ОБХОД
ДМЛМБ ВНЕШ ВЫХ1,ДИСО1А,ДИСМБ2,ДИСПО,ВЫХОД1,ПРЛ17А,Д76
ДМЛМБ ВНЕШ ТВМБ1,зкмла1,обход4,ДИСМ,МДЧ
СОСТАВ ВНЕШ ЕНРОТ,ЛИСОСТ,ЕПУСК
* внешние метки ДИСП70
ДИСП70 ВНЕШ ОАС,ВРЕЗП,ТВ206А,КЛЮЧ,ЗАПР1,ВРЗАПР,ВРЕМЯ,Д
ДИСП70 ВНЕШ БМВ,ЭКВЫХ,ШАРКЗМ,Ш1М,ТВ40,э1а,СОБА40,ИНФСЛП
ДИСП70 ВНЕШ ряо2,ССЫЛКА,П7,РЯО1,РЕЖРАЗ,РАЗМГ,ТУС,МЧПЗ,НПЗ
ДИСП70 ВНЕШ ГАШРП1,ШКМДП,ГРУП,ЯЧКЧ,ту10,ИВ25,СТ175,ИНФ
ДИСП70 ВНЕШ АСБОЙБ,Е37Е36,блобмб,БЯК,Е42П1,ТЗОНМЛ,РСЧРАЗ,П13
ДИСП70 ВНЕШ П27,ипзмл3,тв210,НМБТР,ипзмл9,МИН17,АВОС,ЕСПЕ
ДИСП70 ВНЕШ ШЗРАЗМ,Е17Е13,БПУ,ЗАПВЕТ,шк14,МИН15,граф
ДИСП70 ВНЕШ П12,АВ,ЗАНПР,КРОМЕ,РТЛ,ГРАНЬБ,П14,ячобмл
ДИСП70 ВНЕШ ВЫМГ,УПОК,шзраз1,ШЗЗ,НЛОГ,НФИЗ,ошмг,б
ДИСП70 ВНЕШ НЕТНАП,Е47П1,ЗАПРК,П32,НОМАРС,ЭКВВ,КИК1
ДИСП70 ВНЕШ СМ,РК,ГУС,Е48П43,СЧЗКМБ,НЗАД,СТМГ,МГРП
ДИСП70 ВНЕШ П17,И16,ШЗЗПСЧ,ШЗПОМБ,ТМБ,ШГ,ИПОБМ,ТВ41
ДИСП70 ВНЕШ ГОД,Е21Е1,Е15П2,Е21Е18,ВИСП3,ОБРМБ,БУДГРА
ДИСП70 ВНЕШ Е24П16,ИНФМБ,П377,ИНФСЛЭ,ЗОНАТР,МПРЛ,ТЗНМЛ
ДИСП70 ВНЕШ И20,ВСЕЕД,ШКМЛ,ШЗЗОБМ,П30,ФКУСМБ,ФКУС,СЧЗАК,РМР
ДИСП70 ВНЕШ ЛИСТА,ФКУСА,ФКУСД,ФКУСАД,П3,КЛЮЧРЗ,РЭ1,Е47П43
ДИСП70 ВНЕШ Е15П11,ШОПТИМ,П37,П77,И15,Ш1,П23,И17,КУС2,ШКМБ
ДИСП70 ВНЕШ ШКОМЛ,УСМ,ШКОМБ,УСММБ,УКАЧАЙ,ШКИВ,МШГ,П60,ШГП,РЯО
ДИСП70 ВНЕШ Е16П32,П2007,ПРИП,П3777,П777,П1777,Е26Е25,Е33П25
ДИСП70 ВНЕШ ШЗПОМД,СМШГП,УКАЧП,НАПРМГ,ОЧКУС,ОЧКСУМ,РМЛ,ОЧМБ
ДИСП70 ВНЕШ ТРАЗМ,РЯО5,ЗОЧ1Б,МБКУС,ФКУСАБ,ЯЛИСМБ,ЕСЧ,Е18П1,П6
ДИСП70 ВНЕШ Е46П48,ЗОНАМЛ,П7777,МГНЕИС,ШКМД,ШКОШ,ШМАРС,ШКОМД
ДИСП70 ВНЕШ П5,ШАРСИС,ТУСП,ШАРБОП,ШАРКЗ,ШКОТ,СОЛ,ШОЧМГ
*
 ВХОД АДРЭ77,ФИЗОБМ,АНВО8,ЕФ,ПОДОБМ
 ВХОД ПОДВ91,ВХОДМЛ,ДВИЖМЛ,ФЗО1Б,вхэ70а
 ВХОД Э1,ЗОВЫ,УИИ,СММ16,ЗАПЭКС,ВХЗОБ,вхла2а
 ВХОД ЭКЛИСТ,ЭКВЫХ1,АНВО6А,фзокм1,ПР,вхла2
 ВХОД ВЫЗКЧ,ЗАПРОС,длядс,внбо2
 ВХОД СБОЙБ,ЭККВМ,ПОК,ФЗО3В,УЗЩ,обход2,би
 ВХОД ЭКС75,ЭКП,ЗОВИ,ПРХЭ67,ГОША,КРАХМЛ,УЗЩ8
 ВХОД АЦПУ,ТУМБР,ФЗО5,АНВО1Е,ВОЗЬМИ,ФИЗИЧ
 ВХОД ВХЛ,ВХМД,ПОДОШ,АНВО8А
 ВХОД ппп3,ФИЗУР,БИБ,ФИЗО,узщ8г,ДСЛ,обходр
 ВХОД вхэ70в,cим,им,АНВО9,ФТН,анвоб,зкмла4
 ВХОД ФЗОН,анво9а,шфзобм,ПРИП1С,Э72,надо,МАЧТЗП
 ВХОД ФИЗЗП,П,ВЫ,ПРКА,РАЗРЕ,АДЭК,УЗЩ8В,ПОДВ82,ПОДВ90
 ВХОД АНВО9Б,ВТРУБУ,АНВО1,коп,ФЗО4
*
	АПУ     (&К71).ДА2
***************ВНЕШ ДЛЯ ШТАТНОЙ РАБОТЫ *******************
МОТТ ВНЕШ базсв7
ДИСКИ ВНЕШ ЗАН
 ВХОД труба,втрубу,графу
*********************************************************
	АПБ	.НЕТ1
.ДА2 АНОП
************** ВХОД И ВНЕШ ДЛЯ РАБОТЫ К-71 **************
 ЭКВИВ (ВТРУБУ,загл7а)
КОНФУС внеш базсв7,базэко,к71шк9
СВЯЗЬ7 ВНЕШ СВЯЗЬ7,ввзу7а,ввзу7б
МОТТ ВНЕШ ЗАН,эспец
 ВХОД загл7б,шквзу3,швзк7а,швзк7б,шкут,взук71,загл7а
 ВХОД шзпри7,терм7а,терм7б
*********************************************************
.НЕТ1 АНОП
 ФИНИШ

