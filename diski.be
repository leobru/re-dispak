ДИСКИ	СТАРТ	'73326'
	Е
	М
ИПЗМД   КОНД    В’0’          СМ
        КОНД    М41В’3’       РК = 3
        КОНД    В’0’          РМР
        КОНД    А(0)          М33
        КОНД    в'0226543700000000' М32
        КОНД    В’201302007’  М21,М27
        КОНД    (6)В’0’       М20, М17-М13
        пам	10
дисшк1  пам     1        
	конд	в'4000000000000000'
прр	конд	в'0130000000000000'
НГД	пам	1
дисшк2	пам	1
рс	пам	1
дисшк3  пам     1
ИНФСД	пам	1
УСМД	пам	3
ипзмд1	конд	в'4000000000000000'
ЗАВ	пам	1 !ДИСКИ-100 'ФКУСД'
СЧЗАКД	пам	2
ЗАНКМД	конд	в'4000000000000000'
дисшк4	конд	в'4000000000000000'
	пам	2
СОД	пам	2 !В РЯДЕ СЛУЧАЕВ ЗАМЕНЕНА НА 'ТИПКОМ'
зневып	пам	2 
типком  пам     2        
номдор	пам	1
ДАЙГОТ	пам	2
ЗАНМД	пам     2
МДНЕИС  пам     2
ЕNQМДС  пам     2
ШЗМД    пам     2
ЗУС     пам     2
ОСУ     пам     2
РЯД	пам	1
РЯД1	пам	1
РЯД2	пам	1
РЯОД	пам	1
РАБМД КОНД В’0’
НОМСВ КОНД В’0’
НОМЛД КОНД В’0’
Е16П1 КОНД В’177777’ НЕ РАЗДЕЛ С НОМЛД
КУСКИ	пам	1
ОТВАВ	пам     1
ПРЗАПС  пам     2
        пам     1
квтз	конд	в'7770000377777777'
квтз1	конд	в'7770177777777777'
е36е35	конд	п'0/0000'
Е11Е9	конд	п'000050'
П11	конд	п'000009' !ДИСКИ-100 ЗНАЧ. 'В'11''. ВМЕСТЕ С П31
	конд	в'0000000000000031' !ДИСКИ-100 МЕТКА 'П31'
	конд	в'0000000000003720' !ДИСКИ-100 МЕТКА 'П7640' 
п7640	конд	в'0000000000007640' С П3720
блоз	пам	1
КОНЗОН	конд	в'0000174400000000' ДИСКИ-100 МЕТКА 'КОН'
	конд	в'0000763400000000' НЕ РАЗД. С КОНЗОН
КТОМ	конд	в'6000000000000000'
	конд	в'5000000000000000'
	конд	в'4000000000000000'
КТОМЛ	конд	п'F00000'
	конд	в'3000000000000000'
	конд	в'4000000000000000'
НОМРМД	пам	2
БУДАВ	пам	1 !В РЯДЕ СЛУЧАЕВ ЗАМЕНЕНА НА 'П7600'
мстр	пам     1
	конд	в'0007000012000000'
п3700	конд	в'0000000000003700'
п7600	конд	в'0000000000007600' НЕ РАЗД. С П3700
ну20	конд	в'0000000005402000'
НЗ	пам	2
ПРОСВ	пам	2
нм	конд	в'4000000000000000'
	конд	в'3640000000000000'
	конд	в'3500000000000000'
	конд	в'3340000000000000'
РИМ	пам	2
РАЗЛ	пам	1
АПРО	конд	A(ПРО)
РАОБЩ	пам	1
РУ	пам	1
дисшк5  пам     1 !В ДИСКИ-100 ОТСУТСВ
рад	пам	1
ОСВЛИН	конд	в'0000000000011050' !ДИСКИ-100 -МЕТКА 'П5010Р'
* ЗНАЧ В'0000000000001050'
КОПЗ	пам	2
ВЫК  пам     2
негтб	пам	1
ОСЧК	конд	в'7777777737603777'
ПРД	пам	3
сохк	конд	в'0070777700401740'
пав	пам	1
ЯМГРП	пам	1
О40 КОНД В’-1’М39В’1’
NКОБ КОНД В’0’
П167 КОНД В’167’
	пам	1
ПРСКМД ПАМ 2
ЗАНЛ	пам	2
D73537	пам	1
см1	пам	1
ФЗ15 СЧ МДНЕИС-3(М16)
 ИЛИ Е32(М4)
 НТЖ Е32(М4)
 ЗП МДНЕИС-3(М16)
 СЧ ЗАНКМД-3(М16)
 И Е48
 ПЕ Д             НАПРАВЛ.ЗАНЯТО ДРУГОЙ МАШИНОЙ
	счи	М3
	сда	64-3
	нтж	ЗАНКМД-3(М16)
	по	Д1 ЗАКАЗ К ОТКРЫТОЙ ЛИНИИ
	пб	Д3
Д СЧ ОЖОСВ-3(М16)
 ПЕ Д3            ЗАПРОС К НАПРАВЛЕНИЮ ВЫДАН
 СЧ ОЧКУСД-1(М14)
	пб	дс
пс	уиа	'2003'
	сч	ШЗПОМД
	нтж	РАЗЛ
	или	E40
	зп	ШЗПОМД
	сч	ОЖОСВ-3(М16)
	пе	Д3
	счи	М3
	сда	64-39
	или	E8
дс	зп	ОЖОСВ-3(М16) ЗХ
	пв	ЗАПРОС(М11)
	сч	МГРП !ДИСКИ-100 МЕТКА 'ДА'
	или	E32(М16)
	зп	МГРП
	рег	'36'
	уиа	'3'
	пб	Д3
Д1	сч	ШОЧНМД-3(М16)
	и	Е48-1(М14)
	по	ДИ
	сч	ОЧКУСД-1(М14)
	мода	
	пв	МДНАП(М2) ИНВ. N МД->М15; N НАПР., N МД ->М1
	сч	ЗАНМД-3(М16)
	и	E32(М4)
	пе	Д3 УСТРОЙСТВО ЗАНЯТО
	пв	ПОДОБМ(М11) ВЫДАТЬ ЗАКАЗ В КМД
	сч	ЯМГРП
	пв	ТВ67(М15) ГАШ. 29(28) Р. ГРП, ОТКРЫТИЕ МАСКИ
	сч	
	зп	ЯМГРП
Д3	сч	
	зп	блоз
	сч	E40
Д3А1	уиа	'2003'
	нтж	ШЗПОМД
	зп	ШЗПОМД !МАЛ. ОСВ. ЗАДАЧИ ОБМЕНА = УБР. Е40 ИЗ ШЗПОМД
Д33	и	Е48Е47
	по	Д4А ПРЕРЫВ. НЕ ПО ЗАПРОСУ
	нед	E2
	уи	М16 НОМ. НАПР. ПРЕРЫВ. ->М16
	пб	ВХД
Д5	сч	СОД-3(М16)
	и	Е24П17
	по	Д5Д НАПРАВЛЕНИЕ НЕ ЗАНЯТО ОБМЕНОМ
	сда	64+16
	и	ЯПРМД-3(М16) 
* !МАЛ. ЯПРМД - ЕДИНИЦЫ (ПОЗ. НОМЕРА) ДЛЯ МОДУЛЕЙ,
* ОТ КОТОРЫХ ПОЛУЧЕН КОНЕЦ ОБМЕНА (7...0)
	по	Д8А
Д5Д	сч	ЯПРМД-3(М16)
	по	Д7
	нед	П7
	нтж	П7
	уиа	обрпр(М2) М1, М15
* !МАЛ 
* И П7
* ИЛИ ЗАНКМД-3(М16)
* ПБ МДНАП1
	пв	МДНАПС(М11)
	сч	зневып-3(М16) 
	по	д5в ЗАКАЗ ВЫПОЛНЕН
	нтж	E1
	пе	обрнев ПОСЛЕ РАБОТЫ ОБРНЕВ ВОЗВРАТ НА Д5А
д5г	уиа	Д5(М11)
	пб	ПОДОБМ ВЫДАТЬ ЗАКАЗ В НМД
д5в	уиа	Д7(М11)
	пб	ВЫБРЗК ВЫБРОС ЗАКАЗА
д5и	уиа	опзак(М2)
ОПРЗАК	сч	ШОЧМД(М1)
	и	ШОЧНМД-3(М16)
	и	СИСТ
	пе	ОПРЗА
	сч	ШОЧМД(М1)
	и	ШОЧНМД-3(М16)
ОПРЗА	нед	
	уи	М14
	пб	(М2)
опзак	уиа	'77666'(М2)
	пв	ДВОЧ(М10)
	сч	СЧЗАКД
	уи	М14
	сч	РЯД1
	зп	ОЧЛИСД-1(М14)
	сч	РЯД2
	зп	ОЧКУСД-1(М14)
	уиа	Д7(М10)
	пб	зкоч
д5а	сч	зневып-3(М16)
	по	д5и ЗАКАЗ В КОНЕЦ ОЧЕРЕДИ
Д7	сч	СОД-3(М16)
	пе	Д8 ЕЩЕ НЕ ВСЕ ВЫДАННЫЕ ЗАКАЗЫ ОБРАБОТАНЫ
	сч	ДАЙГОТ-3(М16)
	по	Д7В
ОПРГД	сч	ЗАНКМД-3(М16)
	сда	64+3
	и	П3
	уи	М3
	сч	СОД-3(М16)
	и	П377
	по	НПР
	сч	
	зп	ДАЙГОТ-3(М16)
НПР	сч	ДАЙГОТ-3(М16)
	и	Е32П25(М3)
	по	Д7В
нпр1	сч	дисш6а
	пб	QQ2
дисш6а	конд	A(*+1)
	мод	ЗАВ
	уиа	(М7)
	сч	Е32П25(М3)
	и	НОМРМД-3(М16)
	или	РМД-3(М16)
	зп	РМД-3(М16)
	сч	КНАПР-1(М3)
	уи	М6
	уиа	'3'
	уиа	-7(М13)
