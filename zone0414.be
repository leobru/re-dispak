ЗОН414	СТАРТ	'62000'
	Б
	Е
	М
	употр	ЗОН414(М12)
	счи	М12
	уиа	ЗОН414(М12)
	зп	ИР12
	пб	G62676
ГРП15	счи	М12
	уиа	ЗОН414(М12)
	зп	ИР12
 	пб	G62732
ГРП13	счи	М12
	уиа	ЗОН414(М12)
	зп	ИР12
	пб	G63031
ГРП28	счи	М12
	уиа	ЗОН414(М12)
	зп	ИР12
	пб	G62711
	счи	М12
	уиа	ЗОН414(М12)
	зп	D62616
	пб	G63314
G62012	счи	М12
	уиа	ЗОН414(М12)
	зп	D62616
	стоп	
	пб	G62012
	пам	1
D62016	пам	1
D62017	пам	1
D62020	пам	1
D62021	конд	п'000001'
D62022	конд	п'000001'
D62023	пам	1
D62024	пам	1
D62025	пам	1
D62026	пам	1
D62027	пам	1
D62030	пам	1
D62031	пам	1
D62032	пам	1
* next insn used as data
КГРП15	пб	ГРП15-ЗОН414+'62000'
        зп
D62034	конд	A(G62760)
D62035	конд	A(G62773)
D62036	конд	A(G62777)
D62037	конд	A(G62740)
D62040	пам	2
D62042	пам	48
D62122	пам	1
D62123	пам	1
D62124	пам	1
ИР16	пам	1
D62126	пам	1
ИР15	пам	1
D62130	пам	1
КГРП13	пб	ГРП13-ЗОН414+'62000'
        зп
D62132	конд	A(G63061)
D62133	конд	A(G63070)
D62134	конд	A(G63073)
D62135	конд	A(G63043)
D62136	пам	2
D62140	пам	48
D62220	пам	1
D62221	пам	50
D62303	пам	1
D62304	пам	50
D62366	пам	1
D62367	пам	1
D62370	пам	1
D62371	пам	1
D62372	пам	46
D62450	пам	1
D62451	пам	48
D62531	пам	1
D62532	конд	в'7777777777777777'
D62533	пам	49
D62614	пам	1
ИР12	пам	1
D62616	пам	1
D62617	пам	1
БАЙТЫ	конд	в'7760000000000000'
	конд	в'0017740000000000'
D62622	конд	в'0000037700000000'
	конд	в'0000000077600000'
D62624	конд	в'0000000000177400'
D62625	конд	в'0000000000000377'
КГРП28	пб	ГРП28-ЗОН414+'62000'
        зп
D62627	конд	в'0000000000000333'
D62630	конд	п'00000+'
	пам	4
	конд	в'0000000000000377'
	конд	в'0000000000000252'
	конд	в'0000000000000125'
	конд	в'0000000000000377'
	конд	в'0000000000000252'
	конд	в'0000000000000125'
G62643	сч	(М15)
	по	(М16)
	счи	М17
	зп	D62032
	сч	E1
	зп	D62026
	пб	(М16)
G62647	сч	D62026
	по	(М16)
	сч	E12
	увв	'142'
	сч	
	зп	D62026
	пб	(М16)
G62653	сч	E10
	или	E12
	пв	БВЗ32+4(М15)
G62655	сч	E10
	увв	'142'
	сч	E12
	увв	'142'
	сч	D62022
	по	(М16)
	сч	D62017
	слц	E1
	зп	D62017
	счи	М17
	зп	D62614
	сч	
	зп	D62025
	зп	D62123
	уиа	D62630+8(М17)
	счи	М17
	зп	D62027
	уиа	3(М17)
	счи	М17
	зп	D62030
	сч	D62037
	зп	D62032
	уиа	7(М17)
	счи	М17
	зп	D62126
	уиа	D62630+1(М17)
	счи	М17
	зп	ИР16
	сч	D62135
	зп	D62130
	зп	D62124
	сч	D62614
	уи	М17
	пб	(М16)
G62676	сч	МПРП
	или	E10
	или	E12
	зп	МПРП
	сч	КГРП15
	мода	GRP24+24-15
	зп	
	сч	КГРП13
	мода	GRP24+24-13
	зп	
	сч	КГРП28
	мода	GRP24+24-28
	зп	
	уиа	G63431+1(М16)
	счи	М16
	зп	
	пв	G62655(М16)
	мод	ИР12
	уиа	0(М12)
	пб	(М15)
