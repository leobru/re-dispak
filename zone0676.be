ЗОН676	СТАРТ	'70000'
	Б
	Е
	М

	ГБЛВ ∧К71,∧БЭСМ
*∧БЭСМ SЕТВ 0
∧К71 SЕТВ 1
*
	АПУ     (&К71).ДА
	АПБ	.НЕТ
.ДА АНОП
Э52777	счи	М16
	нтж	П7777
	по	G70002
	пе	ПЕЭ52
G70002	сч	ГУС
	зп	D70153
	сч	СМ
	зп	D70132
	и	D70133
	по	G70141
	нед	
	уи	М16
	слиа	-9(М16)
	пино	G70141(М16)
	уиа	G70010(М16)
	пб	G70142
G70010	сч	СМ
	сда	64+12
	и	П77
	зп	D70151
	сч	СМ
	и	П7777
	зп	D70150
	уиа	-31(М16)
G70014	сч	ТЗНМЛ+31(М16)
	нтж	D70150
	и	П7777
	по	G70020
	цикл	G70014(М16)
	сч	E2
	зп	СМ
	пб	БМВ1
G70020	сч	ТЗНМЛ+31(М16)
	сда	64+38
	по	G70037
	нтж	E1
	по	G70035
	сч	E3
	зп	СМ
	слиа	'67'(М16)
	счи	М16
	зп	D70150
	уиа	-3(М15)
	уиа	-2(М17)
G70026	мод	ГУС
	сч	'74'(М15)
	сд	КТОМ+2(М17)
	и	П77
	нтж	D70150
	по	G70033
	цикл	G70026(М17)
	уиа	-2(М17)
	цикл	G70026(М15)
	пб	БМВ1
G70033	сч	E5
	зп	СМ
	пб	БМВ1
G70035	сч	E4
	зп	СМ
	пб	БМВ1
G70037	зп	СМ
	сч	D70151
	пе	G70041
	пб	БМВ1
G70041	сч	ТЗНМЛ+31(М16)
	или	E48
	или	E42
	зп	ТЗНМЛ+31(М16)
	слиа	'67'(М16)
	счи	М16
	зп	D70150
	сч	D70151
	и	E1
	сда	64-2
	уи	М17
	сч	D70151
	сда	64+1
	уи	М15
	мод	ГУС
	сч	29(М15)
	сда	64+8(М17)
	и	П17
	уи	М17
	сч	D70132
	и	E37
	пе	G70076
	счи	М17
	зп	D70151
	по	G70074
	сда	64+2
	уи	М15
	сч	D70151
	и	П3
	уи	М17
	мод	ГУС
	сч	'71'(М15)
	сд	КТОМ-1(М17)
	зп	D70151
	и	П77
	уи	М16
	сч	D70151
	или	П77
	нтж	П77
	или	D70150
	сд	КТОМ+2(М17)
	зп	D70151
	сч	D70134
	сд	КТОМ+2(М17)
	нтж	ВСЕЕД
	мод	ГУС
	и	'71'(М15)
	или	D70151
	мод	ГУС
	зп	'71'(М15)
G70072	сч	'573'(М16)
	и	Е41П1
	зп	'573'(М16)
	пб	БМВ1
G70074	сч	E1
	зп	СМ
	пб	G70072
G70076	счи	М17
	пе	G70074
	уиа	-3(М15)
	уиа	-2(М17)
G70100	мод	ГУС
	сч	'74'(М15)
	сд	КТОМ+2(М17)
	и	D70134
	по	G70106
	цикл	G70100(М17)
	уиа	-2(М17)
	цикл	G70100(М15)
	сч	E6
	зп	СМ
	пб	G70072