нпр2	сч	НОМРМД-3(М16)
	и	E32(М6)
	по	д7б
	сч	E1(М13)
	мода	
	пв	открмд(М10) ОТКРЫТЬ МАСКУ УСТРОЙСТВА
	мода	
	пв	счрс(М10) ЧТЕНИЕ РС
	и	E9
	по	д7б !МАЛ. НЕТ ГД
	сч	E32(М6)
	нтж	РМД-3(М16) ПРИЗНАКИ ГОТОВН. УСТРВ -> РМД/Н
	зп	РМД-3(М16) !МАЛ. 1 - НЕ ГОТ., 0 - ГОТ.
д7б	слиа	1(М6)
	пв	опргд1(М10)
	сч	ДАЙГОТ-3(М16)
	или	Е32П25(М3)
	нтж	Е32П25(М3)
	зп	ДАЙГОТ-3(М16)
	сч	РМД-3(М16)
	нтж	РМД1-3(М16)
	или	ВЫК-3(М16)
	и	Е32П25(М3)
	и	НОМРМД-3(М16)
	уиа	3(М5)
	пе	вызав
	сч	ЗАВ
	пе	НОВД
	счи	М16
	и	E3
	пе	опи
	сч	НОМРМД+1
	зп	ДАЙГОТ+1
опи	сч	НЗ-3(М16)
	пе	опс1
Д7В	сч	ЗАНКМД-3(М16)
	сда	64+3
	уи	М3
	пв	дисшк6(М6) ОСВОБОЖДЕНИЕ НАПРАВЛЕНИЯ
	сч	ЗАНКМД-3(М16)
	и	E48
	пе	Д73 НАПРАВЛЕНИЕ ОСВОБОЖДЕНО
	сч	ШОЧЛ(М3)
	и	ШОЧНМД-3(М16)
	по	Д9 НЕТ ЗАКАЗОВ К ЛИНИИ
	и	СИСТ
	пе	д7вг
	сч	ШОЧЛ(М3)
	и	ШОЧНМД-3(М16)
д7вг	нед	
	уи	М14
	сч	ОЧКУСД-1(М14)
	уиа	д5г(М2)
*
*
*
* ПОДПР-МА  ПОДГОТОВКИ МОДИФИКАТОРОВ  ПО НУ
*
МДНАП СБР НАПРМГ
 СДА 64+42
МДНАП1 УИ М1            <М1>: НАПР,ЛИНИЯ,УСТР-ВО
 И П37
 УИ М4
 И Е3П1
 НТЖ Е3П1
 УИ М15           <М15>: ИНВ.N УСТР-ВА
 СЧИ М1
 СДА 64+3
 УИ М3            <М3>: НАПР,ЛИНИЯ
 ПБ (М2)
Д73	сч	ШОЧНМД-3(М16)
	по	Д9 НЕТ ЗАКАЗОВ К НАПРАВЛЕНИЮ
	уиа	'3'
	и	СИСТ
	пе	дси
	сч	ШОЧНМД-3(М16)
дси	нед	
	уи	М14 ВЗЯТЬ СТАРШИЙ ЗАКАЗ
	сч	ОЧКУСД-1(М14)
	зп	ОЖОСВ-3(М16)
	сда	64+39
	и	П7
	уи	М3
	пв	ЗАПРОС(М11) ЗАПРОС К ПРИОР. ЛИНИИ НАПРАВЛ.
	уиа	дс+1(М2)
	пб	УСТШЗ
Д8	сч	СОД-3(М16)
	и	Е24П17
	пе	Д8А НАПРАВЛЕНИЕ ЗАНЯТО ОБМЕНОМ
	сч	СОД-3(М16)
	и	П377
	пв	открмд(М10) ОТКР. В КМД МАСКУ УСТР. НЕ ФИКСИР. ПРЕР.
Д8А	сч	E32(М16) ОТКРЫТЬ МАСКУ 29(28) Р. В МГРП
Д9	или	ЯМГРП
	зп	ЯМГРП
ДВ	уиа	Д1+5(М2)
	пб	УСТШЗ ГАШ. 44(43) Р., УСТ. 40 Р. В ШЗПОМД (ХЛАМ)
прб	сч	п7600-3(М16) !ДИСКИ-100 'БУДАВ+1'
	и	типком-3(М16) !ДИСКИ-100 'СОД+1'
	по	б
	сч	п7600-3(М16)
	слц	E43
	по	прб1 БУД
	зп	п7600-3(М16)
б	цикл	прб(М16)
	пб	'17575' !ДИСКИ-100 'БНБОТ'
* !МАЛ. ПРБР ОТ ДРУГОЙ ЭВМ КОМПЛЕКСА. М16=3(3 НАПР.), 4(4 НАПР.)
* ДАЛЕЕ ТЕКСТ ПО УСЛ. КОМП. ОТЛИЧАЕТСЯ.
ПРЗАХВ	сч	ГОД
	и	Е46П48
	или	ЗУС-3(М16)
	по	БМВ
	сч	НОМРМД-3(М16)
	зп	ПРОСВ-3(М16)
	сч	ОЖОСВ-3(М16)
	пе	БМВ
	сч	ШЗПОМД
	пе	прос4
	или	Е48-1(М16)
	зп	ШЗПОМД
	уиа	ПРО(М15)
	пб	прмд2
прос4	или	Е48-1(М16)
	пб	пд
ПРО	сч	Е48-1(М16)
	пб	ПРОХ1
ПРОХ	сч	НОМРМД-3(М16)
	зп	ПРОСВ-3(М16)
	сч	E29(М16)
ПРОХ1	уиа	'3'
	зп	РАЗЛ
	уиа	-3(М3)
ПРОС1	сч	ПРОСВ-3(М16)
	по	ПРОС11
	и	Е24П17+2(М3)
	пе	ПРОС11
	цикл	ПРОС1(М3)
ПРОС11	сч	ЗУС-3(М16) !ДИСКИ-100 СТР. 543
	или	ОСУ-3(М16)
	и	Е24П17+2(М3)
	пе	прос2
	сч	ГОД
	и	Е46П48
	пе	прос2 СБЩ МЛ
	цикл	ПРОС1(М3)
	сч	
	зп	ПРОСВ-3(М16)
ПС1	сч	РАЗЛ !ДИСКИ-100 'ПСЖ'
	пб	Д3А1
прос2	слиа	3(М3)
	счи	М16
	и	E3
	уи	М10
	сли	М3(М10)
	сч	E5(М16)
	или	рад
	зп	рад
	сч	ЗАНКМД-3(М16)
	и	E48
	пе	пс
	счи	М3
	сда	64-3
	нтж	ЗАНКМД-3(М16)
	пе	ПС1
	пв	зсс1(М10)
	уиа	'2003'
	сч	РАЗЛ
	нтж	ШЗПОМД
	или	E40
	зп	ШЗПОМД
	пб	зс100
зс1	нтж	РЯД1
	по	зс4
	нтж	РЯД1
	уии	М5(М2)
	сли	М5(М2)
	сли	М5(М2)
	сда	64(М5)
	уи	М5 МАШ. КОТ. ДЕРЖИТ МД
	сч	негтб
	и	E13(М5) 12Р - 1 МАШИНА
	по	зс11 7Р - 1 МАШ. НЕ СБРОШ.
	сч	П7
	сд	ну20+5(М2)
	нтж	ВСЕЕД
	и	РЯД2
	зп	РЯД2
	пб	зс13
	пам	0
д11	сч	ШОЧМД(М1)
	и	ШОЧНМД-3(М16)
	по	дзс
	пв	ОПРЗАК(М2)
	сч	
	пб	д1а
д102	сч	
	увв	'20'(М16)
	уи	
	уиа	'2003'
	сч	Е32П25(М17)
	или	ПРОСВ-3(М16)
	нтж	Е32П25(М17)
	зп	ПРОСВ-3(М16)
	пб	(М10)
	пам	0
прмд	сч	E32(М16) !ВХОД ПО ПРЕРЫВАНИЮ ОТ 29(28)Р 
	пв	ТВ67А(М15) ГАШ. 29(28)Р МГРП, ЕСТЬ БЛПР
	сч	D74016
	пб	QQQ
D74016	конд	A(U74017) 
U74017	сч	ШКПРЕ  !ДИСКИ-100 СТР. 713
	или	E32(М16)
	нтж	E32(М16)
	зп	ШКПРЕ
	сч	ОЖОСВ-3(М16)
	по	прмд1 ПРЕРЫВАНИЕ НЕ ПО ЗАПРОСУ
	сч	E4
	увв	'20'(М16) ГАШЕНИЕ РС
	уи	
	сч	ШЗПОМД
	или	64(М16)
	пб	пд
пбу	сч	E18
	пб	прк
прб1	сч	типком-3(М16)
	и	Е24П17
	пе	пбу
	сч	E17
прк	или	п7600-3(М16)
	и	Е18П1
	зп	п7600-3(М16)
	слиа	4(М16)
	сч	ВСЕЕД
	нтж	E32(М16)
	уи	
	рег	'37' !МАЛ. ГАШЕНИЕ 29(28)Р. ГРП И В МАСКЕ ГРП
	сч	E32(М16)
	пв	ТВ67А(М15)
прмд1	сч	ШЗПОМД
	и	E47(М16)
	пе	БМВ
	сч	ШЗПОМД
	или	E47(М16) УСТ. ПРИЗН: ОБРАБОТАТЬ ПР. ПО ПОДВ/ОБМ
	зп	ШЗПОМД
	нтж	E47(М16) 
	пе	БМВ П.О. МД ЗАНЯТА
	уиа	прпо(М15) ПРПО -> ИПЗМД+3 (ВХОД ПОСЛЕ ПЕРЕКЛ)
	пб	прмд2
пд	зп	ШЗПОМД
	нтж	64(М16)
	пе	БМВ
	уиа	ВХД(М15)
прмд2	счи	М15
	зп	ИПЗМД+3
	счи	М16 М16=N НАПР -> ИПЗМД+8
	зп	ИПЗМД+8
	сч	Е43Е42
	зп	ИПЗМД+1
	уиа	БПУ(М15)
	сч	E44
	пб	ВШГ ?НА ПЕРЕКЛЮЧЕНИЕ
Д4А	сч	ШЗПОМД
	и	Е44Е43
	по	ДОС !МАЛ. НЕ БЫЛО ПРЕР. ПО ПОДВ/ОБМЕНУ
	нед	Е15П2
	уи	М16
