	ГБЛВ	&ОТЛ
&ОТЛ УСТВ 1
КОМАР	СТАРТ	1
	Б
	М
	конд	п'ПРОГРА'
	конк	п'ММА'
	дк	0,Е48-3(М10)
	ржа	'7'
	пб	G00052
ВМАРС	ржа	'7'
	пб	G00154
G00005	уи	М15
	счи	М16
	сда	64-42
	нтж	ЗАДАЧИ-1(М15)
	и	Е48П43
	нтж	ЗАДАЧИ-1(М15)
	зп	ЗАДАЧИ-1(М15)
	пб	(М17)
G00011	уиа	D01024(М15)
	пв	G00044(М17)
G00012	мод	ЗАДАЧИ-1(М16)
	уиа	0(М7)
	уии	М16(М7)
	уиа	D00773(М15)
	пв	G00036(М17)
G00015	уии	М15(М11)
	сч	D01034
	пб	(М14)
G00017	сч	D01024
	нтж	Е48-1(М15)
	зп	D01024
	счи	М17
	зп	ЗАДАЧИ-1(М15)
	сч	Е48-1(М17)
	зп	D01032
	и	D00763
	уиа	0(М17)
	пе	G00032
	сч	D01032
	и	D00766
	уиа	7(М17)
	пе	G00032
	сч	D01032
	и	D00765
	уиа	8(М17)
	пе	G00032
	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	конк	A(ОШ9999)
G00032	счи	М17
	сда	64-42
	или	ЗАДАЧИ-1(М15)
	зп	ЗАДАЧИ-1(М15)
	сч	Е48-1(М15)
	или	D01025
	зп	D01025
	пб	(М16)
G00036	сч	Е48-1(М16)
	и	(М15)
	пе	G00042
G00040	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	конк	A(ОШ9999)
G00042	нтж	(М15)
	зп	(М15)
	пб	(М17)
G00044	сч	Е48-1(М16)
	и	(М15)
	по	G00050
G00046	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	конк	A(ОШ9999)
G00050	сч	Е48-1(М16)
	или	(М15)
	зп	(М15)
	пб	(М17)
G00052	сч	D00700
	Э53	'12'
	сч	D00677
	Э53	'11'
	Э65
	зп	ГУС
	сч	Е16Е1
	Э53	'21'
	Э53	'14'
G00060	ноп
	Э53	'17'
	по	G00060
G00062	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	конк	A(ОШ9999)
	сбр	D00700
	зп	D01037
	сч	Е1
	зп	ФЛАГПЛ
G00066	сч	D01037
	по	G00072
	нед
	уи	М16
	сч	D01037
	нтж	Е48-1(М16)
	зп	D01037
	пб	G00075(М16)
G00072	сч	D01040
	по	G00246
	сч
	Э53	'15'
	зп	Х
	счи	М16
G00075	пвл	АРХОШ(М16)
	конк	A(ОШ9999)
	пв	G00150
	пв	G00104
	пв	G00101
G00101	сч	D01047
	Э50	'7700'
	сч	Е1
	зп	D00764
	пб	G00132
G00104	ноп
	aif	(&ОТЛ).s1
	сч	РЕЖИМЫ
	сбр	ЕКОП
	рзб	ЕЗАР
	зп	D00763
	пе	G1
.s1	anop
	уии	М15(М7)
	уиа	D00700+3(М7)
	сч	D00564
	Э65	-1
	сч	D00764
	нтж
	сч	D00564+3
	Э65	-1
	сч	D00767
	или	D00764
	зп	D00764
	сч
	зп	D00767
	уии	М7(М15)
	сч	D00763
	или	D00766
	или	D00765
	или	D00773
	нтж	D00773
	aif	(&ОТЛ).nolab
G1	ноп
.nolab	anop
	зп	D01033
	или	D00773
	зп	D00773
G00117	сч	D01033
	по	G00132
	нед
	уи	М17
	сч	D01033
	нтж	Е48-1(М17)
	зп	D01033
	сч	D01024
	нед
	пе	G00130
	сч	Е48-1(М17)
	или	D00775
	зп	D00775
	уии	М15(М1)
	уиа	ТГОРЛО(М1)
	Э71	ИСОПТТ
	уии	М1(М15)
	пб	G00117
G00130	уи	М15
	пв	G00017(М16)
	пб	G00117
G00132	сч	D00764
	сбр	D00770
	зп	D01033
G00134	сч	D01033
	по	G00066
	нед
	уи	М16
	уиа	D01033(М15)
	пв	G00036(М17)
	сч	Е48-1(М16)
	или	D01036
	зп	D01036
	сч	D00774
	и	Е48-1(М16)
	пе	G00134
	сч	ЗАДАЧИ-1(М16)
	сда	64-6
	нтж	ЗАДАЧИ-1(М16)
	и	Е48П43
	нтж	ЗАДАЧИ-1(М16)
	зп	ЗАДАЧИ-1(М16)
	уиа	D00774(М15)
	пв	G00044(М17)
	уиа	D01025(М15)
	пв	G00044(М17)
	пб	G00134
G00150	мод	ГУС
	Э65	'44'
	сда	64+41
	пе	АВОСТ
	сч	Е1
	зп	ФЛАГАВ
	пб	G00066
G00154	зп	D01034
	счмр
	зп	D01035
	уии	М12(М16)
	Э53	'13'
	уии	М11(М15)
	мод	D01040
	уиа	0(М13)
	счи	М12
	и	Е15
	по	G00174
	слиа	'40000'(М12)
G00163	сч	D01035
	по	G00174
	нед
	уи	М16
	зп	D01033
	уиа	D01035(М15)
	пв	G00036(М17)
	уиа	D01025+1(М15)
	пв	G00036(М17)
	уиа	D01025(М15)
	пв	G00044(М17)
	уиа	2(М16)
	сч	D01033
	пв	G00005(М17)
	пб	G00163
