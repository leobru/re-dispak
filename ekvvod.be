ЭКВВОД	СТАРТ	'10000'
 УПОТР ЭКВВОД(М7)
 Б
 КОНД В’0’
 КОНД М41В’3’ РЖА 3
 КОНД (21)В’0’
 КОНД В’0’    НЕ ЗАНИМАТЬ
КВ ЗП 34(М3)
 ПБ КОНЕЦ1
 КОНД В’0’ 25-Ю ЯЧ.НЕ ЗАНИМАТЬ
Р1 ПАМ 1
Р2 ПАМ 1
Р3 ПАМ 1
Р4 ПАМ 1
РА ПАМ 1
 ПАМ 1  ПРИП
 КОНД М15В’1’  ДЛЯ Э64
 КОНД М47В’1’  ВРЕМЯ РАБОТЫ ЭКВВОД
ИР16 ПАМ 1
РР ПАМ 1
Ш ПАМ 1
КИС ПАМ 1
R1 КОНД В’0’
R2 КОНД В’0’
	уиа	'3'
 И П77
	по	КОН1
 ЗП ПОЧТА(М7)
 УИ М2
	сч	GRР24+4
 СЧ 0
 ЗП РАБАД
 УИА (М12)
 УИА (М4)
 УИА (М5)
 СЧ Е1
 ЗП НМ+1
 ЗП R
 СЧ НОММБ
 ЗП НМ
 СЧ ТУСП-1(М2)
 УИ М3 АДРЕС ИПЗ
 СЧ 36(М3)
        и       Е15П11
	пе	АВОС
	сч	'44'(М3)
	и	Е15П1
 ВЧ Е7
 ПЕ ВВОДМ
 УИ М13
	вчоб	ЧЭК
	по	ДЕШЭК
ВВОДМ	уиа	0(М13)
	пб	ВЫЗ4
КПР1 СЧИ М2
 И П17
 УИ М5
 СЧИ М2
 СДА 64+4
 ВЧОБ Е2
 ИЛИ КАТ1
 ЗП КАТ
КПР СЧ R
 ПВ ТБУФ(М15)
 СДА 64-8
 УИ М1 А НАЧ.ЛИСТА
ПР3 СДА 64-2
 ИЛИ НМ
 МОДА (М4) М4 СНАЧАЛА=0
 СЛЦ КАТ
ПР30 ЗП КАТ
 ПВ ФИЗОБМ(М16) ЧТЕН.КАТАЛ.
 УИА 3
 ПБ (М6)
КНЦ СЧ КАТ
 ПВ ТБУФ(М15) ОТДАТЬ ЛИСТ
АВОС1 УИИ М17(М6)
 УИИ М15(М3)
 МОДА КОНЕЦ1
 УИА (М16)
	уиа	'2003'
 ПБ АВОСТА
АВОС УИА 36(М6)
 ПБ АВОС1
G10106	уиа	'41'(М6)
	пб	АВОС1
ВЫЗ1 УИА КЭКСТ-Э(М16)
ВЫЗА СЛИ М16(М7)
 СЧИ М7
 СДА 64-2
 ИЛИ (М16)
 СЛЦ НОММБ1
 УИИ М1(М7)
 СЛИА 768(М1)
 ЗП РА
 И П177
 НТЖ НСЕ
	уиа	'2003'
 МОДА (М13)
 ПО (М1)
 НТЖ НСЕ
 ЗП НСЕ
 СЧ РА
 УИИ М16(М1)
 СЛИ М16(М13)
 ПБ ФИЗОБМ
ВЫЗ2 УИА КЭК2-Э(М16)
 ПБ ВЫЗА
ВЫЗ3 УИА КЭК3-Э(М16)
 ПБ ВЫЗА
ВЫЗ4 УИА КЭК4-Э(М16)
 ПБ ВЫЗА
ВЫЗ5 УИА КЭК5-Э(М16)
 ПБ ВЫЗА
ВЫЗ6 УИА КЭК6-Э(М16)
 ПБ ВЫЗА
ВЫЗ7 УИА КЭК7-Э(М16)
 ПБ ВЫЗА
ДЕШЭК НОП
 СЧ (М3)
 МОДА (М13)
 ПБ ЭС100А
ЭС100А СЧ ШИФ(М3)
 ПБ Э105Г ДАЙ ШИФР (’100’)
 СЧ 36(М3)
 ПБ ПРИЧ ДАЙ ПРИЧИНУ АВОСТН.СИТУАЦИИ(’101’)
 И П77
 ПБ ЧАВОС ЧИСЛО АВОСТОВ (’102’)
 И П77777
 ПБ КВ
 УИА Э104-ЭК2(М13)
 ПБ ВЫЗ2
ДД УИА (М4)
 ПБ ДЕЛЬТА
 УИА (М13)
 ПБ Э106
 УИА 16(М13)
 ПБ Э106
 УИА 64(М14)
 ПБ Э110
 СЧ (М3) ≠0-ЗАДАЧА КОНЧИЛАСЬ ПЛОХО
 ПБ Э111
 УИА 1(М4)
 ПБ ДЕЛЬТА ДЛЯ МД ДЕЛЬТА
 УИА 1(М5)
 ПБ ДД
 СЧ ГОД
 ПБ Э105Г
ПА УИА (М17)
 ПБ Э115   ЕNQ  115
