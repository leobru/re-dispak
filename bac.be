БАЦ	СТАРТ	'6000'
	Б
	М
	ржа	3
	пв	ПРОГПБ(М14)
	уиа	(М12)
	пв	ПОВБОБ(М13)
	сч	ОБЛ
	пв	ЗАХВАТ(М13)
	мода	
	пв	ДАЙЗП(М13)
	сч	ЧИСЛО
	зп	'71632'
	мода	
	пв	ПРОГПБ(М14)
	зп	'71620'
	по	G06011
	уиа	1(М16)
	пв	ВВЧИС(М14)
	сч	ЧИСЛО
	зп	'71620'
G06011	счи	М17
	зп	'71631'
	уиа	'71662'(М17)
	пв	G07560(М15)
G06013	уиа	-4(М15)
	сч	
G06014	зп	'71627'(М15)
	цикл	G06014(М15)
	уиа	1(М10)
	счм	Е7П1
	или	Е40
	зп	'71622'
	сч	
	пв	G07267(М15)
	зп	'71633'
	сда	64+24
	зп	'71603'
	сч	Е5П1
	зп	'71627'
	сч	'71633'
	и	Е24П1
	нтж	Е1
	по	G06027
	сч	1(М12)
	сда	64-17
	счмр	
	сда	64+10
G06027	слиа	-1(М17)
	по	G06032
	зп	'71633'
	уиа	-1(М12)
	слиа	1(М17)
	пв	G07304(М15)
G06032	сч	D06041
	Э75	D07271
	уиа	1(М10)
	уиа	(М2)
	счи	
	зп	'71600'
	зп	'71601'
	зп	'71602'
	зп	'71637'
	сч	D07611
	уиа	БФВВ(М12)
	пв	G07545(М13)
G06040	пе	G06032
	пб	G07464
* next insn used as data
D06041	зп	(М17)
	уиа	-4(М12)
G06042	сч	ВСЕЕД
	зп	'71602'
G06043	уиа	1(М1)
	пв	G07531(М15)
	нтж	D07446
	мод	'71630'
	мод	D06075+1
	по	
	уиа	G06123(М14)
	пв	G06071(М15)
	мода	
	пв	G07415(М15)
	мод	'71630'
	мод	D06075+3
	пе	
	зп	'71600'
	пио	G06065(М13)
	пв	G07531(М15)
	нтж	D07446
	по	G06065
	уиа	G06065(М14)
	пв	G06071(М15)
	мода	
	пв	G07415(М15)
G06056	мод	'71630'
	мод	D06075+5
	пе	
	зп	'71601'
	мода	
	пв	G06104(М16)
G06061	пио	G06065(М13)
	пв	G07531(М15)
G06062	нтж	D07446
	по	G06065
	уиа	G06065(М14)
	пв	G06071(М15)
G06064	уиа	G06056(М15)
	пб	G07415
* next insn used as data
G06065	сч	'71630'
	по	G06124
* next insn used as data
D06066	уиа	G06032(М13)
	пв	G07555(М14)
	конд	п'ЗАДАЙ '
	конд	п'ОБРАЗ0'в'377'
G06071	мод	'71630'
	уиа	(М16)
	мода	(М15)
	пино	(М16)
	нтж	D06075
	пе	(М15)
	уиа	2(М2)
	пб	(М14)
D06075	конд	в'0000000000000336'
	конк	в'00000000'
	конк	A(G06123)
	конк	в'00000000'
	конк	A(D06066)
	конк	в'00000000'
	конк	A(G06111)
	конк	в'00000000'
	конк	A(G06250)
	конк	в'00000000'
	конк	A(G06111)
	конк	в'00000000'
	конк	A(G06253)
G06104	сч	'71601'
	вч	'71600'
G06105	по	(М16)
	уиа	G06032(М13)
	мода	
	пв	G07555(М14)
	конд	п'ОШ.ДИА'
	конд	п'ПАЗОН0'в'377'
G06111	уиа	G06032(М13)
	пв	G07555(М14)
	конд	п'НЕВ.ОП'
	конд	п'ЕРАНД0'в'377'
G06114	уиа	БФВВ-3(М14)
	уиа	-2(М15)
G06115	сч	D06120+2(М15)
	зп	БФВВ-1(М15)
	цикл	G06115(М15)
	сч	М40ЕТХ
	зп	4(М14)
	пб	G07555
D06120	конд	п'НЕВЕРН'
	конд	п'АЯ КОМ'
	конд	п'АНДА  '
G06123	сч	Е24П1
	зп	'71601'
G06124	уиа	(М7)
	пв	G06672(М3)
G06125	пио	G06032(М4)
	уиа	G06032(М13)
	мода	
	пв	G07555(М14)
НСТРОК	конд	п'НЕТ СТ'
	конд	п'РОК000'м16в'377'
G06131	мода	
	пв	G07531(М15)
	нтж	D07446
	уиа	G06032(М13)
	по	G06114
	пв	G07415(М15)
	пе	G06111
	зп	'71600'
	пио	G06141(М13)
	пв	G07531(М15)
	мода	
	пв	G07415(М15)
	пе	G06111
	зп	'71601'
	пино	G06111(М13)
	пв	G06104(М16)
G06141	уиа	1(М7)
	пв	G06672(М3)
	уиа	G06151(М15)
	пб	G06143
G06143	сч	'71615'
	по	G06151
	вч	'71600'
	пе	G06200
	нтж	
	по	(М15)
	сч	'71601'
	по	G06200
	вч	'71615'
	пе	G06200
	пб	(М15)
G06151	сч	'71612'
	по	G06125
	уиа	(М10)
	пв	G07267(М15)
	зп	'71613'
	сч	'71612'
	нтж	Е1
	по	G06174
	сч	'71613'
	или	D07064
	зп	(М12)
	сч	'71613'
	сда	64-17
	счмр	
	мода	
	пв	G07267(М15)
	или	D07065
	нтж	D07065
	счм	'71613'
	и	D07065
	или	(М17)
	зп	(М12)
	сч	'71613'
	сда	64+14
	и	D07066
	зп	'71612'
	уиа	(М4)
	пв	G07267(М15)
	или	D07064
	нтж	D07064
	счм	'71613'
	и	D07064
	или	(М17)
	зп	(М12)
	зп	'71613'
	пв	G07350(М15)
	уиа	G06151(М15)
	пб	G06143