G00174	уии	М16(М13)
	уиа	D01025(М15)
	пв	G00036(М17)
	сч	D01040
	пб	G00177(М12)
G00177	пб	G00207
G00200	пб	G00225
G00201	уиа	G00231(М14)
	пб	G00011
G00202	уиа	0(М11)
G00203	уиа	G00234(М14)
	пб	G00011
G00204	пб	G00236
G00205	пио	G00201(М11)
	пб	G00203
G00206	уиа	G00240(М14)
	пб	G00011
G00207	сч	ЗАДАЧИ-1(М13)
	и	В60
	нтж	В60
	по	G00213
	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	конк	A(ОШ9999)
G00213	сч	D01036
	и	Е48-1(М13)
	пе	G00217
	сч	Е48-1(М13)
	нтж	D00774
	зп	D00774
	пб	G00246
G00217	нтж	D01036
	зп	D01036
	сч	ЗАДАЧИ-1(М13)
	сда	64-6
	нтж	ЗАДАЧИ-1(М13)
	и	Е48П43
	нтж	ЗАДАЧИ-1(М13)
	зп	ЗАДАЧИ-1(М13)
	уиа	D01025(М15)
	пв	G00044(М17)
	пб	G00246
G00225	уиа	D01025(М15)
	пв	G00044(М17)
	уиа	1(М16)
	сч	D01040
	пв	G00005(М17)
G00230	пб	G00246
	aif	(&ОТЛ).s2
G00231	ноп
	зп	РАБ6
	сч	РЕЖИМЫ
	и	ЕКОП
	по	G00235
	сч	0
	зп	D01040
	зп	ФЛАГОШ
	пб	'10000'
G00235	сч	РАБ6
	ago	.s3
.s2	anop
G00231	ноп
.s3	anop
	нтж
	сч	D00564+1
	Э65	-1
	пб	G00243
G00234	ноп
	Э50	'152'
	пб	G00243
G00236	уиа	D01025+1(М15)
	пв	G00044(М17)
	пб	G00246
G00240	нтж
	сч	D00564+2
	Э65	-1
	пб	G00243
G00243	сч	D00775
	по	G00246
	нед
	уи	М17
	уии	М15(М13)
	пв	G00017(М16)
G00246	сч	D01025
	пе	G00253
	зп	D01040
	зп	ФЛАГОШ
	сч	КЛИНЧ
	по	G00060
	зп	Х
	счи	М16
	пвл	АРХОШ(М16)
	конк	A(ОШ9999)
G00253	сч
	зп	ФЛАГПЛ
	сч	D01025
	и	Е48П46
	пе	G00262
	сч	D01027
	сда	64+1
	зп	D01027
	рзб	D01025
	пе	G00262
	сч	Е48
	зп	D01027
	сч	D01025
G00262	нед
	уи	М15
	зп	D01040
	сч	ЗАДАЧИ-1(М15)
	и	В60
	нтж	В60
	пе	G00277
	сч	ЗАДАЧИ-1(М15)
	сда	64-6
	нтж	ЗАДАЧИ-1(М15)
	и	Е48П43
	пе	G00272
	сч	Е48-1(М15)
	и	D01036
	нтж	D01036
	зп	D01036
G00272	сч
	зп	D01034
G00273	сч	ЗАДАЧИ-1(М15)
	сда	64+42
	уи	М14
	пио	G00301(М14)
	Э53	'14'
G00276	сч	D01034
	пб	ВХАР(М14)
G00277	ноп
	aif	(&ОТЛ).s4
	сч	РЕЖИМЫ
	и	ЕКОП
	по	G2
	мод	'6002'
	сч	0
	зп	D01034
	сч	'6002'
	или	КЭ63
	зп	D01035
	мод	ЗАДАЧИ-1(М15)
	уиа	0(М16)
	сч	АДМАРХ
	зп	'4070'(М16)
	сч	'6000'
	зп	'4005'(М16)
	пб	G00331
G2	ноп
.s4	anop
	мод	ЗАДАЧИ-1(М15)
	сч	D00700+2
	зп	D01034
	пб	G00273
G00301	мод	ЗАДАЧИ-1(М15)
	уиа	0(М14)
	Э65	ТУСП-1(М14)
	уи	М14
	Э65	'1'(М14)
	и	В37
	или	Е6
	сда	64-15
	зп	D01035
	Э65	'10'(М14)
	и	Е15П1
	или	D01035
	зп	D01035
	Э53	'14'
G00331	уиа	D01035(М16)
	уиа	0(М14)
	пб	G00276
	конд	п'КОНСТА'
	конк	п'НТЫ'
	дк	'0',ТОШЗЧ+1(М10)
	ОПРЕ
	эквив	(ЕАП,Е40),(ЕЖДУ,Е32),(ЕБКИО,Е31),(ЕКОП,Е25),(ЕВКЛ,Е25)
	эквив	(ЕЖДУ60,Е24)
	эквив	(ЕБЮД,Е2),(ЕЭВМ,Е3),(ЕРАЗД,Е4),(ЕЛН13,Е13)
	эквив	(ЕГТВТА,Е13),(ЕЖДУВТ,Е14),(ЕЛН14,Е14)
	эквив	(ЕСМДАТ,Е15),(ЕЛН15,Е15),(ЕПЛАН,Е16)
	эквив	(ЕЛН16,Е16),(ЕТАФ,Е17),(ЕЛН17,Е17),(ЕЗАР,Е17)
	эквив	(ЕЛИСТ,Е18),(ЕНМТАФ,Е19),(ЕЕNQ,Е20),(ЕНАРХ,Е20)
	эквив	(ЕОСВО,Е21),(ЕЛИСНР,Е22),(ЕПОЛИМ,Е23)
