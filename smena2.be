СМЕНА2	СТАРТ	'11400'
	Б
	Е
	М
*СМЕНА2
*
	употр	СМЕНА2-768(М7)
дрб1	сч	ПРБ-Н(М7)
	по	нбоб1е
	уиа	'3'
	сч	швоз-Н(М7)
	по	нбоб1ж
	сч	0
	зп	Р7-Н(М7)
	уиа	-1(М2)
	сч	НОВД-Н(М7) !заказ1
	уи	М17
	сли	М17(М3)
	сч	НОВД+2-Н(М7)
	уи	М10
	сли	М10(М3)
	уиа	1(М15)
	уии	М1(М17)
	сч	0(М11)
	и	E14
	пе	нбоб1з
нбоб1а	сч	П777(М1) !ПЕРЕМЕННАЯ В НБОБ НЕ ИСП.
	пб	возапр
нбоб1б	сч	Б1-Н(М7)
	нтж	E48(М16)
возапр	зп	Б1-Н(М7)
	по	нбоб1г
	нед	П77777 возв
	уи	М16
	уи	М12
	сли	М12(М3)
	сч	очку1а(М12)
	и	НАПРМГ !возв3
	мода	0(М15)
	нтж	Р4-Н(М7)
	пе	нбоб1б
	сч	НЕТНАП !заммл
	нтж	E23
	и	очку1а(М12) !прлзб
	мода	1(М2)
	или	Р4-Н(М7)
	зп	очку1а(М12)
	сч	ШИФРПЛ(М1) !В НБОБЕ НЕ ИСП.
	или	E48(М16)
	нтж	E48(М16)
	зп	ШИФРПЛ(М1)
	сч	П777(М1)
	нтж	E48(М16)
	зп	П777(М1)
	мода	нбоб1в
	пино	0(М2)
	сч	П777(М17)
	или	E48(М16)
	зп	П777(М17)
	пб	нбоб1б
нбоб1в	сч	E48(М16)
	или	Р7-Н(М7)
	зп	Р7-Н(М7)
	пб	нбоб1б
нбоб1г	мода	нбоб1д
	пио	0(М13)
	уии	М1(М10)
	уиа	(М15)
	мода	нбоб1а
	цикл	0(М2)
нбоб1д	сч	Р7-Н(М7)
	или	П777(М10)
	зп	П777(М10)
	пб	нбоб1з
нбоб1е	мода	нбоб1з
	пио	0(М13)
	уиа	'3'
	сч	швоз-Н(М7)
	пе	нбоб1к
	зп	ШОЧМГ(М4)
нбоб1ж	уиа	'2003'
	сч	ШОЧМГ(М4)
	или	ВЫМГ
	зп	ВЫМГ
	сч	0
	зп	ШОЧМГ(М4)
	уиа	'3'
	сч	НОВД+2-Н(М7)
	вч	E1
	уи	М1
	сли	М1(М3)
	уиа	1(М10)
	уии	М17(М4)
	уии	М4(М12)
	уии	М12(М17)
	пб	взв1-Н(М7)
нбоб1з	мода	нбоб1к
	пино	0(М13)
	мод	дт-Н(М7)
	сч	-32(М4)
	и	кс-Н(М7)
	или	E14
	или	E47
	зп	0(М11)
	сч	0
	мод	дт-Н(М7)
	зп	-32(М4)
	зп	ТЗНМЛ(М4)
	сч	ПРБ-Н(М7)
	пе	зстрсо
нбоб1и	зп	ШОЧМГ(М4)
	пб	СМЛ1-Н(М7)
нбоб1к	уии	М15(М4)
	мод	дт-Н(М7)
	слиа	-32(М15)
	сч	0(М11)
	и	E14
	пе	нбоб1л
	сч	0(М11)
	или	E14
	зп	0(М11)
	сч	0(М15)
	или	E14
	пб	нбоб1м
нбоб1л	сч	кс-Н(М7)
	и	0(М11)
	зп	Б1-Н(М7)
	сч	кс-Н(М7)
	и	0(М15)
	или	E47
	зп	0(М11)
	сч	Б1-Н(М7)
	или	E47
нбоб1м	зп	0(М15)
	сч	ПРБ-Н(М7)
	по	нбоб1и
	пб	ПО4-Н(М7)
зстрсо	мода	арвэ1-Н(М7)
	уиа	(М16)
	уиа	'2003'
	сч	ШОЧМГ(М4) !"ТРЕ"
	или	ВЫМГ
	зп	ВЫМГ
дрбэ2	ноп
	сч	Р7+1-Н(М7)        неясно
	сда	64+27
	уи	М1
	сч	ТЗНМЛ-24(М3) !"СОВП"
	или	Е48-1(М1)
	зп	ТЗНМЛ-24(М3)
	сч	НОВД-Н(М7)
	вч	E1
	сда	64-5
	зп	Р-Н(М7)
	сч	Е48-1(М1) !"ЗСЛ"
	или	кробш-Н(М7)
	зп	кробш-Н(М7)
	счи	М4
	или	Р-Н(М7)
	сда	64-30
	или	E39
	пб	0(М16)
*
	ЭКВИВ (У2,СМЕНА2-768)
*
ДИСП70	ВНЕШ	НЕТНАП,ВЫМГ,ШОЧМГ,ТЗНМЛ,ШИФРПЛ,П777,НАПРМГ
ДИСП70	ВНЕШ	П77777
НОМБОБ	ВНЕШ	(Н,НОМБОБ),Б1,Р,Р4,Р7,кс,кробш,дт,очку1а
НОМБОБ	ВНЕШ	швоз,ПРБ,НОВД,СМЛ1,ПО4,арвэ1,взв1
*
	ВХОД	У2,дрбэ2,дрб1
*
	ФИНИШ