прпо	сч	СОД-3(М16)
	сда	64+16
	и	П377
	пе	прпо1 БЫЛО ПРЕРЫВ. ПО ОКОНЧ. ОБМЕНА
	мода	
	пв	счрс(М10) ЧТЕНИЕ РС
	сч	СОД-3(М16)
	сда	64+8 !МАЛ. ЕДИНИЦЫ ДЛЯ МОДУЛЕЙ ОТ КОТ. БЫЛО
* ПОЛУЧЕНО ПРЕРЫВ. ПО ОКОНЧ. ПОДВОДА (КП)
	и	рс
	и	П377
	пе	прпо1
	сч	СОД-3(М16) НЕТ КП, ВЫДЕЛЕНИЕ УСТР-В,
	и	П377       УЧАСТВУЮЩИХ В ПОДВОДЕ
прпо1	зп	ЯПРМД-3(М16)
	пб	Д5
Д10	уиа	3(М16) !МАЛ. ПОСЛЕ ДОС
	уиа	-1(М15)
	сч	ЗАВ
	пе	НОВ
	сч	ШЗПОМД
	и	E24 !МАЛ. РАБОТА ПО ОПРГД
	по	ДКП
ДКК	сч	НОМРМД-3(М16)
	зп	ДАЙГОТ-3(М16)
	пе	ДИП
	уиа	4(М16)
	цикл	ДКК(М15)
	пб	ДИП
ДГ2	сч	ШЗПОМД
	или	E40
	зп	ШЗПОМД
	уиа	'3'
	слиа	3(М3)
	счи	М16
	и	E3
	уи	М10
	сли	М3(М10) !МАЛ. М3: ОБС. НОМ. ЛИНЕЙКИ 0-7
	сч	ЗАНКМД-3(М16)
	и	E48
	по	дг4
	сч	ОЖОСВ-3(М16)
	пе	ЗАН
	счи	М3
	сда	64-39
	или	П377
	пб	дс !МАЛ. НУЖЕН ЗАПРОС КМД ДЛЯ ОПРГД МД
дг4	счи	М3
	сда	64-3
	нтж	ЗАНКМД-3(М16)
	пе	мотди1 !МАЛ. НАМ ЗДЕСЬ НЕЛЬЗЯ НА 'ЗАН' (ЗАВИСНЕМ)
	уиа	'2003'
	сч	ШЗПОМД
	и	О40
	или	E47(М16)
	зп	ШЗПОМД
	пб	ОПРГД !МАЛ. ПОДЧЕРКНУТО
дг5	сч	ШЗПОМД
	пе	Д33
	сч	ИВ25 !МАЛ. ДК ЗАПУСК ВСЕХ ОСТАНОВЛЕННЫХ ИЗ-ЗА ОБМЕНА
	зп	ИПЗМД+5
	сч	блоз
	пе	ВИСП16
	сч	E44 !МАЛ. ЗАКРЫТ 3 ОБМЕНА В ШГ
	пв	ИЗШГ(М15)
	сч	ШКОБМ
	пв	ВШГ(М15)
	сч	
	зп	ШКОБМ
	пб	БВЗ
ОСВКМД	уиа	'2003'
	или	ОСУ-3(М16)
	зп	ОСУ-3(М16)
	сч	НЗ-3(М16)
	пе	ОСВУ
	сч	64(М16)
	или	E47(М16)
	или	E40
	и	ШЗПОМД
	пе	ОСВ1
дисшк6	сч	дисш6б
	пб	QQQQ
дисш6б	конд	A(освкм1)
освкм1	сч	НЗ-3(М16)
	уиа	'2003'
	пе	ОСВМД
	сч	ШЗМД-3(М16)
	или	ЕNQМДС-3(М16)
	пе	мотди2 !ДИСКИ-100 'ОСВ1'
ОСВМД	сч	СОД-3(М16)
	пе	ОСВ1
	сч	ЗАНКМД-3(М16)
	зп	ПРСКМД-3(М16)
	сч	НЗ-3(М16)
	по	ос1
	сч	РАЗЛ(М16)
	пе	освру
	уиа	осе(М11)
ос4	счи	М3 !МАЛ. ОТ ПРЗ
	и	П3
	уи	М17
	пб	осж
	сч	рс
	уиа	'3'
	по	дисвх3
	уии	М14(М11)
	нед	Е15П1
	уи	М15
	сда	64+2
	и	E1
	уи	М11
	слиа	16(М11)
	счи	М16
	и	E3
	сда	64-3
	уи	М5
	мода	(М5)
	сч	КРЗБТР+1(М15)
	пе	освм1
	пв	зсс(М5)
	счи	М15
	и	П3
	уи	М5
	сч	П7
	сд	ну20+5(М5)
	зп	ИНФСД
	сч	ГОД
	и	П7
	сд	ну20+5(М5)
	нтж	РЯД2
	зп	РЯД2
	и	ИНФСД
	пе	нета
	слиа	-2(М11)
	мода	
	пв	чр2(М5)
нета	уиа	'2003'
	сч	ОСУ-3(М16)
	нтж	E48(М15)
	зп	ОСУ-3(М16)
освм1	уии	М11(М14)
	пб	освм
дисвх3	сч	ШКЗАКС
	пв	ВШГ(М15)
	сч	ШКЗАКЗ
	пв	ВШГП(М15)
	сч	
	зп	ШКЗАКС
	зп	ШКЗАКЗ
	уиа	'10200'(М15) !МАЛ. ПРЕРЫВАНИЕ ВСЕМ ЭВМ КОМПЛЕКСА
	счи	М15          (О ТОМ, ЧТО ОСВОБОДИЛИ УСТР-ВА)
	увв	'20'(М16)    ВЫД. СТР. 661-663
	уи	
	сч	E5(М16)
	уии	М15(М11)
	пб	УСТПРП
ОСВ1	сч	
	пб	(М6)
освру	уиа	1(М5)
	пб	выза
*
*
***** БЛОК ВЫДАЧИ ЗАКАЗА В КМД *****
*
* !ДИСКИ-100 СТР. 1208
ПОДОБМ	сч	СОД-3(М16)
	уиа	'3'
	и	П377
	пе	(М11)
	сч	БУДАВ-3(М16)
	и	E8(М15)
	пе	(М11)
	пв	ОПРЗАК(М2)
A74202	сч	СИСТ !ДИСКИ-100 БЕЗ МЕТКИ
	или	Е48-1(М14)
	зп	СИСТ
	сч	МД29М-3(М16)
	и	E32(М4)
	уиа	(М5)
	по	подв
	уиа	1(М5)
подв	сч	ОЧКУСД-1(М14)
	и	E7
	по	подвод НЕ ТЕСТОВЫЙ РЕЖИМ
	сч	ОЧКУСД-1(М14)
	сда	64+42
	уи	М10
	мод	НЗАД(М10)
	сч	E48
	сда	64-21
	рзб	КРЗБТР
	зп	КОМТР-3(М16)
	и	П7
	зп	РЯД
	нтж	КОМТР-3(М16) 24,21,19,11 РР КОМТР/Н -> ОЧКУСТД/3
	и	Е40П1
	или	ОЧКУСД-1(М14)
	зп	ОЧКУСД-1(М14)
	сч	РЯД
	вч	П3
	пе	под7 ПОДВОД, СБРОС НА 0-Й ЦИЛИНДР
	сч	РЯД
	зп	типком-3(М16) ТИП КОМАНДЫ ОБМЕНА -> ТИПКОМ/Н
	пб	по
подвод	сч	ТЗНМД(М1)
	и	Е39П37
	по	под  В ЗОНЕ НЕ ОБНАРУЖЕНО ДЕФ. ДОРОЖКИ
	сч	ТЗНМД(М1)
	и	е36е35
	по	по НЕ БЫЛО ОБМЕНА С ДОР. ДЕФ. ЗОНЫ
	зп	РЯД
	сч	типком-3(М16)
	нтж	П6
	по	по ТРЕБ. СРАВНЕНИЕ ПОСЛЕ ЗП
	сч	РЯД
	и	Е36
	сда	64+12
	зп	РЯД
	сч	ТЗНМД(М1)
	или	е36е35
	зп	ТЗНМД(М1)
	сч	РЯД
под	или	ОЧКУСД-1(М14)
	зп	ОЧКУСД-1(М14)
	сч	ТЗНМД(М1)
	сда	64+26
	и	П377
	пе	по ОБМЕН С ДОР. ЗАМЕНЫ
	сч	ТЗНМД(М1)
	и	E39
	пе	по В ЗОНЕ ЕСТЬ ДЕФ. ДОРОЖКА
	сч	ОЧЛИСД-1(М14)
	сда	64+12
	и	П7777
	ржа	
	или	ЭК9
	дел	Ч10(М5)
	ржа	'3'
	сл	ЛС641 ОПРЕДЕЛЕНИЕ N ЦИЛИНДРА
	зп	РЯД2
	сч	ОЧКУСД-1(М14)
	пб	по ВРЕМЕННО БЫЛО ПО ЕСЛИ ПОДВОД
под7	сч	СОД-3(М16)
	или	E16(М15) УСТ. ПРИЗНАК УЧАСТИЯ УСТР-ВА В ПОДВОДЕ
	зп	СОД-3(М16) (В 16-9 РР. СОД/Н)
	сч	ОЧКУСД-1(М14)
	сда	64+23(М5)
	и	П7777
	зп	номдор
	пв	типобр(М7) ВЫДАТЬ КОМ. ПОДВОД НА ТРЕБ. ДОРОЖКУ
	сч	СОД-3(М16)
	сда	64+8 УСТР., УЧ. В ПОДВОДЕ
	и	П377
	пв	открмд(М10) ОТКРЫТЬ МАСКУ УСТР., УЧ. В ПОДВОДЕ
уямгрп	сч	ЯМГРП
	или	E32(М16)
	зп	ЯМГРП УСТ. 29(28)Р В ЯМГРП
	пб	(М11)
ПОДОБ1	сч	ОЧЛИСД-1(М14)
	зп	ЛИС2-1(М16)
	сч	ОЧКУСД-1(М14)
	зп	КУС2-1(М16)
	уиа	обмд(М2)
	пб	МДНАП
