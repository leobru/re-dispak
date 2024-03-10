KCT5 CЧ M40ETX
 ЗП OБЛФИO+639
 YИA OБЛФИO(M1)
 YИA 0(M4)
 ЗП CTOЛБ
 CЧ BCEEД
 ЗП ЯЧBЫДШ
 Э64 ИCПЧ
 YИA CTPOK3(M1)
 Э64 ИCПЧ
 ПБ (M11)
*
CTPOK3 KOHД M8X'8C8C8C8CFF'
OБЛФИO ЭKB '70000'+101
CTOЛБ ЭKB '70000'+69
*****************************************                      
BЫДФИO CЧ 1(M6)
 PЗБ =П'    00'
 ИЛИ =П'  '
 ЗП OБЛФИO(M4)
 CЧ (M6)
 PЗБ =П'DDDDDD'
 CЛЦ =П',,,,,,'
 ЗП OБЛФИO+1(M4)
 CЧ (M6)
 CДA 64-36
 ЗП PAЯ41
 CЧ 1(M6)
 CДA 64-24
 CДA 64+12
 ИЛИ PAЯ41
 PЗБ =П'DDDDDD'
 CЛЦ =П',,,,,,'
 ЗП OБЛФИO+2(M4)
 ПБ (M11)
*************************************************************  
* БЛOK  ' B B Ф И O ' BBOДИT ФAMИЛИЮ, HAЧИHAЯ C TEKYЩEГO CИM-  
* BOЛA, И ЗAПИCЫBAET EE B YПAKOBAHHOM ФOPMATE B ЯЧEЙKИ 'ФИO'   
* И 'ФИO'+1. OTCYTCTBYЮЩИE CИMBOЛЫ ДOПOЛHЯЮTCЯ ПPOБEЛAMИ.      
* BOЗBPAT ПO ИP14, ECЛИ BBEДEHЫ BCE CИMBOЛЫ; ПO ИP13, CЛИ      
* БЫЛA ДOЗAПИCЬ ПPOБEЛOB (ИP14= -ЧИCЛO HEBBEДEHHЫX CИMBOЛOB+1, 
* ИP15=-HOMEP ЯЧEЙKИ+1).
*
BBOФИO CЧИ M13
 ЗП PAЯ31
 YИA -7(M16)
 YИA -1(M13)
BBФИO1 CЧ 0
 ЗП ФИO+1(M13)
ЦBBФИO CЧ CИMBOЛ
 BЧ =B'15'
 ЗП CИMBOЛ
 И E8E7
 ПE KOHФИO                >'114'                               
 CЧ ФИO+1(M13)
 CДA 64-6
 ИЛИ CИMBOЛ
 ЗП ФИO+1(M13)
 ПB CЧИT(M15)
 ЦИKЛ ЦBBФИO(M16)
 YИA -3(M16)
 ЦИKЛ BBФИO1(M13)
 ПБ (M14)
KOHФИO CЧ ФИO
 ПO OШФИO
 YИИ M14(M16)
 CЧ ФИO+1(M13)
ЦKФИO CДA 64-6
 ИЛИ E2
 ЦИKЛ ЦKФИO(M16)
 ЗП ФИO+1(M13)
 MOД PAЯ31
 ПИO (M13)
 CЧ =B'2020202'
 ЗП ФИO+1
 MOД PAЯ31
 ПБ
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* BXOД B PAЗДEЛ   ' Ф И O '
*
PAБФИO KOHK X'419900'
 KOHK A(ПOФИO1)
 KOHK П'OБB'
 KOHK A(OБB)
 KOHK П'OБЧ'
 KOHK A(OБЧ)
 KOHK П'ЗAП'
 KOHK A(ЗAПФИO)
 KOHK П'OБO'
 KOHK A(OБO)
 KOHK П'ФИO'
 KOHK A(PAБAЛФ)
 KOHK П'BCE'
 KOHK A(PAБBCE)
 KOHK П'OГЧ'
 KOHK A(PAБOГЧ)
 KOHK X'419800'
 KOHK A(ПOOГЧ1)
 KOHK X'415500'
 KOHK A(BCEФИO)
ЧPФИO ЭKB *-PAБФИO
*
HAЧФИO ЭKB '72000'
ФИO ЭKB '70000'+67
KOHKTЛ ЭKB '70000'+70
ИCФИO1 KOHД B'10350000550540'
ИCФИO2 KOHД B'10360000550541'
ИCФИO3 KOHД B'10370000550542'
*
ФИOPAЗ CЧ MД2053
 ИЛИ E48
 ПB ЗAXBAT(M13)
 CЧ E1
ФИOPA ЗП CTOЛБ    CTOЛБ  0
 YИA 0(M4)
 CЧ E15П1
 HTЖ E1
 ЗП KOHKTЛ
 CЧ ИCФИO1
 Э62 '124'
 CЧ ИCФИO2
 Э62 '124'
 CЧ ИCФИO3
 Э62 '124'
BOПФИO CЧ PABHO
 ЗП БФBB
 YИA HAЧAЛO(M15)
 ПB ПPИEM(M14)
ПOBФИO YИA -ЧPФИO+1(M16)
 ПB CЧИT(M15)
 BЧ B12
 ПE ШИФP
BЫЧФИO CЧ БФBB
 HTЖ PAБФИO+ЧPФИO-1(M16)
 И E48П25
 MOД PAБФИO+ЧPФИO-1(M16)
 ПO
 ЦИKЛ BЫЧФИO(M16)
* HE ШИФP И HE PAБOTA -> ПOИCK ПO ФAMИЛИИ                      
 YИA ГФИO(M14)
 ПB BBOФИO(M13)
ГФИO CЧ BCEEД
 ПИO ПOИФAM(M13)
OПPФИO CДA 64-6
 ЦИKЛ OПPФИO(M14)
ПOИФAM ЗП PAЯ
 YИA 0(M17)
 YИA OБЛФИO(M1)
 YИA HAЧФИO(M6)
ЦИKПФ CЧ (M6)
 HTЖ ФИO
 И PAЯ
 ПE HETO
 YИA 1(M17)
 ПB BЫДФИO(M11)
 CЧ M40ETX
 ЗП OБЛФИO+3
 YИA BOПФИO(M14)
 ПB BЫДШAГ(M13)
HETO CЛИA 2(M6)
 ПИHO ЦИKПФ(M6)
ЭTOBCE ПИO HETФИO(M17)
 YИA ПYCФИO(M6)
 YИA ЭTOBC(M11)
ЭTOBC ПИHO BЫДФCT(M4)
 YИA TBCE(M1)
 YИA BOПФИO(M13)
 ПБ BЫДШA
HETФИO YИA BOПФИO(M11)
 ПБ HEBBE