G62711	сч	1
	и	E25
	пе	G62730
	сч	D62617
	слц	E1
	зп	D62617
	нтж	D62627
	пе	G62730
	зп	D62617
	сч	D62032
	нтж	D62034
	по	G62722
	сч	D62024
	слц	E1
	зп	D62024
	нтж	D62630
	по	G62726
G62722	сч	D62130
	нтж	D62132
	по	G62730
	сч	D62122
	слц	E1
	зп	D62122
	нтж	D62630
	пе	G62730
G62726	зп	D62024
	зп	D62122
	пв	G62653(М16)
G62730	сч	ЧСТР
	мод	ИР12
	уиа	0(М12)
	пб	G66475
G62732	увв	'4102'
	и	E7
	по	G62737
	мод	D62027
	уиа	0(М16)
	мод	D62031
	уиа	0(М15)
	мод	D62032
	пб	
G62737	уиа	G62012+3(М16)
	пб	G63110
G62740	увв	'4174'
	нтж	(М16)
	пе	G62755
	зп	D62024
	слиа	1(М16)
	сч	D62030
	слц	П7777
	и	П7777
	зп	D62030
	пе	G63012
	сч	E1
	зп	D62025
	сч	D62034
	зп	D62032
	сч	E12
	пв	БВЗ4+7(М15)
	сч	D62123
	по	G63012
	сч	E10
	или	E12
	пв	БВЗ32+4(М15)
	сч	E10
	увв	'142'
	пб	G63012
G62755	уиа	3(М16)
	счи	М16
	зп	D62030
	уиа	D62630+8(М16)
	пб	G63012
G62760	сч	D62036
	зп	D62032
	сч	E2
	зп	D62030
	уиа	D62040(М16)
	уиа	-5(М15)
	сч	
	зп	2(М16)
	слиа	2(М16)
	увв	'4174'
	по	G63015
	зп	D62614
	нтж	D62021
	и	П177
	пе	G63015
	сч	D62614
	зп	-2(М16)
	и	E8
	по	G63012
	сч	D62035
	зп	D62032
	пб	G63012
G62773	увв	'4174'
	по	G63015
	зп	-1(М16)
	зп	D62030
	сч	D62036
	зп	D62032
	пб	G63012
G62777	увв	'4174'
	сда	64-40
	мода	БАЙТЫ
	рзб	5(М15)
	или	(М16)
	зп	(М16)
	цикл	G63005(М15)
	слиа	1(М16)
	уиа	-5(М15)
	сч	
	зп	(М16)
G63005	сч	D62030
	слц	П7777
	и	П7777
	зп	D62030
	пе	G63012
	сч	D62034
	зп	D62032
	сч	
	зп	D62024
	пб	G63021
G63012	увв	'177'
	счи	М16
	зп	D62027
	счи	М15
	зп	D62031
	пб	G63106
G63015	увв	'177'
	сч	D62020
	слц	E1
	зп	D62020
	пв	G62653(М16)
G63020	пб	G63106
G63021	сч	D62040
	и	E8
	по	G63304
	сч	D62042
	сда	64+37
	и	П3
	уи	М16
	пб	G63025(М16)
G63025	пб	G63112
	пам	0
	пб	G63126
	пам	0
	пб	G63415
	пам	0
	пб	G63506
G63031	увв	'4102'
	и	E8
	по	G63042
	сч	D62124
	пе	G63037
	пв	G63533(М16)
G63034	ноп	
	пв	G63320(М16)
G63035	ноп	
	пв	G63431(М16)
G63036	пб	G63106
G63037	мод	ИР16
	уиа	0(М16)
	мод	ИР15
	уиа	0(М15)
	мод	D62130
	пб	
G63042	уиа	D62016(М16)
	пб	G63110
G63043	сч	D62126
	по	G63050
	сч	(М16)
	увв	'174'
	слиа	1(М16)
	сч	D62126
	слц	П7777
	и	П7777
	зп	D62126
	пб	G63104
G63050	зп	D62124
	зп	D62122
	сч	E1
	зп	D62123
	сч	D62132
	зп	D62130
	сч	E10
	пв	БВЗ4+7(М15)
	сч	D62025
	по	G63106
	сч	E10
	или	E12
	пв	БВЗ32+4(М15)
	сч	E10
	увв	'142'
	пб	G63106