П1 УИА 1(М17)
 ПБ Э115  DЕQ   116
 УИА Э116-ЭТ(М13)
 ПБ ВЫЗ1           117
 УИА Э120-ЭК4(М13) 120
 ПБ ВЫЗ4
 УИА ЭК121-ЭК4(М13)
 ПБ ВЫЗ4          121
 УИА Э122-ЭТ(М13)
 ПБ ВЫЗ1         122
 УИА Э123-ЭК4(М13)
 ПБ ВЫЗ4  ОТКАЗ ОТ ПАРОЛЯ  123
 СЧИ М2
 ПБ Э105Г  124
 УИА СПЕЦ-ЭТ(М13)
 ПБ ВЫЗ1   125
 УИА Э126-ЭТ(М13) ПАРОЛЬ Э72  126
 ПБ ВЫЗ1
 УИА Э127-ЭТ(М13)  ПРОВ ПАРОЛЯ  127
 ПБ ВЫЗ1
 УИА Э130-ЭТ(М13)   130
 ПБ ВЫЗ1
 СЧ (М3)
 ПБ Э131   131
 УИА Э132-ЭТ(М13)
 ПБ ВЫЗ1   132
 УИА Э133-ЭК7(М13)
 ПБ ВЫЗ7   133
 УИА Э134-ЭТ(М13)
 ПБ ВЫЗ1   134
 УИА Э135-ЭТ(М13)
 ПБ ВЫЗ1
	сч	0       свс: (М3)
	пб	Э105Г   свс: Э136
 СЧ 0
 ПБ Э105Г   137
 УИА Э140-ЭК5(М13)
 ПБ ВЫЗ5   140
 УИА Э141-ЭТ(М13)
 ПБ ВЫЗ1   141
 УИА Э142-ЭК3(М13)
 ПБ ВЫЗ3   142
 УИА Э143-ЭК3(М13)
 ПБ ВЫЗ3    143
 УИА ЭК144-ЭК4(М13)
 ПБ ВЫЗ4     144
 СЧ 0
 ПБ Э105Г   145
 УИА Э146А-ЭК3(М13)
 ПБ ВЫЗ3   146
 УИА Э140-ЭК5(М13)
 ПБ ВЫЗ5   147
 УИА Э150-ЭК3(М13)
 ПБ ВЫЗ3   150
 УИА Э151-ЭК3(М13)
 ПБ ВЫЗ3   151
 УИА Э152-ЭК3(М13)
 ПБ ВЫЗ3   152
 УИА Э153-ЭК2(М13)
 ПБ ВЫЗ2   153
 УИА Э154-ЭК3(М13)
 ПБ ВЫЗ3   154
 УИА Э155-ЭК2(М13)
 ПБ ВЫЗ2   155
 УИА Э156-ЭК2(М13)
 ПБ ВЫЗ2   156
 УИА (М13)
 ПБ ПА
 УИА (М13)
 ПБ П1    160
 УИА Э161-ЭК2(М13)
 ПБ ВЫЗ2  161
 УИА Э162-ЭК2(М13)
 ПБ ВЫЗ2   162
 УИА Э162-ЭК2(М13)
 ПБ ВЫЗ2  163
 УИА Э164-ЭК2(М13)
 ПБ ВЫЗ2  164
 УИА Э165-ЭТ(М13)
 ПБ ВЫЗ1  165
 УИА Э166-ЭК4(М13)
 ПБ ВЫЗ4   166
 УИА Э167-ЭТ(М13)
 ПБ ВЫЗ1   167
 УИА Э170-ЭК2(М13)
 ПБ ВЫЗ2  170
 УИА Э171-ЭК6(М13)
 ПБ ВЫЗ6     Э171
 СЧ Е48-1(М2)
 ПБ ЗИО      172
 УИА ЭК173-ЭТ(М13)
 ПБ ВЫЗ1     173
 УИА ЭК174-ЭК4(М13)
 ПБ ВЫЗ4     174
 СЧ 0
 ПБ Э105Г    175     РЕЗИДЕНТ
 УИА Э176-ЭК5(М13)
 ПБ ВЫЗ5     176
 УИА Э177-ЭК5(М13)
 ПБ ВЫЗ5     177
ОО СЧ 0
 ПБ Э105Г    200     РЕЗЕДЕНТ
 СЧ 0
 ПБ Э105Г    201     РЕЗЕДЕНТ
 УИА Э202-ЭК6(М13)
 ПБ ВЫЗ6     202
 УИА Э203-ЭК6(М13)
 ПБ ВЫЗ6     202
 УИА Э204-ЭК6(М13)
 ПБ ВЫЗ6      204
 УИА Э205-ЭК6(М13)
 ПБ ВЫЗ6   205
 УИА Э206-ЭК6(М13)
 ПБ ВЫЗ6   206
 УИА Э207-ЭК6(М13)
 ПБ ВЫЗ6   207
 УИА Э210-ЭК6(М13)
 ПБ ВЫЗ6
 УИА Э211-ЭК6(М13)
 ПБ ВЫЗ6   211
 УИА Э212-ЭК6(М13)
 ПБ ВЫЗ6   212
 УИА Э213-ЭК6(М13)
 ПБ ВЫЗ6   213
 УИА Э214-ЭК6(М13)
 ПБ ВЫЗ6   214
 УИА Э215-ЭК6(М13)
 ПБ ВЫЗ6   215
 УИА Э216-ЭК6(М13)
 ПБ ВЫЗ6   216
 НТЖ ВСЕ6
 ПБ Э217
 СЧ 0
 ПБ Э105Г  220
 УИА Э221-ЭК6(М13)
 ПБ ВЫЗ6   221
ЧЭК КОНД В’121’
Э217 ПЕ Э105Г
 СЧ НОМАРС
 ПЕ Э105Г
 СЧ Е48-1(М2)
 ЗП НОМАРС
 НЕД 0
 ЗП НОМАРС+1
 ПБ Э105Г
*
ЗИО НТЖ ЕЗАР
 ПЕ АВОС
 СЧ НОММЛ1
 СЛЦ КУСКБ
 МОДА ДБУФ
 ПВ (М11)
 МОДА ВЫХ
 УИА (М15)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 УИИ М11(М12)
 СЧ 9(М3)
 УИ М13
 ПО ЗИО1
 УИА 0(М10)  НЕТ РАБ.ПЛАНУ; ЗОНА НЕ ИЗМ.