G06174	сч	'71613'
	сда	64+14
	и	D07066
	нтж	Е1
	пе	G06200
	сч	Е1
	зп	-1(М12)
	пб	G06200
G06200	пино	G06125(М4)
	уиа	-4(М14)
G06201	сч	'71626'(М14)
	по	G06206
	и	Е40
	пе	G06206
	сч	'71626'(М14)
	нтж	Е40
	зп	'71626'(М14)
	нтж	Е40
	мода	
	пв	G07321(М13)
G06206	цикл	G06201(М14)
	сч	'71637'
	по	G06032
	слц	'71600'
	пб	G06223
G06211	сч	'71603'
	зп	'71637'
	мода	
	пв	G07531(М15)
	нтж	D07446
	по	G06240
	мода	
	пв	G07415(М15)
	пе	G06111
	зп	'71600'
	пио	G06223(М13)
	пв	G07531(М15)
	нтж	D07446
	по	G06223
	мода	
	пв	G07415(М15)
	пе	G06111
	зп	'71637'
	сч	'71600'
G06223	зп	'71600'
	сда	64+24
	пе	G06555
	сч	'71600'
	уиа	-48(М13)
	уиа	БФВВ(М14)
	уиа	'77601'(М3)
	пв	G07372(М15)
	сч	'71600'
	пв	G07356(М15)
	слиа	-1(М1)
	уиа	БФВВ(М12)
	сч	Е4П1
	пв	G07455(М16)
	сч	D07446
	пв	G07455(М16)
	сч	(М12)
	пв	G07545(М13)
	уии	М14(М12)
	уиа	48(М11)
	уиа	-48(М13)
	пв	G07450(М16)
	уиа	(М5)
	нтж	D07446
	по	G06032
	пб	G06424
G06240	сч	'71603'
	зп	'71637'
	сч	
	пв	G07267(М15)
	нтж	Е1
	по	G06247
	сч	1(М12)
	сда	64-17
	счмр	
	пв	G07267(М15)
	зп	'71613'
	пв	G07350(М15)
	слц	'71637'
	пб	G06223
G06247	сч	'71637'
	пб	G06223
G06250	слиа	-24(М11)
	пино	G06111(М11)
	слиа	24(М11)
	счм	Е24П1
	зпм	'71601'
G06253	вчоб	D07442
	зп	'71605'
	уиа	'71642'(М14)
	уиа	(М7)
	мод	'71602'
	уиа	(М15)
	сч	
	зп	'71604'
	зп	'71641'
G06260	уиа	-48(М13)
	уиа	-46(М5)
G06261	мода	
	пв	G07450(М16)
	нтж	D07446
	по	G06337
	нтж	D07446
	нтж	'71605'
	по	G06267
	нтж	'71605'
	мода	
	пв	G07455(М16)
	цикл	G06261(М5)
	пб	G06337
G06267	слиа	46(М5)
	счи	М5
	пио	G06272(М15)
	уиа	'71652'(М14)
	сда	64-24
G06272	или	'71604'
	зп	'71604'
	цикл	G06260(М15)
	уиа	(М1)
	мода	
	пв	G06672(М3)
	пино	G06125(М4)
	сч	'71602'
	по	G06301
G06277	сч	'71604'
	сда	64+24
	уи	М5
G06301	уиа	48(М6)
	уиа	БФВВ(М3)
	уиа	-1(М2)
	уиа	(М15)
G06303	уиа	48(М13)
	уиа	'71642'(М14)
	уии	М11(М6)
	уии	М12(М3)
G06305	мода	
	пв	G07450(М16)
	пино	G06310(М15)
	нтж	Е4П1
	пе	G06305
G06310	уии	М15(М5)
	уии	М6(М11)
	уии	М3(М12)
	слиа	1(М2)
G06312	пино	G06314(М13)
	уиа	48(М13)
	слиа	1(М14)
G06314	пио	G06331(М15)
	пв	G07450(М16)
	слиа	-8(М13)
	нтж	D07063
	по	G06323
	нтж	D07063
	счм	(М14)
	сда	64(М13)
	и	D07446
	нтж	(М17)
	пе	G06303
	слиа	-1(М15)
	пб	G06312
G06323	уиа	1(М4)
	уиа	(М2)
	мода	
	пв	G06777(М3)
	пио	G06301(М4)
	сч	'71641'
	по	G06346
	уиа	(М4)
	сч	'71602'
	пе	G06200
	пб	G06032
G06331	сч	Е1
	зп	'71641'
	сч	'71602'
	пе	G06352
	уиа	БФВВ(М14)
	пв	G07535(М15)
	уиа	1(М4)
	уиа	(М2)
	мода	
	пв	G06777(М3)
	пино	G06032(М4)
	пб	G06301
G06337	сч	'71605'
	сда	64-40
	или	М40ЕТХ+1
	зп	D06345
	уиа	G06032(М13)
	пв	G07555(М14)
	конд	п'НЕТ РА'
	конд	п'ЗДЕЛИТ'
	конд	п'ЕЛЯ   '
D06345	пам	1
G06346	уиа	G06032(М13)
	пв	G07555(М14)
	конд	п'ОБРАЗ '
	конд	п'НЕ НАЙ'
	конд	п'ДЕН000'м16в'377'
G06352	уиа	23(М16)
	уии	М6(М11)
	уии	М3(М12)
G06354	слиа	-1(М16)
	сч	БФВВ(М16)
	зп	БФВВ+8(М16)
	пино	G06354(М16)
	уиа	48(М11)
	уиа	БФВВ+8(М12)
	уиа	-48(М13)
	уиа	БФВВ(М14)
G06360	мода	
	пв	G07450(М16)
	зп	(М17)
	пв	G07455(М16)
	сч	(М17)
	нтж	Е4П1
	пе	G06360
