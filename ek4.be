ЭК4 СТАРТ ’11400’
 УПОТР ЭК4-’1400’(М7)
 Б
 Е
 М
	мода	КПР1-Э(М7)
	пв	(М6)
	мода	(М1)
	сч	'40'(М5)
	и	П1777
	уи	М5
	сч	КАТ-Э(М7)
	пв	ТБУФ(М15)
	сч	
	зп	R-Э(М7)
	сч	НОММЛ3
	зп	НМ-Э(М7)
	сч	1(М3)
	и	П77
	нтж	E4
	пе	G11415
	сч	'44'(М3)
	и	E10
	по	G11413
	сч	(М3)
	уи	М12
	слиа	-1(М12)
G11413	сч	'44'(М3)
	и	П77
	вч	E4
	пб	G11417
G11415	сч	'44'(М3)
	и	П77
	слц	E1
G11417	зп	R2-Э(М7)
	счи	М5
	и	П1777
	сда	64-24
	или	E18
	зп	КАТ-Э(М7)
	мода	КПР-Э(М7)
	пв	(М6)
	уии	М10(М1)
G11424	сч	(М1)
	сда	64+24
	уи	М17
	и	П77777
	вчоб	E1
	уи	М16
	уиа	'3'
	сч	(М1)
	и	Е24П16
	сда	64+15
	нтж	R2-Э(М7)
	пе	G11452
	мода	G11450
	пио	(М17)
	мод	(М1)
	уиа	0(М11)
	сч	НМ+1-Э(М7)
	пе	G11475
	сч	(М1)
	и	E45
	пе	G11477
	уиа	0(М12)
G11437	мода	КНЦ-Э(М7)
	уиа	0(М15)
	счи	М15
	пв	ЗАПВЫХ(М15)
G11441	уиа	'72'(М6)
	мода	(М1)
	мода	(М17)
	сч	(М16)
	уиа	'2000'
	зп	(М11)
	уиа	'2003'
	рег	'101'
	уиа	'2000'
	зп	(М11)
	уиа	'3'
	слиа	1(М11)
	мода	G11441
	цикл	(М16)
G11450	рег	'107'
	сч	(М1)
	и	E47
	пе	КОНЕЦ-Э(М7)
G11452	сч	(М1)
	и	E46
	уиа	КПР-Э(М6)
	пе	КНЦ-Э(М7)
	сли	М1(М17)
	слиа	1(М1)
	счи	М1
	и	П1777
	пе	G11424
	уиа	1(М4)
	уии	М1(М10)
	сч	НОММЛ1
	зп	НМ-Э(М7)
	счи	М10
	мода	ПР3-Э(М7)
	пв	(М6)
	счи	М5
	и	E1
	уи	М4
	счи	М5
	сда	64+1
	уи	М5
	сли	М5(М1)
	сч	ТБЗН(М5)
	сд	КСО(М4)
	и	П1777
	по	КНЦ-Э(М7)
	уи	М5
	уиа	0(М4)
	сда	64-24
	или	E18
	зп	КАТ-Э(М7)
	сч	НОММЛ3
	зп	НМ-Э(М7)
	счи	М1
	мода	G11424
	уиа	0(М6)
	пб	ПР3-Э(М7)
G11475	сч	
	зп	НМ+1-Э(М7)
	счи	М11
	зп	(М3)
G11477	сли	М11(М12)
	пб	G11437
*
Э123 СЧ 0
 УИА 1(М11)
 ЗП Р7
 ПБ Э120А
ЭК121 УИА 1(М11)
 ПБ Э120Б
Э120 УИА (М11)
Э120Б СЧ П1777  свс: Е1
 ЗП Р7
Э120А СЧ 0
 ЗП ПРЗ
 СЧ 9(М3)
 СДА 64+14
 УИ М4
 УИА (М14)
 ПЕ ЗАЩ1
 УИА -24(М14)
ЗАЩ1 МОДА ПРОВАР-Э(М7)
 ПВ (М15)
 ЗП R1-Э(М7)
 СДА 64+12
 ПЕ КОНЕЦ1-Э(М7)
 СЧ R1-Э(М7)
 СДА 64+1
 УИ М6
 СДА 64+9
 УИ М13
 СДА 64+1
 УИ М5
 ПО ЗАЩ
 СЛИА -1024(М6)
ЗАЩ СЧ R1-Э(М7)
 И Е1
 СДА 64-1
 УИ М10
 СЛИ М10(М4)
 СЧИ М5
 СДА 64-24
 СЛЦ КАТ1
 СЛЦ НОММЛ1
 МОДА Э121
 ПИНО (М11)
 ЗП Р8
 СЧИ М13
 СДА 64-24
 СЛЦ Е26
 СЛЦ КАТ1
 СЛЦ НОММЛ1
 ЗП РЯ
 МОДА ДБУФ-Э(М7)
 ПВ (М11)
 СЧ R1-Э(М7)
 И П1777
 УИ М16
 СЛИ М16(М12)
 СЧ Е24П1
 СДА 64(М14)
 ЗП Р8+1
 И (М16)
 ПО МОГУ
 СЧ (М16)
 СБР Р8+1
 СДА 64+32
 ЗП Р8+1
 СЧ ШИФРМ(М3)
 СДА 64+32
 НТЖ Р8+1
 ПЕ ВЗ