*
ПYCФИO KOHД B'0202020202020202'
 KOHД M32X'FFFF'B'02020202'
TBCE KOHД П'   ЭTO'
 KOHД П' BCE.0'B'377'
PABHO KOHД M40П'='M32B'170'M24B'377'                           
************************************************************** 
* PAБOTA  ' B C E '
*
ПOOГЧ1 CЧ KOHEЦ1
 Э75 ЭTOB
ПOOГЧE CЧ KOHKTЛ
 ЗП PAЯ1
 YИA 1(M12)
ЦПOФИO YИA HAЧФИO(M5)
 YИA 1(M17)
 CЧИ M5
 HTЖ PAЯ1
 ПO OДИH
 CЧ (M5)
 ПO CMEHИ5
 MOДA (M12)
 CЧ (M5)
 CДA 64+8
 ЗП PAЯ
 YИA HAЧФИO+2(M6)
ЦПOШИФ CЧ (M6)
 ПE XOPOШO
 CЧИ M6
 HTЖ PAЯ1
 ПO HYЛЬBK
 MOД PAЯ1
 CЧ 0
 ЗП (M6)
 MOД PAЯ1
 CЧ 1
 ЗП 1(M6)
 CЧ PAЯ1
 BЧ E2
 ЗП PAЯ1
 ПБ ЦПOШИФ
HYЛЬBK CЧ PAЯ1
 BЧ E2
 ЗП PAЯ1
 ПБ ГOTФИO
XOPOШO MOДA (M12)
 CЧ (M6)
 CДA 64+8
 ЗП PAЯ2
 BЧ PAЯ
 ПO БOЛЬШE
 YИИ M5(M6)
 CЧ PAЯ2
 ЗП PAЯ
БOЛЬШE CЧИ M6
 HTЖ PAЯ1
 ПO ГOTФИO
 CЛИA 1(M6)
 ЦИKЛ ЦПOШИФ(M6)
 ПБ KKФИO
ГOTФИO YИИ M6(M5)
 ПB BЫДФCT(M11)
CMEHИ5 MOД PAЯ1
 CЧ 0
 ЗП (M5)
 MOД PAЯ1
 CЧ 1
 ЗП 1(M5)
 CЧ PAЯ1
 BЧ E2
 ЗП PAЯ1
 ПБ ЦПOФИO
*****************************************************          
* PAБOTA  ' Ф И O '
*
ПOФИO1 CЧ KOHEЦ1
 Э75 ЭTOB
ПOФИO CЧ KOHKTЛ
 ЗП PAЯ1
 YИA 0(M12)
 ПБ ЦПOФИO
OДИH YИA HAЧФИO(M6)
 YИA ЭTOBCE(M11)
 ПБ BЫДФCT
*
KKФИO ЭKB '10001'
**************************************                         
* PAБOTЫ  " K T O "  И  " З A M "                              
*
ПOИШИФ ЗП PAЯ11
 YИA HAЧФИO(M6)
ЦПШ CЧ 1(M6)
 HTЖ PAЯ11
 И E48П33
 ПO (M15)
 CЛИA 2(M6)
 ПИHO ЦПШ(M6)
 ПБ (M15)
****************
ШИФP YИA 0(M16)
 ПB BBЧИC(M14)
 CЧ CИMBOЛ
 HTЖ E4П1
 ПO ЗAMФИO
 CЛИA -16(M2)
 ПИO OГ(M2)
 CЛИA 16(M2)
 CЧ ЧИCЛO
 CДA 64-32
 ПB ПOИШИФ(M15)
 ПИO HETФИO(M6)
BЫДФ YИA OБЛФИO(M1)
 ПB BЫДФИO(M11)
 CЧ M40ETX
 ЗП OБЛФИO+3
 YИA BOПФИO(M13)
 ПБ BЫДШA
* ЗAMEHA ФИO
ЗAMФИO CЧ ЧИCЛO
 CДA 64-32
 ЗП PAЯ
 ПB ПOИШИФ(M15)
ECTЬME ПИO HOBФИO(M6)
 ПB CЧИT(M15)          ПPOПYCKAEM ПPOБEЛ                       
 YИA ГЗФИO(M14)
 ПB BBOФИO(M13)
ГЗФИO CЧ ФИO
 ЗП (M6)
 CЧ ФИO+1
 ИЛИ PAЯ
 ЗП 1(M6)
 ПБ BЫДФ
HOBФИO CЧ 0
 ПB ПOИШИФ(M15)
 ПИO HETME(M6)
 ПБ ECTЬME
HETME YИA TДЛФOP(M1)
 YИA BOПФИO(M13)
 ПБ BЫДШA
********************************                               
OГ CЛИA 16(M2)
 CЧ ЧИCЛO
 CДA 64-40
 ЗП PAЯ
 YИA HAЧФИO(M6)
 YИA 0(M17)
ПOИOГ CЧ 1(M6)
 HTЖ PAЯ
 И M40ETX
 ПE ДPOГ
 YИA 1(M17)
 ПB BЫДФИO(M11)
 CЧ M40ETX
 ЗП OБЛФИO+3
 YИA OБЛФИO(M1)
 YИA BOПФИO(M14)
 ПB BЫДШAГ(M13)
ДPOГ CЛИA 2(M6)
 ПИHO ПOИOГ(M6)
 ПБ ЭTOBCE
*******************************************                    
OШФИO YИA TOШИБ(M1)
 YИA BOПФИO(M13)
 ПБ BЫДШA
************************************************************** 
* PAБOTA  ' O Б B '
*
OБB YИA HAЧФИO(M6)
 YИA COXФИO(M11)
ЦOБB CЧ 1(M6)
 ПB OTД41(M13)
YБФИO CЧ 0
 ЗП (M6)
 CЧ M24ETX
 ЗП 1(M6)
COXФИO CЛИA 2(M6)
 ПИHO ЦOБB(M6)
 YИA TKTЛOБ(M1)
 YИA BOПФИO(M13)
 ПБ BЫДШA
OTД41 И M40ETX
 HTЖ =M40X'41'
 ПE (M13)
 CЧ 1(M6)
 HTЖ Ш4199
 И E48П33
 ПO (M11)
 CЧ 1(M6)
 HTЖ Ш4198
 И E48П33
 ПO (M11)
 CЧ 1(M6)
 HTЖ Ш4155
 И E48П33
 ПO (M11)
 ПБ (M13)
Ш4199 ЭKB PAБФИO
Ш4198 ЭKB PAБФИO+8
Ш4155 ЭKB PAБФИO+9
TKTЛOБ TEKCT П' KATAЛOГ OБH'
 KOHД П'YЛEH.0'B'377'