G70106	слиа	3(М15)
	слиа	3(М17)
	мод	ГУС
	сч	27(М17)
	или	D70135(М15)
	мод	ГУС
	зп	27(М17)
	сч	D70150
	сд	КТОМ+2(М17)
	мод	ГУС
	или	'71'(М15)
	мод	ГУС
	зп	'71'(М15)
	счи	М15
	сда	64-2
	зп	D70150
	счи	М17
	или	D70150
	зп	D70150
	уиа	1(М15)
	сч	D70151
	и	E1
	уи	М17
	по	G70123
	слиа	-5(М17)
	уиа	0(М15)
G70123	сч	E8(М15)
	зп	D70132
	сч	D70151
	сда	64+1
	уи	М15
	сч	D70150
	сда	64-8(М17)
	или	D70132
	мод	ГУС
	или	29(М15)
	мод	ГУС
	зп	29(М15)
	пб	БМВ1
D70132	пам	1
D70133	конд	в'7770000000000000'
D70134	конд	в'0000000000177777'
D70135	конд	п'000Р00'
	конд	в'0000000060000000'
	конд	п'003000'
	конд	п'00/000'
G70141	сч	ВСЕЕД
	пб	G70147
G70142	счрж	'7777'
	зп	РК
	счи	М17
	зп	И17
	счи	М15
	зп	И15
	уии	М27
	счи	М32
	уи	М33
	пб	(М16)
G70147	зп	СМ
	пб	ЭКВЫХ
D70150	пам	1
D70151	пам	2
D70153	пам	1
        адрес   ЗОН676+'600'
к71a	сч	шмот15
	пб	G70607
к71б	сч	шмот16
	пб	G70634
к71в	сч	шмот17
	пб	G70664
к71д	сч	шмот18
	пб	G70716
	пам	3
G70607	сч	шмот15
	и	Е15П1
	или	'77527'
	зп	'77541'
	сч	'77515'
	слц	E19
	и	'77516'
	зп	'77515'
	сч	ВРЕМЯ
	сда	64-24
	или	'77515'
	или	'77541'
	мод	'77517'
	зп	
	счи	М33
	сда	64-30
	зп	'77541'
	счи	М16
	сда	64-15
	или	'77541'
	мод	'77517'
	зп	1
	сч	ШЗПОМД
	или	СОД+1(М16)
	мод	'77517'
	зп	2
	сч	'72147'(М16)
	мод	'77517'
	зп	3
	сч	КУС2-1(М16)
	мод	'77517'
	зп	4
	сч	'77517'
	слц	'77536'
	зп	'77517'
	нтж	'77523'
	мод	шмот15
	пе	
	сч	'77522'
	зп	'77517'
	мод	шмот15
	пб	
G70634	сч	шмот16
	и	Е15П1
	или	'77526'
	зп	'77542'
	сч	'77515'
	слц	E19
	и	'77516'
	зп	'77515'
	сч	ВРЕМЯ
	сда	64-24
	или	'77515'
	или	'77542'
	мод	'77520'
	зп	
	счи	М3
	сда	64-45
	зп	'77542'
	счи	М33
	сда	64-30
	или	'77542'
	зп	'77542'
	счи	М16
	сда	64-15
	или	'77542'
	зп	'77542'
	счи	М4
	или	'77542'
	мод	'77520'
	зп	1
	сч	ШЗПОМД
	мод	'77520'
	зп	2
	сч	ЗАВ(М16)
	мод	'77520'
	зп	3
	сч	дисшк3
	мод	'77520'
	зп	4
	сч	'77520'
	слц	'77537'
	зп	'77520'
	нтж	'77524'
	мод	шмот16
	пе	
	сч	'77523'
	зп	'77520'
	мод	шмот16
	пб	