МОГУ СЧ R-Э(М7)
 СДА 64+12
 И П37
 СДА 64-12
 ИЛИ Р8
 ЗП R-Э(М7)
 МОДА ЧТ-Э(М7)
 ПВ (М11)
 СЛИ М6(М12)
 СЧ (М6)
 СД КСД1(М10)
 СДА 64-36
 НТЖ (М3)
 И Е46П37
 ПЕ ВЗ
 СЧ Е48П37(М10)
 СДА 64+2
 И Е48П37(М10)
 НТЖ ВСЕЕД
 И (М6)
 ЗП (М6)
 СЧ 9(М3)
 И П1777
 ЗП Р8+2
 СД КСД3(М10)
 ИЛИ (М6)
 ЗП (М6)
 СЧ R-Э(М7)
 ПВ ФИЗЗП(М16)
 СЧИ М12
 СДА 64-2
 ИЛИ РЯ
 ЗП R-Э(М7)
 МОДА ЧТ-Э(М7)
 ПВ (М11)
 СЧ R1-Э(М7)
 И П1777
 УИ М6
 СЛИ М6(М12)
 СЧ Е24П1
 СДА 64(М14)
 НТЖ ВСЕЕД
 И (М6)
 ЗП (М6)
 СЧ 0
 ЗП 9(М3)
 СЧ Р8+2
 ПО ЗПЗОН-Э(М7)
 СЧ ШИФРМ(М3)
 СДА 64+24
 СДА 64(М14)
 ИЛИ (М6)
 ЗП (М6)
 ПБ ЗПЗОН-Э(М7)
Э121 МОДА ДБУФ-Э(М7)
 ПВ (М11)
 УИА -3(М11)
 СЛИ М6(М12)
 СЧ ПРЗ
 ПЕ Э166А
 СЧ Е48-1(М2)
 НТЖ ЕЗАР
 ПО ОБЩ
 СЧ (М6)
 СД КСД1(М10)
 ЗП ПРЗ
 СЧ Е48Е47
 СД КСД1(М4)
 И ПРЗ
 ПЕ ВЗ   АРХ БОБ
 СЧ ПРЗ
 И Р7      свс: П1777
 ПО ОБЩ
 НТЖ 9(М3)   КЛЮЧ
 И П1777
 УИА 49(М6)
 ПЕ В   НЕВ ПАР
ОБЩ  ЗП 9(М3)
 УИА -1(М17)
 УИА -15(М6)
 УИА (М11)
МИГ СЛИА 1(М17)
 МОДА (М3)
 СЧ ШЗНМБ+15(М6)
 СДА 64+8(М11)
 И П17
 ПО НЕТМЛ
 ЗП РР
 УИ М15
 И П3
 УИ М13
 СЧИ М15
 СДА 64+2
 УИ М15   СЛОВО
 МОДА (М3)
 СЧ ОБЩТОМ(М15)
 СД КТОМ-1(М13)
 И П77
 УИ М10
 СЧ УКАЗД(М3)
 И Е32(М17)
 ПО G11637      свс: МЛ
 СЛИА 56(М10)
МЛ СЧ ТЗНМЛ-24(М10)
ЕСС НТЖ R1-Э(М7)
 И П7777
 ПО ЕСТЬ
НЕТМЛ МОДА СЛ
 ПИНО (М11)
 УИА 4(М11)
 ПБ МИГ
СЛ УИА (М11)
 МОДА МИГ
 ЦИКЛ (М6)
 ПБ ВЫХ-Э(М7)
G11637	сч	РР
	или	E48
	умн	П3
	счмр	64
	вчоб	
	уи	М16
	сч	E39(М3)
	сда	64(М16)
	и	Е46П48
	по	МЛ
	сда	64+40
	уии	М14(М17)
	уи	М17
	сли	М10(М17)
	сли	М10(М12)
	сч	ЗН-Э(М7)
	и	ЛИСТА
	пе	G11653
	счи	М12
	сда	64-2
	или	D11272-Э(М7)
	слц	НОММЛ1
	зп	ЗН-Э(М7)
	пв	ФИЗОБМ(М16)
G11653	сч	-56(М10)
	уии	М17(М14)
	уиа	'3'
	пб	ЕСC
ЕСТЬ СЧИ М15
 НТЖ П3
 СДА 64-1
 УИ М15
 МОДА (М15)
 СЧ Е28(М4)
 УИА 1027
 ЗП СМ
 МОД Р7
 УИА (М10)
 МОДА (М13)
 ИЛИ 27(М3)
 МОДА ПОДТВ
 ПИНО (М10)
 НТЖ СМ   ОТКАЗ