************************************************************** 
* PAБOTA  ' O Б O '
*
OБO YИA 0(M16)
 ПB ПPOГOH(M14)
 ПO OШФИO
 ПB BBЧИC(M14)
 И ETX
 HTЖ ЧИCЛO
 ПE OШФИO
 CЧ ЧИCЛO
 CДA 64-40
 ЗП PAЯ
 PЗБ =П'  00'
 ИЛИ =П'  00  '
 ЗП TYБPOГ+1
 YИA HAЧФИO(M6)
 MOД KOHKTЛ
 YИA (M5)
 YИA ДPOTД(M11)
OБO1 CЧ 1(M6)
 И M40ETX
 HTЖ PAЯ
 ПE ДPOTД
 CЧ 1(M6)
 ПB OTД41(M13)
 CЧ 0
 ЗП (M6)
 CЧ M24ETX
 ЗП 1(M6)
ДPOTД CЛИA 2(M6)
 ПИHO OБO1(M6)
 YИA TYБPOГ(M1)
 YИA BOПФИO(M13)
 ПБ BЫДШA
*
TYБPOГ TEKCT П' YБPAH  00  '
 KOHД П'OTДEЛ0'B'377'
********************************************************       
* PAБOTA  ' O Б Ч '
*
OБЧ YИA 0(M16)
 ПB ПPOГOH(M14)
 ПO OШФИO
 ПB BBЧИC(M14)
 CДA 64-32
 ПB ПOИШИФ(M15)
 ПИO HETФИO(M6)
 YИA BOПФИO(M11)
 ПB OTД41(M13)
 CЧ 0
 ЗП (M6)
 CЧ M24ETX
 ЗП 1(M6)
 YИA TECTЬ1(M1)
 YИA BOПФИO(M13)
 ПБ BЫДШA
********************************************************       
* PAБOTA  ' З A П '
*
ЗAПФИO CЧ ПPИГЛ
 ПB ЗAППAP(M15)
 YИA ПAPФИO(M11)
 ПB ДEKOД(M15)
 CЧ MД2053
 Э50 '115'
 ПB ДAЙЗП(M13)
 YИA TECTЬ1(M1)
 Э70 =B'350000550540'
 YИA BOПФИO(M13)
 Э70 =B'360000550541'
 Э70 =B'370000550542'
 CЧ MД2053
 Э50 '116'
 ПБ BЫДШA
OБЛTXT ЭKB '70000'+100
BCEФИO CЧ HABCE1
 Э75 ЭTOB
 ПБ ПOФИO
BCEФИ YИA CTPOK3(M1)
 Э64 ИCПЧ
 CЧ HAПOOГ
 Э75 BOПФИO
 CЧ E1
 ПБ ФИOPA
HAПOOГ ПБ ПOOГЧ1
ЭTOB ЭKB ЭTOBC+1
HABCE1 YИA -4(M15)
 ПБ BCEФИ
PAБAЛФ CЧ Ш4199
 ПБ ФИOФИO
PAБOГЧ CЧ Ш4198
 ПБ ФИOФИO
PAБBCE CЧ Ш4155
ФИOФИO ЗП PAЯ
 YИA 0(M15)
 CЧ MД2053
 ПB ПAPБOБ(M14)
 CДA 64+36
 ЗП ПAPЧT
 ПB ФCEPП(M15)
 CЧ =П'ФИO  0'B'175'
 CЧM PAЯ
 И E48П25
 ИЛИ =B'175'
 ЗП (M17)
 YИA 0(M12)
 YИA HAЧAЛO(M15)
 ПБ ФOPM
* БЛOK ФOPMИPOBAHИЯ ЗAДAЧИ 'CEPП'                              
ФCEPП YИA ПOЛEФ(M17)
 CЧ MД2053
 ИЛИ ИCЗAXB
 ЗП DMД
 YИA -LФCEPП+1(M16)
 CЧ ИФCEPП
ЦФC CЧM ИФCEPП+LФCEPП(M16)
 ЦИKЛ ЦФC(M16)
 CЧ ПAPЧT
OФИO
 ИЛИ DHOPM
 ЗП ПOЛEФ+DHOPM-ИФCEPП
 ПБ (M15)
ИФCEPП KOHД П'0OЗY 9'M40B'115'
 KOHД П'0BPE 2'M40B'115'
 KOHД П'200BXO'M24B'115'
 KOHД П' 70000'
 KOHД П'0БЛO0E'M40B'115'M8B'115'                               
DБAЗA KOHД B'70000'
 YПOTP DБAЗA-'67777'(M7)
 CЧ DMД
 Э50 '131'
 ПO DHOPM
 Э74 0
DHOPM CЧ DMД
 YИA '40000'(M15)
 Э50 '121'
 Э70 DЧT1
 Э70 DЧT2
 Э70 DЧT3
 Э70 DЧT4
 OTMEH (M7)
 ПБ 1
DMД ПAM 1
DЧT1 KOHД B'10000000550731'
DЧT2 KOHД B'10010000550732'
DЧT3 KOHД B'10020000550733'
DЧT4 KOHД B'10030000550734'
 KOHД B'175'
 KOHД П'_!_!_!'
 KOHД B'64000'
LФCEPП ЭKB *-ИФCEPП
************************************************************** 
************************************************************** 
*   P A З Д E Л   ' П K '
*   ---------------------
*
ПK CЧ =B'2264253121233462'
 Э72 ИЗПK
 CЧ MДПK
 ПB ЗAXBAT(M13)
 Э70 ИCПK
 Э72 ЛИCTПK
 ПБ '21'
ЛИCTПK KOHД B'1037003601770000'
ИЗПK Э72 ЛИCTПK
 ПБ HAЧAЛO
*
*
*        П P M Л
*        -------
*
ИПPMЛ KOHД П'0ЛEH 4'M40B'115'
ID1 KOHД П'1(0000'
 KOHД П')30(20'
 KOHД П'48)0OЗ'M16B'115'
 KOHД П'Y 30BX'M16B'115'
 KOHД П'O 4002'
 KOHД П'0POC 0'M40B'115'
 KOHД П'0BPE 2'M40B'115'
 KOHД П'400E  'M24B'115'
 YПOTP DБAЗA1-'3777'(M7)
DБAЗA1 KOHД B'4000'
D1 KOHД B'10000000300003'
D2 KOHД B'10010000300004'
 Э70 D1
 Э70 D2
 ПБ '1000'
 ПAM 0
 OTMEH (M7)
LПPMЛ ЭKB *-ИПPMЛ
*
* -----------------
*
ПPMЛ YИA ПOЛEФ(M17)
 YИA -LПPMЛ+1(M16)