G70664	сч	шмот17
	и	Е15П1
	или	'77530'
	зп	'77543'
	сч	'77515'
	слц	E19
	и	'77516'
	зп	'77515'
	сч	ВРЕМЯ
	сда	64-24
	или	'77515'
	или	'77543'
	мод	'77521'
	зп	
	счи	М33
	сда	64-30
	зп	'77543'
	счи	М16
	сда	64-15
	или	'77543'
	зп	'77543'
	счи	М11
	или	'77543'
	мод	'77521'
	зп	1
	счи	М6
	сда	64-30
	зп	'77543'
	счи	М15
	сда	64-15
	или	'77543'
	или	НЗАД
	мод	'77521'
	зп	2
	сч	ЗАНМД+1(М16)
	или	МДНЕИС+1(М16)
	мод	'77521'
	зп	3
	сч	ЛИСТМБ(М7)
	мод	'77521'
	зп	4
	сч	'77521'
	слц	'77540'
	зп	'77521'
	нтж	'77525'
	мод	шмот17
	пе	
	сч	'77524'
	зп	'77521'
	мод	шмот17
	пб	
G70716	сч	шмот18
	и	Е15П1
	или	'77531'
	зп	'77543'
	сч	'77515'
	слц	E19
	и	'77516'
	зп	'77515'
	сч	ВРЕМЯ
	сда	64-24
	или	'77515'
	или	'77543'
	мод	'77506'
	зп	СБОИМБ+12
	счи	М33
	сда	64-30
	зп	'77543'
	счи	М16
	сда	64-15
	или	'77543'
	зп	'77543'
	счи	М4
	или	'77543'
	мод	'77506'
	зп	СБОИМБ+13
	сч	зневып
	мод	'77506'
	зп	СБОИМБ+14
	сч	ЗАВ(М16)
	мод	'77506'
	зп	СБОИМБ+15
	сч	рс
	мод	'77506'
	зп	ОАС
	мод	шмот18
	пб	
	адрес   ЗОН676+'1000'
G71000	счи	М16
	и	П17
	сда	64+2
	по	'67603'(М16)
ВХОДПР СЧ Е37
 ПБ ТВ40          ВХОД В ДОПРЕЗ ЧЕРЕЗ НЕРЕЗИДЕНТ
G71003	пб	G71010
G71004	пб	G71010
G71005	уиа	'44'(М16)
	пб	ЗАПЭКС
G71006	мода	
	пб	ВХОДПР
	мода
G71010	сч	D71021
	по	G71016
	мод	НЗАД
	и	Е48-1
	пе	G71015
	сч	ГУС
	и	E48
	уиа	'44'(М16)
	пе	ЗАПЭКС
G71015	зп	,       тут явно что-то было
	зп	
G71016	мод	НЗАД
	сч	Е48-1
	зп	D71021
	сч	E19
	пб	ТВ40
D71021	пам	1
G71022	сч	ШККЗ
	и	шкмот7
	по	G71025
	счи	
	зп	шкмот8
	зп	шкмот7
G71025	сч	ШККЗ
	и	D71021
	нтж	D71021
	зп	D71021
	сч	ШККЗ
	и	к71шк1
	нтж	к71шк1
	зп	к71шк1
	сч	ШККЗ
	и	швзк7б
	по	(М1)
	нтж	швзк7б
	зп	швзк7б
	и	к71ш12
	зп	к71ш12
	сч	швзк7б
	и	к71ш13
	зп	к71ш13
	уиа	-7(М16)
G71037	сч	ШККЗ
	и	к71ш14+7(М16)
	нтж	к71ш14+7(М16)
	зп	к71ш14+7(М16)
	цикл	G71037(М16)
	сч	шквзу3
	и	ШККЗ
	по	(М1)
	сч	D71270
	Э50	'133'
	пб	(М1)
.НЕТ АНОП
**
*********************
** ДЛЯ МОДУЛЯ ПЕЧАТЬ
**
к71е	сч	П30
	зп	к71ш2а
	зп	D71103
	сч	П140
	зп	к71шк3
	зп	D71105
	сч	ГОД
	и	П3
	нтж	П3
	по	(М15)
	увв	'4031'
	зп	к71шк4
	и	к71шк5
	по	G71055
	сч	П116
	зп	к71шк3
G71055	сч	к71шк4
	и	D71110
	по	(М15)
	сч	П124
	зп	D71105
	пб	(М15)