ЦЗИО СЧ 7(М12)
 И П1777
 ПО КЦЗИО
 УИ М16
 СДА 64+3
 ЗП Р1
 И П37
 УИ М17
 СЧ Р1
 СДА 64+5
 УИ М14
 СЛИ М14(М13)
 УИИ М12(М11)
 СЛИ М12(М16)
 СЧ 6(М12)
 И Е25
 ЗП Р1
 СЧ ЯЧБКИО(М12)
 И ЕБКИО
 ИЛИ Р1
 ПО ЦЗИО
 СЧ (М12)
 И Е40
 ПЕ ЦЗИО
 УИА 0
 СЧ (М14)
 УИА 3
 И Е48(М17)
 ПО ЗАПРЕТ
 СЧ Р1
 ПО ЦЗИО
 СЛИА ’201’(М10)
 ПБ ЦЗИОК
ЗАПРЕТ СЧ Р1
 ПЕ ЦЗИО
 СЛИА 1(М10)
 СЧ Е25
ЦЗИОК НТЖ 6(М12)
 ЗП 6(М12)
 ПБ ЦЗИО
КЦЗИО СЧ ЯБКЗПА(М11)
 И П7
 ЗП Р1
 НТЖ (М3)
 ПЕ КЗИО
 СЧ Р1
 ПО КЗИО
 НТЖ ЯБКЗПА(М11)
 ЗП ЯБКЗПА(М11)
 СЛИА ’201’(М10)
КЗИО СЧ Р1
 ЗП (М3)
 СЧИ М10
 СДА 64+7
 ПО КЗИО1
 УИА ’2003’
 СЧ Е36
 ИЛИ ШКИВ
 ЗП ШКИВ
 ПБ ЗПЗОН
КЗИО1 СЧИ М10
 ПЕ ЗПЗОН
 ПБ ВЫХ
ЗИО1 СЧ ЯБКЗПА(М11)
 И П7
 ЗП Р1
 ПЕ ЗИО3
 СЧ (М3)
 И П7
ЗИО1А НТЖ ЯБКЗПА(М11)
 ЗП ЯБКЗПА(М11)
ЗИО2 СЧ Р1
 ЗП (М3)
 ПБ ЗПЗОН
ЗИО3 СЧ (М3)
 ПЕ ЗИО2
 СЧ Р1
 ПБ ЗИО1А
ПРИЧ СДА 64+41 ПРИЧИНА АВОСТА
 ПБ Э105Г
ЧАВОС НОП
 НТЖ П77
 СДА 64-41
	уиа	'2003'
	нтж	ЯЧЧАВ(М3)
	и	Е48П42
	нтж	ЯЧЧАВ(М3)  ЧИСЛО АВОСТОВ
 ЗП ЯЧЧАВ(М3)
 ПБ КОНЕЦ1
КОНЕЦ СЧ КАТ
 ПВ ТБУФ(М15) ОТДАТЬ ЛИСТ
КОНЕЦ1 УИА ’3’       свс: 2003
 МОД ЭКВВОД+25
 УИА (М2)
 МОД ТУСП-1(М2)
 УИА (М3)
 СЧ Е48-1(М2)
 ПВ ВШГП(М15)
П СЧ 33(М7)
 НТЖ Е48
 СЛЦ 33(М3) +ВРЕМЯ РАБОТЫ ЭКСТР.
 ЗП 33(М3)
 СЧ Е48
 ЗП 33(М7)
КОН1 УИА 3      свс: 1027
	сч	D03356
	по	G10373
	нед	
	уи	М2
	зп	R
	сч	Е48-1(М2)
	пам	0
	нтж	D03356
	зп	D03356
	мод	НЗАД(М2)
	уиа	0(М3)
	сч	(М3)
	сда	64-6
	зп	(М3)
	уиа	ММБН(М15)
	счи	М15
	нтж	'44'(М3)
	и	Е15П1
	нтж	'44'(М3)
	зп	'44'(М3)
	сч	R
	пб	40(7)
G10373	сч	Е32
 ПБ ОТКАЗН
Э111 ПО Э111Б
 СЧ НПРИЧ
Э111Б ЗП РА
 СЧ О22П16
 И 23(М3)
 ИЛИ РА
 ЗП 23(М3)
 ПБ КОНЕЦ1
ДЕЛЬТА  ноп     , ОПРЕДЕЛ.ФИЗИЧ.НОМ.МЛ
 ЗП R
 И Е13
 СДА 64+10
 УИ М16
 СЧ (М3)
 СДА 64+12
 И П77
 УИ М14
 СДА 64+1
 УИ М15 NМД(МАТ):2
 ВЧ П14
 ПЕ КОНЕЦ1
 ВЧ Е5
 ПО КОНЕЦ1
 СЧ АРХМЛ(М3)
 И Е48-24(М14)
 ПЕ ДЛЯАРХ
 МОДА (М3)
 СЧ ШЗНМБ-12(М15)
 СДА 64+8(М16)
 И П17
 ПО НЕТ МЛ НЕ ЗАКАЗАНА
 ЗП R1
 И П3
 УИ М16 N КУСКА В ОБЩТОМ
 СЧ R1
 СДА 64+2
 УИ М15 N СЛОВА ОБЩТОМ
 СЛИ М15(М3)
 СЧ МДР(М3)
 И Е48-8(М14)
 ЗП R2
 УИА 1027
 СЧ ОБЩТОМ(М15)
 СД КТОМ-1(М16)
 МОДА СД
 ПИНО (М4) ЭЕСТ.СДВИГА
 ЗП (М3)
 МОДА ДАЙБОБ
 ПИО (М5) ДАТЬ БОБИНУ
 СДА 64-18
 И Е34П25
 ЗП (М3)
 СЧ R2
 ПО КОНЕЦ1
 СЧ 0
 ПБ Э105Г ДЕЛЬТА