ЦПPMЛ CЧ ИПPMЛ+LПPMЛ-1(M16)
 ЗП (M17)
 ЦИKЛ ЦПPMЛ(M16)
 ПB ПOBБOБ(M13)
 CДA 64-32
 PЗБ П4П
 ИЛИ ID1
 ЗП ПOЛEФ+ID1-ИПPMЛ
 CЧ TKOЛBO
 ЗП БФBB
 CЧ TЧT
 ЗП БФBB+1
 YИA HAЧ2(M15)
 ПB ПPИEM(M14)
 YИA 0(M16)
 ПB ПPOГOH(M14)
 ПO HAЧ2
 ПB BBЧИC(M14)
 ПB ПX108(M15)
 ЗП (M17)
 CЧ TДИAП
 ЗП БФBB
 CЧ TДИAП+1
 ЗП БФBB+1
 YИA HAЧ2(M15)
 ПB ПPИEM(M14)
ЦЗПДИA YИA 1(M16)
 ПB ПPOГOH(M14)
 YИA HAЧ2(M15)
 YИA 0(M12)
 ПO ФOPM
 ПB BBЧИC(M14)
 ЗП (M17)
 ПB ПPOГOH(M14)
 ПO OШПPMЛ
 ПB BBЧИC(M14)
 ЗП (M17)
 ПБ ЦЗПДИA
OШПPMЛ YИA ПOЛEФ+LПPMЛ+1(M1)
 YИA HAЧ2(M15)
 YИA ЦЗПДИA(M14)
 ПБ OШИБKA
***************************************************************
*
*
*     Г E H E P A Ц И Я   C И C T E M Ы  " C E P П "           
*     ----------------------------------------------           
*
ГEHCП MOД AИПЗ
 Э65 ШИФPM
 HTЖ ШИФГEH
 ПE OШHAЧ
 CЧ ПPИГЛ
 ПB ЗAППAP(M15)
 YИA ПAPГEH(M11)
 ПB ДEKOД(M15)
 CЧ MД2053
 ПB ЗAXBAT(M13)
 YИA -ЧПAP+1(M11)
 Э70 ЧT731
ЦГEHCП CЧ ПPИГЛ
 ЗП БФBB+2
 CЧ HAЗПAP+ЧПAP-1(M11)
 ПB ЗAППAP(M15)
 HTЖ M40ETX
 ПO HГEHCП
 CЧ БФBB
 И ETX
 HTЖ ETX
 ПE ЦГEHCП
 CЧ БФBB
 ИЛИ E48
 Э50 1
 ЗП ПAPOЛИ+ЧПAP+'75777'(M11)
HГEHCП ЦИKЛ ЦГEHCП(M11)
 CЧ TMД
 ЗП БФBB+1
 ПB ЗAППAP(M15)
 HTЖ M40ETX
 ПO CTCИC
 CЧ БФBB
 ЗП ПAPOЛИ+ЧПAP+'76000'
CTCИC CЧ TШИФP
 ИЛИ ETX
 ЗП БФBB
 YИA ГEHCП1(M15)
 ПB ПPИEM(M14)
 YИA 0(M16)
 ПB BBЧИC(M14)
 HTЖ Ш4199
 И E48П33
 ПE HГEHCП
 CЧ ЧИCЛO
 ЗП ШИФГEH+'76000'
ГEHCП1 CЧ TПK
 ЗП БФBB
 YИA ГEHCП2(M15)
 ПB ПPИEM(M14)
 ПB БOБЗ(M11)
 CЧ OБЛ+4
 ЗП MДПK+'76000'
 CЧ ИCПK
 ИЛИ E12П1
 HTЖ E12П1
 ИЛИ OБЛ+5
 ЗП ИCПK+'76000'
ГEHCП2 HOП
 CЧ 0
 ЗП PAЯ
 CЧ TШAГ
 ЗП БФBB
 YИA KГEHCП(M15)
 ПB ПPИEM(M14)
 CЧ БФBB
 CДA 64+40
 HTЖ БД
 ПE HE80CT
 CЧ E48
 ЗП PAЯ
HE80CT YИA 0(M16)
 ПB ПPOГOH(M14)
 ПO ДOБПP
 ПB BBЧИC(M14)
 ПB ПX108(M15)
 HTЖ BCEEД
 CЛЦ E1
 ЗП ШAГ+'76000'
ДOБПP CЧ PAЯ
 ЗП ЯЧПPИЗ+'76000'
KГEHCП CЧ TЗAП
 ЗП БФBB
 YИA HAЧAЛO(M14)
 ПB ПPИEM(M15)        !!!
 ПB ДAЙЗП(M13)
 Э70 ЗП731
 YИA TECTЬ1(M1)
 YИA HAЧAЛO(M13)
 ПБ BЫДШA
*
TЗAГP KOHД П'ЗAГP-0'B'377'
TПK KOHД П'ПK- 00'M8B'377'
ЧT731 KOHД B'10370000550731'
ЗП731 KOHД B'370000550731'
TШAГ KOHД П'ШAГ-00'M8B'377'
TЗAП KOHД П'ЗAП- 0'B'377'
*    BHEШHИE   METKИ       **********                          
*
CEPП BHEШ ШИФPФ1,ШИФPФ2,OШHAЧ,ПPOГOH                           
CEPП BHEШ E19,TBEPC,ИCПЧ1,ЗAПДИA,BOППEЧ                        
CEPП BHEШ П4П20,OБЛ,E16П1,ПOЛEФ,E24,BXOД                       
CEPП BHEШ ПAPБOБ,HAЧ2,ФOPM,MД2053,ПЧ2053,E12                   
CEPП BHEШ AИПЗ,ШИФГEH,ПPИГЛ,ЗAППAP,ПAPШИФ                      
CEPП BHEШ HEПAP,ЗAXBAT,БФBB,HAЗПAP,ПAPГEH                      
CEPП BHEШ M40ETX,ETX,ПAPOЛИ,TШИФP,ДEKOД                        
CEPП BHEШ П5710,KOHHOM,BЫДCЛ,E5П1,E10П1                        
    Н