обме	сч	ТЗНМД(М1)
	и	E40
	по	ТОТМД НА УСТР. ДИСК НЕ СМЕНИЛСЯ
	пб	обмв
по	сч	зневып-3(М16)
	и	E3 БЫЛ СБОЙ ПРИ ЗАПИСИ* 
	по	ПОДОБ1 НЕТ
	зп	типком-3(М16) 4 -> ТИПКОМ/Н
нав	сч	
	зп	зневып-3(М16)
обмд	сч	E8(М15)
	пв	открмд(М10) ОТКРЫТЬ В КМД МАСКУ УСТРОЙСТВА
	мода	
	пв	счрс(М10) ЧТЕНИЕ РС
	и	E9
	пе	обме ГД=1 
	мода	
	пв	счрс(М10)
A74271	и	E9 !ДИСКИ-100 БЕЗ МЕТКИ
	пе	обме
	сч	КУС2-1(М16)
	и	E5
	пе	обнб
	сч	ТЗНМД(М1)
	или	E40
	зп	ТЗНМД(М1)
	уии	М2(М11)
	пб	ОПР ЗАН 1 В ВЫК
обмв	сч	КУС2-1(М16)
	или	Е21Е18 УСТ. ПРИЗНАК ЧТЕНИЯ СЛУЖЕБНЫХ СЛОВ
	и	ОСЧК
	зп	КУС2-1(М16)
	пб	обми
обнб	уиа	очкус1(М14)
	пб	обмб
ТОТМД	сч	типком-3(М16)
	по	обма ТИП КОМАНДЫ НЕ ЗАДАН, ТИПКОМ/Н=0
	нтж	П7
	пе	обм1 НЕ ЧТ, ЗГ
	сч	КУС2-1(М16)
	или	Е21Е18
	зп	КУС2-1(М16) УСТ. В КУС/Н ПРИЗН. ЧТ. СЛУЖ. СЛОВ
	пб	обм1 
обма	сч	КУС2-1(М16)
	и	E6 !МАЛ. Е6 - СЕКТ. ОБМЕН
	по	обмб НЕ СЕКТОРНЫЙ ОБМЕН
	сч	КУСКИ(М16)
	пе	обми ЗП. В ДЕФ ЗОНУ
	сч	E18 УСТ. ТИП ЧТЕНИЯ
обмб	или	КУС2-1(М16)
	зп	КУС2-1(М16)
обми	и	E18
	сда	64+17
	вчоб	E3 ТИП КОМАНДЫ ЗП/ЧТ -> ТИПКОМ/Н
	зп	типком-3(М16)
обм1	сч	ТЗНМД(М1)
	и	Е39П37
	по	обм2 НЕТ ПРИЗНАКА ОБМЕНА 1/2 СТР.
	пино	обм2(М5) 29 МГБ МД
	сч	КУС2-1(М16)
	или	E19
	нтж	E19 ГАШ В КУС ПРИЗН. СТР. ОБМ. (19Р)
	зп	КУС2-1(М16)
обм2	сч	 0 -> НОМД
	зп	номдор
	сч	КУС2-1(М16)
	и	E21
	пе	об2б ЧТЕНИЕ СЛУЖ. СЛОВ
	сч	ТЗНМД(М1)
	и	E39
	по	об1а В ЭТОЙ ЗОНЕ НЕ БЫЛО ДЕФ. ДОРОЖКИ
	сч	ТЗНМД(М1)
	сда	64+26
	и	П377
	пе	обвз
	сч	ОЧЛИСД-1(М14)
	сда	64+12
	и	П7777
обв	зп	номдор НОМЕР ДОРОЖКИ -> НОМДОР
	пино	об29(М5)
	сч	ОЧЛИСД-1(М14)
	сда	64+12
	и	E1
	уи	М2
	сч	Е36(М2)
	или	ТЗНМД(М1)  УСТ. В ТЗНМД/У НОМЕР ДОРОЖКИ
	зп	ТЗНМД(М1) (36Р: 0-Я ДОР., 35Р. 1-Я ДОР)
	сч	ОЧЛИСД-1(М14)
	сда	64+2
	и	E11
об1а	или	КУС2-1(М16)
	зп	КУС2-1(М16) УСТ. В 11Р КУС НОМ. 1/2 СТР.
обм	и	E6
	по	об1в НЕ СЕКТ. ОБМЕН
	сч	
	зп	негтб(М16)
	сч	БМБ+1(М16)
	зп	ЛИС2-1(М16)
	сч	КУС2-1(М16)
	пв	МДНАП(М2) ИНВ. N МД -> М15, N НАПР, N МД -> М1
об1в	сч	номдор
	пе	об2а ДОРОЖКА ЗАМЕНЫ, НОМДОР НЕ РАВНО 0
об2	сч	НОМЛД(М16)
	и	E1
	зп	РЯД
	сч	КУС2-1(М16)
	сда	64+23(М5)
	и	П7777
	или	РЯД
	зп	номдор
об2а	сч	ТЗНМД(М1)
	уии	М2(М3)
	и	П7777
	по	об3
	сч	ЯЧКЧ+33(М1)
	по	нетст
	сда	64+6
	нтж	ТЗНМД(М1)
	и	П7777 !МАЛ. НОМ. ПАКЕТА
	по	бобт
перп	сч	ЯЧКЧ+33(М1)
	пв	'7106'(М3)
	уии	М3(М2)
	по	об3
нетст	счи	М1
	или	E48
	зп	ЯЧКЧ+33(М1)
	сч	ТЗНМД(М1)
	и	П7777
	сда	64-6
бобт	или	ЯЧКЧ+33(М1)
	слц	E25
	зп	ЯЧКЧ+33(М1)
	и	E45
	пе	перп
об3	сч	КУС2-1(М16)
	уиа	'3'
	и	E18
	пе	об5 ЧТЕНИЕ (18Р КУС=1)
	сч	типком-3(М16)
	нтж	П5
	по	об5 РАЗМЕТКА
	и	E3
	пе	об3а НЕ ЗАПИСЬ, НЕ СРАВНЕНИЕ
	сч	КУС2-1(М16)
	и	E7
	пе	кс3 ТЕСТОВЫЙ РЕЖИМ
об3а	сч	типком-3(М16)
	нтж	П6
	по	об7 ИДЕТ СРАВНЕНИЕ
	нтж	E2
	пе	об5 НЕ ЗАПИСЬ
*
*** ФОРМИРОВАНИЕ КОТРОЛЬНОЙ СУММЫ ПРИ ЗАПИСИ ***
*
* !ДИСКИ-100 СТР.1218/1520
кс3	сч	ЛИС2-1(М16)
	уиа	(М2)
	уиа	-1023(М7) ЧИСЛ. СВЕРТКА
	пв	ПРУ12(М10)
	сч	П13
	пв	ПОК(М13) УСТ. ПОК
	сч	
	уиа	
КСЗ2	слц	'3777'(М7)
	цикл	КСЗ2(М7) ФОРМИРОВАНИЕ КОНТР. СУММЫ ПО АБЗ.
	уиа	'3' УСТ. БЛПР, БЛЗ
	мод	КНАПР-1(М16)
	уиа	(М10)
	зп	3(М10)
	зп	7(М10)
*
*
***** РОСПИСЬ СЛУЖЕБНЫХ СЛОВ *****
*
*
*
*** СТРУКТУРА СЛУЖЕБНЫХ СЛОВ ДОРОЖКИ:
*
*
* 0 СЛ: 48-37 РР. - НОМЕР ДОРОЖКИ
* 36-28 РР. - СООТВ. 24-16 РР. СЧЕТЧИКА ВРЕМЕНИ
* (ЕДИНИЦА СЧТЕТЧИКА ВРЕМЕНИ ЭКВ. 0,02 СЕК);
* 27Р - НОМЕР НАПРАВЛЕНИЯ ('0' - 3-Е НАПР., '1' - 4-Е);
* 26,25РР - НОМЕР ЛИНИИ;
* 24-22РР - НОМЕР УСТРОЙСТВА;
* 21-7РР - ДАТА ЗАПИСИ (21-16РР - ЧИСЛО, 15-11РР - МЕСЯЦ,
* 10-7РР - МЛАДШАЯ ЦИФРА ГОДА);
* 6-4РР НОМЕР БЭСМ;
* 3Р - НОМЕР М220.
* 3 СЛ. - КОНТР. СУММА
* 1-СС
* '1' 41Р - НОВ. К. СУММ, '1' 43Р - КОНТР. НОМ. ДОР.
* '1' 40Р - СС РАСПИСАНЫ ПО-НОВОМУ (Т.Е. В СООТВ. С 
* ДАННОЙ СТРУКТУРОЙ);
* 39-25РР - 'КЛЮЧ' СС (КОД '70707');
* 24-13РР - НОМЕР ПАКЕТА;
* 12-1РР - КОНТР. СУММА 'СЕКТОРА';
*2-Е СС: ШИФР ЗАДАЧИ, ОТ ИМЕНИ КОТОРОЙ ПРОИЗВЕДЕНА ЗАПИСЬ.
*
*
	счи	М1 РОСПИСЬ ЧЕТНЫХ СС:
	сда	64-21
	зп	РЯД УСТ. НОМ. НАПР., ЛИНИИ, УСТР-ВА
	сч	КУС2-1(М16)
	и	E7
	пе	ОБ4А ТЕСТОВЫЙ РЕЖИМ
	сч	ВРЕМЯ
	сда	64+15
	сда	64-27
	или	РЯД
	зп	РЯД УСТ. ВРЕМЯ
ОБ4А	сч	ГОД
	сбр	КСБГОД
	сда	64+27
	или	РЯД УСТ. ДАТУ И НОМЕР БЭСМ-6
	зп	(М10)
	сч	номдор
	сда	64-36
	или	(М10)
	зп	(М10)
	слц	E37
	зп	4(М10)
	сч	КУС2-1(М16)
	сда	64+42
	уи	М12
	сч	КУС2-1(М16) УСТ. ШИФР. ЗАДАЧИ
	и	E17
	по	A74425
	сч	КУС2-1(М16)
	рзб	П167
	пб	A74426
A74425	мод	НЗАД(М12)
	сч	63