ВСЕЕД	конд	в'7777777777777777'
Е48П16	конд	в'7777777777700000'
Е48П17	конд	в'7777777777600000'
Е48П25	конд	в'7777777700000000'
Е48П32	конд	в'7777760000000000'
Е48П33	конд	в'7777740000000000'
Е48П34	конд	в'7777700000000000'
Е48П37	конд	в'7777000000000000'
Е48П41	конд	в'7760000000000000'
Е48П43	конд	в'7700000000000000'
Е48П46	конд	в'7000000000000000'
Е42П16	конд	в'0077777777700000'
Е42П37	конд	в'0077000000000000'
Е42Е41	конд	п'300000'
Е40П1	конд	в'0017777777777777'
Е38П24	конд	в'0003777740000000'
Е36П16	конд	в'0000777777700000'
Е36П25	конд	в'0000777700000000'
Е36П27	конд	в'0000777400000000'
Е35П21	ноп
МАСДАТ	конд	в'0000377774000000'
Е35П31	конд	в'0000370000000000'
Е32П1	конд	в'0000037777777777'
Е32П17	конд	в'0000037777600000'
Е32П25	конд	в'0000037700000000'
Е32П29	конд	в'0000036000000000'
Е28П13	конд	в'0000001777770000'
Е26П17	конд	в'0000000377600000'
Е24П1	конд	в'0000000077777777'
Е24П9	конд	в'0000000077777400'
Е24П13	конд	в'0000000077770000'
Е24П15	конд	в'0000000077740000'
Е24П16	конд	в'0000000077700000'
Е24П17	конд	в'0000000077600000'
Е24П21	конд	в'0000000074000000'
Е24П22	конд	в'0000000070000000'
Е24Е23	конд	в'0000000060000000'
Е23П17	конд	в'0000000037600000'
Е23П21	конд	в'0000000034000000'
Е22П1	конд	в'0000000017777777'
Е21П18	конд	в'0000000007400000'
Е20П18	конд	п'000.00'
Е19Е18	конд	п'000600'
Е18П1	конд	в'0000000000777777'
Е18П13	конд	в'0000000000770000'
Е17П1	конд	в'0000000000377777'
Е17Е16	конд	в'0000000000300000'
Е16П1	конд	в'0000000000177777'
Е16Е15	конд	в'0000000000140000'
Е16Е1	конд	в'0000000000100001'
Е15П1	конд	в'0000000000077777'
Е15П11	конд	в'0000000000076000'
Е15Е14	ноп
ЕЛН152	конд	в'0000000000060000'
Е14П1	конд	в'0000000000037777'
Е14П8	конд	в'0000000000037600'
Е12П1	конд	в'0000000000007777'
Е11П1	конд	в'0000000000003777'
Е10П1	конд	в'0000000000001777'
Е9П1	конд	в'0000000000000777'
Е8П1	конд	в'0000000000000377'
Е7П1	конд	в'0000000000000177'
Е7Е6	конд	в'0000000000000140'
Е6П1	конд	п'00000D'
Е5П1	ноп
В37	конд	в'0000000000000037'
Е4П1	конд	п'00000 '
В3	конд	п'000003'
В5	ноп
ЧЗКАН	конд	п'000005'
В6	конд	п'000006'
В7	конд	п'000007'
В12	конд	п'00000+'
В16	конд	п'00000.'
В30	конд	в'0000000000000030'
В55	конд	п'00000Н'
В60	конд	п'00000Р'
В66	конд	п'00000Ц'
	aif	(&ОТЛ).sk3
В140	конд	в'0000000000000140'
.sk3	anop
ОППППО	конд	п'0    0'
ООПППП	конд	п'00    '
ООООВВ	конд	п'000077'
П017	конд	п'      '
П166	конд	в'3547316635473166' ISО 'ЖЖЖЖЖЖ'
П200	конд	в'4010020040100200'
DIV10	конд	в'4001463146314632'
DIV48	конд	в'4000252525252526'
Ч48	конд	в'4000000000000060'
Ч30	конд	в'4000000000000036'
Ч365	конд	в'4000000000000555'
Ч10	конд	в'4000000000000012'
КЛЮЧАР	конд	п'КЛЮЧАР'
ТАБISО	конд	в'3650513330600000'
	конд	в'2661213526600000'
	конд	в'2677757562000000'
	конд	в'2364717243000000'
	конд	в'4130220106400000'
	конд	в'0401053141400000'
	конд	в'0665213607000000'
	конд	в'2465012524400000'
	конд	в'0705613303600000'
	конд	в'0665052625600000'
	конд	в'0241442304400000'
	конд	п'/.-,00'
	конд	п'321000'
	конд	п'765400'
	конд	в'0541741102000000'
	конд	в'2601702507200000'
	конд	в'1422104004200000'
	конд	п'GFЕD00'
	конд	п'КJIН00'
	конд	п'ОNМL00'
	конд	п'SRQР00'
	конд	п'WVUТ00'
	конд	в'0564606315200000'
	конд	в'2644643026600000'
	конд	п'ЦБАЮ00'
	конд	п'ГФЕД00'
	конд	п'КЙИХ00'
	конд	п'ОНМЛ00'
	конд	п'СРЯП00'
	конд	п'ВЖУТ00'
	конд	п'ШЗЫЬ00'
	конд	в'2663347117000000'
D00564	конд	в'7777000000000000'
	конд	в'7777000000000001'
	конд	в'7777000000000002'
	конд	в'7777000000000003'
КЭ72СМ	конд	в'3700000077000000'
КОТК72	конд	в'2000770000000000'
КЭ72ПЕ	конд	в'3000000077000000'
ДЗКПЕР	конд	в'4600000000000000'
ДЗКВТО	конд	в'5600000000000000'
ДЗКЗ2	конд	в'6777000000000000'
ЕЕ	конд	в'0000000000000356'
Е33161	конд	в'0000040000177777'
СУТКИ	конд	в'0000000020365400'
МИНУТ5	конд	в'0000000000035230'
ДЛМЕС	конд	в'2524206210210041'
СБРКЛ	конд	в'0000000000211400'
КОНСТЧ	конд	п'000-01'
АДМАРХ	конд	в'7356735600000000'
	aif	(&ОТЛ).sk0