PЧT
OФИO
CEPП BHEШ ПPИEM,BBЧИC,E48П33,ЧИCЛO                             
CEPП BHEШ БOБЗ,E12П1,PAЯ,БД,ЧПAP                               
CEPП BHEШ ПX108,BCEEД,E1,ШAГ,ЯЧПPИЗ                            
CEPП BHEШ ЛПPOЗ,ИCЧT55,E40,E4,KПK,ABЫБOP,БBЫБOP                
CEPП BHEШ HAЧAЛO,ДAЙЗП,TECTЬ1,BЫДШA                            
CEPП BHEШ PAЯ42,ЯЧBЫДШ,ИCПЧ,PAЯ41                              
CEPП BHEШ PAЯ31,CИMBOЛ,E8E7,CЧИT,E2                            
CEPП BHEШ E48,E15П1,B12,E48П25,BЫДШAГ                          
CEPП BHEШ PAЯ1,KOHEЦ1,PAЯ11,E4П1,TOШИБ,ПAPФИO,ПAPЧT            
CEPП BHEШ ИCЗAXB,ПOBБOБ,П4П,TЧT,TДИAП,OШИБKA                   
CEPП BHEШ E7П1,E6П1,E15П11,M24ETX,E5,П4710,B13                 
CEPП BHEШ B60,B143,B7,B115,TЧЗ,БOБ,TДЛФOP                      
CEPП BHEШ PAЯ12,PAЯ21,ЗAПCЛO,ПAPГC,ЗAПCИM                      
CEPП BHEШ TYБPAH,TBЫД,ЗAKЗП,ИCПK,MДПK                          
CEPП BHEШ ПAPЗП,ДOБИTЬ,HEBBE,PAЯ2,TИMЯ                         
CEPП BHEШ TKOЛBO,THEBBE,П2П10,PEЖTT,ЭT                         
ШИФPM BHEШH ДИCП70.ШИФPM
*
 BXOД ФИOPAЗ,ПK,ГEHCП,ПPMЛ,ЗAГP,ГEHC,BЫЗД                      
 BXOД PACПЗГ,PИTM
 BXOД CБPOC,BЫД,ИДTИ,ФOP,AДP,PAOП,CПY                          
*
*
*   Г E H C
*   -------
*
* 'Г Д E P A З' - ПOИCK PAЗДEЛA B TEKYЩEM BAPИAHTE.            
* ИP 4 - HOMEP PAЗДEЛA; ПPИ BOЗBPATE ИP 11 - AДPEC PAЗДEЛA     
ГДEPAЗ YИA 1(M11)
 CЧИ M4
 ЗП PAЯ11
ГДEPA CЧИ M11
 HTЖ ПOЛEГC
 И ETX
 ПO HETPAЗ
 CЧ ПOЛEГC(M11)
 CДA 64+6
 HTЖ PAЯ11
 И E7П1
 ПO EPAЗД
 CЧ ПOЛEГC(M11)
 И E6П1
 ЗП PAЯ12
 MOД PAЯ12
 CЛИA (M11)
 ПБ ГДEPA
HETPAЗ YИA 0(M11)
 ПБ (M15)
EPAЗД CЛИA ПOЛEГC(M11)
 ПБ (M15)
 CTPOK 2
* 'B Ы Б P A З'  -  BЫБPOC PAЗДEЛA. ИP 11 - AДPEC PAЗДEЛA      
BЫБPAЗ MOДA (M15)
 ПИO (M11)
 YИИ M16(M11)
 CЧ (M11)
 И E6П1
 ЗП PAЯ11
 MOД PAЯ11
 CЛИA (M16)
 CЛИA -ПOЛEГC(M16)
BЫБPA CЧ ПOЛEГC(M16)
 ЗП (M11)
 CЧИ M16
 HTЖ ПOЛEГC
 И ETX
 CЛИA 1(M16)
 CЛИA 1(M11)
 ПE BЫБPA
 CЧ ПOЛEГC
 И ETX
 BЧ PAЯ11
 ЗП PAЯ11
 CЧ ПOЛEГC
 ИЛИ ETX
 HTЖ ETX
 ИЛИ PAЯ11
 ЗП ПOЛEГC
 YИA 0(M11)
 ПБ (M15)
 CTPOK 2
* 'Д O Б P A З' - ДOБABЛEHИE PAЗДEЛA C TEPMИHAЛA.              
* BЫXOД ИP 11 - AДPEC PAЗДEЛA
ДOБPAЗ CЧ ПOЛEГC
 И ETX
 YИ M11
 CЛИA ПOЛEГC(M11)
 YИA -4(M16)
 YИИ M5(M11)
 YИA -32(M6)
 CЧ 0
 ЗП PAЯ21
 ЗП (M5)
ЗПPAЗД ПB CЧИT(M15)
 ПB ЗAПCИM(M15)
 CЧ CИMBOЛ
 HTЖ ETX
 ПO ЧTPAЗД
 ЦИKЛ ЗПPAЗД(M16)
ЧTPAЗД CЧ PAЯ21
 CЛЦ E1
 ЗП PAЯ21
 YИA -5(M16)
 CЧ CИMBOЛ
 HTЖ ETX
 ПE ЗПPAЗД
 CЧ (M11)
 CБP MЗPAЗД
 ЗП (M11)
 CЧИ M4
 CДA 64-6
 ИЛИ PAЯ21
 ИЛИ (M11)
 ЗП (M11)
 CЧ PAЯ21
 CЛЦ ПOЛEГC
 ЗП ПOЛEГC
 ПБ (M14)
 CTPOK 2
* 'B Ы Д P A З' - BЫДAЧA PAЗДEЛA HA TEPMИHAЛ                   
BЫДPAЗ MOДA (M14)
 ПИO (M11)
 CЧ (M11)
 ЗП PAЯ21
 PЗБ MЗPAЗД
 ЗП (M11)
 YИИ M3(M11)
 YИA 32(M2)
BЫДPA CЧ ЛИCTB+'70000'(M4)
 ПB ЗAПCЛO(M15)
ПЧPAЗД ПB CЧИT(M15)
 И E7П1
 HTЖ E7П1
 ПO KPAЗД
 CЧ CИMBOЛ
 HTЖ TЧЗ
 ПO HOBPAЗ
 CЧ CИMBOЛ
 YИA ПЧPAЗД(M15)
 ПБ ЗAПCИM
KPAЗД CЧ PAЯ21
 ЗП (M11)
 ПБ (M14)
HOBPAЗ CЧ B115
 YИA BЫДPA(M15)
 ПБ ЗAПCИM
 CTPOK 4
OГBAP CЧ (M11)
 ПO BOПИMЯ
 ИЛИ ETX
 ЗП BOГЛ
 YИA BOГЛ(M1)
 YИA BOПИMЯ(M14)
 ПB BЫДШAГ(M13)
 ПБ CЛBAP
BOГЛ KOHД B'0'
ГEHC CЧ ПPИГЛ
 ПB ЗAППAP(M15)
 YИA ПAPГC(M11)
 ПB ДEKOД(M15)
 CЧ MД2053
 ПB ЗAXBAT(M13)
 YИA ЛИCTЗГ+513(M11)
 Э70 ИCЧTЗГ         ЗOHY BAPИAHTOB HA ЛИCT 37                  
 CЧ ЛИCTЗГ+512
 HTЖ E15П11
 ПE ИCПЗГC
 Э70 ИCЧTBИ         BЫДИHC HA ЛИCT 36                          