A74426	зп	2(М10)
	зп	6(М10)
	сч	ТЗНМД(М1) !РОСПИСЬ НЕЧЕТНЫХ СС:
	и	П7777
	сда	64-12
	или	КЛЮЧ УСТ. НОМЕР ПАКЕТА, КЛЮЧ
	или	прр
	зп	1(М10)
	зп	5(М10)
	пб	об7 В ЗОНЕ ДЕФ. ДОР.
об5	сч	ТЗНМД(М1)
	и	E39
	пе	об7
	уиа	-7(М10)
об6	мод	КНАПР-1(М16)
	зп	7(М10) ОЧИСТИТЬ ПОЛЕ СЛУЖЕБНЫХ СЛОВ
	цикл	об6(М10)
об7	уиа	-5(М10)
	пб	об8
об29	сч	КУС2-1(М16)
	пб	обм
об2б	сч	ТЗНМД(М1)
	и	E38
	по	об2 НЕ ЧТ. ЗАГ. ДЕФ. ДОР.
	сч	E11
	и	НОМЛД(М16)
	или	КУС2-1(М16)
	зп	КУС2-1(М16)
	пб	об2
обвз	слц	НЗ-3(М5)
	пб	обв
*
*
***** БЛОК ОБРАБОТКИ ПРЕРЫВАНИЙ ОТ НМД *****
*
*
обрпр	сч	ВСЕЕД
	нтж	E8(М15) ПОГАСИТЬ В СОД/Н ПРИЗНАК ОЖИДАНИЯ
	нтж	E24(М15) ПРЕРЫВ. И ПРИЗН. ЗАНЯТОСТИ НАПРАВЛЕНИЯ
	и	СОД-3(М16)
	зп	СОД-3(М16)
	сч	ВСЕЕД
	нтж	E8(М15)
	и	ЯПРМД-3(М16)
	зп	ЯПРМД-3(М16)
	сч	E8(М15)
	мода	
	пв	открмд(М10) ОТКРЫТЬ МАСКУ УСТР-ВА В КМД
	уиа	очкус1(М14)
A74455	уиа	'2003'
	пв	счрс(М10)
	уиа	'3'
	и	E9
	пе	гт
	сч	КУС2-1(М16)
	нтж	D75774
	по	A74463
	сч	КУС2-1(М16)
	зп	D75774
	счи	
	зп	D75777
A74463	сч	рс
	зп	D75775
	сч	типком-3(М16)
	зп	D75776
	сч	ВРЕМЯ
	зп	D75773
	сч	D75777
	слц	E1
	зп	D75777
	нтж	П77
	пе	A74455
гт	сч	БУДАВ-3(М16)
	или	E8(М15)
	нтж	E8(М15)
	и	Е18П1
	зп	БУДАВ-3(М16)
	сч	КУС2-1(М16)
	и	E5
	пе	обрпн
	мода	
	пв	ОПРЗАК(М2)
	сч	ОЧКУСД-1(М14)
	сда	64+42
	уи	М12
	сч	ОЧКУСД-1(М14)
	и	E7
	по	обрпо
*
*** ОБРАБОТКА ПРЕРЫВАНИЙ В ТЕСТОВОМ РЕЖИМЕ ***
*
	счи	М1
	сда	64-42
	или	рс
	зп	рс 48Р - НАПР, 47,46РР - ЛИНИЯ, 45-43РР - УСТР-ВО
	сч	ТЗНМД(М1)
	и	П7777 !ДИСКИ-100 'Е12П1'. 36-25РР N ПАКЕТА
	сда	64-24
	или	рс
	зп	рс
	сч	МД29М-3(М16)
	сбр	E32(М4)
	сда	64+7
	или	рс
	зп	рс
	увв	'4035'
	и	E8(М16)
	по	обрт1
	сч	E37 37Р - СОСТОЯНИЕ ОШМ.
обрт1	или	рс
	мод	НЗАД(М12) ОТВЕТ -> В ПОЛЕ СМ ЗАДАЧИ-ТЕСТА
	зп	
	сч	ОЧКУСД-1(М14)
	и	E18
	по	дисвх1  НЕ БЫЛО ЧТЕНИЯ С МД
	уиа	(М2)
	сч	ОЧЛИСД-1(М14)
	мода	
	пв	ПРУ12(М10)
	сч	ОЧКУСД-1(М14)
	и	E21
	уиа	бо(М6)
	по	прп
	уиа	обр7(М6)
	уиа	(М7)
прпсс	уии	М2(М16)
	уиа	8(М10)
прпсс1	слиа	-1(М10)
	пв	ПРЛСЧА(М5)
	уиа	'2000'
	мода	(М7)
	зп	НМБТР+4(М10)
	уиа	'3'
	пино	прпсс1(М10)
	пб	(М6)
прпсс2	уиа	'2000' !ДИСКИ-100 БЕЗ МЕТКИ
	зп	'3777'(М2)
	уиа	'2003'
	пб	прпб
бо	уии	М6(М15)
	уии	М2(М17)
	уии	М5(М16)
	уии	М17(М12)
	мода	
	пв	ЗАНПРП(М15)
	уии	М15(М6)
	уии	М17(М2)
	уии	М16(М5)
	уиа	'76010'(М7)
	мода	
	пв	прпсс(М6)
	уиа	-5(М6)
	сч	ГУС
ц	зп	1
	цикл	ц(М6)
	и	КРОМЕ
	зп	ГУС
обр7	сч	
	пб	дисвх1
*
*** ОБРАБОТКА ПРЕРЫВАНИЙ ПРИ ОБСЛУЖ. ЗАКАЗА НА ОПОЗН. ПАКЕТА ***
*
*!ДИСКИ-100 СТР.1458/1797
обрпн	мод	пав
	уиа	(М7)
обрпо	сч	E12
	или	E9
	и	рс
	нтж	E9
ав1	по	обр1б
	сч	КУС2-1(М16)
	и	E5
	пе	пос
	сч	E9
	пб	дисвх1
обр1б	сч	БУДАВ-3(М16)
	и	E18
	пе	ав1
	мод	пав
	уиа	(М7)
	сч	БУДАВ-3(М16)
	и	E17
	пе	после
	сч	МД29М-3(М16)
	и	E32(М4)
	уиа	(М3)
	по	обрп
	уиа	1(М3)
обрп	сч	ТЗНМД(М1)
	и	E39
	пе	обр1в
	сч	КУС2-1(М16)
	и	E5
	пе	обр1в В ЗОНЕ ЕСТЬ ДЕФ. ДОР.
	сч	ВСЕЕД
	нтж	Е39П37+1(М3)
	и	ОЧЛИСД-1(М14)
	зп	ОЧЛИСД-1(М14)
	сч	ОЧКУСД-1(М14)
	сда	64+11(М3)
	и	Е26П13
	или	ОЧЛИСД-1(М14)
	зп	ОЧЛИСД-1(М14) УСТ. В ТЗНМД/У N ЗОНЫ
обр1в	сч	СОД-3(М16)
	и	E16(М15)
	пе	обр6в БЫЛ ПОДВОД
	сч	типком-3(М16)
	нтж	П7
	по	обр1а БЫЛО ЧТЕНИЕ ЗГ
	уии	М2(М16)
	сч	КУС2-1(М16)
	и	E11
	сда	64+8
	уи	М10
	пв	ПРЛСЧА(М5)
	зп	РЯД
	зп	ФКУСД
	сч	типком-3(М16)
	нтж	П6
	по	обр4 ВЫПОЛНЯЛАСЬ КОМАНДА СРАВНЕНИЯ
	сч	E21
	и	КУС2-1(М16)
	пе	обр2а ЧТЕНИЕ СС ИЛИ ОПРОС УСТР-В
	увв	'4035'
	и	E8(М16)
	пе	ошм ОШМ=1
	сч	типком-3(М16)
	нтж	E3
	пе	обр2 БЫЛО ЧТЕНИЕ
	мода	
	пв	анкобм(М10)
	сч	П6
	пб	обр
обр1а	сч	E38
	пб	дисвх1
обр2	сч	ЛИС2-1(М16)
	уиа	обр2а(М10)
прп12	уиа	(М2)
	пб	ПРУ12
обр2а	уии	М2(М16)
	сч	КУС2-1(М16)
	и	E11
	сда	64+8
	слц	E1
	уи	М10
	мода	
	пв	ПРЛСЧА(М5)
	зп	РЯД СНЯТЬ БЛПР
	уиа	'3'
	и	Е39П25
	нтж	КЛЮЧ
	пе	обр2г НЕТ СОВПАДЕНИЯ КЛЮЧА
	сч	РЯД
	и	E40
	по	обр2е РОСПИСЬ ПО-СТАРОМУ
	сч	РЯД
	сда	64+12
	зп	РЯД
обр2е	сч	КУС2-1(М16)
	и	E5
	по	обр2в
	пе	оп
обр2в	сч	ТЗНМД(М1)
	нтж	РЯД
	и	П7777
	по	обр3а НА УСТР-ВЕ СВОЙ ПАКЕТ
обр2г	сч	КУС2-1(М16)
	и	E5
	по	обр3 НЕ ОПРОС МД
	пб	'20214'
обр3	сч	ТЗНМД(М1)
	или	E40 УСТ. ПРИЗНАК: СМЕНИЛСЯ ДИСК
	зп	ТЗНМД(М1)
	пб	дрдис
обр3а	пио	обр3с(М3)
	сч	РЯД
	и	E31
	по	обр3с
	сч	ТЗНМД(М1)
	и	E39
	пе	обр3с
	сч	КУС2-1(М16)
	сда	64-12
	нтж	ФКУСД
	и	Е48П37
	по	обр3с
	сч	E30
	пб	дисвх1
обр3с	сч	КУС2-1(М16)
	и	E21
	по	би НЕ ЧТЕНИЕ СЛУЖ. СЛОВ
	сч	ТЗНМД(М1)
	или	E40 УСТ. ПРИЗНАК: НА УСТР-ВЕ ТРЕБ. ДИС.
	нтж	E40
	зп	ТЗНМД(М1)
	пб	в