О СЧ (М3)
 СДА 64+12
 И П17
 ЗП 8(М3)
НОРМА СЧ П77777
 ПБ Э105Г
ДАЙБОБ И П77
 УИ М16
 СЧ R2
 ПЕ О
 СЧ УКАЗД(М3)
 И Е48-8(М14)
 ПО ДБ МЛ
 СЛИА 56(М16)
ДАЙБ СЧ ТЗНМЛ-24(М16)
ДБО И П7777
 ПВ ПЕРЕВ(М15) ИЗ8 В 10
 СБР МСК
 СДА 64+32
Э105Г ЗП (М3) НА СУММАТОР
 ПБ КОНЕЦ1
ДБ СЧ R1
	сда	64-1
	слц	R1
	вчоб	
 УИ М4
	сч	Е39(М3)
	сда	64(М4)
	и	Е46П48
	по	ДАЙБ
	мода	G10460
	уиа	0(М12)
G10451	сда	64+40
	уи	М14
	уии	М4(М16)
	сч	
	пв	ТБУФ(М15)
	сда	64-8
	уи	М10
	сда	64-2
	или	ЗОН
	слц	НОММЛ1
	зп	КАТ
	уии	М16(М12)
	пб	ФИЗОБМ
G10460	мода	(М14)
	мода	(М4)
	сч	-56(М10)
	зп	R1
	сч	КАТ
	пв	ТБУФ(М15)
	сч	R1
	пб	ДБО
Э106 СЧ Е1
 ЗП R
 УИА (М4)
 МОДА КПР1
 ПВ (М6)
 СЛИ М13(М5)
 МОДА (М1)
 СЧ ФИОМК(М13)
ВЫ ЗП (М3)
 ПБ КОНЕЦ
СД НОП ------   УСТАНОВИ СДВИГ
 СЧ R2
 ПЕ АВОС
 СЧ П1777 ЗАНОС ДЕЛЬТЫ
 СД КТОМЛ-1(М16)
 СДА 64-6
 НТЖ ВСЕЕД
 И ОБЩТОМ(М15)
 ЗП ОБЩТОМ(М15)
 СЧ (М3)
 И П1777 ДЕЛЬТА
 СД КТОМЛ-1(М16)
 СДА 64-6
 ИЛИ ОБЩТОМ(М15)
 ЗП ОБЩТОМ(М15)
	пб	КОНЕЦ1
ДЛЯАРХ СЧ (М3)
 ЗП ИНФ(М3)
 СЧ СОБА40
 ПВ ЗАПВЕТ(М16)
 СЧ ШЗНМБ(М3)
 ИЛИ АХ
 ЗП ШЗНМБ(М3)
 СЧ Ш1
 ИЛИ Е48-1(М2)
 ЗП Ш1
 СЧ 1(М3)
 И Е48П9
 ИЛИ Е4
 ЗП 1(М3)
 ПБ П
НЕТ МОДА КОНЕЦ1
 ПИНО (М4) ДЕЛЬТУ НЕ ЗАНЕСЛИ
 ПБ Э105Г
Э110 НОП
 ЗП R1
 УИА Э105Г-ЭКВВОД(М12)
 УИА ТЗНМД(М10)
 И Е12
	по	G10520
	сч	R1
	вчоб	NБЛ
	по	ОБЩ
G10520	уиа	ТЗНМЛ(М10)
	сч	ГОД
	и	Е46П48
	по	ОБЩ
	мода	G10451
	пв	(М12)
	уиа	Е44Е43(М12)     неясно
ОБЩ УИА 3
 СЛИ М12(М7)
ОБЩ1 СЧ (М10)
 НТЖ R1
 И П7777
 ПО (М12)
 СЛИА 1(М10)
 СЛИА -1(М14)
 МОДА ОБЩ1
 ПИНО (М14)
 ПБ (М12)
Э115 НОП ,
 МОДА ПРОВАР
 ПВ (М15)
 ЗП R
 И Е12
 ПО КОНЕЦ1
 СЧ R
 ВЧОБ NБЛ
 ПЕ КОНЕЦ1 МЛ
G10536	уиа	'3'
	уиа	-63(М15)
	мода	G10545
	уиа	0(М6)
	мода	G10106
	уиа	0(М10)
ПОИСК СЧ R
 НТЖ ТЗНМД+63(М15)
 И П7777
	по	(М6)
G10543	ноп
 МОДА ПОИСК
 ЦИКЛ (М15)
	уии	М15(М16)
	пб	(М10)
G10545	уии	М16(М15)
	слиа	8(М6)
	слиа	'447'(М10)
	пб	G10543
ПРОВАР СЧ (М3)
 И П777
 НТЖ ПРОАРХ
 ПО ДЛЯАРХ
 СЧ (М3)
 И Е16П1
 ПЕ ИЗ10В8
 МОДА КОНЕЦ1
 ПИО (М12)
 УИА 5(М15)
НЕПА НОП ,
 СЧИ М15
 ПБ Э105Г
НАШЛ	уиа	'2003'
	сч	ТЗНМД+63(М16)
	по	G10536
 НТЖ ТЗНМД+63(М15)
 И П7777
	пе	G10536
	сч	ТЗНМД+63(М16)
	или	ТЗНМД+63(М15)
 И Е40
 ПЕ С1
 УИИ М15(М16)
 СЛИА 63(М15)
 СЧИ М15
 СДА 64+5
 УИ М16
 СЧИ М15
 СДА 64-20
 ЗП R
 СЧИ М15
 И П37
 УИ М6
 МОДА ОСВ
 ПИНО (М17)
 СЧ Е48-1(М2)
 НТЖ ЕЗАР
 ПО АРХЕNQ
	сч	Е18
	или	Е47
	и	ТЗНМД(М15)
	пе	КОНЕЦ1