BOПИMЯ CЧ TИMЯ
 ЗП БФBB
 YИA YБPИHФ(M15)
 ПB ПPИEM(M14)
 CЧ 0
 ЗП BOГЛ
 YИA ЛИCTЗГ+513(M11)
 CЧ БФBB
 HTЖ TOГЛ
 И E48П25
 ПO OГBAP
 CЧ БФBB
 HTЖ THOB
 И E48П25
 ПO HOBЗOH
 YИA ГOTBAP(M15)
 YИA HETBA(M13)
ИЩYBAP CЧ (M11)
 ПO (M13)          ДЛЯ    ЗAП "ИMЯ"                            
 HTЖ БФBB
 ИЛИ ETX
 HTЖ ETX
 ПE CЛBAP
 CЧИ M11
 ПБ (M15)    ДЛЯ ЗAП "ИMЯ"
CЛBAP CЧ (M11)
 И ETX
 ЗП PAЯ
 ПO ИCПЗГC         ИCПOPЧEHA ЗOHA BAPИAHTOB                    
 MOД PAЯ
 CЛИA (M11)
 CЧ BOГЛ
 ПE OГBAP
 ПБ ИЩYBAP
ГOTBAP CЧ (M11)         ИP11 = A HAЧ  BAPИAHTA                 
 И ETX
 ПO ИCПЗГC
 YИ M14            ИP14:= L BAPИAHTA                           
 HTЖ BCEEД
 YИ M15
 CЛИA 2(M15)        ИP 15 := -L+1                              
 YИИ M13(M11)
 CЛИ M13(M14)
 CЛИA -1(M13)       ИP 13 := A HAЧ + L - 1                     
 CЧИ M11
 ЗП AДPBAP
ПEPBAP MOДA (M15)
 CЧ (M13)
 MOДA (M15)
 ЗП ПOЛEГC-1(M14)
 ЦИKЛ ПEPBAP(M15)
 HOП ,              ПEPEПИCAЛИ BAPИAHT B PAБ.ПOЛE              
 ПБ BOПPAЗ
HETBA CЧ БФBB
 ИЛИ ETX
 HTЖ ETX
 ИЛИ E1
 ЗП ПOЛEГC
 CЧ 0
 ЗП AДPBAP
 YИA THEBBE(M1)
 ПB BЫДШA(M13)
BOПPAЗ CЧ TPAЗД
 ЗП БФBB
 CЧ ПPИГЛ
 ЗП БФBB+1
5П1,E10П1                        
    Н
PЧT
OФИO
 YИA TPABAP(M15)   ПYCTAЯ ПOCЫЛKA - TPAHCЛЯЦИЯ BAPИAHTA        
 ПB ПPИEM(M14)
ПOBPAЗ CЧ БФBB
 CДA 64-8
 И M24ETX
 HTЖ M24ETX
 ПO ПPOBEP
HEПPИK YИA -5(M16)
HEПPИ ПB CЧИT(M15)
 HTЖ ETX
 ПO ДAЙПPO
 CЧ PAЯ
 CДA 64-8
 ИЛИ CИMBOЛ
 ЗП PAЯ
 ЦИKЛ HEПPИ(M16)
 ПБ ГOTPAЗ
ДAЙПPO CЧ PAЯ
ДAЙПP CДA 64-8
 ИЛИ E4П1
 ЦИKЛ ДAЙПP(M16)
 ЗП PAЯ
ГOTPAЗ YИA 0(M4)
 YИA BOПИHФ(M15)
ПOИPAЗ CЧ ЛИCTB+'70000'(M4)
 ПO OШPAЗД
 HTЖ PAЯ
 ПO ГДEPAЗ        HA П/П ПOИCKA PAЗДEЛA B BAPИAHTE             
 CЛИA 1(M4)
 ПБ ПOИPAЗ
ПPOBEP CЧ БФBB
 HTЖ TЗAП
 И E48П25
 ПO ЗAПBAP
 CЧ БФBB
 HTЖ TYБPAH
 И E48П25
 ПO YБPBA
 CЧ БФBB
 HTЖ TBЫД
 И E48П25
 ПO BЫДBAP
 CЧ БФBB
 HTЖ THOB
 И E48П25
 ПO HOBBAP
 ПБ HEПPИK
*
TOГЛ KOHД П'OГЛ000'M16B'377'
THOB KOHД П'HOBBAP'
*----------------------- И H Ф -                               
BOПИHФ CЧ TИHФOP
 ЗП БФBB
 YИA BOПPAЗ(M15)
 ПB ПPИEM(M14)
 CЧ БФBB
 CДA 64-8
 И M24ETX
 HTЖ M24ETX
ЧTИHФ ПO ПPOBE1
 ПB BЫБPAЗ(M15)
 YИA BOПPAЗ(M14)
 ПБ ДOБPAЗ
*
ПPOBE1 CЧ БФBB
 HTЖ TYБPAH
 И E48П25
 ПO YБPPAЗ
 CЧ БФBB
 HTЖ TBЫД
 И E48П25
 ПE ЧTИHФ
 YИA БФBB(M5)
 YИA -40(M6)
 CЧ 0
 ЗП (M5)
 ПB BЫДPAЗ(M14)
 CЧ ETX
 ПB ЗAПCИM(M15)
 YИA БФBB(M1)
 YИA BOПPAЗ(M13)
 ПБ BЫДШA
YБPPAЗ YИA TECTЬ1(M1)
  ПB BЫБPAЗ(M15)
 YИA BOПPAЗ(M13)
 ПБ BЫДШA
ИCПЗГC YИA TИCПЗГ(M1)
 YИA BOПИMЯ(M13)
 ПБ BЫДШA
TИCПЗГ TEKCT П' ЗOHA ИCПOPЧ'
 KOHД П'EHA0  'M16B'377'
OШPAЗД YИA TPABAP(M15)
 YИA ПOBPAЗ(M14)
 ПБ OШИБKA
YБPBA CЧ ПOЛEГC
 ИЛИ ETX
 HTЖ ETX
 ИЛИ E1
 ЗП ПOЛEГC
 YИA TECTЬ1(M1)
 YИA BOПPAЗ(M13)
 ПБ BЫДШA
HOBBAP CЧ ПOЛEГC
 ИЛИ ETX
 HTЖ ETX
 ИЛИ E1
 ЗП ПOЛEГC
 YИA 0(M4)
HOBBA CЧ ЛИCTB+'70000'(M4)
 ПO BOПPAЗ
 YИИ M15(M4)
 CЧИ M4
 BЧ B60
 YИA 0(M16)
 ПE HOBBA1
 CЛИA -48(M15)
 BЧ B60
 YИA 1(M16)
 ПE HOBBA1
 CЛИA -48(M15)
 YИA 2(M16)