G06364	пио	G06367(М2)
	пв	G07450(М16)
	мода	
	пв	G07455(М16)
	слиа	-1(М2)
	пб	G06364
G06367	уиа	48(М11)
	уиа	'71652'(М12)
	мод	'71604'
	уиа	(М15)
G06371	пио	G06374(М15)
	пв	G07450(М16)
	слиа	-1(М15)
	пв	G07455(М16)
	пб	G06371
G06374	уии	М11(М6)
	уии	М12(М3)
	слиа	8(М12)
G06376	мода	
	пв	G07450(М16)
	зп	(М17)
	пв	G07455(М16)
	сч	(М17)
	нтж	D07063
	пе	G06376
	слиа	-8(М13)
	сч	D07446
	пв	G07455(М16)
	уиа	БФВВ(М12)
	сч	'71601'
	зп	'71641'
	пб	G06412
G06405	уиа	1(М4)
	уиа	(М7)
	уиа	(М1)
	сч	'71641'
	зп	'71601'
	пв	G06777(М3)
	слиа	-1(М4)
	пио	G06200(М4)
	пб	G06277
G06412	уиа	48(М11)
	пв	G07415(М15)
	уии	М15(М13)
	уиа	G06032(М13)
	пе	G06114
	нтж	
	по	G06114
	зп	'71600'
	пио	G06141(М15)
	уиа	-48(М13)
	уиа	БФВВ(М14)
	пв	G07356(М15)
	слиа	-1(М1)
	уиа	-1(М5)
	уиа	'77601'(М3)
G06422	слиа	1(М5)
	пв	G07450(М16)
	нтж	D07446
	по	G06444
G06424	нтж	D07437
	уиа	'200'(М15)
	по	G06434
	нтж	Е4П1
	уиа	G06422(М16)
	цикл	G07455(М3)
G06427	уиа	G06032(М13)
	пв	G07555(М14)
	конд	п'СТРОКА'
	конд	п' > 128'
	конд	п' СИМВО'
	конд	п'ЛОВ000'м16в'377'
G06434	слиа	1(М15)
	пв	G07450(М16)
	нтж	D07446
	по	G06444
	нтж	D07437
	пе	G06440
	цикл	G06434(М3)
	пб	G06427
G06440	счим	М15
	пв	G07455(М16)
	сч	(М17)
	нтж	Е4П1
	слиа	1(М5)
	уиа	G06422(М16)
	цикл	G07455(М3)
	пб	G06427
G06444	пио	G06141(М5)
	пв	G07361(М15)
	счи	
	зп	'71601'
	пб	G07114
G06447	уиа	(М2)
	сч	D07271
	слц	Е1
	Э75	D07271
	сч	Е24П1
	зп	'71601'
	сч	'71603'
	зп	'71614'
	мода	
	пв	G07531(М15)
	нтж	D07446
	по	G06467
	мода	
	пв	G07415(М15)
	пе	G06111
	зп	'71614'
	пио	G06467(М13)
	пв	G07531(М15)
	нтж	D07446
	по	G06467
	мода	
	пв	G07415(М15)
	пе	G06111
	пино	G06111(М13)
	зп	'71603'
	пб	G06467
D06464	конд	в'0000000000170000'
D06465	конд	в'0000000000100001'
D06466	конд	п'00000А'
G06467	сч	D07326
	сда	64-10
	уи	М14
	сда	64-20
	или	D06464
	зп	'71622'
	сч	Е1
	зп	'71606'
	сч	'71603'
	сда	64-24
	или	Е2
	зп	(М14)
	зп	'71616'
	сч	D06465
	зп	1(М14)
	слиа	2(М14)
	уиа	1(М7)
	пв	G06767(М3)
	вчоб	'71601'
	пе	G06530
G06501	сч	'71614'(М2)
	пв	G07356(М15)
G06502	сч	'71613'
	сда	64+7
	и	Е7П1
	уи	М5
	сда	64-7
	счм	'71606'
	сда	64-31
	счим	М1
	сда	64-5
	или	(М17)
	или	(М17)
	зп	'71607'
	слиа	-1(М1)
	пв	G07361(М15)
G06511	слиа	1(М12)
	пв	G06563(М15)
G06512	мода	
	пв	G07337(М15)
G06513	счи	М6
	зп	(М17)
	слц	'71606'
	сда	64-14
	или	(М17)
	или	'71607'
	зп	'71607'
	зп	(М14)
	счи	М14
	зп	'71640'
	сч	'71614'(М2)
	пв	G07343(М15)
G06521	пио	G06524(М5)
	пв	G07450(М16)
	мода	
	пв	G07455(М16)
	слиа	-1(М5)
	пб	G06521
G06524	слиа	1(М14)
	пв	G06777(М3)
	сч	'71630'
	нтж	В3
	по	G06551
	сч	'71615'
	вчоб	'71601'
	по	G06551
G06530	пио	G06545(М2)
	сч	'71610'
	зп	'71600'
	сч	'71601'
	нтж	Е24П1
	чед	
	уи	М16
	сч	'71601'
	пино	G06535(М16)
	сч	'71615'
G06535	зп	'71614'
	слц	Е1
	зп	'71610'
	сч	'71611'
	зп	'71601'
	пв	G06672(М3)
G06540	уиа	(М2)
	вч	'71600'
	пе	G06543
	сч	'71615'
	вчоб	'71601'
	по	G06551
G06543	уиа	НСТРОК(М14)
	уиа	G06013(М13)
	пб	G07555
G06545	сч	'71610'
	зп	'71600'
	сч	Е24П1
	зп	'71601'
	сч	В3
	зп	'71630'
	мода	
	пв	G06672(М3)
G06551	счи	М6
	слц	'71616'
	зп	'71616'
	пино	G06501(М2)
	сч	'71614'
	слц	'71603'
	зп	'71614'
	вчоб	Е24П1
G06555	по	G06501
	уиа	G06555+2(М14)
	уиа	G06013(М13)
	пб	G07555
	конд	п'НОМЕР '
	конд	п'СТРОКИ'
	конд	п' > 167'
	конд	п'772150'в'377'