АРХЕNQ НОП
 СЧ ИЗАХВ(М3)
 И Е27П21
 ПО ЕQ
 НТЖ R
 СДА 64+20
 И П77
 ПО КОНЕЦ1
 ПБ АВОС
ЕQ ПАМ 0
 СЧ НЗ(М16)
	по	G10603
	сч	Е32(М6)
	и	ОСУ(М16)
	пе	ДР
G10603  ноп
 СЧ ШЗМД(М16)
 ИЛИ ЕNQМДС(М16)
 И Е32(М6)
	пе	ДР
	зп	(М3)
	сч	НЗ(М16)
	по	G10610
	сч	Е32(М6)
	или	ЗУС(М16)
	зп	ЗУС(М16)
G10610	сч	Е32(М6)
	или	ЕNQМДС(М16)
 ЗП ЕNQМДС(М16)
	слиа	3(М16)
	сч	D73467(М16)
	по	G10614
	мода	
	пв	ОСВУ(М6)
G10614  ноп
 СЧ R
 ИЛИ Е27
 ИЛИ ИЗАХВ(М3)
НС ЗП ИЗАХВ(М3)
 ПБ КОНЕЦ1
ДР СЧ ЕNQМДС(М16)
 И Е32(М6)
 ПЕ Е
С1 УИА ’550’(М15)
 СЧ Е48-1(М2)
 ИЛИ ШКЗАКЗ
 ЗП ШКЗАКЗ
С3 СЧ 5(М3)
 И Е48П16
 ИЛИ МИ2013
 ЗП 5(М3)
 СЧИ М15
 ЗП 3(М3)
 ПБ КОН1
Е МОДА С1
 ПИНО (М13)
 УИА -МЧПЗ(М13)
 УИА 3
ЯЯ СЧ ШКРЗ
 И Е48+МЧПЗ+НПЗ(М13)
 ПО Я
 МОД ТУСП+МЧПЗ+НПЗ(М13)
 СЧ ИЗАХВ
 И Е27П21
 НТЖ R
 НТЖ Е27
 ПЕ Я
 СЛИА ЧПЗ(М13)
 СЧИ М13
 ПБ Э105Г
Я МОДА ЯЯ
 ЦИКЛ (М13)
	сч	П77
	пб	Э105Г
ОСВ МОДА С2
 ПИНО (М13)
 МОД 9(М3)
 УИА (М13)
 СЧ ОСПОД
 И Е48-1(М13)
 И ШКРЗ
 И Е40(М3)
 ПО КОНЕЦ1
 СЧИ М13
 ПО КОНЕЦ1
 ВЧОБ П60
 ПЕ КОНЕЦ1
 МОД ТУСП-1(М13)
 УИА (М3)
С2 СЧ ИЗАХВ(М3)
 И Е27П21
 НТЖ R
 НТЖ Е27
НЕПА1   ноп
 ПЕ КОНЕЦ1
	сч	НЗ(М16)
	по	G10660
	сч	ШЗМД(М16)
	и	Е32(М6)
	пе	G10660
	сч	ЗУС(М16)
	и	Е32(М6)
	пе	С1
G10660  ноп
 СЧ ИЗАХВ(М3)
 ИЛИ Е27П21
 НТЖ Е27П21
 ЗП ИЗАХВ(М3)
 СЧ ЕNQМДС(М16)
 ИЛИ Е32(М6)
 НТЖ Е32(М6)
 ЗП ЕNQМДС(М16)
 СЧ ШЗМД(М16)
 И Е32(М6)
 ПЕ КОНЕЦ1
	слиа	3(М16)
	сч	Е32(М6)
	пв	ОСВКМД(М6)
	сч	D73467(М16)
	пе	КОНЕЦ1
 СЧ ШКЗАКЗ
 ПВ ВШГП(М15)
 СЧ 0
 ЗП ШКЗАКЗ
 ПБ КОНЕЦ1
БРУКС НОП 0
 МОДА АВОС1
 УИА (М16)
БРУК УИА -МЧПЗ(М15)
 СЧ Е48-1(М2)
 НТЖ ВСЕЕД
 ЗП РР
МО	сч	РР
	уиа	'2003'
 МОД ТУСП+МЧПЗ(М15)
 И ПОДЧ
 МОД ТУСП+МЧПЗ(М15)
 ЗП ПОДЧ
	уиа	'3'
 МОДА МО
 ЦИКЛ (М15)
	сч	Е48-1(М2)
	уиа	'2003'
	или	ШКОК
 ЗП ШКОК
 СЧ АВОСТ(М3)
 И Е48П16
 ЗП АВОСТ(М3)
 ПБ (М16)
Э131 СДА 64+36
 НТЖ П77
 И П77
 УИА 4(М15)
 ПЕ НЕПА
 СЧ (М3)
 СДА 64+42
 ЗП R
 УИА 6(М15)
 ВЧ П30
 ПЕ НЕПА
 ВЧОБ П37
 ПЕ НЕПА
 УИА 5(М15)
 СЧ (М3)
 И Е17
 СДА 64+9
 УИ М10
 УИА 1(М12)
 МОДА ПРОВАР
 ПВ (М15)
ВЭ131   ноп 
 ЗП (М3)
	уиа	'3'
 СЧ R
 СДА 64+1
 УИ М4
 СЧ R
 И Е1
 СДА 64-2
 УИ М17
 НТЖ П77777
 УИ М12
 СЧ R
 И Е1
 НТЖ Е1
 УИ М13
 СЛИ М4(М3)
 СЧ ШЗНМБ-12(М4)
 СДА 64+8(М17)
 И П17
 УИА 3(М15)
 ПЕ НЕПА
 МОД R
 СЧ Е48-24
 И АРХМЛ(М3)
 ПЕ НЕПА