HOBBA1 CЧ E48
 CДA 64(M15)
 И ШKHOB(M16)
 ПO HOBBA2
 CЧ ЛИCTB+'70000'(M4)
 HTЖ E4П1
 ИЛИ B143
 ЗП БФBB
 CЧ ПPИГЛ
 ЗП БФBB+1
 YИA HOBBA2(M15)
 ПB ПPИEM(M14)
 ПB ДOБPAЗ(M14)
HOBBA2 CЛИA 1(M4)
 ПБ HOBBA
 CTPOK 2
BЫДBAP YИA БФBB(M5)
 YИA -40(M6)
 CЧ 0
 ЗП (M5)
 YИA 0(M4)
BЫДBA CЧ ЛИCTB+'70000'(M4)
 ПO KBЫДBA
 ПB ГДEPAЗ(M15)
 ПИO BЫДBA1(M11)
 ПB BЫДPAЗ(M14)
 CЧ B115
 ПB ЗAПCИM(M15)
BЫДBA1 CЛИA 1(M4)
 ПБ BЫДBA
KBЫДBA CЧ ETX
 ПB ЗAПCИM(M15)
 YИA БФBB(M1)
 YИA BOПPAЗ(M13)
 ПБ BЫДШA
 CTPOK 2
ЗAПBAP CЧ TИMЯ
 ЗП БФBB
 YИA ЗAПBA1(M15)
 ПB ПPИEM(M14)
 YИA ЗAПBA2(M13)
 YИA ЛИCTЗГ+513(M11)
 ПB ИЩYBAP(M15)
ЗAПBA2 ЗП AДPBAP
 CЧ ПOЛEГC
 И ETX
 ЗП PAЯ
 CЧ БФBB
 ИЛИ ETX
 HTЖ ETX
 ИЛИ PAЯ
 ЗП ПOЛEГC
ЗAПBA1 MOД AДPBAP
 YИA (M11)
 ПИO HBAP(M11)
 CЧ (M11)
 И ETX
 YИ M14
 YИИ M15(M11)
 CЛИ M15(M14)
BЫБBAP CЧ (M15)
 ЗП (M11)
 CЛИA 1(M11)
 ЦИKЛ BЫБBAP(M15)
HBAP YИA ЛИCTЗГ+513(M11)
ИЩYKOH CЧ (M11)
 ПO HAЙKOH
 И ETX
 ПO ИCПЗГC
 ЗП PAЯ
 MOД PAЯ
 CЛИA (M11)
 ПБ ИЩYKOH
HAЙKOH CЧ ПOЛEГC
 И ETX
 ЗП PAЯ
 HTЖ E1
 ПO KOHЗAП
 CЧ 0
 MOД PAЯ
 ЗП ПOЛEГC
 YИA 0(M15)
ЗAПBA CЧ ПOЛEГC(M15)
 ЗП (M11)
 CЛИA 1(M15)
 ЦИKЛ ЗAПBA(M11)
 CЧИ M15
 BЧOБ PAЯ
 ПE KOHЗAП
 YИA TДЛФOP(M1)
 YИA BOПPAЗ(M13)
 ПБ BЫДШA
HOBЗOH YИA ЛИCTЗГ(M16)
 CЧ 0
ЦHOBЗ ЗП (M16)
 ЦИKЛ ЦHOBЗ(M16)
 CЧ E15П11
 ЗП ЛИCTЗГ+512
 MOДA HAЧAЛO-BOПPAЗ
KOHЗAП YИA BOПPAЗ(M11)
 ПB ДAЙЗП(M13)
 YИA TECTЬ1(M1)
 Э70 ИCЗПЗГ
 YИИ M13(M11)
 ПБ BЫДШA
ПOЛEГC ЭKB '70000'+100
MЗPAЗД KOHД X'7F7F7F7F7F'
ЛИCTB BHEШH BЫДИHC.PAЗДEЛ
ЛИCTЗГ ЭKB '76000'
ИCЧTЗГ KOHД B'10370000550750'
ИCЗПЗГ KOHД B'00370000550750'
ИCЧTBИ KOHД B'10360000550753'
AДPBAP ЭKB '70000'+57
TPAЗД KOHД П'PAЗДEЛ'
TИHФOP KOHД П'ИHФ- 0'B'377'
KKBЫДИ ЭKB '10004'
******************************************                     
YБPИHФ CЧ TMAШИH
 ЗП БФBB
 YИA HAЧAЛO(M15)
 ПB ПPИEM(M14)
 ПB CЧИT(M15)
 ПO HAЧAЛO
 И B7
 HTЖ CИMBOЛ
 ПE HAЧAЛO
 CЧ CИMBOЛ
TPABAP ЗП PAЯ
 CЧ THOM
 ЗП БФBB
 CЧ ПPИГЛ
 ЗП БФBB+1
 YИA HAЧAЛO(M15)
 ПB ПPИEM(M14)
 YИA 1(M16)
 ПB CЧИT(M15)
 ПB ПPOГOH(M14)
 ПO HAЧAЛO
 ПB BBЧИC(M14)
 BЧOБ E5
 ПE HAЧAЛO
 CЧ PAЯ
 ПE YБPИH
 ПB ЗAKЗП(M14)
 ЗП ПAPЗП
 YИA ПOЛEФ(M17)
 YИA -LГEHC+2(M16)
 CЧ ИГEHC
ЦГEHC CЧM ИГEHC+LГEHC-1(M16)
 ЦИKЛ ЦГEHC(M16)
 ИЛИ БOБ
 CЧM ПAPЧT
 CДA 64+36
 CЧM ПAPЗП
 CДA 64+36
 CЧM ЧИCЛO
 CЧM 0
 YИИ 5(M17)
 ЗП (M5)
 YИA -40(M6)
 YИA 0(M4)
ЦГEHC1 CЧ ЛИCTB+'70000'(M4)
 ПO KГEHC
 ПB ГДEPAЗ(M15)
 ПИO ЦГEHC2(M11)
 ПB BЫДPAЗ(M14)
 CЧ B115
 ПB ЗAПCИM(M15)
ЦГEHC2 CЛИA 1(M4)
 ПБ ЦГEHC1
KГEHC CЧ B132
 ПB ЗAПCИM(M15)
 CЧ 0
 ПB ДOБИTЬ(M15)
 YИИ '17'(M5)
 YИA HAЧAЛO(M15)
 ПБ ФOPM
******************************************                     
ШKHOB KOHД B'7417547303031620'
 KOHД M40B'3'
 KOHД B'0'
B132 KOHД B'132'
 CTPOK 2
*   Г E H C   - ФOPMИPYEMAЯ ПPOГPAMMA                          
 YПOTP GБAЗA-'62'(M7)
ИГEHC KOHД П'0OЗY 9'M40B'115'
 KOHД П'0BXO 6'M40B'115'
 KOHД П'30BPE 'M32B'115'
 KOHД П'2400PO'M16B'115'
 KOHД П'C 00E 'M16B'115'
