IO	СТАРТ	'1540'
	Б
	М
	пам	1
ДЛИНА	конд	п'00000.'
INPUT	счи	М15
	пб	ВВОД
OUTPUT	счи	М15
	пб	ВЫВОД
ПРИЕМ	конд	в'0430000004000011'
СИМ	пам	1
ВЫДСТР	конд	в'0420000004000011'
	конд	п'500000'
ИСЭ71	кк	'21',ПРИГЛ
	кк	'0',ПРИГЛ
	конд	п'500000'
ДЛЯЭ71	конд	в'0420000004000323'
И15И16	пам	1
ИСВВОД	кк	'34',РЯ
	кк	'0',РЯ
	конд	п'500000'
УСТ	конд	п' УСТ.0'в'143'
ОТМ	конд	п' ОТМ.0'в'143'
НЕСПАТ	конд	п' НЕ СП'
	конд	п'АТЬ!0 'м8в'377'
ПРИГЛ	конд	п'0>0000'м40в'231'м24в'377'
ИДТИ	конд	п'ИДТИ00'м8в'136'в'377'
ИСЭ64	конд	в'0400000004000000'
	конд	в'0000000040000000'
ИСЭ64А	конд	в'0400000004000000'
	конд	в'0005000040000000'
ИСЭ64Б	конд	в'0400000004000000'
	конд	в'0012000040000000'
RETURN	пам	1
СЧЕТСТ	пам	1
РЯ	пам	1
	конд	п'500000'
Е25	конд	п'001000'
Е19	конд	п'000400'
Е3	конд	п'000004'
Е2	конд	п'000002'
Е1	конд	п'000001'
ВСЕЕД	конд	в'7777777777777777'
Е48П25	конд	в'7777777700000000'
М16ЕТХ	конд	в'0000000077600000'
ЕТХ	конд	в'0000000000000377'
М40ЕТХ	конд	в'7760000000000000'
D01610	конд	в'7400000000000000'
Е39	конд	п'0F0000'
Е37	конд	в'0001000000000000'
СЕМСЕМ	конд	п'000077'
Е38	конд	п'0А0000'
Е2Е1	конд	п'000003'
ВЫВОД	зп	RETURN
	счи	М16
	сда	64-36
	или	ДЛЯЭ71
	зп	РЯ
	сч	IO
	пе	ЗНАЕМ
	Э71	ВСЕЕД
	нед	0
	сда	64-12
	зп	IO
	или	РЯ
	зп	РЯ
	уиа	-10(М16)
Ц1	сч	IO
	или	УСТ(М16)
	зп	УСТ(М16)
	слиа	2(М16)
	пино	Ц1(М16)
	сч	Е2
	или	Е19
	зп	IO
ЗНАЕМ	уиа	0(М15)
	и	Е2
	по	НЕЭКР
	сч	РЯ
	и	Е37
	пе	G01661
	уиа	'77454'(М15)
	сч	0
	зп	И15И16
Ц2	слиа	'325'(М15)
	мода	-1(М15)
	сч	0(М1)
	уиа	-5(М16)
Ц3	зп	СИМ
	и	М40ЕТХ
	нтж	М40ЕТХ
	по	ПОЕТХ
	нтж	D01610
	по	ПОПРОБ
	счи	М15
	сда	64-15
	зп	И15И16
	счи	М16
	или	И15И16
	зп	И15И16
ПОПРОБ	сч	СИМ
	сда	64-8
	цикл	Ц3(М16)
	слиа	'77454'(М15)
	пино	Ц2(М15)
ПОЕТХ	сч	И15И16
	уиа	0(М15)
	по	G01661
	сда	64-3
	уи	М16
	сда	64+18
	уи	М15
	пио	G01702(М16)
	мода	-1(М1)
	слиа	0(М15)
G01656	сч	0(М15)
	зп	СИМ
	сч	ЕТХ
	сда	64+8(М16)
	или	0(М15)
	зп	0(М15)
G01661	Э71	РЯ
	пио	G01665(М15)
	зп	РЯ
	сч	СИМ
	зп	0(М15)
	уиа	0(М15)
	сч	РЯ