G10737	ноп
 УИА -95(М6)
	уиа	'3'
 УИА 1(М15)
ПП1 СЧ ТЗНМЛ+95(М6)
 НТЖ (М3)
 И П7777
 ПО ПС
 МОДА ПП1
 ЦИКЛ (М6)
	сч	(М3)
	и	П7777
	вчоб	NБЛ
	пе	НЕПА
	сч	ГОД
	и	Е46П48
	по	НЕПА
G10750	сч	
	пв	ТБУФ(М15)
	уиа	'3'
	сда	64-8
	уи	М14
	сда	64-2
	или	D11272
	слц	НОММЛ1
	зп	РАБАД
	пв	ЕNQ(М15)
	сч	РАБАД
	пв	ФИЗОБМ(М16)
	уиа	'3'
	мода	G11034
	пино	(М6)
	сч	ГОД
	и	Е46П48
	сда	64+40
	уи	М16
	уии	М6(М14)
G10762	сч	(М6)
	нтж	(М3)
	и	П7777
	по	ПС1
	слиа	-1(М16)
	слиа	1(М6)
	мода	G10762
	пино	(М16)
G10766	сч	РАБАД
	пв	ТБУФ(М15)
	сч	РАБАД
	пв	DЕQ(М15)
	уиа	1(М15)
 ПБ НЕПА
ПС1	сч	(М6)
	зп	Ш
	и	ПРСВЛ
	пе	G10766
	сч	Е47
	пб	ЗАНЯЛИ
G10774	сч	Е42
 ИЛИ (М6)
 ИЛИ ЕОТМД
 НТЖ ЕОТМД
 ЗП (М6)
 ПБ С
ПС СЛИА ТЗНМЛ+95(М6)
	уиа	'2003'
	сч	(М6)
	нтж	(М3)
	и	П7777
	пе	G10737
 СЧ ЕН
 ИЛИ ЕТЗНУП
 И (М6)
 ПЕ НЕПА
 СЧ Е48-1(М2)
 НТЖ ЕЗАР
 ПО АРХЗ
 СЧИ М2
 НТЖ ПОЧТА(М7)
 ПЕ АРХЗ
 СЧ (М6)
 И ЕАР
 ПО НАРХЗ
 ПБ НЕПА
АРХЗ СЧ ЕЧ
 ИЛИ ЕЗ
НАРХЗ ИЛИ (М6)
 ЗП Ш
 И ЕМДОБЩ
	пе	G10774
 СЧ (М6)
 И Е47
 ПЕ ЗАНЯЛИ
 СЧ (М6)
 И Е48
 ПЕ ЗМЛ
ЗАНЯЛИ НОП ,
	или	Е48
	или	Е42
	или	(М6)
	или	Е43
	нтж	Е43
	зп	РА
	зп	(М6)
	и	Е12
	по	G11026
 СЧ (М6)
	и	П7777
	вчоб	NБЛ
	по	С
G11026	сч	ГОД
	и	П7
	сда	64-27
	или	(М6)
 ЗП (М6)
	сч	ГОД
	и	Е46П48
	по	С
	сч	РАБАД
	и	ЛИСТА
	пе	С
	пб	G10750
G11034	сч	ГОД
	и	П7
	сда	64-5
	уи	М16
	сч	(М6)
	мода	(М14)
	мода	СВИСТ4(М6)
	зп	-32(М16)
	сч	РАБАД
	пв	ФИЗЗП(М16)
	сч	РАБАД
	пв	ТБУФ(М15)
	сч	РАБАД
	пв	DЕQ(М15)
	сч	
	зп	РАБАД
 ПБ С
*
ВЧА НОП ,
 СЧ R1
 СДА 64+12
 СДА 64-7(М12)
 ИЛИ Е8(М13)
 НТЖ Е8(М13)
 УИА 1027
 МОДА ПК
 ПИНО (М10)
 ИЛИ Е8(М13)
ПК ИЛИ ШЗНМБ-12(М4)
 ЗП ШЗНМБ-12(М4)
 МОДА ПР4
 УИА (М17)
ПРХ НОП ,
	сч	РАБАД
	и	ЛИСТА
	пе	G11063
 СЛИА 24-ТЗНМЛ(М6)
 СЧ (М3)
 И Е12
 ПО (М17)
 СЧ (М3)
 И П7777
 ВЧОБ NБЛ
 ПЕ ШШ
 СЧ Е1
 СЛИА -56(М6)
 ПБ (М17)
G11063	уии	М16(М6)
	счи	М6
	и	П37
	слц	П30
	уи	М6
ШШ СЧ 0
 ПБ (М17)
ПР4 ПО ПШ
 СЧ УКАЗД(М3)
 МОД R
 ИЛИ Е32-24
 ЗП УКАЗД(М3)
ПШ СЧИ М6
 СД КТОМЛ-1(М15)
 МОДА (М11)
 ИЛИ ОБЩТОМ(М3)
 МОДА (М11)
 ЗП ОБЩТОМ(М3)
 УИА 3
 СЧ R1
 СДА 64+12
 ЗП РА
 СДА 64+2
 УИ М17
 ЗП Р4
 СЧ РА
 И П3
 ЗП РА КУСОК
 УИ М6
 СЧ П3
 СДА 64-20
ПИП МОДА ПУП
 ПИО (М17)
 СДА 64-2
 СЛИА -1(М17)
 ПБ ПИП
ПУП ЗП Р2
 НТЖ ВСЕЕД
 УИА 1027
 МОД РА
 И 27(М3)
 МОД РА
 ЗП 27(М3)
	счи	М15
	зп	ИР15
	счи	М16
	зп	ИР16
 СЧИ М11
 СДА 64-1
 НТЖ ВСЕЕД
 УИ М17
 СЧ ЕЗ
 ИЛИ ЕЧ
 И Ш
 СДА 64-СДВПР+1(М17)
 МОД РА
 ИЛИ 27(М3)
 МОД РА
 ЗП 27(М3)
	мод	ИР15
	уиа	0(М15)
	мод	ИР16
	уиа	0(М16)
 УИА (М17)