G06563	сч	'71616'
	и	Е24П1
	вчоб	Е11
	счим	М6
	вчоб	(М17)
	по	(М15)
	мод	'71640'
	сч	
	или	D07065
	нтж	D07065
	счм	'71622'
	и	Е7П1
	слц	Е1
	сда	64-10
	слц	Е1
	сда	64-14
	или	(М17)
	мод	'71640'
	зп	
	сч	D07326
	сда	64-10
	уи	М14
	сч	'71616'
	зп	(М14)
	сч	Е1
	зп	'71616'
	сч	'71622'
	пв	G07324(М13)
	сч	'71622'
	слц	Е1
	зп	'71622'
	и	Е7П1
	нтж	ДЛОБЛ
	по	G07257
	сч	'71622'
	и	Е7П1
	вчоб	D06466
	пе	G07257
	сч	Е1
	зп	(М14)
	слиа	1(М14)
	пб	(М15)
G06610	сч	D07326
	сда	64-10
	уи	М15
	сч	Е24П1
	нтж	ВСЕЕД
	и	(М15)
	счим	М14
	и	Е10П1
	или	(М17)
	зп	(М15)
	счи	М6
	счим	М14
	вч	(М17)
	уи	М14
	сч	'71607'
	или	D07065
	нтж	D07065
	счм	Е1
	сда	64-14
	или	(М17)
	зп	(М14)
	сч	'71622'
	мода	
	пв	G07324(М13)
	сч	D07326
	сда	64-30
	или	Е40
	или	D06464
	зп	'71635'
	пв	G07324(М13)
	сч	'71606'
	сда	64-31
	или	1(М15)
	зп	1(М15)
	сч	D07326
	сда	64-30
	или	D07327
G06633	зп	'71636'
	пв	G07321(М13)
	сч	'71635'
	нтж	'71622'
	и	Е5П1
	по	G06642
	сч	'71635'
	слц	Е1
	зп	'71635'
	пв	G07324(М13)
	сч	'71636'
	слц	Е1
	пб	G06633
G06642	сч	Е1
	зп	(М15)
	сч	'71636'
	слц	Е1
	зп	'71636'
	нтж	ДЛОБЛ
	и	Е5П1
	по	G06013
	уиа	G06642(М13)
	сч	'71636'
	пб	G07321
G06650	уиа	1(М2)
	сч	D07271
	слц	Е1
	Э75	D07271
	сч	Е24П1
	зп	'71601'
	зп	'71611'
	сч	
	зп	'71610'
	пв	G07531(М15)
	нтж	D07446
	по	G06467
	мода	
	пв	G07415(М15)
	пе	G06111
	зп	'71610'
	пио	G06111(М13)
	пв	G07531(М15)
	нтж	D07446
	по	G06111
	уиа	1(М7)
	пв	G07415(М15)
	пе	G06111
	зп	'71611'
	вч	'71610'
	пе	G06105
	пио	G06467(М13)
	пв	G07531(М15)
	нтж	D07446
	по	G06467
	мода	
	пв	G07415(М15)
	пе	G06111
	зп	'71601'
	пино	G06111(М13)
	пб	G06467
G06672	сч	
	зп	'71612'
	зп	'71615'
	уиа	1(М4)
	уиа	-3(М16)
	сч	Е24П1
	зп	'71636'
	сч	'71627'
	нтж	Е5П1
	по	G06700
	нтж	Е5П1
G06700	зп	'71633'
	слц	D07326
	слц	Е1
	сда	64-10
	уи	М12
	мод	'71633'
	сч	'71623'
	по	G06741
	сч	(М12)
	и	Е24П1
	зп	'71617'
	вчоб	Е11
	пе	G07067
	нтж	Е10П1
	по	G07055
G06710	слиа	1(М12)
	счи	М12
	и	Е10П1
	по	G06735
	вч	'71617'
	по	G06735
	сч	(М12)
	зп	'71613'
	нтж	D07064
	и	D07064
	по	G06732
	сч	'71613'
	и	Е5П1
	по	G07071
	нтж	Е1
	по	G06710
	мода	
	пв	G07350(М15)
G06721	вч	'71600'
	вчаб	
	нтж	
	пе	G06725
	счи	М12
	пв	G07330(М15)
G06724	пб	G07011
G06725	вчоб	'71636'
	пе	G06732
	вчоб	'71636'
	зп	'71636'
	сч	'71615'
	зп	'71634'
	сч	'71613'
	зп	'71635'
	счи	М12
	пв	G07330(М15)
G06732	сч	'71613'
	и	Е5П1
	уи	М15
	слиа	-1(М15)
	сли	М12(М15)
	пб	G06710
G06735	сч	'71633'
	нтж	Е24П1
	по	G06747
	сч	'71633'
	слц	В3
	и	В3
	цикл	G06700(М16)
G06741	сч	'71622'
	нтж	Е7П1
	и	Е7П1
	по	G06747
	сч	Е5П1
	сда	64-12
	и	'71622'
	нтж	D06464
	по	G06747
	сч	Е24П1
	пб	G06700
G06747	сч	'71635'
	зп	'71613'
	сч	'71634'
	вч	'71600'
	пе	G06777
G06752	сч	'71612'
	зп	'71636'
	сч	'71613'
	сда	64-17
	счмр	
	зп	'71612'
	нтж	Е1
	по	G06767
	сч	'71612'
	пв	G07267(М15)
	зп	'71613'
	сда	64+14
	и	D07066
	нтж	'71636'
	пе	G07072
	сч	'71613'
	и	Е5П1
	по	G07071
	нтж	Е1
	по	G06752
	мода	
	пв	G07350(М15)
	вчоб	'71600'
	пе	G06752
	пб	G07007
G06767	сч	
	пв	G07267(М15)
	и	Е24П1
	вчоб	Е11
	пе	G07067
	нтж	Е10П1
	по	G07055
	сч	Е1
	зп	'71612'
	зп	'71636'
	мода	
	пв	G07267(М15)
	зп	'71613'
	и	Е7П1
	нтж	Е1
	пе	G07070