КЭ63	конд	в'0000000006300000'
.sk0	anop
МАСКАЗ	конд	в'0000000017007777'
МАСКАН	конд	в'0360000000007777'
МАСКАК	конд	в'0010370000770000'
ЧТЗОНС	конд	в'0010000000400000'
ЧТЗОНА	конд	в'0010000000320000'
ЧТПЕРВ	конд	в'0010000000460000'
ЧТВТОР	конд	в'0010000000560000'
ЧТЗОНП	конд	в'0010000000410000'
КУСЗП	конд	в'0000000000670000'
ИСОПТТ	конд	в'0620000005000007'
ПЧОПТТ	конд	в'0400000004000000'
	конд	в'0003000040000000'
ТЧК	конд	в'0000000030661416'
ДРОБЬ	конд	в'0000000030661414'
ПРОПУС	конд	в'3066154330661417'
МАСКЗ	конд	п'177777'
ТНЕТОБ	конд	п'2НЕТ О'
	конд	п'БЛАСТИ'
ТНЕТПР	конд	п'2НЕСАН'
	конд	п'КЦИОН.'
	конд	п'ДОСТУП'
НКЛЮ	конд	п'2ТОМ  '
	конд	в'0000000000017417'
	конд	п'ОШ.В К'
	конд	в'1263646711210417'
ДРВЛАД	конд	п'2ТОМ  '
	конд	в'0000000000017417'
	конд	в'1563144613424421'
ПОДТОМ	конд	в'0000000000017417'
УСТСРЧ	конд	п'1УСТ.С'
	конд	п'РОЧНО '
	конд	п' ТОМ  '
	конд	в'0000000000017417'
	конд	в'1240700000010417'
ДЛЯКАН	конд	в'1240700000010417'
ТГОРЛО	конд	п'ГОРЛО '
	конд	в'1003006503410417'
ТОШМД	конд	в'0042006015217462'
МДЛЯТ	пам	1
МДЛЯЗ	пам	1
МДЛЯОШ	пам	1
ДЛЯТ	конд	п'.0000-'
ТОШЗЧ	конд	в'0362707011627777'
	конд	в'0362707015631377'
	конд	п'ДЕШИФР'
	конк	п'АТ.'
	дк	'0',D00700
ИПЗСОБ	пам	11
D00677	дк	'30',G00060+4
	конк	А(D00677)
D00700	конд	в'0000000000300001'
	конд	в'1202641516017401'
	конк	п'СКБ'
	конк	А(D00770)
	пам	48
D00763	пам	1
D00764	пам	1
D00765	пам	1
D00766	пам	1
D00767	конд	в'0000002200000000'
D00770	конд	в'0000002200000001'
	конд	п'ШКАЛЫ '
	конк	п'МОН'
	конк	А(D00775)
D00773	конд	п'000101'
D00774	пам	1
D00775	пам	1
	конд	п'ГОРЛО '
	конк	п'   '
	конк	А(D01027)
ЗАДАЧИ	конд	в'0006000000000061'
	конд	в'0005000000000062'
	конд	п'0F000У'
	конд	п'80000А'
	конд	п'80000Р'
	пам	15
D01024	конд	в'0177776000000000'
D01025	пам	1
	конд	в'0600000000000000'
D01027	конд	в'4000000000000000'
	конд	п'РЯ МОН'
	конк	п'ИТ.'
	дк	'0',ФЛАГАВ+1
D01032	пам	1
D01033	пам	1
D01034	пам	1
D01035	пам	1
D01036	пам	1
D01037	пам	1
D01040	пам	1
ГУС	пам	1
ФЛАГПЛ	пам	1
ФЛАГАВ	пам	2
	конд	п'ПАР-РЫ'
	конк	п',ВР'
	дк	'0',ВЛЭВМ+1
D01047	конд	в'7777777700000226'
МДВВОД	конд	в'4077000000200000'
МДКВВ	конд	в'4277000000000000'
МДАРХ	конд	в'3277000000000000'
МДДУБ	конд	в'3377000000000000'
МДБУЗ	конд	в'4477000000000000'
ЧТБУЗ	конд	в'0010000000440000'
ШКЭВМ	конд	в'0000000000037600'
ШКУТИП	конд	в'7400000000000000'
ГРУБА	конд	в'7400000000000000'
НРАССЛ	ноп
ИНТЧТ	конд	в'0000000000000372'
ИНТСТ	конд	в'0000000000072460'
ИНТВТ	конд	в'0000000000072460'
СРОКХР	конд	п'000003'
ОБЩШИФ	конд	в'4631463100000000'
ОБЩШИ	конд	в'0000023100000000'
ОБЩШ	конд	в'0000035600000000'
МАХL	конд	в'0000000000001740'
НАЧКТ	конд	п'000001'
ИНТКТ	конд	в'0000000000072460'
ГОД	пам	1
ВРЕМЯ	пам	1
ВРЕМЧТ	пам	1
ВРЕМСТ	пам	1
ВРЕМВТ	пам	1
ФЛАГОШ	пам	1
ФЛОШИ	пам	1
ВРЕМКТ	пам	1
ВЛЭВМ	пам	2
	конд	п'КАТАЛО'
	конк	п'ГИ '
	дк	'0',КЛКОБ(М10)