ПЕК СЛИА -1(М6)
 МОДА ПЕ
 ПИО (М6)
 СЛИА -8(М17)
 ПБ ПЕК
ПЕ СЧ Р2
 СДА 64+20-24(М17)
 НТЖ ВСЕЕД
 И ШП(М3)
 ЗП ШП(М3)
 УИА 3
	сч	РАБАД
	по	Э105Г
	счи	М16
	сда	64+5
	и	П7
	слц	Е1
	уи	М16
	счи	М11
	сда	64-2
	уи	М17
	сли	М17(М15)
	счи	М17
	или	Е48
	умн	П3
	счмр	64
	уи	М17
	счи	М16
	сда	64-45
	сда	64(М17)
	уиа	'2003'
	или	Е39(М3)
	зп	Е39(М3)
	сч	РАБАД
	пв	ФИЗЗП(М16)
	сч	РАБАД
	пв	DЕQ(М15)
	сч	РАБАД
	пв	ТБУФ(М15)
ОШКА СЧ 0
 ПБ Э105Г
ЧЛ СЧ Е1
 ПБ Э105Г
ПРВН СЧ (М3)
 СДА 64+12
 И П77
 ЗП Р-ЭК2(М1)
 ВЧ П30
 ПЕ (М16)
 ВЧОБ П37
 ПБ (М16)
ЗМЛ УИА 3
 МОДА ПРХ
 ПВ (М17)
 УИА -15(М17)
СЦ МОДА 15(М17)
 СЧ ШЗНМБ(М3)
 СДА 64+8
 УИА (М16)
МСС ЗП РР
 И П17
 ПО НЗМЛ
 И П3
 УИ М11
 СЧ РР
 СДА 64+2
 И П3
 УИ М15
 МОДА (М3)
 СЧ ОБЩТОМ(М15)
 СД КТОМ-1(М11)
 И П77
	зп	R1
	счи	М6
 НТЖ R1
 ПЕ НЗМЛ
 СЛИА 15(М17)
 СЛИ М17(М17)
 СЛИА 24(М17)
 СЛИ М17(М16)
 ПБ ЦСС
НЗМЛ МОДА ТМЛН
 ПИНО (М16)
 УИА 1(М16)
 СЧ РР
 СДА 64+4
 ПБ МСС
ТМЛН МОДА СЦ
 ЦИКЛ (М17)
ЦСС СЧИ М17
 ЗП 8(М3)
 УИА 2(М15)
 ПБ НЕП
ПР2 СЛИА 3(М15)
 СЛИА 3(М11)
 СЧИ М11
 СДА 64-2
 ЗП R1
 СЧИ М15
 ИЛИ R1
 СДА 64-8
 ЗП R1
 СДА 64-4
 ИЛИ R1
 ЗП R1
 УИА -15(М17)
НТД МОДА (М17)
 СЧ ШЗНМБ+15(М3)
 НТЖ R1
 СДА 64+8
 ЗП РР
 И П17
 ПО БА
 СЧ РР
 СДА 64+4
 И П17
 ПО БА
 МОДА НТД
 ЦИКЛ (М17)
 ПБ ВЧА
	уиа	2(М15)
	пб	G11237
С УИА 3
 УИА -3(М11)
ПР1 УИА -2(М15)
ПР МОДА (М3)
 СЧ ОБЩТОМ+3(М11)
 СД КТОМ+2(М15)
 И Е16П1
 ПО ПР2
 ПБ КЛА
БА СЛИА -3(М15)
 СЛИА -3(М11)
КЛА МОДА ПР
 ЦИКЛ (М15)
 МОДА ПР1
 ЦИКЛ (М11)
 УИА 7(М15)
НЕП НОП ,
 СЧ Ш
	уиа	1027
 ЗП (М6)
G11237	уии	М6(М15)
 СЧ РАБАД
 ПО НЕПА
	пв	DЕQ(М15)
	сч	РАБАД
	пв	ТБУФ(М15)
 УИИ М15(М6)
 ПБ НЕПА
ЗПЗОН СЧ R
 ПВ ФИЗЗП(М16)
ВЫХ СЧ R
 ПВ DЕQ(М15)
ВХХ СЧ R
 ПВ ТБУФ(М15)
 ПБ КОНЕЦ1
ДБУФ ЗП R
 СЧ 0
 ПВ ТБУФ(М15)
 СДА 64-8
 УИ М12
ЧТК СДА 64-2
 ИЛИ R
 ЗП R
 ПВ ЕNQ(М15)
ЧТ СЧ R
 ПВ ФИЗОБМ(М16)
 УИА 3
 ПБ (М11)
КУСКБ КОНД М24В’446’М17В’1’
КЭКВ КОНД М18В’1’М42В’60’
НМ ПАМ 2
КЭК2 КОНД М17В’1’М10В’3’М2В’22’В’1’
КЭК3 КОНД М17В’1’М10В’3’М2В’22’В’2’
КЭК4 КОНД М17В’1’М10В’3’М2В’22’В’3’
КЭК5 КОНД М17В’1’М10В’3’М2В’02’В’1’
КЭК6 КОНД М17В’1’М10В’3’М2В’00’В’2’
КЭК7 КОНД М17В’1’М10В’3’М2В’26’В’0’
ПРОАРХ КОНД Х’0ЕЕ’
Е27П21 КОНД М20В’177’
D11272	конд	в'0000777000400000'
РАБАД ПАМ 1
КУТ КОНД М24В’600’М17В’1’
КУС ПАМ 1
НСЕ ПАМ 1
КАТ1 КОНД М17В’1’В’30’
КЭКСТ КОНД М17В’1’М2В’22’М10В’3’
NЗНАЧ КОНД В’0’
ЗОН КОНД М24В’7770’М17В’1’
НПРИЧ КОНД М15В’55’  ПРИЧИНА : СНЯТА ПОЛЬЗ.
ЭСМБОБ КОНД В’0’  ПРИЗНАК ЭК.СМЕНИ БОБИНУ
 КОНД М47В’1’