G63061	сч	D62134
	зп	D62130
	сч	E2
	зп	D62126
	уиа	D62136(М16)
	уиа	-5(М15)
	слиа	2(М16)
	сч	-2(М16)
	увв	'174'
	и	E8
	по	G63104
	сч	D62133
	зп	D62130
	пб	G63104
G63070	сч	-1(М16)
	увв	'174'
	зп	D62126
	сч	D62134
	зп	D62130
	пб	G63104
G63073	сч	(М16)
	мода	БАЙТЫ
	сбр	5(М15)
	сда	64+40
	увв	'174'
	цикл	G63077(М15)
	слиа	1(М16)
	уиа	-5(М15)
G63077	сч	D62126
	слц	П7777
	и	П7777
	зп	D62126
	пе	G63104
	зп	D62124
	зп	D62122
	сч	D62132
	зп	D62130
G63104	счи	М16
	зп	ИР16
	счи	М15
	зп	ИР15
G63106	мод	ИР12
	уиа	0(М12)
	пб	G03725
G63110	сч	(М16)
	слц	E1
	зп	(М16)
	пб	G63106
G63112	уиа	D62366(М15)
	уиа	G63112(М17)
	пв	G62643(М16)
	пе	G63106
	увв	'177'
	сч	D62034
	зп	D62032
	сч	D62042
	сда	64+32
	и	П3
	уи	М16
	пб	G63121(М16)
G63121	сч	
	пб	G63106
	сч	D62021
	пб	G63106
	сч	D62021
	пб	G63125
	сч	D62021
	пб	G63106
G63125	пб	G63106
G63126	уиа	D62366(М15)
	уиа	G63126(М17)
	пв	G62643(М16)
	пе	G63106
	увв	'177'
	сч	D62034
	зп	D62032
	сч	D62042
	сда	64+32
	и	П17
	уи	М16
	пб	G63135(М16)
G63135	мода	
	пб	G63106
	уиа	-47(М16)
	пб	G63155
	мода	
	пб	G63106
	сч	D62042
	пб	G63220
	мода	
	пб	G63106
	мода	
	пб	G63106
	мода	
	пб	G63106
	сч	D62042
	пб	G63240
	сч	D62042
	пб	G63253
	сч	
	пб	G63106
	сч	
	пб	G63106
	сч	
	пб	G63106
	сч	
	пб	G63106
	сч	
	пб	G63106
	сч	
	пб	G63106
	сч	
	пб	G63106
G63155	сч	D62042
	сда	64+32
	и	D62624
	зп	D62614
	сч	D62042
	сда	64+24
	и	D62625
	или	D62614
	зп	D62614
G63162	мода	D62451
	сч	'57'(М16)
	нтж	D62614
	и	П77777
	по	G63217
	цикл	G63162(М16)
	сч	'77304'
	нед	
	уи	М16
	пио	G63213(М16)
	слиа	-1(М16)
	сч	'77304'
	нтж	E48(М16)
	зп	'77304'         там команды
	сч	D77333
	или	E48(М16)
	зп	D77333
	сч	E16
	зп	'2366'(М16)
	сч	D62614
	мода	D62451
	зп	(М16)
	сч	D62614
	и	D62625
	уи	М17
	сда	64-42
	или	'2366'(М16)
	зп	'2366'(М16)
	счи	М16
	слц	E1
	или	E16
	зп	'2526'(М17)
	сч	ГОД
	сда	64-45
	или	'2526'(М17)
	зп	'2526'(М17)
	пв	'76643'(М15)
	слиа	1(М16)
G63206	сч	D62042
	и	D62625
	сда	64-8
	зп	D62614
	сч	D62042
	сда	64+8
	и	D62625
	или	D62614
	мода	D62533
	зп	(М16)
G63213	уиа	'42'(М17)
	уиа	7(М15)
	сч	
	зп	D62372
	сч	D62042
	и	D62622
	пб	G63266
G63217	слиа	'60'(М16)
	пб	G63206