G01665	и	Е25
	пе	ВЫХОД
	сч	СЧЕТСТ
	слц	Е1
	зп	СЧЕТСТ
	нтж	ДЛИНА
	пе	НЕЭКР
	зп	СЧЕТСТ
	сч	ИДТИ
	зп	РЯ
	Э71	ИСВВОД
	сч	РЯ
	сда	64+40
	нтж	ЕТХ
	по	НЕЭКР
	уиа	1(М15)
НЕЭКР	сч	Е1
	или	Е19
	и	IO
	по	G01701
	Э64	ИСЭ64Б
G01701	счи	М15
	пб	ВЫХОД
G01702	слиа	'77454'(М15)
	пио	G01661(М15)
	мода	'324'(М1)
	слиа	0(М15)
	уиа	-48(М16)
	пб	G01656
ВВОД	зп	RETURN
	сч	0
	зп	СЧЕТСТ
	счи	М16
	сда	64-36
ЕЩЕРАЗ	или	ПРИЕМ
	зп	РЯ
	и	Е39
	по	НЕАЦП1
	сч	IO
	и	Е1
	по	НЕАЦП1
	Э64	ИСЭ64
НЕАЦП1	Э71	РЯ
	и	Е25
	пе	СРЫВ
	сч	РЯ
	и	Е38
	по	G01721
	Э71	ИСЭ71
	пб	G01725
G01721	сч	IO
	и	Е3
	по	G01723
	Э71	ВЫДСТР
G01723	сч	IO
	и	Е1
	по	G01725
	Э64	ИСЭ64А
G01725	сч	Е25
	или	Е19
	и	IO
	нтж	IO
	зп	IO
	уиа	-9(М15)
G01730	сч	0(М1)
	нтж	ПРИКАЗ+9(М15)
	и	Е48П25
	мод	ПРИКАЗ+9(М15)
	по	0
	цикл	G01730(М15)
ВЫХОД	мод	RETURN
	пб	0
ПРИКАЗ	конк	п'НАЧ'
	дк	'0',PACKP
	конк	в'77600000'
	конк	A(ВЫХОД)
	конк	п'///'
	конк	A(СЛЕШИ)
	конк	п'ШАГ'
	конк	A(ШАГ)
	конк	п'КНЦ'
	конк	A(КНЦ)
	конк	п'СБР'
	конк	A(СБР)
	конк	п'АЦП'
	конк	A(АЦП)
	конк	п'ЭХО'
	конк	A(РЕЖИМ)
	конк	п'ЭКР'
	конк	A(РЕЖИМ)
	конк	п'ПЕЧ'
	конк	A(РЕЖИМ)
РЕЖИМ	пино	НЕПЕЧ(М15)
	Э62	'76'
НЕПЕЧ	сч	ПРИКАЗ+9(М15)
	или	М16ЕТХ
	зп	1(М1)
	сч	Е1(М15)
	нтж	IO
	зп	IO
	и	Е1(М15)
	пе	УСТАН
	счи	М15
	нтж	ВСЕЕД
	уи	М15
	сч	ОТМ
ОТВЕТ	зп	0(М1)
	Э71	ВЫДСТР
	сч	IO
	и	Е2Е1
	по	РЕЖИМ
	пб	ДАЛЬШЕ
АЦП	Э62	'42'
ДАЛЬШЕ	сч	0
	пб	ЕЩЕРАЗ
УСТАН	сч	УСТ
	пб	ОТВЕТ
СРЫВ	нтж	IO
	зп	IO
	и	Е25
	по	КНЦ
	сч	НЕСПАТ+1
	зп	1(М1)
	сч	НЕСПАТ
	пб	ОТВЕТ
КНЦ	Э74	0
СЛЕШИ	сч	Е38
	пб	ЕЩЕРАЗ
ШАГ	сч	0(М1)
	сбр	СЕМСЕМ
	сда	64+42
	зп	ДЛИНА
	пб	ДАЛЬШЕ
СБР	счи	М3
	уиа	'71717'(М3)
	Э50	'1212'
	уи	М3
	пб	ДАЛЬШЕ
	ВХОД	OUTPUT,INPUT
CИПPOГ	ВНЕШ	PACKP
	ФИНИШ