к71ж	сч	печшк1-ПЕЧАТЬ(М7)
	зп	печшк2-ПЕЧАТЬ(М7)
	мода	ВЫДОПТ-ПЕЧАТЬ(М7)
	пино	(М6)
	сч	к71шк4
	и	к71шк5(М6)
	по	ВЫДОПТ-ПЕЧАТЬ(М7)
	сч	D71066
	зп	печшк1-ПЕЧАТЬ(М7)
	зп	печшк2-ПЕЧАТЬ(М7)
	пб	ВЫДОПТ-ПЕЧАТЬ(М7)
D71066	конд	п'DW-21↑'
к71з	сч	печшк3-ПЕЧАТЬ(М10)
	вч	П116
	уи	М16
	пе	G71076
	сда	64+2
	зп	D71077
	счи	М16
	и	П3
	уи	М16
	мод	D71077
	сч	ТАБЛИЦ
	сд	КСД1(М16)
	и	П7777
	зп	печшк3-ПЕЧАТЬ(М10)
G71076	сч	печшк3-ПЕЧАТЬ(М10)
	пб	(М17)
D71077	пам	1
П116	конд	в'116'          78
П124	конд	в'124'          84
к71ш2а	пам	1
D71103	пам	1
к71шк3	пам	1
D71105	пам	1
к71шк4	пам	1
к71шк5	конд	п'000100'
D71110	конд	п'000200'
ТАБЛИЦ	конд	в'0035003601120053'
	конд	в'0017011500130025'
	конд	в'0014002600370013'
	конд	в'0013002100320033'
	конд	в'0016001600170017'
	конд	в'1742306310222504'
	конд	в'0142344307004105'
	конд	в'0242447110401506'
	конд	в'0302650010005107'
	конд	в'0322743707404510'
	конд	в'0623047511214511'
	конд	в'0403203520205512'
	конд	в'2463252223400113'
	конд	в'0503411712403514'
	конд	в'0323512112604515'
	конд	в'0423550313414004'
	конд	в'0123610213014015'
	конд	в'0643752014013016'
	конд	в'0601043312001017'
	конд	в'0460106714411001'
	конд	в'0601104415412427'
*
* ДЛЯ МОДУЛЯ ПЕЧАТЬ
********************
*
G71136	зп	D71156
	сч	1
	и	E40     40р ТР1 это что
	по	(М15)
	пб	G71142
G71141	зп	D71156
G71142	сч	ВРЕМЯ
	сда	64-15
	или	D71156
	мод	D71157
	зп	D71157+1
	счи	М27
	сда	64-30
	зп	D71156
	счи	М33
	сда	64-15
	или	D71156
	зп	D71156
	счи	М32
	или	D71156
	мод	D71157
	зп	D71157+2
	сч	D71157
	слц	E2
	зп	D71157
	нтж	D71271
	пе	(М15)
	счи	
	зп	D71157
	пб	(М15)
D71156	пам	1
D71157	пам	27
G71212	уиа	'2003'
	рег	'101'
	сч	D71252
	зп	БВЗ
	счи	М17
	зп	узщ8г
	счи	М16
	зп	'6030'
	счи	М15
	зп	'6031'
	счи	М20
	зп	УЗЩ8+10
	уиа	КРАХМЛ+4(М17)
	счи	М27
	пв	БПУ+2(М15)
	уиа	'76001'(М1)
G71223	сч	'1777'(М1)
	зп	КРАХМЛ+3(М1)
	цикл	G71223(М1)
	сч	D71272
	увв	'2'
	уиа	1(М16)
G71226	сбр	ВСЕЕД
	зп	
	цикл	G71226(М16)
	сч	D71242
	зп	СВ+1
	сч	D71243
	зп	ОБРМБ+2
	сч	D71244
	зп	ШОЧ+20
	сч	D71245
	зп	СВ+10
	сч	D71246
	зп	СВ+12
	сч	D71247
	зп	ШОЧ+1
	сч	D71250
	зп	СБМГМД+3
	сч	D71251
	зп	ОЧКЛ
	пв	'300'(М1)
	зп	ТОП
	зп	'6031'(М14)