G63220	сда	64+16
	и	D62625
	уи	М16
	мода	D62450
	сч	(М16)
	по	G63106
	сда	64+8
	зп	D62614
	сч	D62042
	сда	64+40
	нтж	D62614
	пе	G63106
	сч	G77313
	и	Е48-1(М16)
	пе	G63237
	сч	D77333
	или	Е48-1(М16)
	нтж	Е48-1(М16)
	зп	D77333
	сч	'77304'
	нтж	Е48-1(М16)
	зп	'77304'         там команды
	сч	
	зп	ТСЛ(М16)
	мода	D62450
	зп	(М16)
G63235	уиа	'44'(М17)
	сч	D62042
	и	D62622
	пб	G63265
G63237	уиа	0(М16)
	пб	G63235
G63240	сда	64+24
	и	D62625
	уи	М15
	мода	D62450
	сч	(М15)
	по	G63106
	сч	D62533
	и	Е48-1(М15)
	по	G63106
	нтж	D62533
	зп	D62533
	слиа	-1(М15)
	сч	D62042
	сда	64+16
	и	D62625
	или	D62042
	и	П77777
	мода	D62533
	зп	(М15)
	пв	КЛЮЧТМ+12(М16)  там пусто
	пб	G63106
G63253	сда	64+24
	и	D62625
	уи	М16
	сч	D62042
	сда	64+16
	и	D62625
	или	D62042
	и	П77777
	мода	D62533
	слц	(М16)
	мода	D62533
	зп	(М16)
	сч	D62532
	или	Е48-1(М16)
	зп	D62532
	сч	D62124
	пе	G63106
	сч	E10
	увв	'142'
	пб	G63106
G63265	уиа	4(М15)
G63266	зп	D62371
	счи	М16
	сда	64-16
	или	D62371
	зп	D62371
G63271	сч	E1
	зп	D62366
	сч	D62042
	сда	64+40
	или	E8
	зп	D62367
	счи	М15
	зп	D62370
	сч	D62021
	сда	64-40
	или	D62371
	зп	D62371
	счи	М17
	сда	64-32
	или	D62371
	зп	D62371
	сч	D62124
	пе	G63106
	сч	E10
	увв	'142'
	пб	G63106
G63304	увв	'177'
	сч	D62042
	сда	64+40
	и	D62625
	уи	М17
	слиа	-1(М17)
	мода	D62451
	сч	(М17)
	по	G63106
	сч	D62042
	сда	64+32
	уи	М16
	пв	G63400(М15)
G63313	пб	G63106
G63314	сч	D62124
	пе	G63316
	сч	E10
	увв	'142'
G63316	мод	D62616
	уиа	0(М12)
	пб	(М15)
G63320	сч	D62366
	по	G63327
	зп	D62124
	уиа	-10(М16)
G63322	мода	D62367
	сч	10(М16)
	мода	D62136
	зп	10(М16)
	цикл	G63322(М16)
	сч	
	зп	D62366
	пв	G62647(М16)
	пб	G63037
G63327	сч	D62531
	уи	М15
	пе	G63336
	сч	П215
	нтж	D62533
	и	D77333
	и	D62532
	по	(М16)
	нед	
	уи	М15
	слиа	-1(М15)
	счи	М15
	зп	D62531
G63336	сч	E1
	зп	D62124
	мод	'72346'(М15)
	уиа	0(М16)
	мод	(М16)
	мода	(М16)
	уиа	0(М17)
	пам	0
	сч	9(М17)
	сда	64-8
	зп	9(М17)
	счмр	
	зп	D62614
	пе	G63351
	сч	D62533
	или	E48(М15)
	зп	D62533
	сч	
	зп	D62614
	зп	D62531
	пб	G63363
G63351	сч	9(М17)
	пе	G63363
	сч	(М16)
	слц	E1
	зп	(М16)
	слц	П77777
	нтж	3(М16)
	и	П7777
	пе	G63363
	сч	'2366'(М15)
	и	Е36
	пе	G63363
	сч	1(М16)
	по	G63361
	зп	'72346'(М15)
	пб	G63363
G63361	сч	(М16)
	слц	П77777
	и	П77777
	зп	(М16)
G63363	мода	D62451
	сч	(М15)
	сда	64+8
	зп	D62136
	мода	D62451
	сч	(М15)
	сда	64-40
	зп	D62140
	сч	D62614
	сда	64-32
	или	D62140
	зп	D62140
	уиа	D62533+1(М16)
	сли	М16(М15)
	сч	(М16)
	по	G63037
	слц	П77777
	и	П77777
	пе	G63037
	сч	D62532
	или	E48(М15)
	нтж	E48(М15)
	зп	D62532
	сч	
	зп	D62531
	пб	G63037