G06777	сч	'71612'
	зп	'71636'
	уиа	G07045(М16)
	пв	G07366(М15)
G07001	зп	'71612'
	пв	G07267(М15)
G07002	зп	'71613'
	сда	64-17
	счмр	
	нтж	'71636'
	пе	G07072
	сч	'71613'
	и	Е5П1
	по	G07071
	нтж	Е1
	по	G06777
G07007	мода	
	пв	G07350(М15)
	вч	'71600'
	пе	G06777
G07011	сч	'71615'
	мода	(М3)
	пино	(М7)
	нтж	'71600'
	по	G07016
	сч	'71601'
	по	(М3)
	вч	'71615'
	пе	(М3)
G07016	уиа	-48(М13)
	уиа	БФВВ(М14)
	уиа	(М4)
	пино	G07022(М2)
	сч	'71615'
	пв	G07372(М15)
	сч	Е4П1
	пв	G07455(М16)
G07022	сч	'71613'
	сда	64+7
	и	Е7П1
	по	G07032
	уи	М15
	слиа	1(М12)
G07025	мода	
	пв	G07450(М16)
	зп	'71633'
	и	Е8
	пе	G07037
	сч	'71633'
G07030	мода	
	пв	G07455(М16)
G07031	слиа	-1(М15)
	пино	G07025(М15)
G07032	сч	D07063
	пв	G07455(М16)
	сч	D07446
	пв	G07455(М16)
G07034	мода	(М3)
	пио	(М1)
	уиа	БФВВ(М14)
	уиа	G06777(М15)
	пб	G07535
G07037	сч	'71633'
	нтж	Е8
	уи	М4
	пе	G07042
	сч	D07062
	пб	G07030
G07042	сч	Е4П1
	пв	G07455(М16)
	слиа	-1(М4)
	пино	G07042(М4)
	пб	G07031
G07045	сч	'71630'
	вч	В3
	по	G07051
	сч	'71636'
	зп	'71612'
	пв	G07267(М15)
	уии	М15(М3)
	пб	G07350
G07051	уи	М15
	пио	G06610(М15)
	счи	М3
	нтж	D07054
	по	G06540
	пб	G06530
D07054	конк	в'00000000'
	конк	A(G06540)
G07055	сч	'71630'
	нтж	Е2
	по	G07011
	уиа	G07055+3(М14)
	уиа	G06013(М13)
	пб	G07555
	конд	п'ФАЙЛ П'
	конд	п'УСТОЙ0'в'377'
D07062	конд	в'0000000000000120'
D07063	конд	в'0000000000000375'
D07064	конд	в'7777760000000000'
D07065	конд	в'0000017777740000'
D07066	конд	в'0000000000377777'
G07067	мода	-2
G07070	мода	-2
G07071	мода	-2
G07072	уиа	G07072+16(М14)
	пв	G07535(М15)
	уиа	G06013(М15)
	уиа	БФВВ(М14)
	счи	М12
	пв	G07330(М15)
	сда	64-38
	сда	64+2
	рзб	П4710
	или	П1ПD1П
	или	D07446
	зп	1(М14)
	сч	'71612'
	сда	64+10
	сда	64-36
	рзб	П4710
	или	П1ПD1П
	зп	(М14)
	уиа	G06032(М15)
	пб	G07535
	конд	п'ОШ.В 0'
	конд	п'-М СЛ0'в'377'
	конд	п'ОШ.В 1'
	конд	п'-М СЛ0'в'377'
	конд	п'ДЛИНА '
	конд	п'ЭЛ-ТА0'в'377'
	конд	п'ОШ.ССЫ'
	конд	п'ЛКА000'м16в'377'
G07114	уиа	1(М7)
	пв	G06672(М3)
	сч	'71612'
	слиа	1(М1)
	уиа	(М10)
	пв	G07267(М15)
	зп	'71613'
	уии	М14(М12)
	сч	'71612'
	пе	G07125
	сч	D07134
	зп	'71613'
	зп	1(М14)
	сч	Е2
	зп	(М14)
	слиа	1(М12)
	сч	Е1
	зп	'71612'
G07125	сч	'71615'
	нтж	'71600'
	по	G07140
	сч	'71615'
	вч	'71600'
	пе	G07135
	сч	'71613'
	и	D07064
	счм	'71612'
	сда	64-14
G07132	или	(М17)
	зп	'71613'
	уиа	(М7)
	пб	G07165
D07134	конд	в'0000020000040001'
G07135	сч	'71613'
	и	D07065
	счм	'71612'
	сда	64-31
	пб	G07132
G07140	сч	'71613'
	и	Е5П1
	счим	М6
	вчоб	(М17)
	пе	G07165
	зп	'71634'
G07143	сч	Е7П1
	сда	64-7
	или	Е7П1
	счм	'71613'
	или	-1(М17)
	нтж	(М17)
	счим	М5
	сда	64-7
	счим	М1
	сда	64-5
	счим	М6
	или	(М17)
	или	(М17)
	или	(М17)
	зп	(М14)
	зп	'71607'
	сч	'71600'
	пв	G07343(М15)
	уиа	(М4)
	уиа	48(М11)
	уиа	БФВВ(М12)
G07156	слиа	-1(М5)
	пв	G07450(М16)
	мода	
	пв	G07455(М16)
	пино	G07156(М5)
	сч	'71634'
	уи	М16
	пио	G07163(М16)
	или	D07064
	зп	1(М14)
G07163	сч	'71602'
	пе	G06405
	пб	G06200
G07165	уиа	-3(М16)
	сч	'71627'
	нтж	Е5П1
	по	G07170
	нтж	Е5П1
G07170	зп	'71633'
	слц	D07326
	слц	Е1
	сда	64-10
	уи	М14
	мод	'71633'
	сч	'71623'
	по	G07250
	и	Е7П1
	нтж	Е7П1
	по	G07252
	сч	(М14)
	и	Е24П1
	зп	'71616'