G71241	стоп	
	пб	G71241
D71242	конд	в'0410000000111707'
D71243	конд	в'0410000000111654'
D71244	конд	в'0410000000111654'
D71245	конд	в'0410000000360130'
D71246	конд	в'0410000000110635'
D71247	конд	в'0410000000001614'
D71250	конд	в'0410000000110635'
D71251	конд	в'0410000000111671'
* next insn used as data
D71252	пб	(М15)
G71253	сч	ГОД
	и	П3
	уи	М16
	нтж	П3
	по	(М17)
	сч	D71265(М16)
G71256	зп	D71265
	по	(М17)
	нед	Е15П1
	и	E1
	уи	М16
	сч	П50
	зп	к71ш11(М16)
	сч	E48(М16)
	нтж	D71265
	пб	G71256
к71ш11	пам	2
D71265	пам	3
D71270	конд	в'7705000000000000'
D71271	конд	в'0000000000000030'
D71272	конд	п'00060И'
	адрес	зон676+'1400'
*=========== модуль загрузки зоны 0677
ЗАГ677	пам	1
	конд	п'600000'
	пам	1
D71403	пам	1
	конк	A(начало)
	конк	в'00000000'
D71405	конд	в'0000000201302007'
	пам	12
базадр	пам	15
	конд	в'4000000000000000'
	пам	6
начало	уиа	0(М16)
	сч	ШГ
	и	E24
	по	СТ175
	счи	М4
	нтж	базадр
	по	зо677а-зон677(М4)
	пб	СТ175
G71454	сч	шквзу3
	мод	НЗАД
	и	Е48-1
	мод	к71ш15
	пе	'163'
	сч	D71461
	уи	М33
	уии	М27
	пб	БМВ1
D71461	пам	1
к71и	или	к71шк6
	зп	к71шк6
	сч	ШГ
	и	E24
	пе	(М15)
	сч	ШКСВН
	и	E24
	по	(М15)
	нтж	ШКСВН
	зп	ШКСВН
	мод	базадр
	уиа	0(М17)
	слиа	0(М17)
	счи	М17
	зп	D71403
	сч	УПОК
	зп	D71405
	сч	МГРП
	и	E15
	по	G71475
	сч	ИВ25
	зп	D71405
G71475	сч	ШГ
	или	E24
	зп	ШГ
	сч	ТУС-1+'31'
	и	Е48П42
	или	АЗАГ
	зп	ТУС-1+'31'
	пб	(М15)
ИНЦ677	сч	базадр
	пе	G71516
	пв	ТБУФ(М15)
	сда	64-8
	зп	базадр
	сда	64-2
	или	КУС577
	слц	НОММЛ1
	пв	ФИЗОБМ(М16)
	уиа	'2003'
	рег	'101'
	уиа	-3(М16)
	уиа	-4(М16)   два уиа по М16, неясно
	сч	базадр
	уи	М15
	зп	базад2
G71512	мода	уходы-зон677(М15)
	сч	4(М16)
	мода	4(М16)
	мод	адреса-зон677(М15)
	зп	
	цикл	G71512(М16)
	рег	'107'
G71516	сч	-1
	уи	М15
	кк	26,'0'
	зп	-1
G71520	сда	64+32
	сда	64-8
	зп	D71554
	счи	М15
	или	-1
	зп	-1
	уиа	15(М15)
	уиа	-7(М16)
G71524	и	E9(М16)
	сда	64(М15)
	или	D71554
	зп	D71554
	слиа	-2(М15)
	цикл	G71524(М16)
	и	П377
	зп	D71554
	и	МПРП
	нтж	D71554
	и	D71544
	по	G71533
	или	D71545
	пв	УСТПРП(М15)