G63400	сч	П215+1
	и	E48(М17)
	пе	(М15)
	счи	М15
	зп	D63414
	счи	М13
	зп	Р
	счи	М14
	зп	Р1
	уиа	0(М13)
	уиа	0(М14)
	счи	М16
	зп	R(М13)
	пв	'17141'(М15)
	пб	'76255'
G63410	мод	D63414
	уиа	0(М15)
	мод	Р
	уиа	0(М13)
	мод	Р1
	уиа	0(М14)
	пб	(М15)
D63414	пам	1
G63415	уиа	D62220(М15)
	уиа	G63415(М17)
	пв	G62643(М16)
G63417	пе	G63106
	сч	D62034
	зп	D62032
	увв	'177'
	уиа	-49(М16)
G63422	мода	D62040
	сч	'61'(М16)
	мода	D62221
	зп	'61'(М16)
	цикл	G63422(М16)
	сч	
	по	G63106
	зп	D62220
	нед	
	или	E27
	пв	ВЕТКА(М16)
	пб	G63106
G63431	сч	D62303
	по	(М16)
	зп	D62124
	уиа	-49(М16)
G63433	мода	D62304
	сч	'61'(М16)
	мода	D62136
	зп	'61'(М16)
	цикл	G63433(М16)
	сч	
	зп	D62303
	пв	G62647(М16)
	сч	
	нед	
	или	E28
	пв	ВЕТКА(М16)
	пб	G63037
G63442	счи	М12
	уиа	ЗОН414(М12)
	зп	ИР12
	сч	
	мод	НЗАД
	и	Е48-1
	по	G63503
	счи	М16
	и	П7
	уи	М16
	пб	G63450(М16)
G63450	сч	D62220
	пб	G63460
	сч	СМ
	пб	G63463
	сч	
	пб	G63465
	сч	E1
	пб	G63467
	сч	E6
	пб	G63472
	сч	
	пб	G63503
	сч	
	пб	G63503
	сч	
	пб	G63503
G63460	по	G63502
	мода	D62221
	сч	(М15)
	зп	СМ
	пб	G63503
G63463	мода	D62304
	зп	(М15)
	пб	G63503
G63465	зп	D62220
	пв	G62647(М16)
G63466	пб	G63503
G63467	зп	D62303
	сч	D62124
	пе	G63503
	сч	E10
	увв	'142'
	пб	G63503
G63472	зп	D62614
	счи	М17
	зп	D62616
	уиа	-15(М15)
G63474	сч	D62614
	или	E26
	пв	ВЕТКА(М16)
	сч	D62614
	слц	E1
	зп	D62614
	цикл	G63474(М15)
	мод	D62616
	уиа	0(М17)
	пб	G63503
G63502	уиа	1(М16)
	пб	G63504
G63503	уиа	0(М16)
G63504	мод	ИР12
	уиа	0(М12)
	пб	
G63506	уиа	D62366(М15)
	уиа	G63506(М17)
	пв	G62643(М16)
	пе	G63106
	увв	'177'
	сч	D62042
	сда	64+32
	и	П7
	уи	М16
	пб	G63514(М16)
G63514	сч	
	пб	G63106
	сч	
	пб	G63106
	сч	D62021
	пб	G63525
	сч	
	пб	G63523
	сч	D62021
	пб	G63106
	уиа	E13(М17)
	пб	G63526
	сч	
	пб	G63532
G63523	сда	64-24
	уиа	E15(М17)
	уиа	4(М16)
	пб	G63265
G63525	пб	G63106
G63526	сч	D62023
	по	G63530
	сч	
	пб	G63265
G63530	сч	
	уи	М16
	пб	G63265
G63532	пб	G63106
G63533	пб	(М16)
ДИСП70	ВНЕШ	ВЕТКА,БВЗ4,БВЗ32,G03725,ТСЛ,НЗАД,СМ,Р1,МПРП,П7
ДИСП70	ВНЕШ	П177,П3,П17,Р,П7777,ГОД,П77777,GRP24
ДМЛМБ	ВНЕШ	ДМЛМБ
КИТ	ВНЕШ	ЧСТР
МОТТ	ВНЕШ	П215,G77313,КЛЮЧТМ,R,D77333
ХЛАМ	ВНЕШ	G66475
	ФИНИШ