ЧТКВВ	конд	в'0010230000420536'
ЧТ545	конд	в'0010000000410545'
ЧТБК	конд	в'0010000000410546'
МАСБОП	конд	в'7757000000000000'
МАСКВВ	конд	в'7730007770377777'
ЧТКЛЮЧ	ноп
ЧТСЛУЖ	конд	в'0010210000320000'
КЛКЛЮЧ	конд	в'0000000000125240'
ЧТГК	конд	в'0010000000320001'
МАССС	конд	в'0000000077777577'
КНАЧКВ	конд	в'0000000077777437'
ЧLКВА	конд	в'4000000000000050'
ЧLСВЯЗ	конд	в'4000000000000015'
МПРИПО	конд	в'7777761777770000'
КЛГК	конд	в'0000000000125241'
ЧТКПР	конд	в'0010000000320002'
КЛКПР	конд	в'0000000000125242'
ЧТКБЮД	конд	в'0010000000320003'
БЮД1	конд	п'030000'
ЧLБЮД	конд	в'4000000000000005'
КЛКБЮД	конд	в'0000000000125243'
ЧТТВТ	конд	в'0010220000320004'
ЧТКБОБ	конд	в'0010000000320006'
КЛКБОБ	конд	в'0000000000125245'
ЧТККУС	конд	в'0010210000320007'
ЧТККУ2	конд	в'0010000000330057'
ПАРАКК	конд	в'0000340013725246'
КЛКОБ	конд	в'0000000000125247'
	конд	п'РЯ ВТ/'
	конк	п'ВЫТ'
	конк	А(ИНФЗВ)
ПОЛЕВВ	пам	30
ПВТТОМ	пам	1
ПСВЕВТ	пам	1
ПЗГЛВТ	пам	1
ПРАЗМ	пам	1
ИНФЗА	пам	1
ИНФЗВ	пам	1
	конд	п'ИПР   '
	конк	п'   '
	дк	'0',РЕЖНАЧ-3(М10)
ИПР	пам	66
	конд	в'0500000040000000'
	пам	6
	конд	п'000005'
	пам	246
	конд	п'РЕЖИМ:'
	конк	п'Н,Т'
	конк	А(ЗКРРАБ)
РЕЖНАЧ	конд	п'000GF0'
ВНЕШРЖ	конд	в'0000000045100000'
КЛИНЧ	пам	1
РЕЖИМЫ	пам	1
ЗКРРАБ	конд	в'0600000000000000'
	конд	п'БУФЕРА'
	конк	п'   '
	конк	А(ЯЧЕNQ)
ТАБЛИС	пам	12
ШКЛБУФ	конд	в'7775000000000000'
ШКЛЗАН	пам	1
ШКЛЕNQ	пам	1
ШКЛЗП	пам	1
ШЗПОСВ	пам	1
ЯЧЕNQ	пам	1
	конд	п'НЕРЕЗИ'
	конк	п'Д. '
	конк	А(НОМНЕР)
ТАБНЕР	конд	п'00001G'
	конд	в'0000000000000724'
	конд	п'00001Z'
	конд	в'0000000000000757'
НЕРЕЗ	конд	п'00001Z'
НОМНЕР	конд	п'000003'
	конд	п'БУЗ   '
	конк	п'   '
	дк	'0',БУФБУЗ+11
БУНОМП	пам	1
БУБУЗ	пам	1
БУБУЗА	пам	1
БУБУЗБ	пам	1
БУФБУЗ	пам	12
	конд	п'3Х,РЯМ'
	конк	п',ИР'
	конк	А(LУР)
НОМУР	пам	1
РЯМОТВ	пам	1
НЕРУР	пам	1
РЯМ	пам	1
РЯМ1	пам	1
РЯМ2	пам	1
РЯМ3	пам	1
РЯМ4	пам	1
РЯМ5	пам	1
РЯМ6	пам	1
ИР	пам	19
LУР	конд	п'00000,'
	конд	п'ТЕКУЩИ'
	конк	п'Е  '
	конк	А(ЧЖДЕNQ)
ШИФРЗТ	ноп
АКТЛМТ	пам	1
АДМИНТ	ноп
ФИЗОБТ	пам	1
ШКУПР	пам	1
ШКЕNQ	пам	1
ЧЖДЕNQ	пам	1
	конд	п'РАЯ   '
РАЯ	конк	п'   '
	дк	'0',ЩРАЯ+19
ЩРАЯ	пам	20
	конд	п'РАЯ1  '
РАЯ1	конк	п'   '
	дк	'0',РАЯ1+20
	пам	20
	конд	п'РАЯ2  '
РАЯ2	конк	п'   '
	дк	'0',РАЯ2+20
	пам	20
	конд	п'РАЯ3  '
РАЯ3	конк	п'   '
	дк	'0',РАЯ3+20
	пам	20
	конд	п'РАЯ4  '
РАЯ4	конк	п'   '
	дк	'0',РАЯ4+20
	пам	20
	конд	п'РАЯ5  '
РАЯ5	конк	п'   '
	дк	'0',РАЯ5+20
	пам	20
	конд	п'ИМЯ   '
ИМЯ	конк	п'   '
	дк	'0',ИМЯ+20
	пам	20
	конд	п'ИМЯ1  '
ИМЯ1	конк	п'   '
	дк	'0',ИМЯ1+20
	пам	20
	конд	п'ОБМК=А'
ОБМКАН	ноп
АДРОШ	конк	п'ДРО'
	дк	'0',ОБМКАН+20
	пам	20
	конд	п'РЕЖКАН'
РЕЖКАН	конк	п'   '
	дк	'0',РЕЖКАН+20
	пам	20
	конд	п'РАБ,ИС'
	конк	п'ОБМ'
	дк	'0',ПОЛИМ+15
РАБ	пам	1
РАБ1	пам	1
РАБ2	пам	1
РАБ3	пам	1
РАБ4	пам	1
РАБ5	пам	1
	aif	(&ОТЛ).sk1
РАБ6	пам	1
РАБ7	пам	1
	ВХОД    РАБ6,РАБ7