кс5	сч	П13
	пв	ПОК(М13)
	сч	КУС2-1(М16)
	и	П60
	по	обр7 БЫЛ ОБМЕН СТРАНИЦЕЙ
	уиа	1(М2) 1 -> М2
	сч	ОЧКУСД-1(М14)
	и	E18
	нтж	КУС2-1(М16)
	и	E18
	нтж	КУС2-1(М16)
	зп	негтб(М16)
	сч	ОЧЛИСД-1(М14)
	пв	ПРУ12(М10)
	мода	
	пв	ПЕРЕН(М10) ПЕРЕН. ИНФ. С БУФ. (ЧТ) ИЛИ В БУФ. (ЗП)
	сч	ОЧКУСД-1(М14)
	и	E18
	пе	обр5 В КУС ПРИЗНАК ЧТ, ЗАКАЗ ВЫПОЛНЕН
	зп	НОМЛД(М16)
	сч	ТЗНМД(М1)
	и	E39
	зп	КУСКИ(М16)
	сч	квтз
	и	ТЗНМД(М1)
	зп	ТЗНМД(М1)
	пино	об(М3)
	сч	ВСЕЕД
	нтж	E13
	и	ОЧЛИСД-1(М14)
	зп	ОЧЛИСД-1(М14)
об	сч	КУСКИ(М16)
	по	обр3д
в	сч	
обр	зп	типком-3(М16)
обр6в	сч	E1
	пб	дисвх1
обр3д	сч	E3
	пб	обр
обр4	зп	типком-3(М16)
	пв	анкобм(М10)
	сч	КУС2-1(М16)
	и	E6
	по	обр7 БЫЛ ОБМЕН СТРАНИЦЕЙ
обр5	уиа	обр7(М10) ОБР7 -> М10
	пб	взвбуф
дрдис	сч	E22 22Р -> ЗНЕВЫП
	пб	дисвх1
ошм	мод	типком-3(М16)
	сч	E29
дисвх1	зп	зневып-3(М16)
	сч	СОД-3(М16)
	или	E16(М15) ГАШЕНИЕ ПРИЗНАКА ПОДВОДА
	нтж	E16(М15)
	зп	СОД-3(М16)
	пб	(М11)
ВЫБРЗК	сч	ВСЕЕД
	нтж	E32(М4)
	и	ЗАНМД-3(М16)
	зп	ЗАНМД-3(М16)
	сч	
	зп	НОМЛД(М16)
	зп	КУСКИ(М16)
	зп	типком-3(М16)
	сч	квтз
	и	ТЗНМД(М1) !ДИСКИ-100 МЕТКА 'выбз'
	зп	ТЗНМД(М1)
	уиа	'77666'(М2) !ДИСКИ-100 МЕТКА 'выбрз'
	мода	
	пв	ДВОЧД(М10) ВЫБРОСИТЬ ЗАКАЗ И ПРОДВИНУТЬ ОЧЕРЕДЬ
	сч	ШКОМД
	или	ШКМД
	зп	ШКМД
	сч	ШКОДП
	или	ШКМДП
	зп	ШКМДП
	сч	
	зп	ШКОДП
	зп	ШКОМД
	сч	РЯД2
	и	E17
	уиа	ВШГ(М10)
	пе	ОБРФ
	сч	ШЗЗ
	или	Е48-1(М12)
	нтж	Е48-1(М12)
	зп	ШЗЗ РАЗРЕШИТЬ СЛЕД. ЗК
	пб	СНЗЩД
СНЯЛИЗ	сч	41(М10)
	и	Е47П1
	зп	41(М10)
	сч	ШМАРС
	и	Е48-1(М12)
	по	выбз
	или	Ш1М
	зп	Ш1М
	сч	Е48-1(М12)
	нтж	ШМАРС
	зп	ШМАРС
	сч	НОМАРС+1
ВЫБИ	уии	М5(М16)
	или	E30
	уиа	ВШГП(М10)
	пв	ЗАПВЕТ(М16)
	уии	М17(М2)
	мод	НЗАД(М12)
	уиа	(М2)
	уии	М16(М5)
	сч	РЯД2
	и	E7
	пе	очкус1 ОТКРЫТЬ ТЕСТ-ЗАДАЧУ
	пио	обр9(М17) ЗАДАЧА НЕ ЖДЕТ СТРАНИЦУ
	счи	М13
	сда	64-23
	или	Е36
	зп	РЯД
	нтж	НЗАД(М12)
	сда	64+23
	и	РОДОН+3
	пе	обр9 ЗАДАЧА ЖДЕТ ДРУГУЮ СТР.
	сч	НЗАД(М12) ?ПОГАСИТЬ В УС. ПРИЗНАК ОЖИДАНИЯ СТР.
	нтж	РЯД
	зп	НЗАД(М12)
	пб	очкус1
ОБРФ	мод	ТУС-1(М12)
	уиа	(М2)
очкус1	уии	М5(М15)
	сч	Е48-1(М12) ОТКРЫТЬ ЗАДАЧУ В ШГ
	мода	(М10)
	пв	(М15)
	уии	М15(М5)
обр9	сч	ипзмд1
	нтж	E48
	слц	33(М2) ПРИБАВИТЬ ВРЕМЯ РАБОТЫ П.О. МД
	зп	33(М2)
	сч	E48
	зп	ипзмд1
	уиа	'3'
	пб	(М11)
выбз	счи	М12
	пб	ВЫБИ
*
*** ДИАГНОСТИКА ОШИБОК, ОФОРМИТЬ ОКОНЧАНИЕ*** 
*** В ЗАВИС. ОТ СИТУАЦИИ                  ***
*
*!ДИСКИ-100 СТР.1738/2124
обрнев	сч	зневып-3(М16)
	и	е36е35
	по	обрвн1
	сч	типком-3(М16)
	нтж	E3
	по	A74772
	сч	П377
	сда	64-26
	нтж	ВСЕЕД
	и	ТЗНМД(М1)
	зп	ТЗНМД(М1)
	сч	
	зп	НОМЛД(М16)
	сч	МД29М-3(М16)
	и	E32(М4)
	пе	д5г
	сч	ОЧЛИСД-1(М14)
	нтж	E13
	зп	ОЧЛИСД-1(М14)
	пб	д5г
A74772	сч	П6
	зп	типком-3(М16)
	пб	д5г
*
*
***** ИЗМЕНЕНИЕ МАСКИ КМД *****
*
*
* !ДИСКИ-100 СТР. 1766/2153
гашмд	сч	E9  ВХОД ПРИ ГАШЕНИИ РМ КМД
открмд	уиа	-10(М2)
	уиа	'3'
откр1	сбр	ВСЕЕД  ВРЕМ. ВЫДЕРЖКА = 50 МКСЕК
	цикл	откр1(М2)
	нтж	Е11Е9
	увв	'20'(М16)
	уи	
	уиа	-10(М2)
откр2	сбр	ВСЕЕД  ВРЕМ. ВЫДЕРЖКА = 50 МКСЕК
	цикл	откр2(М2)
	пб	(М10)
*
*** ЧТЕНИЕ РЕГИСТРА СОСТОЯНИЯ ***
*
* !ДИСКИ-100 СТР. 1794/2194
счрс	уиа	-1(М2) !МАЛ. СМ. = ЗДВ, ЕСЛИ ОПРОС 13-22РР. РС
	сбр	ВСЕЕД  !МАЛ. 11В, ЕСЛИ ОПРОС 1-12 РР. РС
счрс1	сч	П11+1(М2)
	увв	'20'(М16)
	уи	
	уи	0	ЗАДЕРЖКА ДЛЯ БЭСМ-6
	уи	
	увв	'4000'(М16)
	пино	счрс2(М2)
	сда	64-12
	или	рс
счрс2	зп	рс
	цикл	счрс1(М2) 24-1 РР. РЕГИСТРА СОСТОЯНИЙ -> СМ
	пб	(М10)
*
*** N МАССИВА, ТИП КОМАНДЫ, N ДОРОЖКИ -> КМД ***
*
* !ДИСКИ-100 СТР. 1818/2231
об8	зп	1
	цикл	об8(М10)
	сч	СОД-3(М16)
	или	E24(М15)
	зп	СОД-3(М16)
	уиа	уямгрп(М7)
	сч	ТЗНМД(М1)
	уиа	(М5)
	и	E39
	по	мс1 НЕТ ДЕФ 
	сч	ТЗНМД(М1)
	сда	64+26
	и	П377
	по	мс1 ОБМЕН С ХОР.
	сч	КУС2-1(М16)
	и	E11
	сда	64+10
	пб	мс2
мс1	сч	номдор
	и	E1
мс2	зп	РЯД1
	пв	гашмд(М10) ГАШЕНИЕ РМ В КМД
	сч	E8(М16)
	увв	'31'
	сч	МД29М-3(М16)
	и	E32(М4)
	по	р
	уиа	1(М5)
р	сч	ЛИС2-1(М16)
	рзб	'3227'
	зп	РЯД2
	сч	КУС2-1(М16)
	и	ну20
	или	РЯД2
	пино	зе(М5)
	или	РЯД1
зе	увв	(М16) ЗАДАНИЕ МАССИВА ОБМЕНА
типобр	сч	МД29М-3(М16)
	и	E32(М4)
	уиа	(М5)
	по	тип
	уиа	1(М5)
	сч	номдор 29МГБ МД
	и	E1
	сда	64-9
тип	или	E8(М15)
	пв	открмд(М10) ОТКРЫТЬ МАСКУ УСТР-ВА
типоб	уиа	'2003' !ДИСКИ-100 БЕЗ МЕТКИ
	сч	СОД-3(М16)
	и	E16(М15)
	пе	типоб1 ВЫДАТЬ КОМ. ПОДВОДА
	сч	ОЧКУСД-1(М14)
	и	E7
	по	типоб7 НЕ ТЕСТОВЫЙ РЕЖИМ
	сч	КОМТР-3(М16)
	сда	64+42 УСТ. ИДЕНТИФИКАТОР
	или	КОМТР-3(М16)
	и	П77
	пб	типоб2 !МАЛ. ВЫДАЧА КОМ.  "ТИП ОБМЕНА"
типоб7	сч	ТЗНМД(М1)
	и	E39
	пе	типоб8 В ЗОНЕ ЕСТЬ 1 ДЕФ. ДОРОЖКА
	сч	номдор
	вч	п7640-1(М5)
	по	типоб9 ЭТО ДОРОЖКА ЗАМЕНЫ
	сч	
	пб	типоб5