G07177	слиа	1(М14)
	счи	М14
	и	Е10П1
	по	G07244
	вч	'71616'
	по	G07233
	сч	(М14)
	нтж	D07064
	и	D07064
	по	G07210
G07204	сч	(М14)
	и	Е5П1
	по	G07071
	уи	М15
	слиа	-1(М15)
	сли	М14(М15)
	пб	G07177
G07210	сч	(М14)
	и	Е5П1
	счим	М6
	вчоб	(М17)
G07212	пе	G07204
	зп	'71634'
	пио	G07215(М7)
	сч	D07064
	или	(М12)
	зп	(М12)
G07215	счи	М14
	пв	G07330(М15)
	мода	
	пв	G07267(М15)
	счи	М12
	счм	'71613'
	сда	64-17
	счмр	
	мода	
	пв	G07267(М15)
	или	D07065
	нтж	D07065
	счм	'71612'
	сда	64-14
	или	(М17)
	зп	(М12)
	сч	'71613'
	сда	64+14
	и	D07066
	пв	G07267(М15)
	сда	64-17
	сда	64+17
	счм	'71612'
	сда	64-31
	или	(М17)
	зп	(М12)
	пб	G07143
G07233	сч	Е10П1
	слц	Е1
	вч	'71616'
	счим	М6
	вчоб	(М17)
	пе	G07244
	сч	
	зп	(М14)
	счи	М6
	слц	'71616'
	счим	М14
	или	Е10П1
	нтж	Е10П1
	уим	М15
	зп	'71616'
	зп	(М15)
	ржа	19
	пб	G07212
G07244	сч	'71633'
	нтж	Е24П1
	по	G07252
	нтж	Е24П1
	слц	В3
	и	В3
	цикл	G07170(М16)
G07250	сч	Е24П1
	уиа	(М16)
	пб	G07170
G07252	сч	'71622'
	слц	Е1
	и	Е7П1
	пе	G07255
	сч	Е1
G07255	зп	'71633'
	нтж	ДЛОБЛ
	пе	G07263
G07257	уиа	G06013(М13)
	пв	G07555(М14)
	конд	п'НЕТ МЕ'
	конд	п'СТА В '
	конд	п'ФАЙЛЕ0'в'377'
G07263	сч	
	счим	
	уиа	-1(М12)
	пв	G07301(М15)
	зп	'71616'
	слиа	1(М12)
	уии	М14(М12)
	пб	G07233
G07267	зп	(М17)
	сда	64+10
	зпм	'71633'
	и	Е10П1
* next insn used as data
D07271	зп	(М17)
	уиа	-4(М12)
G07272	сч	'71626'(М12)
	по	G07275
	нтж	'71633'
	и	Е7П1
	по	G07320
	цикл	G07272(М12)
G07275	сч	'71627'
	по	G07300
G07276	слц	Е1
	и	В3
	по	G07276
	зп	'71627'
G07300	мод	'71627'
	уиа	(М12)
G07301	сч	'71623'(М12)
	по	G07304
	и	Е40
	пе	G07304
	сч	'71623'(М12)
	пв	G07321(М13)
G07304	счи	М12
	слц	D07326
	слц	Е1
	и	Е5П1
	сда	64-30
	или	Е40
	или	'71633'
	или	D07327
	зп	'71623'(М12)
	пв	G07321(М13)
G07311	пино	G07314(М10)
	сч	Е40
	нтж	ВСЕЕД
	и	'71623'(М12)
	зп	'71623'(М12)
G07314	мод	D07326
	слиа	1(М12)
	счи	М12
	сда	64-10
	слц	(М17)
	уи	М12
	сч	(М12)
	пб	(М15)
G07320	слиа	3(М12)
	пб	G07311
G07321	слц	'71620'
	зп	'71621'
	мода	
	Э70	'71621'
	пб	(М13)
G07324	зп	'71621'
	Э70	'71621'
	пб	(М13)
D07326	конд	п'000004'
D07327	конд	в'0000000000550000'
G07330	зп	'71612'
	сда	64+10
	вч	D07326
	вч	Е1
	зп	(М17)
	мод	(М17)
	сч	'71623'
	и	Е7П1
	сда	64-10
	счм	'71612'
	и	Е10П1
	или	(М17)
	зп	'71612'
	пб	(М15)
G07337	счи	М14
	и	Е10П1
	счм	'71622'
	и	Е5П1
	сда	64-10
	или	(М17)
	зп	'71606'
	пб	(М15)
G07343	счм	'71607'
	и	Е7П1
	сда	64+5
	сда	64-3
	уим	М13
	слиа	-48(М13)
	слиа	1(М14)
	сда	64(М13)
	зп	(М14)
	пб	(М15)
G07350	сч	(М12)
	нтж	Е7П1
	и	Е7П1
	сда	64+5
	сда	64-3
	уи	М11
	слиа	24(М11)
	сч	1(М12)
	сда	64(М11)
	зп	'71615'
	пб	(М15)
G07356	уиа	(М1)
	ржа	3
G07357	по	(М15)
	слиа	1(М1)
	сда	64+8
	пб	G07357
G07361	счи	М1
	счим	М5
	сл	(М17)
	или	D07441
	дел	D07443
	сл	D07441
	уи	М6
	слиа	2(М6)
	пб	(М15)
G07366	сч	'71613'
	сда	64+14
	и	D07066
	нтж	Е1
	по	(М16)
	нтж	Е1
	пб	(М15)
G07372	или	D07441
	зп	'71633'
	счи	М15
	счим	М12
	счм	D07445
	уиа	-7(М15)
	уиа	(М12)
G07376	счм	'71633'
	дел	-1(М17)
	сл	D07441
	зп	(М17)
	нтж	D07441
	пе	G07403
	пино	G07403(М12)
	пио	G07407(М2)
	сч	Е4П1
	мода	-1
G07403	уиа	1(М12)
	пв	G07455(М16)
	пио	G07407(М2)
	счи	М15
	счим	
	пв	G07760(М15)
G07406	уим	
	уи	М15