.sk1	anop
ИСОБМ	пам	1
НОМРАБ	пам	1
	aif	(&ОТЛ).sk2
РЯК	пам	1
РЯК1	пам	1
	ВХОД    РЯК,РЯК1
.sk2	anop
ПОЛИМ	пам	16
	конд	п'АСВОБ '
	конк	п'   '
	конк	А(АСВОБ)
АСВОБ	конд	в'0000000000004237'
	конд	п'УПРЯТ.'
	конк	п',КТ'
	конк	А(МАСУПР)
ШКСБОЙ	конд	в'4000001000002400'
ПРИЧУП	конд	п'00000J'
МАСУПР	конд	в'7757000016000000'
	конд	в'0'
АРФА	ВНЕШ	ЗАПРЕС
РА	ВНЕШ	Х
АДРКИ	ЭКВ	'10000'
АДР63	ЭКВ	'6002'
АДМИН	ЭКВ	'4071'
ШИФ63	ЭКВ	'6000'
ШИФРЗ	ЭКВ	'4006'
LГОРЛО	ЭКВ	'24'
СВГОРЛ	ЭКВ	'17'
ЧКАНАЛ	ЭКВ	'63'
НКАН60	ЭКВ	'5'
КВВОД	ЭКВ	'0'
ШКОВВ	ЭКВ	'6'
ВРЕВВ	ЭКВ	'7'
БК	ЭКВ	'0'
СЛАП	ЭКВ	'0'
МАСВВ	ЭКВ	'0'
ЯЧФИЗО	ЭКВ	'22'
ЯЧМЛ	ЭКВ	'12'
УКАЗДВ	ЭКВ	'21'
З545	ЭКВ	'0'
КЛЮЧ	ЭКВ	'0'
СЛУЖ	ЭКВ	'0'
ДЛЯЭВМ	ЭКВ	'1'
БУНОМ	ЭКВ	'2'
КВАС	ЭКВ	'3'
ЯИЧТСТ	ЭКВ	'4'
ЯИВТСР	ЭКВ	'5'
ЯШИФР	ЭКВ	'6'
ЯГРДЛ	ЭКВ	'7'
ЯКТ	ЭКВ	'10'
ЯСВОБЯ	ЭКВ	'11'
ВЕРСИЯ	ЭКВ	'16'
ЯПАРАМ	ЭКВ	'17'
ЯБУЗ	ЭКВ	'20'
ЯЭВМ	ЭКВ	'20'
ЯГРУБА	ЭКВ	'30'
АДТРАХ	ЭКВ	'30'
ЯШКУТИ	ЭКВ	'40'
ТОМ1	ЭКВ	'40'
ИНТРАХ	ЭКВ	'50'
ДАТОБР	ЭКВ	'100'
СЧОШ	ЭКВ	'101'
ЯРАССЛ	ЭКВ	'4'
LРАССЛ	ЭКВ	'5'
LТРАХ	ЭКВ	'20'
ОТНОМ	ЭКВ	'1'
ШКВА	ЭКВ	'2'
ГК	ЭКВ	'0'
ХОЗ	ЭКВ	'2'
ПАРДЛ	ЭКВ	'3'
ПРИПОЛ	ЭКВ	'4'
БОББЮД	ЭКВ	'5'
ШИФПОЛ	ЭКВ	'6'
СЛСЛОВ	ЭКВ	'11'
ДАТЫ	ЭКВ	'12'
ПОСЗОН	ЭКВ	'13'
СВЯЗИ	ЭКВ	'47'
ЧКВА	ЭКВ	'31'
LСВЯЗ	ЭКВ	'15'
ДГК	ЭКВ	'30'
LКВА	ЭКВ	'50'
ЕNDПР	ЭКВ	'1'
ЗГЛПР	ЭКВ	'0'
КПР	ЭКВ	'0'
КБЮД	ЭКВ	'0'
ШИБЮ	ЭКВ	'0'
АБЮ	ЭКВ	'1'
ВЕРБЮ	ЭКВ	'2'
ГОРБЮ	ЭКВ	'3'
ПАРАБЮ	ЭКВ	'4'
БЮДН	ЭКВ	'4'
БЮДL	ЭКВ	'5'
БЮДЧ	ЭКВ	'314'
ТВТОРТ	ЭКВ	'0'
ВТТОМ	ЭКВ	'0'
СВЕВТ	ЭКВ	'1'
УПРВТ	ЭКВ	'2'
НВТ	ЭКВ	'4'
LВТ	ЭКВ	'3'
LВТОР	ЭКВ	'524'
ЕNDБОБ	ЭКВ	'1'
ИНФТОМ	ЭКВ	'0'
СВОТОМ	ЭКВ	'1'
КАРТА	ЭКВ	'2'
КБОБ	ЭКВ	'0'
ЕNDКУС	ЭКВ	'1'
ККУС	ЭКВ	'0'
КЗОН	ЭКВ	'0'
КЛЮВ	ЭКВ	'0'
ЗГЛВТО	ЭКВ	'1'
РАЗМЕР	ЭКВ	'2'
ВЛАМАШ	ЭКВ	'3'
ВЫБО	ЭКВ	'5'
НОВО	ЭКВ	'6'
ВЕРВТ	ЭКВ	'7'
НАЗВ	ЭКВ	'0'
ССЫЛКА	ЭКВ	'1'
ЧЬЯ	ЭКВ	'3'
ТИГР	ЭКВ	'5'
ВРЕК	ЭКВ	'7'
ПАРОЛИ	ЭКВ	'10'
СВЕПР	ЭКВ	'11'
БЮДЖЕТ	ЭКВ	'12'
КТОЗП	ЭКВ	'13'
СВЕДАТ	ЭКВ	'14'
ПОСЛЗ	ЭКВ	'15'
НКОБ	ЭКВ	'20'
ЧКВКОБ	ЭКВ	'77'
LКОБ	ЭКВ	'20'
LПОЛВВ	ЭКВ	'36'
LИПР	ЭКВ	'500'
ЧБУФ	ЭКВ	'14'
НАЧБУФ	ЭКВ	'20'
НЗАРХ	ЭКВ	'1'
НЗОБР	ЭКВ	'2'
НЗГИД	ЭКВ	'3'
НЗНЕР	ЭКВ	'4'
ЧНЕР	ЭКВ	'4'
ЧРЯМ	ЭКВ	'7'
ТАФ	ЭКВ	'0'
ТАФСС	ЭКВ	'0'
СЧЭ70	ЭКВ	'1'
ЧВН	ЭКВ	'2'
СЛСЛ	ЭКВ	'3'
LЗГТАФ	ЭКВ	'4'
ЗГЛМЛ	ЭКВ	'0'
СВЕДМЛ	ЭКВ	'0'
СДВМЛ	ЭКВ	'1'
НАЧТАФ	ЭКВ	'4000'
РАП1	ЭКВ	'4001'
Ж25	ЭКВ	'4002'
Ж48П43	ЭКВ	'4003'
ЖМАРС	ЭКВ	'4004'
Ж16П1	ЭКВ	'4005'
АКТЛМЛ	ЭКВ	'4006'
ФИЗОБМ	ЭКВ	'4071'
УПРО	ЭКВ	'4154'
АТАФ	ЭКВ	'4237'
КОНТАФ	ЭКВ	'5776'
МЛСБОЙ	ЭКВ	'34'
УАДМИН	ЭКВ	'0'
УШИФРЗ	ЭКВ	'1'
УСВЕВН	ЭКВ	'2'
ТАФУОБ	ЭКВ	'0'
СВЕУОБ	ЭКВ	'1'
СДВУОБ	ЭКВ	'2'
LУОБЛ	ЭКВ	'3'
РМР63	ЭКВ	'6001'
	ВХОД	РМР63,LУОБЛ,СДВУОБ,СВЕУОБ,ТАФУОБ,УСВЕВН,УШИФРЗ,УАДМИН
	ВХОД	МАСУПР,ПРИЧУП,МЛСБОЙ,ШКСБОЙ,АСВОБ,КОНТАФ,АТАФ,УПРО
	ВХОД	ФИЗОБМ,АКТЛМЛ,Ж16П1,ЖМАРС,Ж48П43,Ж25,РАП1,НАЧТАФ,СДВМЛ
	ВХОД	СВЕДМЛ,ЗГЛМЛ,LЗГТАФ,СЛСЛ,ЧВН,СЧЭ70,ТАФСС,ТАФ,ПОЛИМ
	ВХОД	НОМРАБ,ИСОБМ,РАБ5,РАБ4,РАБ3,РАБ2,РАБ1
	ВХОД	РАБ,АДРОШ,РЕЖКАН,ОБМКАН,ИМЯ1,ИМЯ,РАЯ5,РАЯ4,РАЯ3,РАЯ2
	ВХОД	РАЯ1,РАЯ,ЩРАЯ,ЧЖДЕNQ,ШКЕNQ,ШКУПР,ФИЗОБТ,АКТЛМТ,АДМИНТ
	ВХОД	ШИФРЗТ,LУР,ЧРЯМ,ИР,РЯМ6,РЯМ5,РЯМ4,РЯМ3,РЯМ2,РЯМ1,РЯМ
	ВХОД	НЕРУР,РЯМОТВ,НОМУР,БУФБУЗ,БУБУЗБ,БУБУЗА,БУБУЗ,БУНОМП
	ВХОД	НОМНЕР,НЕРЕЗ,ЧНЕР,НЗНЕР,НЗГИД,НЗОБР,НЗАРХ,ТАБНЕР,ЯЧЕNQ
	ВХОД	ШЗПОСВ,ШКЛЗП,ШКЛЕNQ,ШКЛЗАН,ШКЛБУФ,ТАБЛИС,НАЧБУФ,ЧБУФ
	ВХОД	ЕЖДУ60,ЕПОЛИМ,ЕЛИСНР,ЕОСВО,ЕЕNQ,ЕНМТАФ,ЕЛИСТ,ЕТАФ
	ВХОД	ЕПЛАН,ЗКРРАБ,ЕГТВТА,ЕЖДУВТ,ЕСМДАТ,ЕРАЗД,ЕЭВМ,ЕБЮД
	ВХОД	ВНЕШРЖ,РЕЖНАЧ,LИПР,ИПР,ИНФЗВ,ИНФЗА,ПРАЗМ,ПЗГЛВТ,ПСВЕВТ
	ВХОД	ПВТТОМ,ПОЛЕВВ,LПОЛВВ,КЛКОБ,LКОБ,ЧКВКОБ,НКОБ,ПОСЛЗ
	ВХОД	СВЕДАТ,КТОЗП,БЮДЖЕТ,СВЕПР,ПАРОЛИ,ВРЕК,ТИГР,ЧЬЯ,ССЫЛКА
	ВХОД	НАЗВ,ВЕРВТ,НОВО,ВЫБО,ВЛАМАШ,РАЗМЕР,ЗГЛВТО,КЛЮВ,КЗОН
	ВХОД	ККУС,ЕNDКУС,ПАРАКК,ЧТККУ2,ЧТККУС,КЛКБОБ,КБОБ,КАРТА
	ВХОД	СВОТОМ,ИНФТОМ,ЕNDБОБ,ЧТКБОБ,LВТОР,LВТ,НВТ,УПРВТ,СВЕВТ
	ВХОД	ВТТОМ,ТВТОРТ,ЧТТВТ,КЛКБЮД,ЧLБЮД,БЮД1,БЮДЧ,БЮДL,БЮДН
	ВХОД	ПАРАБЮ,ГОРБЮ,ВЕРБЮ,АБЮ,ШИБЮ,КБЮД,ЧТКБЮД,КЛКПР,КПР
	ВХОД	ЗГЛПР,ЕNDПР,ЧТКПР,КЛГК,МПРИПО,ЧLСВЯЗ,ЧLКВА,КНАЧКВ
	ВХОД	МАССС,LКВА,ДГК,LСВЯЗ,ЧКВА,СВЯЗИ,ПОСЗОН,ДАТЫ,СЛСЛОВ
	ВХОД	ШИФПОЛ,БОББЮД,ПРИПОЛ,ПАРДЛ,ХОЗ,ГК,ШКВА,ОТНОМ,ЧТГК
	ВХОД	КЛКЛЮЧ,LТРАХ,LРАССЛ,ЯРАССЛ,СЧОШ,ДАТОБР,ИНТРАХ,ТОМ1
	ВХОД	ЯШКУТИ,АДТРАХ,ЯГРУБА,ЯЭВМ,ЯБУЗ,ЯПАРАМ,ВЕРСИЯ,ЯСВОБЯ
	ВХОД	ЯКТ,ЯГРДЛ,ЯШИФР,ЯИВТСР,ЯИЧТСТ,КВАС,БУНОМ,ДЛЯЭВМ,СЛУЖ
	ВХОД	КЛЮЧ,ЧТСЛУЖ,ЧТКЛЮЧ,З545,УКАЗДВ,ЯЧМЛ,ЕБКИО,ЯЧФИЗО,МАСВВ
	ВХОД	ЕЖДУ,СЛАП,ЕВКЛ,ЕАП,БК,ВРЕВВ,ШКОВВ,КВВОД,МАСКВВ,МАСБОП
	ВХОД	ЧТБК,ЧТ545,ЧТКВВ,ВЛЭВМ,ВРЕМКТ,ФЛОШИ,ВРЕМВТ,ВРЕМСТ
	ВХОД	ВРЕМЧТ,ВРЕМЯ,ГОД,ИНТКТ,НАЧКТ,МАХL,ОБЩШ,ОБЩШИ,ОБЩШИФ
	ВХОД	СРОКХР,ИНТВТ,ИНТСТ,ИНТЧТ,НРАССЛ,ГРУБА,ШКУТИП,ШКЭВМ
	ВХОД	ЧТБУЗ,МДБУЗ,МДДУБ,МДАРХ,МДКВВ,МДВВОД,ЧЗКАН,НКАН60
	ВХОД	ЧКАНАЛ,СВГОРЛ,LГОРЛО,ИПЗСОБ,ТОШЗЧ,ДЛЯТ,МДЛЯОШ,МДЛЯЗ
	ВХОД	МДЛЯТ,ТОШМД,ДЛЯКАН,УСТСРЧ,ПОДТОМ,ДРВЛАД,НКЛЮ,ТНЕТПР
	ВХОД	ТНЕТОБ,МАСКЗ,ПРОПУС,ДРОБЬ,ТЧК,ПЧОПТТ,ЕЛН152,ЕЛН13
	ВХОД	ЕЛН14,ЕЛН15,ЕЛН16,ЕЛН17,КУСЗП,ЧТЗОНП,ЧТВТОР,ЧТПЕРВ
	ВХОД	ЧТЗОНА,ЧТЗОНС,ЕНАРХ,МАСКАК,МАСКАН,МАСКАЗ,МАСДАТ,КОНСТЧ
	ВХОД	СБРКЛ,ДЛМЕС,МИНУТ5,СУТКИ,Е33161,ЕЕ,ДЗКЗ2,ДЗКВТО,ДЗКПЕР
	ВХОД	КЭ72ПЕ,КОТК72,КЭ72СМ,ТАБISО,КЛЮЧАР,Ч10,Ч365,Ч30,Ч48
	ВХОД	DIV48,DIV10,П200,П166,П017,ООООВВ,ООПППП,ОППППО
	ВХОД	В66,В55,В37,В30,В16,В12,В7,В6,В5,В3,Е4П1,Е6П1,Е7Е6
	ВХОД	Е7П1,Е8П1,Е9П1,Е10П1,Е11П1,Е12П1,Е14П8,Е14П1,Е15Е14
	ВХОД	Е15П11,Е16Е15,Е16П1,Е17Е16,Е17П1,Е18П13,Е18П1,Е19Е18
	ВХОД	Е20П18,Е21П18,Е22П1,Е23П21,Е23П17,Е24Е23,Е24П22,Е24П21
	ВХОД	Е24П17,Е24П16,Е24П15,Е24П13,Е24П9,Е24П1,Е26П17,Е28П13
	ВХОД	Е32П29,Е32П25,Е32П17,Е32П1,Е35П31,Е35П21,Е36П27,Е36П25
	ВХОД	Е36П16,Е38П24,Е40П1,Е42Е41,Е42П37,Е42П16,Е48П41,Е48П37
	ВХОД	Е48П34,Е48П33,Е48П32,Е48П25,Е48П17,Е48П16,ВСЕЕД
	ВХОД	Е15П1,Е5П1,ШИФРЗ,ШИФ63,АДМИН,АДМАРХ,АДР63
	ВХОД	Е48П46,КЛИНЧ,АДРКИ,ФЛАГОШ,В60,ФЛАГАВ,ИСОПТТ
	ВХОД	ТГОРЛО,ЕЗАР,ЕКОП,РЕЖИМЫ,ФЛАГПЛ,Е16Е1,ГУС,Е48П43
	ВХОД	ЗАДАЧИ,ВМАРС
АРФА	ВНЕШ	ВХАР
РА	ВНЕШ	АРХОШ,АВОСТ,РА
ГИДРА	ВНЕШ	ОШ9999
ДИСП70	ВНЕШ	ТУСП,СОБЫТ
	ФИНИШ