ПОДТВ МОДА (М13)
 ЗП 27(М3)
 УИА 3
 ПБ НЕТМЛ
ВЗ УИА 64(М6)
В СЧ R-Э(М7)
 ПВ DЕQ(М15)
 СЧ R-Э(М7)
 ПВ ТБУФ(М15)
 ПБ АВОС1-Э(М7) свс: БРУКС
Э166А СЧ 9(М3)
 ПО ЗПР
 НТЖ Е1
 ПО УПР
 СЧ (М6)
 СД КСД1(М10)
 И Е12Е11
 ЗП (М3)
 ПБ ВЫХ-Э(М7)
*
ЗПР СЧ Е11
 СД КСД3(М10)
 ИЛИ (М6)
 ПБ УП
УПР СЧ Е11
 СД КСД3(М10)
 НТЖ ВСЕЕД
 И (М6)
УП ЗП (М6)
 ПБ ЗПЗОН-Э(М7)
КАТ1 КОНД М24В’600’М17В’1’
Р8 ПАМ 3
РЯ ПАМ 1
Е46П37 КОНД М36В’1777’
Р7 ПАМ 1
Э166 СЧ Е1
 ЗП ПРЗ
 СЧ Е48-1(М2)
 НТЖ ЕЗАР
 ПЕ АВОС-Э(М7)
 УИА 1(М11)
 УИА (М4)
 ПБ ЗАЩ1
*
ЭК144 НОП
 СЧ Е48-1(М2)
 НТЖ ЕЗАР
 ПЕ АВОС-Э(М7)    ЭТО НЕ АРФА
 СЧ (М3)
 УИА 1027
 ПЕ УСТКТ
НАРХ СЧ Е20
 ИЛИ ПРЕДЕЛ
 ЗП ПРЕДЕЛ
НОРВ УИА 3
 ПБ Э105Г-Э(М7)
*
УСТКТ НОП * УСТ.КОНТР.ТОЧКИ *
 ИЛИ ШОЧКТ
 ЗП ШОЧКТ
 СЧ Е25
 ИЛИ ШКИВ
 ЗП ШКИВ         ВЫЗВАН ПРИКАЗ
 УИА ’53’(М16)
 СЧИ М16
 ЗП ТУМБ6
 СЧ 0
 ЗП ТР5
 ПБ НОРВ
ЭК174 НОП
 ПБ АВОС-Э(М7)    В НИИАС :  СЧ (М3)
	сч	(М3)
 И Е1
 УИА 1027
 ПЕ НАРХ
 СЧ ПРЕДЕЛ
 ИЛИ Е20
 НТЖ Е20
 ЗП ПРЕДЕЛ
 ПБ НОРВ
ДИСП70 ВНЕШ П77777,П5,П377,ВРЕЗП
ЭКВВОД ВНЕШ НОРМА,ЧЛ,КОН1
БОЭК1 ВНЕШ ЗАПВЫХ
ДИСП70 ВНЕШ ШКИВ,ШКСВН,П6
ДИСП70 ВНЕШБ (NСРU,ГОД)
РР ПАМ 1
ПРЗ ПАМ 1
 ВХОД Э166,ЭК121,Э120,Э123,ЭК174,ЭК144
ДИСП70 ВНЕШ Е42П1,Е48П25
ДИСП70 ВНЕШ П7,ЕЗАР,П2007,Е48П16,НОММЛ3,Е24П16,ТБЗН,КСО
ДИСП70 ВНЕШ П77,НОММЛ1,ТБУФ,ШИФРМ,П37,Е12Е11
ДИСП70 ВНЕШ П3,П777,Е24П1,КСД1,Е48П37,ВСЕЕД
ДИСП70 ВНЕШ П1777,КСД3,ШЗНМБ,П17,Е48Е47,ОБЩТОМ
ДИСП70 ВНЕШ П7777,ОБЩМЛ,Е46П48,СМ,ТЗНМЛ,ИЗ10В8
ДИСП70 ВНЕШ УКАЗД,ТУС,ЯЧВР,ЛИСТА,ПРЕДЕЛ,ШОЧКТ,ТУМБ6,ТР5
ЭКВВОД ВНЕШ КУСБК,БРУКС,D11272,ЗН
ЭКВВОД ВНЕШ ОШКА,(Э,ЭКВВОД),ЗПЗОН,R,ВЫХ,ПРОВАР
ЭКВВОД ВНЕШ R1,ДБУФ,ЧТ,КОНЕЦ1,АВОС,Э105Г,АВОС1
ЭКВВОД ВНЕШ КПР,КПР1,КАТ,НМ,КОНЕЦ,КНЦ,ПР3,R2
ДИСКИ ВНЕШ ЕNQ,КТОМЛ,КТОМ,DЕQ
ВЗУ ВНЕШ ФИЗЗП,ФИЗОБМ
         ФИНИШ ,    В ВАШЕМ ФИНИШЕ ОШИБКА ИЛИ ЕГО НЕТ