G07407	ржа	2
	сч	(М17)
	умн	-1(М17)
	вчоб	'71633'
	зпм	'71633'
	дел	D07444
	ржа	3
	цикл	G07376(М15)
	уим	
	уим	М12
	уи	М15
	пб	(М15)
G07415	уиа	-8(М14)
	счи	
	счм	D07445
G07417	зп	'71633'
	пв	G07450(М16)
G07420	нтж	Е4П1
	уиа	1(М13)
	по	G07432
	нтж	D07437
	уиа	(М13)
	по	G07432
	нтж	D07446
	вчоб	D07442
	пе	G07431
	вчоб	D07442
	или	D07441
	ржа	6
	умн	'71633'
	сл	(М17)
	счм	'71633'
	дел	D07444
	ржа	7
	цикл	G07417(М14)
G07431	слиа	-1(М17)
	пб	(М15)
G07432	сч	(М17)
	дел	'71633'
	дел	D07444
	сл	D07441
	нтж	D07441
	вчоб	Е24П1
	пе	(М15)
	вчоб	Е24П1
	пб	(М15)
D07437	конд	в'0000000000000360'
D07440	конд	п'000008'
D07441	конд	в'6400000000000000'
D07442	конд	п'000009'
D07443	конд	е'6' 
D07444	конд	е'10' 
D07445	конд	в'5411422640000000'
D07446	конд	в'0000000000000377'
	конд	в'4050000000000000'
G07450	мода	G07452
	пино	(М11)
	слиа	1(М12)
	уиа	48(М11)
G07452	слиа	-8(М11)
	сч	(М12)
	сда	64(М11)
	и	D07446
	пб	(М16)
G07455	мода	G07457
	пино	(М13)
	слиа	1(М14)
	уиа	-48(М13)
G07457	слиа	8(М13)
	и	D07446
	сда	64(М13)
	счм	D07446
	сда	64(М13)
	и	(М14)
	нтж	(М14)
	или	(М17)
	зп	(М14)
	пб	(М16)
G07464	уиа	-12(М15)
	уиа	48(М11)
	уиа	БФВВ(М12)
	пв	G07450(М16)
	зп	'71633'
G07467	сч	D07475+12(М15)
	сда	64+40
	нтж	'71633'
	по	G07472
	цикл	G07467(М15)
G07472	сч	D07475+12(М15)
	сда	64+15
	и	Е5П1
	зп	'71630'
	мод	D07475+12(М15)
	пб	
D07475	конк	п'Л00'
	конк	A(G06043)
	конк	п'В00'
	дк	2,G06211
	конк	п'И00'
	конк	A(G06131)
	конк	п'Н00'
	дк	1,G06043
	конк	п'З00'
	дк	1,G06042
	конк	п'С00'
	дк	4,G06650
	конк	п'П00'
	дк	3,G06447
	конк	п'К00'
	конк	A(G07512)
	конк	п'А00'
	конк	A(G07522)
	конк	п'V00'
	конк	A(G07526)
	конк	п'Ф00'
	конк	A(G07614)
	конк	в'77600000'
	дк	2,G06240
	конк	в'44400000'
	дк	2,G06412
G07512	мод	'71631'
	уиа	(М17)
	мода	
	Э72	D07520
	мода	
	Э72	D07517
	мода	
	Э72	D07521
	уиа	(М12)
	пб	БАЦ
D07517	конд	в'4057770000000000'
D07520	конд	в'4700000000000000'
D07521	конд	в'0004050607107700'
G07522	сч	Е1
	зп	ПЧЕСТЬ
	нтж	D07525
	Э75	D07525
	и	Е1
	Э62	'76'
* next insn used as data
D07525	пб	G06032
	конк	п'001'
G07526	сч	Е1
	нтж	D07530
	зп	D07530
	пб	G06032
D07530	конд	в'0'
G07531	мода	
	пв	G07450(М16)
	нтж	Е4П1
	по	G07531
	нтж	Е4П1
	слиа	8(М11)
	пб	(М15)
G07535	сч	D07530
	пе	G07540
	мода	
	пв	G07555(М13)
	пе	G06032
G07540	мод	D07525
	пб	G07541
G07541	мода	
	Э64	D07543
	пб	(М15)
D07543	конд	в'6000000060000000'
	конд	в'0000000040000000'
G07545	зп	(М12)
	Э71	D07605
	мода	
	Э71	D07607
	и	Е25
	пе	(М13)
	сч	D07612
	зп	D07613
	мода	
	Э71	D07604
	сч	D07607
	Э62	'102'
	мода	
	Э71	D07607
	сч	
	пб	(М13)
G07555	мода	
	Э71	D07606
	мода	
	Э71	D07607
	и	Е25
	пб	(М13)
G07560	уиа	БФВВ(М12)
	сч	D07610
	пе	G07571
	Э71	ВСЕЕД
	нед	
	зп	(М17)
	сда	64-12
	или	D07605
	зп	D07605
	нтж	D07606
	зп	D07606
	нтж	D07604
	зпм	D07604
	или	D07607
	зп	D07607
	или	Е26
	зп	D07610
G07571	уиа	5(М16)
	уиа	G07571(М14)
	счи	М16
	Э50	'177'
	пе	G07574
	пб	G07600
G07574	сч	D07603
	пв	G07545(М13)
	сч	(М12)
	сда	64+40
	нтж	D07446
	пе	G07512
	пб	(М14)
G07600	уиа	G07600(М14)
	сч	D06466
	или	Е19
	Э50	'177'
	пе	G07574
	пб	(М15)
D07603	конд	п'НРЕС-0'в'377'
D07604	кк	'14',D07613(М14)
	кк	0,G07712+1(М14)
D07605	конд	в'5034000051000026'
D07606	конд	в'3014000030000126'
D07607	конд	п'500000'
D07610	конд	в'0'
D07611	конд	в'0267437700000000'
D07612	конд	в'0367437700000000'
D07613	конд	в'0'
G07614	сч	Е24П1
	зп	'71601'
	уиа	2(М2)
	уиа	(М1)
	уиа	(М7)
	пв	G06672(М3)
	пино	G06125(М4)
	сч	D07271
	слц	Е1
	Э75	D07271
	сч	D07326
	сда	64-10
	уи	М6
	сда	64-20
	или	D06464
	зп	'71622'
	уиа	-48(М5)