КАТ КОНД М17В’1’В’30’  КАТАЛОГ 4-Х ЗАДАЧ
КУСБК КОНД М24В’445’М17В’1’
КУСФАМ КОНД М24В’440’М17В’1’
R КОНД В’1’  ДЛЯ ТБУФ
ИР15 ПАМ 1
ПОЧТА   экв     25
GRР24	экв	'4015'
ЭК2 ВНЕШ ЭК2,Э104,Э153,Э155,Э156,Э161,Э164,Э162,Э170
ЭК2 ВНЕШ Р
ЭК3 ВНЕШ ЭК3,Э143,Э142,Э146А,Э150,Э151
ЭК3 ВНЕШ Э152,Э154
ЭК4 ВНЕШ ЭК4,Э166,Э120,Э123,ЭК121,ЭК144,ЭК174
ЭК5 ВНЕШ ЭК5,Э140,Э176,Э177
ЭК6 ВНЕШ ЭК6,Э202,Э203,Э204,Э205,Э206,Э207
ЭК6 ВНЕШ Э210,Э211,Э212,Э213,Э214,Э215,Э216
ЭК6 ВНЕШ Э221,Э171
 эквив (эк7,0),(э133,0)
	Е
	М
БОЭК1	ВНЕШ	ЗАПВЫХ
ВЗУ	ВНЕШ	ФИЗОБМ,ФИЗЗП
ВИСП	ВНЕШ	ВШГП
ДИСКИ	ВНЕШ	DЕQ,ЕNQ,ОСВКМД,D73467,КТОМ,ОСУ,ЗУС,ШЗМД,ЕNQМДС
ДИСКИ   ВНЕШ    КТОМЛ,НЗ,ДИСКИ,Е16П1
ДИСП70	ВНЕШ	ЗАПВЕТ,ИЗ10В8,ПЕРЕВ,ТБУФ,АВОСТА,ОТКАЗН,ПРСВЛ,NБЛ
ДИСП70	ВНЕШ	СОБА40,Ш1,НЗАД,ШКИВ,ОСПОД,ШОЧМГ,П7,ТЗНМД,ТЗНМЛ
ДИСП70	ВНЕШ	НОММЛ1,НОММБ1,НОММБ,П177,П60,П30,П777,П37,П3
ДИСП70	ВНЕШ	ЧОМБМЛ,ЗНМ,ШКЗАКЗ,ЗАНЯТА,П17,ЛИСТА,П5,П14,ИПОБМ
ДИСП70	ВНЕШ	РМЛ1,ПАК,НАПРМГ,ШКОК,АПСЧБ,П1777,П7777,ГОД,ЭК9
ДИСП70	ВНЕШ	П77,ВСЕЕД,Е46П48,П77777,ТУСП,D03356,О22П16,ИНФ
ДИСП70  ВНЕШ    (НОМАРС,ЗНМ),ЯБКЗПА,ЯЧБКИО,ЕБКИО,ЕЗАР,ЯЧЧАВ
ДИСП70  ВНЕШ    (МИ2013,К2013),МЧПЗ,НПЗ,ЧПЗ,ПОДЧ,(АВОСТ,АВОС)
ДИСП70  ВНЕШ    ЕТЗНУП,ЕАР,ЕЧ,ЕЗ,СДВПР,ШП,Е15П1,ММБН,ВСЕ6,МСК
ДИСП70  ВНЕШ    Е15П11,Е34П25,Е44Е43,Е48П9,Е48П16,(ШИФ,ШИФРМ)
ЭКСТ ВНЕШ Э165,Э126,Э116,Э122,Э127,Э130,Э134,Э135
ЭКСТ ВНЕШ Э141,(ЭТ,ЭКСТ),СПЕЦ,Э132,Э167
ЭКСТ ВНЕШ ЭК173
КАЧКА	ВНЕШ	ШКРЗ
КИТ	ВНЕШ	Е48П42
МОТТ	ВНЕШ	ПРОБ6,СВИСТ4
СОСТАВ	ВНЕШ	НАРМД,МДР,АРХМЛ,ШЗНМБ,УКАЗД,ОБЩТОМ,АХ,ИЗАХВ
СОСТАВ  ВНЕШ    ЕОТМД,ЕМДОБЩ,ЕН
ХЛАМ	ВНЕШ	ОСВУ
 эквив (зн,рабад)
 ВХОД КОН,КОН1,КОНЕЦ,КНЦ,NЗНАЧ,R,ПР3,R1,ПР30,НМ,КАТ
 ВХОД ПРОВАР,ДБУФ,ЧТ,Р1,С3,R2,НЕПА,ЗН,ВЭ131
 ВХОД Э105Г,ОШКА,НОРМА,ЧЛ,ОО,КПР,КПР1
 ВХОД КОНЕЦ1,КУСБК,РА,АВОС1,АВОС,КУСФАМ,ЗПЗОН
 ВХОД ВЫХ,ВХХ,БРУК,НСЕ,НЕП,ВЧА,БА,БРУКС
 ЭКВИВ (Н,32),(К,КОНЕЦ1),(КОН,КОН1),(Э,ЭКВВОД)
 ЭКВИВ (БЕЗДУБ,Е21),(ФИОМК,’140’)
 ВХОД БЕЗДУБ,КУСКБ,ПРВН,ДЛЯАРХ,D11272
	ФИНИШ