GБAЗA KOHД B'63'
 CЧ GБOБ
 Э50 '131'
 ПO GЗKЗ
 Э74 0
GЗKЗ CЧ GБOБ
 MOД GЧT
 YИA '40000'(M15)
 Э50 '121'
 CЧ GБOБ
 MOД GЗП
 YИA (M15)
 Э50 '121'
 Э70 GOБM
 ПБ '2000'
GOБM KOHД B'10010000300752'
GБOБ KOHД M36B'3077'
LГEHC ЭKB *-ИГEHC
 OTMEH (M7)
GЧT ЭKB '75'
GЗП ЭKB '76'
TMAШИH KOHД П'ЭBM- 0'B'377'
THOM KOHД П'HOMEP0'B'143'
YБPИH ПB ДAЙЗП(M13)
 MOД ЧИCЛO
 YИA (M4)
 YИA -15(M5)
  YИA ЛИCTЗГ(M6)
ЦYБPИH CЧ '16'(M6)
 И B7
 ПO HETИHФ
 HTЖ PAЯ
 ПE ДPЭBM
 CЛИA -1(M4)
 ПИO HAЙИHФ(M4)
ДPЭBM CЛИA 32(M6)
 ЦИKЛ ЦYБPИH(M5)
HETИHФ YИA THEBBE(M1)
 ПБ BЫДHAЧ
HAЙИHФ YИA -31(M16)
 ПИO ПOCЛИH(M5)
ЦYБPИ1 MOДA 31(M16)
 CЧ 32(M6)
 MOДA 31(M16)
 ЗП (M6)
 ЦИKЛ ЦYБPИ1(M16)
 CЛИA 32(M6)
 ЦИKЛ HAЙИHФ(M5)
ПOCЛИH CЧ 0
 ЗП (M6)
 CЧ БOБ
 Э50 '115'
 Э70 ИCЗПЗГ
 CЧ БOБ
 Э50 '116'
 CЧ TYБPAH
 ИЛИ ETX
 ЗП БФBB
 YИA БФBB(M1)
BЫДHAЧ YИA HAЧAЛO(M13)
 ПБ BЫДШA
*
ФOP CЧ ПPИГЛ
 ПB ЗAППAP(M15)
 ЗП ПAPШИФ
 ПБ HAЧAЛO
*KOHEЦ ЧACTИ
       
ИEM(M14)
 ПB ДOБPAЗ(M14)
HOBBA2 CЛИA 1(M4)
 ПБ HOBBA
 CTPOK 2
BЫДBAP YИA БФBB(M5)
 YИA -40(M6)
 CЧ 0
 ЗП (M5)
 YИA 0(M4)
BЫДBA CЧ ЛИCTB+'70000'(M4)
 ПO KBЫДBA
 ПB ГДEPAЗ(M15)
 ПИO BЫДBA1(M11)
 ПB BЫДPAЗ(M14)
 CЧ B115
 ПB ЗAПCИM(M15)
BЫДBA1 CЛИA 1(M4)
 ПБ BЫДBA
KBЫДBA CЧ ETX
 ПB ЗAПCИM(M15)
 YИA БФBB(M1)
 YИA BOПPAЗ(M13)
 ПБ BЫДШA
 CTPOK 2
ЗAПBAP CЧ TИMЯ
 ЗП БФBB
 YИA ЗAПBA1(M15)
 ПB ПPИEM(M14)
 YИA ЗAПBA2(M13)
 YИA ЛИCTЗГ+513(M11)
 ПB ИЩYBAP(M15)
ЗAПBA2 ЗП AДPBAP
 CЧ ПOЛEГC
 И ETX
 ЗП PAЯ
 CЧ БФBB
 ИЛИ ETX
 HTЖ ETX
 ИЛИ PAЯ
 ЗП ПOЛEГC
ЗAПBA1 MOД AДPBAP
 YИA (M11)
 ПИO HBAP(M11)
 CЧ (M11)
 И ETX
 YИ M14
 YИИ M15(M11)
 CЛИ M15(M14)
BЫБBAP CЧ (M15)
 ЗП (M11)
 CЛИA 1(M11)
 ЦИKЛ BЫБBAP(M15)
HBAP YИA ЛИCTЗГ+513(M11)
ИЩYKOH CЧ (M11)
 ПO HAЙKOH
 И ETX
 ПO ИCПЗГC
 ЗП PAЯ
 MOД PAЯ
 CЛИA (M11)
 ПБ ИЩYKOH
HAЙKOH CЧ ПOЛEГC
 И ETX
 ЗП PAЯ
 HTЖ E1
 ПO KOHЗAП
 CЧ 0
 MOД PAЯ
 ЗП ПOЛEГC
 YИA 0(M15)
ЗAПBA CЧ ПOЛEГC(M15)
 ЗП (M11)
 CЛИA 1(M15)
 ЦИKЛ ЗAПBA(M11)
 CЧИ M15
 BЧOБ PAЯ
 ПE KOHЗAП
 YИA TДЛФOP(M1)
 YИA BOПPAЗ(M13)
 ПБ BЫДШA
HOBЗOH YИA ЛИCTЗГ(M16)
 CЧ 0
ЦHOBЗ ЗП (M16)
 ЦИKЛ ЦHOBЗ(M16)
 CЧ E15П11
 ЗП ЛИCTЗГ+512
 MOДA HAЧAЛO-BOПPAЗ
KOHЗAП YИA BOПPAЗ(M11)
 ПB ДAЙЗП(M13)
 YИA TECTЬ1(M1)
 Э70 ИCЗПЗГ
 YИИ M13(M11)
 ПБ BЫДШA
ПOЛEГC ЭKB '70000'+100
MЗPAЗД KOHД X'7F7F7F7F7F'
ЛИCTB BHEШH BЫДИHC.PAЗДEЛ
ЛИCTЗГ ЭKB '76000'
ИCЧTЗГ KOHД B'10370000550750'
ИCЗПЗГ KOHД B'00370000550750'
ИCЧTBИ KOHД B'10360000550753'
AДPBAP ЭKB '70000'+57
TPAЗД KOHД П'PAЗДEЛ'
TИHФOP KOHД П'ИHФ- 0'B'377'
KKBЫДИ ЭKB '10004'
******************************************                     
YБPИHФ CЧ TMAШИH
 ЗП БФBB
 YИA HAЧAЛO(M15)
 ПB ПPИEM(M14)
 ПB CЧИT(M15)
 ПO HAЧAЛO
 И B7
 HTЖ CИMBOЛ
 ПE HAЧAЛO
 CЧ CИMBOЛ
TPABAP ЗП PAЯ
 CЧ THOM
 ЗП БФBB
 CЧ ПPИГЛ
 ЗП БФBB+1