G07625	сч	
	зп	'71641'
	сч	D07636
	зп	D07643
G07627	мод	'71641'
	уиа	-5(М2)
G07630	сч	БФВВ
	нтж	D07643+3(М2)
	по	G07635
	цикл	G07630(М2)
	мод	'71641'
	уиа	(М2)
	слиа	-5(М2)
	пио	G07661(М2)
	слиа	5(М2)
	пб	G07703
G07635	уиа	'71662'(М17)
	пб	G07654(М2)
D07636	конд	п'*NАМЕ '
D07637	конд	п'*ВЕМSН'
D07640	конд	п'КНЦ◇◇◇'
	конд	м40п'_'п'◇ЕКОН'
D07642	конд	п'ЕКОНЕЦ'
D07643	конд	п'*NАМЕ '
	конд	п'///***'
	конд	п'///((('
	конд	п'///)))'
	уиа	3(М2)
	пб	G07703
	уиа	3(М2)
	пб	G07703
	сч	D07643
	пб	G07666
	уиа	(М2)
	пб	G07661
	уиа	5(М2)
	пб	G07656
G07654	сч	'71641'
	сда	64+24
	зп	'71641'
	пб	G07661
G07656	сч	'71641'
	сда	64-24
	счим	М2
	или	(М17)
	зп	'71641'
G07661	уии	М13(М5)
	уии	М14(М6)
G07662	уиа	2(М2)
	уиа	1(М4)
	уии	М5(М13)
	уии	М6(М14)
	мода	
	пв	G06777(М3)
	пио	G07627(М4)
	пб	G07712
G07666	сч	D07643
	нтж	D07636
	пе	G07673
	сч	D07637
	зп	D07643
	сч	Е1
	зп	'71641'
	уиа	(М2)
	пб	G07703
G07673	сч	D07643
	нтж	D07637
	пе	G07700
	сч	D07640
	зп	D07643
	сч	
	зп	'71641'
	уиа	1(М2)
	пб	G07703
G07700	сч	D07637
	зп	D07643
	сч	Е1
	зп	'71641'
	уиа	(М2)
	пб	G07703
G07703	уии	М13(М5)
	уии	М14(М6)
	уиа	48(М11)
	уиа	БФВВ(М12)
	уиа	'77671'(М3)
G07706	мода	
	пв	G07450(М16)
	нтж	D07063
	пе	G07747
	слиа	-1(М2)
	пио	G07752(М2)
	сч	D07774
	пв	G07455(М16)
G07712	слиа	-2(М2)
	пв	G07760(М15)
	пино	G07662(М2)
	уиа	-5(М2)
	мод	'71641'
	уиа	(М4)
G07715	сч	D07774(М4)
	пв	G07455(М16)
	мода	
	пв	G07760(М15)
	цикл	G07715(М2)
	пио	G07724(М4)
	сч	D07642
	зп	БФВВ
	сч	D07063
	сда	64-40
	зп	БФВВ+1
	уии	М5(М13)
	уии	М6(М14)
	пб	G07625
G07724	сч	'71622'
	пв	G07324(М13)
	уиа	(М15)
	сч	'71622'
	и	Е7П1
	слц	Е1
	сда	64-15
	или	D07772
G07730	зп	'71633'
	Э50	'7701'
	уиа	БФВВ(М14)
	по	G07740
	нтж	'71633'
	пе	G07742
	счи	М16
	сда	64-30
	рзб	П67
	или	D07776
	зп	(М14)
	сч	М40ЕТХ
	зп	1(М14)
	уиа	G06013(М13)
	пб	G07555
G07740	сч	D07440
	Э50	'7700'
	пб	G07730
G07742	сч	БФВВ
	сда	64+3
	вчоб	
	слц	Е1
	уи	М11
	уиа	БФВВ-8(М14)
G07745	слиа	9(М14)
	пв	G07555(М13)
	цикл	G07745(М11)
	пб	G06013
G07747	нтж	D07063
	пв	G07455(М16)
	мода	
	пв	G07760(М15)
	цикл	G07706(М3)
	пб	G07754
G07752	сч	Е4П1
	пв	G07455(М16)
	мода	
	пв	G07760(М15)
G07754	цикл	G07752(М3)
	уиа	2(М2)
	сч	'71615'
	пв	G07372(М15)
	сч	D07774
	пв	G07455(М16)
	уиа	G07662(М15)
	пб	G07760
G07760	мода	(М15)
	пино	(М13)
	счи	М14
	и	Е10П1
	нтж	Е10П1
	пе	(М15)
	сч	'71622'
	пв	G07324(М13)
G07764	сч	'71622'
	слц	Е1
	зп	'71622'
	и	Е7П1
	нтж	D06466
	по	G07257
	сч	D07326
	сда	64-10
	уи	М14
	уиа	-48(М13)
	пб	(М15)
D07772	конк	в'77217000'
	дк	0,D07772+1
	конк	п'ТКН'
	дк	0,БФВВ
D07774	конд	в'0000000000000341'
	конд	в'0000000000000342'
D07776	конд	п'Ф- 000'
СЕРП	ВНЕШ	ВВЧИС,ДЛОБЛ,ПЧЕСТЬ,ЧИСЛО,ПРОГПБ,ПОВБОБ,ЗАХВАТ,ОБЛ
СЕРП	ВНЕШ	ДАЙЗП,ВОПБОБ,ВЫДША,ТНЕОБЛ,Х4096,БФВВ,Е10П1,Е11,Е19
СЕРП	ВНЕШ	Е24П1,Е25,Е26,Е40,Е4П1,ВСЕЕД,Е5П1,В3,Е2,Е8,Е7П1,Е1
СЕРП	ВНЕШ	В12,М40ЕТХ,П1ПD1П,П4710,П67
	ФИНИШ