G71533	сч	D71554
	и	МПРП
	нтж	МПРП
	и	D71547
	и	D71544
	зп	D71555
	сда	64-40
	по	'261'(М7)
	или	к71шк8
	зп	к71шк8
	сч	D71555
	пв	ГАШПРП(М15)
	мода	'261'(М7)
	уиа	0(М15)
	сч	E46
	пб	к71и
АЗАГ	конд	А(ЗАГ677)
D71544	конд	в'40'   6р
D71545	конд	в'4000' 12р
КУС577	конд	в'0000057700400000'
D71547	конд	в'0000000000000370'
	пам	4
D71554	пам	1
D71555	пам	1
к71ш12	пам	1
к71ш13	пам	9
к71ш14	пам	8
к71шк6	пам	1
к71шк7	пам	1
к71шк8	пам	1
к71шк9	пам	1
к71ш10	пам	1
	пам	46
	конд	в'6000000000000000'
к71шк1	пам	1
	конд	м40в'101'м32в'201'м24в'021'м16в'101'м8в'231'в'221'
	пам	5
к71шк2	пам	1
к71ш15	пам	1
СВ	экв	'1646'
ОЧКЛ	экв	'1664'
СБМГМД	экв	'1671'
СБОИМБ	экв	'1751'
шквзу3	экв	'7044'
БОЭК1	ВНЕШ	ЛИСТМБ
ВЗУ	ВНЕШ	ЗАПЭКС,ФИЗОБМ,КРАХМЛ,УЗЩ8,швзк7б,узщ8г
ДИСКИ	ВНЕШ	КТОМ,МДНЕИС,ЗАНМД,зневып,СОД,ЗАВ,дисшк3,рс
ДИСП70	ВНЕШ	ЭКВЫХ,ТБУФ,ТВ40,ГАШПРП,БВЗ,БПУ,ШЗПОМД,УПОК,ИВ25
ДИСП70	ВНЕШ	ШККЗ,НЗАД,И17,И15,РК,СМ,ОАС,МГРП,ВРЕМЯ,МПРП,ТМБ
ДИСП70	ВНЕШ	НОММЛ1,П377,П140,П30,П3,ГУС,ШКСВН,ШГ,П17,П7777
ДИСП70	ВНЕШ	ГОД,СТ175,П77,ВСЕЕД,КУС2,ТЗНМЛ,БМВ1,ТУС,УСТПРП
ДИСП70	ВНЕШ	П50,Е41П1,Е15П1,ПЕЭ52,ОБРМБ,КСД1
КАЧКА	ВНЕШ	КАЧКА
КИТ	ВНЕШ	БРАКТР,Е48П42

ПЕЧАТЬ	ВНЕШ	ПЕЧАТЬ,ВЫДОПТ,печшк1,печшк2,печшк3
РОБОТ	ВНЕШ	ШОЧ
СОСТАВ	ВНЕШ	ТОП
*
	АПУ     (&К71).ДА1
	АПБ	.НЕТ1
.ДА1 АНОП
*********** ВХОД ДЛЯ РАБОТЫ С АС И ПОДСИСТ. ВИРТ. ДИСК **********
	ВХОД	Э52777,к71a,к71б,к71в,к71д,к71шк1,к71шк2,к71и
	ВХОД	к71шк6,к71шк7,к71шк8,к71шк9,к71ш10,КУС577,базадр
зон677  внеш    зон677,адреса,уходы,зо677а
	вход	к71ш12,к71ш13,к71ш14,к71ш15,ИНЦ677
МОТТ	ВНЕШ	базад2,шкмот7,шкмот8,шмот15,шмот16,шмот17,шмот18
МОТТ	ВНЕШ	шас01
.НЕТ1 АНОП
************* ВХОД ДЛЯ РАБОТЫ С ПОДСИСТ УДАЛ. ПЕЧАТИ   **********
	ВХОД	к71е,к71ж,к71з,к71ш2а,к71шк3,к71шк4,к71шк5,к71ш11
	ВХОД	ТАБЛИЦ
	ФИНИШ