типоб8	сч	ТЗНМД(М1)
	и	е36е35
	нтж	е36е35
	по	типоб5 ОБМЕН НЕ С ДОР. ЗАМЕНЫ
типоб9	сч	E6
типоб5	или	типком-3(М16)
	пб	типоб2 
типоб1	сч	ОЧКУСД-1(М14)
	и	E7
	по	типоб6 НЕ ТЕСТОВЫЙ
	сч	КОМТР-3(М16)
	и	E1
	по	типоб6 ПОДВОД
	увв	'20'(М16) СБРОС НА 0 ЦИЛ.
	пб	типоб4
типоб6	сч	E2
типоб2	увв	'20'(М16)
	уи	
	сч	типком-3(М16)
	и	П7
	нтж	П7
	по	типоба ЧТЕНИЕ ЗГ
	сч	номдор
	сда	64(М5)
	или	E12
	уи	
	увв	'20'(М16) ВЫБОР ДОРОЖКИ
типоба	уи	
	увв	0     !МАЛ. СБРОС СТВ(I)
типоб4	сбр	
	уи	
	сбр	0	 ВРЕМ. ЗАДЕРЖКА 12 МКСЕК
	пв	гашгрп(М10)
	сч	СОД-3(М16)
	или	E8(М15) УСТ. ПРИЗНАК ВЫДАННОГО ЗК (В8-1 Р. СОД)
	зп	СОД-3(М16)
	сч	ЗАНМД-3(М16)
	или	E32(М4)
	зп	ЗАНМД-3(М16)
	уиа	'3' ГАШ. БЛПР
	сч	БУДАВ-3(М16)
	и	Е16П1
	или	E8(М15)
	зп	БУДАВ-3(М16)
	пб	(М7)
ENQ	уиа	'3'
	уи	
	уиа	ENQ1(М16)
	уиа	'2003'
Q	зп	И20
	зп	СМ
	сбр	НАПРМГ
	зп	РЯОД
	счи	М16
	уиа	РК(М17)
	счим	М1
	счим	М2
	счим	М3
	зп	(М17)
	уиа	И17(М17)
	пв	ПРКА(М3)
	сч	(М17)
	уим	М3
	уим	М2
	уим	М1
	счи	М16
	и	П37
	уи	М17
	сч	РК
	уи	М16
	сч	СМ
	и	E42
	сда	64+41
	слц	П3
	пб	(М16)
ENQ1	уи	М16  N НАПР -> М16
enq3	сч	eq2 !СТР. 1667,1669-70 ПЕРЕМЕННЫЕ ЛОКАЛЬНЫЕ
	пб	QQQQ 
eq2	конд	A(eq3) !ИМЕНА МЕТОК ПРИДУМАЛ. ВРОДЕ НЕ ДУБЛ.
eq3	сч	ШЗМД-3(М16)
	и	E32(М17)
	пе	дисвх2
	сч	И20
	нтж	НОММЛ1
	и	НАПРМГ
	пе	eq
	сч	ГУС
	зп	D73537
	счи	М15
	зп	см1
	пб	eq
дисвх2	уиа	ENQ(М16)
	мод	НЗАД
	сч	Е48-1
	или	ШКЗАКС
	зп	ШКЗАКС
	сч	И20
	зп	СМ
	пб	ТБУФ13
enq2	сч	E32(М17)
	или	ШЗМД-3(М16)
	зп	ШЗМД-3(М16)
	сч	НЗ-3(М16)
	по	Q1
	сч	E32(М17)
	или	ЗУС-3(М16)
	зп	ЗУС-3(М16)
	уии	М17(М6)
	пв	ОСВУ(М6)
	уии	М6(М17)
Q1 УИА 3 ГАШ. БЛПР
 ПБ (М15)
*
*
* D Е Q
* -----
*
* !ДИСКИ-100 СТР. 2121/2631
DЕQ УИА 1027
 ПВ Q(М16)
 УИ М16
	сч	И20
	нтж	НОММЛ1
	и	НАПРМГ
	пе	qc
	сч	ГУС
	нтж	D73537
	и	Е48П42
	по	A75157
	уиа	E38(М16)
	пб	СТ175
A75157	зп	D73537
qc	сч	D75161
	пб	QQQQ
D75161	конд	A(*+1)
 СЧ ШЗМД-3(М16)
 ИЛИ Е32(М17)
 НТЖ Е32(М17)      ОСВОБОДИТЬ МД
 ЗП ШЗМД-3(М16)
 СЧ ШКЗАКС
 ИЛИ ШГ            <ШЗАКЗ>∨->ШГ
 ЗП ШГ
 СЧ ШКЗАКЗ
 ИЛИ ШГП
 ЗП ШГП
 СЧ 0
 ЗП ШКЗАКЗ 0 -> ШКЗАКЗ
 ЗП ШКЗАКС
 	сч	E32(М17)
	и	ЕNQМДС-3(М16)
 ПЕ Q1  ЕСТЬ ЗАХВАТ ОТ ПОЛЬЗ
	сч	E32(М17)
	уии	М17(М6)
	мода	
	пв	ОСВКМД(М6) ОСВОБОЖДЕНИЕ КМД
	уии	М6(М17)
	пб	Q1
*
*
***** СФОРМИРОВАТЬ ЗАКАЗ, ПОСТАВИТЬ В ОБЩУЮ ОЧЕРЕДЬ К НМД
*
*
* !ДИСКИ-100 СТР. 2149/2669
физомд	или	E19
	пб	ф37г
ВХОДМД ЗП ИНФСД         ИНФ.СЛОВО->ИНФСД
 СЧ УСМД УС ЗАДАЧИ ПОЛЬЗОВ. -> УСМД
 СДА 64+НО
 И П77
 УИ М12           СИСТЕМНЫЙ НОМЕР ЗАДАЧИ->М12
	уиа	1(М5)
 СЧ ИНФСД
 СЛЦ Е16
 И Е18
 ПО ФЗ3           МБ-ДИСК
	уиа	(М5)
 СЧ ИНФСД
 СДА 64+12
 И Е6П1
 УИ М6
 СДА 64+1
 УИ М2
	счмр	
	сда	64+45
 ПВ ДАЙНУД(М10) ДАЙ ФИЗ. НОМЕР УСТР-ВА И ДЕЛЬТУ
 ПИНО ЗОН2(М11)
 СЧ ИНФСД
 И П3777
 НТЖ П3777
 ПЕ ЗОН2
 СЧ Е34П25
 ПБ ОБХПР
ФЗ3 НОП ,
 СЧ АВОС(М15)
 СДА 64+15
 И Е11П1
 ЗП РЯД1
 И Е6П1
 УИ М2
 ПО НЕТМЛ
 СЧ УКАЗД(М15)
 И Е32-24(М2)
 ПО НЕТМЛ
 СЧИ М2
 СДА 64+1
 УИ М2
* СЧ РЯД1
* И Е1
* СДА 64-2
	счмр
        сда     64+45
 ПВ ДАЙНУД(М10)   ДАЙ ОТН.НОМЕР УСТР-ВА И ДЕЛЬТУ
 СЧ РЯД1
 СДА 64+6          ВЫДЕЛИТЬ МБ НАЧАЛЬНЫЙ
 ЗП РЯД1
 СЧ ИНФСД
 СДА 64+12
 И Е5П1
 ВЧ РЯД1          <N НАПР,N МБ (МАТ)-МБ НАЧ>->СМ
	сда	64-29
	слц	ФКУСД
	зп	ФКУСД
	сч	ИНФСД
	и	П37
фи5	сда	64-24
	слц	ФКУСД
	пино	'16562'(М11)
	и	Е34П25
ОБХПР	зп	ФКУСД
	пб	ХЛУМ
ХЛОМ	и	Е36
	сда	64+29 УСТ. В ФКУСД ПРИЗНАК ТЕСТОВОГО РЕЖИМА
	или	ФКУСД
	зп	ФКУСД
	ржа	'3'
	и	E7
	пе	ФЗ6 ТЕСТОВЫЙ РЕЖИМ
	сч	41(М15)
	и	E2
	пе	ВЫБРАВ СНЯТЬ ЗАДАЧУ - НЕ ВЫПОЛНЕН ПРЕДЫД. ЗАКАЗИЙ АК
	сч	ФКУСД
	пино	ФЗЗ(М11)
	сда	64+24
	нтж	П1777
	по	ФЗ5А ОБРАЩЕНИЕ К ПРЕДЗОНЕ
	сч	ФКУСД
ФЗЗ	вч	блоз+1(М11)
	по	ЗВНЕПР НОМЕР ЗОНЫ -> ДОПУСТ. (>1743)
ФЗ5А	сч	ИНФСД
	слц	
	пе	ФЗ6 ОБМЕН СТРАНИЦЕЙ
	зп	РЯД
	сда	64+12
	и	П77
	уи	М10
	вч	П30
	пе	ПЕН
	сч	53(М15)
	и	43(М10)
	пе	САР
ПЕН	сч	РЯД
	сбр	Ч20+1(М5)
	сда	64+44
	или	E6
ФЗ5В	или	ФКУСД
	зп	ФКУСД
ФЗ6	сч	35(М15)
	слц	E1
	зп	РЯД
	и	E15
	пе	ФЗ7 ЧИСЛО ОБРАЩЕНИЙ К МД > 16384
	сч	РЯД 
	зп	35(М15) +1 К СЧ-КУ ОБРАЩ. (В ИПЗ)
	и	П7
	пе	ФЗ7 СЧ-К ОБРАЩЕНИЙ <> N /\ 8
	сч	E44(М15)
	слц	П12 +10 К СЧ-КУ ПОТЕРЬ В ИПЗ ПОЛЬЗОВ.
	зп	E44(М15)
ФЗ7	уии	М10(М16)
	пб	ДБИР
САР	сч	ИНФСД
	сда	64+24
	и	П17
	или	E6
	пб	ФЗ5В
ЗОН2	сч	ИНФСД
	пб	фи5
взвбуф	уии	М5(М15)
	сч	Е48-1(М12)
	мода	
	пв	ВШГП(М15)
	уии	М15(М5)
	пб	(М10)
зкоч	мода	
	пв	МДНАП(М2)
ф31и	сч	ШОЧЛ(М3)
	или	Е48-1(М14) ПОСТ. ЗАКАЗ В ОЧЕРЕДЬ К ЛИНИИ
	зп	ШОЧЛ(М3)
	сч	ШОЧНМД-3(М16)
	или	Е48-1(М14)
	зп	ШОЧНМД-3(М16) ПОСТ. ЗАКАЗ В ОЧЕРЕДЬ К НАПР.
ф31c	сч	ШОЧМД(М1)
	или	Е48-1(М14)
	зп	ШОЧМД(М1)
	пб	(М10)
ф37г	уиа	2(М10)
	зп	ФКУСД
	пб	'5274'
ФЗ1Е	уиа	см1+1(М10)
	пб	ф31и
* !МАЛ. 5936(ВЗУ), ЗАТЕМ Ф39А, 16673(БОЭК1) - ВСТАНЕМ 
* В ОЧЕРЕДЬ ОЧКУСД, ЗАТЕМ Ф31Е(75625) (ДИСКИ), ЕСЛИ НЕТ РЗХ
* ЕСЛИ РЗХ, ТО ОТМЕТИМСЯ ТОЛЬКО В ОЧЕРЕДИ К УСТРОЙСТВУ(ШОЧМД)
* И  ОЧКУСД, И ЗАТЕМ Ф315(74060) 
*** ДАЙ N УСТР-ВА И ДЕЛЬТУ
*
*
БМ	уиа	1(М1)
	сч	27(М15)
	и	E28
	пе	ЗПМД
	сч	ИНФСД
	и	E40
	пе	ну1
	уиа	(М6)
	сч	ИНФСД
	и	E13
	пе	НУ2
	уиа	1(М6)
НУ2	мода	(М15) !ДИСКИ-100 МЕТКА "НУ-1"
	сч	29(М2)
	и	E8(М6)
	уиа	50(М6)
	по	МДВЫБР
	уиа	(М1)
ну1	сч	41(М15)
	и	E48
	по	ОК
	сч	ТЗНМД(М16)
	и	E47
ЗПМД	по	ОК1
	счи	М16
	и	E6
	сда	64+5
	уи	М2
	счи	М16
	и	П37
	уи	М4
	сч	МД29М(М2)
	и	E32(М4)
	уиа	(М11)
	уиа	-18(М7)
	по	НЕ100М
	уиа	-23(М7)
	уиа	1(М11) 29 МГБ МД
НЕ100М	сч	41(М15)
	и	E48
	нтж	E48
	по	ЗАПСДВ
	сч	РЯД2
	сда	64+6
	сда	64-6(М7)
	и	Е34П25(М11)
ЗАПСДВ	зп	ФКУСД
	пб	(М10)
ВЫБРАВ	уиа	42(М6)
	пб	МДВЫБР 42 -> М6
ЗВНЕПР	уиа	34(М6) 34 -> М6
	пб	МДВЫБР 
НЕТМЛ	уиа	33(М6) 33 -> М6
	пб	МДВЫБР 
ОК	сч	РЯД
	и	E2(М1)
ОК1	уиа	49(М6) НЕТ ПАРОЛЯ
	пе	ЗПМД
МДВЫБР УИИ М17(М12)
 СЛИА ПЗ(М17)
 УИИ М16(М6)
 УИА Д3(М1)
 СЧ ИНФСД
 ЗП (М15)
 ПБ ВЫ
ЗАПРОС	уиа	'2003'
	сч	ЗАНКМД-3(М16)
	и	E48
	по	откли1
отклин	сч	ВРЕМЯ
	зп	СИСТ+1(М16)
	сч	ОСВЛИН
	увв	'20'(М16)       отключили текущую линейку
	уи	
	пв	гашгрп(М10)     закрыли прерывания
	сч	отлишк
	пб	QQ2
отлишк	конд	A(*+1)
	сч	ОЖОСВ-3(М16)
	сда	64+39
	и	П3
	или	E13
	или	E10
	или	E9
	увв	'20'(М16)       установка номера линейки
	уи	
	пб	(М11)
откли1	сч	П167+1(М16)
	по	отклин
	нтж	ОЖОСВ-3(М16)
	сда	64-2
	и	Е44П42
	пе	отклин
д1а	зп	ОЖОСВ-3(М16)
	пб	Д1
 ЭКВИВ (ЕМБФ,Е24)
СОСТАВ ВНЕШ ТОП,ТБД,УКАЗД,АВОС
БОЭК1 ВНЕШ МДНАПС,УСТШЗ,ОПР,ДАЙНУД,ЗАПВЫХ
ВИСП ВНЕШ ВШГ,ВШГП,ИЗШГ,ИЗШГП
КИТ ВНЕШ АКТОП,Е24П17,Е26П13,Е32П25,Е39П37,Е48П42
КИТ ВНЕШ КЛЮЧАР,КРЗБТР,КСБГОД,ЛС641,ОЖОСВ,СИСТ,Ч10,Ч20,ШОЧЛ
КИТ ВНЕШ ШОЧМД,ШОЧНМД,ЯПРМД,КОМТР
РЕЗАРХ ВНЕШ D75774,D75775,D75776,D75777,D75773
ХЛАМ ВНЕШ обрвн1,гашгрп,зсс,чр2,зс4,зс11,зс13
ХЛАМ ВНЕШ зсс1,зс100,дзс,осж,освм,выза,вызав
ХЛАМ ВНЕШ ос1,осе,опс1,eq,анкобм,прп,прпб
ХЛАМ ВНЕШ ХЛУМ,ДБИР,ДВОЧ,ДВОЧД,ДИ,ДОС,ОСВУ,ПЕРЕН,ПРУ12
ХЛАМ ВНЕШ СНЗЩД,УПРИ,ВХД
ВЗУ ВНЕШ ФИЗУР,ПОК,ВЫ,ПРКА
ДМЛМБ ВНЕШ ПРЛСЧА
МОТТ ВНЕШ опргд1,мотди2,мотди1,(ДИП,ДДИП),ДКП,ЗАН,QQ2,QQQ,QQQQ
ДИСП70 ВНЕШ ЗАПРК,БМВ,БПУ,БВЗ,ТВ67А,ВИСП16,ТБУФ13,(Е5П1,П37)
ДИСП70 ВНЕШ ГАШЗАН,ВРЕМЯ,ВСЕЕД,ГОД,ГУС,СТ175,Е15П11,Е15П1
ДИСП70 ВНЕШ Е15П2,Е18П1,Е21Е18,Е24П1,Е34П25,Е37Е36,Е39П25
ДИСП70 ВНЕШ Е40П1,Е43Е42,Е44Е43,Е44П42,Е47П1,Е48Е47,Е48П16
ДИСП70 ВНЕШ Е48П25,Е48П37,Е48П43,ЗАНПРП,ЗАПВЕТ,И15,И17,И20
ДИСП70 ВНЕШ КЛЮЧ,КРОМЕ,МГРП,МД29М,НАПРМГ,НЗАД,НМБТР,НОММЛ1
ДИСП70 ВНЕШ ОЧКУСД,П12,П13,П1777,П17,П2007,П30,П3777,П377
ДИСП70 ВНЕШ П37,П3,П5,П60,П6,П7777,П77,П7,ПРИП,РК,РМД,РМР
ДИСП70 ВНЕШ РОДОН,РЭ1,РЭ2,РЭ3,Ш1М,СМ,ТЗНМД,ФКУСД,НОМАРС
ДИСП70 ВНЕШ ШАРСИС,ШГ,ШГП,ШЗЗ,ШЗПОМД,ШКЗАКЗ,ШКЗАКС,ШКМД
ДИСП70 ВНЕШ ШКМДП,ШКОБМ,ШКОДП,ШКОМД,ШКПРЕ,ШМАРС,ЭК9,ЯЧКЧ
ДИСП70 ВНЕШ ТУС,БМБ,ИВ25,УСТПРП,ЗАХЗАН,Е46П48,ТВ67,НО
ДИСП70 ВНЕШ РМД1,КУС2,КНАПР,ЛИС2,ОЧЛИСД,(Е3П1,П7),(Е6П1,П77)
ДИСП70 ВНЕШ (Е11П1,П3777),ПЗ,ТУСП
АВМД ВНЕШ пос,оп,после,би,НОВ,НОВД
 ВХОД РАБМД,КУСКИ,СЧЗАКД,НОМРМД,РЯД,РЯД1,РЯД2,Д10,ПРОХ,РИМ
 ВХОД Д1,Д3,ОПРГД,Д7В,ПС1,дисшк6,дисвх3,МДНЕИС,П11,ЗАНЛ
 ВХОД дисвх1,дисвх2,Q1,ЗВНЕПР,enq2
 ВХОД ИНФСД,ХЛОМ,ИПЗМД,МДНАП,ОСВ1,СНЯЛИЗ,ПРО,АПРО,ОСУ
 ВХОД дисшк2,дисшк5,рад,О40,квтз1,кс5,НОМСВ,РУ
 ВХОД рс,дисшк3,дисшк4,типком,ДАЙГОТ,ну20,п3700
 ВХОД ЗАВ,ДГ2,нпр2,Д33,ОСВМД,СОД,NКОБ,квтз
 ВХОД РЯОД,прб,ПРЗАХВ,д11,д102,прмд,дг5,физомд
 ВХОД е36е35,ВХОДМД,ф37г,нм,КТОМЛ,ДКК
 ВХОД РАЗЛ,нав,КОНЗОН,Е16П1,ДВ,ЗАНМД,прр,Е11Е9,Д3А1
 ВХОД ОСВЛИН,счрс,ВЫБРЗК,взвбуф,д5г,д5а,ф31c
 ВХОД негтб,ВЫК,зневып,БУДАВ,ЗУС,ПРЗАПС,НОМЛД,РАОБЩ
 ВХОД пав,УСМД,ОБХПР,НЕТМЛ,КТОМ,ЗАНКМД
 ВХОД БМ,ПРД,дисшк1,НГД,ОСЧК,ФЗ1Е,ФЗ15,МДНАП1
 ВХОД зс1,сохк,прп12,ОСВКМД,ЕNQМДС,ШЗМД
 ВХОД ос4,ПРОСВ,НЗ,КОПЗ
 ВХОД прпсс2
 ВХОД ENQ,DEQ

	ФИНИШ
