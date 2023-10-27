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
*
*
************************************************               
**               
*     Д И A Л O Г O B A Я    C И C T E M A     *               
*                 C  E  P  П                   *               
**               
*----------------------------------------------*               
*  HEPEЗИДEHTHЫЙ MOДYЛЬ CTПACП                 *               
************************************************               
*
*
*
 MACRO
&LAB STORE
 GBLC &CUR
&LAB ЭKB 1+&CUR
&CUR SETC &LAB
 MEND
 GBLC &CUR
&CUR SETC 'OБЛ'
 GBLA &Д2212
&Д2212 SETA 0
CEPП4 CTAPT '6000'
*
*
*
ПKЛПAC HOП
*
*
*
*-------------------------------*                              
*                               *                              
*                               *                              
*      *-----------------*      *                              
*      *   ДEШИФPATOP    *      *                              
*      *-----------------*      *                              
*                               *                              
*                               *                              
*-------------------------------*                              
*
*
*
TДAЙ ПБ ДAЙ
 KOHK П'ДAЙ'
 ПБ БOБ
 KOHK П'БOБ'
 ПБ BЫД
 KOHK П'BЫД'
 ПБ BCT
 KOHK П'BCT'
 ПБ OTM
 KOHK П'OTM'
 ПБ OГЛ
 KOHK П'OГЛ'
 ПБ ЗAП
 KOHK П'ЗAП'
 ПБ ЧИT
 KOHK П'ЧИT'
 ПБ ИCK
 KOHK П'YБP'
 ПБ HOB
 KOHK П'HOB'
 ПБ ЗAM
 KOHK П'ЗAM'
 ПБ BCE
 KOHK П'BCE'
 ПБ PEД
 KOHK П'PEД'
 ПБ SZUKAJ
 KOHK П'HAЙ'
 ПБ ФOP
 KOHK П'ФOP'
KДИПAC ЭKB *-ПKЛПAC
*
*
*
*-------------------------------------------------*            
**            
**            
*      *-----------------------------------*      *            
*      *  PAБOЧИE ЯЧEЙKИ,KOHCTAHTЫ,TEKCTЫ  *      *            
*      *-----------------------------------*      *            
**            
**            
*-------------------------------------------------*            
*
*
*
OБЛ ЭKB '71730' OБЛACTЬ BHYTPEHHИX PAБ. ЯЧEEK                  
CEPП BHEШ E48П33,E15П1,(OOПOOO,П1П30),(ETX,M40ETX),(П377,ETX)  
CEPП BHEШ (П341,B341),(П140,B140),(E48П41,M40ETX),(TПPOБ,E4П1) 
CEPП BHEШ (П214,B214),(BCEПPO,П6П),(BCE7,П67),(E48П24,E48П25)  
*
 UJ ЧTЗ675
 YИA 11069(M2)
ЯЧPEЖ STORE
*  E1 = 1  - ПACПOPT BЫБPAH
*  E2 = 1  - ПACПOPT PACПAKOBAH B PБПOЛE                       
*  E3 = 1  - OШИБKA B ДИPEKTИBE ИЛИ OПEPAHДE                   
*  E4 = 1  - PAБOTAET ДИPEKTИBA 'ЗAM'                          
*  E5 = 1  - PAБOTAET ДИPEKTИBA 'PEД'                          
*  E6 = 1  - B TEKCTE ДЛЯ 'PEД' BCTPETИЛCЯ <ETX>               
*  E7 = 1  - ДЛЯ БЛOKA ПAKП ПPИ ДИPEKTИBE 'ФOPM'               
TEKOПE STORE ,  OПEPAHД
TEKПAC STORE ,  C ЭTИM ПACПOPTOM PAБOTAEM                      
HAЧПTE STORE ,  HAЧAЛO TEKПAC B ПOЛE1                          
ДЛИПTE STORE ,  ДЛИHA TEKПAC B ПOЛE1                           
PЯBCK  STORE ,  CИMBOЛ KOHЦA MACCИBA                           
PЯГBCK KOHД B'777' KOHEЧHЫЙ CИMBOЛ ПPИ PACПAKOBKE              
BЫБCK  STORE ,  ПPOПYCKAEMЫE CИMBOЛЫ                           
BЫБCK1 STORE
ПPИЗOC STORE
XPCTP STORE
ДЛИBCK ЭKB 1
*
П777 KOHД B'777'
П500 KOHД B'500'
П376 KOHД B'376'
П342 KOHД B'342'
П6 KOHД B'6'
E16E8 KOHД X'8080'
ПPHAД KOHД П'     0'B'115'
* HE PAЗДEЛЯTЬ !!!
TПЛЮC  KOHД П'+'
TMИHYC KOHД П'-'
TTЧK   KOHД П'.'
TЮ     KOHД П'Ю'
TДДEC  KOHД B'20'
E48П1 KOHД B'7777777777777777'
E40П1 KOHД B'17777777777777'
E32П1 KOHД B'37777777777'
E24П1 KOHД B'77777777'
E16П1 KOHД B'177777'
E8П1 KOHД B'377'
*  MOЖHO PAЗДEЛЯTЬ !!!
THYЖH  KOHД П'HYЖHA '
       KOHД П'<ДAЙ>0'B'377'
ПPИПAC KOHД П'ПACП-0'B'377'
TOШBПT TEKCT П'OШИБKA B ПAC'
       KOHД П'ПOPTE0'B'377'
TПPBBД KOHД M40П':'M32B'176'M24B'170'M16B'177'M8B'377'         
TOШKOД KOHД П'OШИБ.B'
 KOHД П' KOДE0'B'377'
TCBOБ KOHД П'CBOБ. '
      KOHД П'0000B0'B'377'
THOBEP TEKCT П'*ПACП /26.01'
 KOHД П'.84/ 0'B'377'
*
*
T777 KOHД П'777'
T377 KOHД П'377'
COПKOД KOHД B'174'
TEKHЦ KOHД П'KOHEЦ0'
TA KOHД П'A'
TK KOHД П'K'
TE KOHД П'E'
*
*
*  ИHФOPMAЦИOHHЫE CЛOBA
ИHФЧT1 KOHД B'0010350000550003'
ИHФЧT2 KOHД B'0010360000550004'
ИHФЧT3 KOHД B'0010370000550135'
ИHФЗA1 KOHД B'0000350000550003'
ИHФЗA2 KOHД B'0000360000550004'
ИHФЗA3 KOHД B'0000370000550135'
*!
 AIF (&Д2212 EQ 0).BHEШ
MД2053 KOHД B'20123'
 AGO .BHYT
.BHEШ ANOP
CEPП BHEШ MД2053
.BHYT ANOP
*!
ПOЛE1 ЭKB '72000'   35-Й ЛИCT
PБПOЛE ЭKB '76000'
KПOЛE1 KOHД A(ПOЛE1+'3777')
*--------------*
 M
*
 BXOД ПACП,KЛЮЧ
*
*
*---------------*
* BHEШHИE METKИ *
*---------------*
*
CEPП BHEШ E1,E2,E3,(П3,B3),(П10,B10),(П12,B12),(П7,B7)         
CEPП BHEШ (TC,БC),ПPИГЛ,ЗAППAP,ПAPПAC,HEПAP,П8П10,ЧИC10        
CEPП BHEШ (TБ,ББ),ЗAXBAT,BCEEД,БФBB,HAЧ1,CЧИT,ПPOГOH,BBЧИC     
CEPП BHEШ CИMBOЛ,ПPИEM,OШИБKA,BЫДШA,PAЯ21,PAЯ22,PAЯ23,PAЯ41    
CEPП BHEШ BЫДШAГ,PAЯ42,PAЯ33,TИMЯ,THEBBE,ДAЙЗП,(THAДЧ,B115)    
CEPП BHEШ (PЯЧBЫ1,PAЯ41),(TД,БД),(TEKДИP,PAЯ41),(П4000,E12)    
CEPП BHEШ ЧИCЛO,ЧИC8,E4,E5,E6,PAЯ12,(П60,B60),(П400,E9)        
PAЯ13 STORE
CEPП BHEШ (PЯЧЗC,PAЯ),(ДCTPOK,PAЯ2),(TECTЬ,TECTЬ1)             
CEPП BHEШ (PЯЗC,PAЯ11),ПX108,TYБPAH,ПAPKЛЮ,PAЯ1,PAЯ2           
CEPП BHEШ ДEKOД,ПOЛEФ,ФOPM,E7,E8,ИCЧT55,ПOBБOБ                 
CEPП BHEШ (TЗ,БЗ),(PЯЧBЫ2,PAЯ42),(ДCЛOB,PAЯ3)                  
BЫXBЫД ЭKB PAЯ13
*
*-----------------------------------*                          
**                          
**                          
*          *-------------*          *                          
*          * OБЩИE БЛOKИ *          *                          
*          *-------------*          *                          
**                          
**                          
*-----------------------------------*                          
*
Э50112 HOП
 CЧ ИCЧT55
 Э50 '156'
 YИ M16
 CЧ CTCДB
 ПИO Д7(M16)
 CДA 64+5
Д7 ИЛИ ИCЧT55
 Э50 '112'
CTCДB ПБ (M13)
 ЗП '540'
*
BBOДA HOП
* BBOД ПO ПPИЗHAKY A N ДO KOHЦA BBOДA                          
* BXOДHЫE ЗHAЧEHИЯ:*  PЯBCK - CИMBOЛ KOHЦA MACCИBA             
*  CM : 0-5 ( N )
* BЫXOДHЫE ЗHAЧEHИЯ
*  CM = 0  BCE B ПOPЯДKE
*  CM   0  OTC.ПPИЗHAK KOHЦA BBOДA                             
* ИCПOЛЬЗYЮTCЯ M16,M17
* BЫXOД ПO M14
 YИ M16
 CЧИ M17
 ЗП PAЯ41
BBOЖYA HOП
 YИA 48(M17)
BBOЖY HOП
 ПB BC(M13)
 ЗП PЯЗC
 HTЖ PЯBCK   ПPИЗHAK KOHЦA MACCИBA                             
 ПO OШBBOA
 HTЖ PЯBCK
 HTЖ BЫБCK+1
 ПO BBOЖY
 CЛИA -8(M17)
 CЧ ПPИKOH(M16)   ПPИЗHAK KOHЦA
 CДA 64(M17)
 И П377
 ПO BBEЛA   HYЛEBOЙ БAЙT-KOHEЦ
 YИA BBOЖYA(M13)
 HTЖ PЯЗC
 ПE ЗC   ПPOДOЛЖИM BBOД
 ПB ЗC(M13)
 ПИHO BBOЖY(M17)   ПPOBEPЯEM HA ПPИЗHAK KOHЦA                  
 MOД PAЯ41
 YИA (M17)
 ПB BCK(M13)
 ЗП PЯЗC   ПEPBЫЙ CЛEДYЮЩИЙ CИMBOЛ                             
BBEЛA HOП
 CЧ 0   BCE HOPMAЛЬHO
 ПБ (M14)
OШBBOA HOП
 CЧ BCEEД   OШИБKA-KOHEЦ MACCИBA                               
 ПБ (M14)
*
*
*
ПИЩИ HOП
* ПOИCK ПACПOPTA B ПOЛE1
*  BXOДHЫE ЗHAЧEHИЯ:*   CM - ИMЯ ПACПOPTA (1-16 PP.)           
*  BЫXOДHЫE ЗHAЧEHИЯ:*   CM = 0 TAKOГO ПACПOPTA HET            
*   CM     AДPEC HAЧAЛA (1-15 PP.)                             
*  ИCПOЛЬЗYЮTCЯ PAЯ21,M16,M17
*  BЫXOД ПO M13
*
 CДA 64-32    ИMЯ B CTAPШИX PAЗPЯДAX                           
 ЗП PAЯ21
 YИA ПOЛE1(M16)    HAЧAЛO ЗOH ПACПOPTOB                        
 YИA -'3777'(M17)
ПИЩY HOП
 CЧ (M16)
 ПO (M13)
 HTЖ PAЯ21
 И E48П33
 ПO HAШEЛП    HAШЛИ
 MOД (M16)
 CЛИA (M16)    HAЧAЛO CЛEДYЮЩEГO                               
 ЦИKЛ ПИЩY(M17)
 YИA (M16)
HAШEЛП HOП
 CЧИ M16
 ПБ (M13)    BOЗBPAT
*
*
*
CБPOC HOП
* CБPACЫBAET ПACПOPT B KOHEЦ
* ЗOH CTAHДAPTHЫX ПACПOPTOB
*  BXOДHЫE ЗHAЧEHИЯ:
*   CM - AДPEC HAЧAЛA (1-15 PP.)                               
*  BЫXOДHЫE ЗHAЧEHИЯ:
*   CM - HOBЫЙ AДPEC HAЧAЛA
*  ИCПOЛЬЗYЮTCЯ PAЯ21,PAЯ22,PAЯ23,M6,M16,M17                   
*  BOЗBPAT ПO M13
*
 YИ M6
 ПB ПEPCBO(M14)    AДPEC ПEPBOЙ CBOБOДHOЙ                      
 BЧ E1
 ЗП PAЯ22    CБPACЫBAEM ЧEPEЗ ПOCЛEДHЮЮ ЗAHЯTYЮ                
 CЧ (M6)
 И E15П1
 ЗП PAЯ23    ЧTOБЫ YЗHATЬ AДPEC HOBOГO HAЧAЛA                  
 BЧOБ E1
 YИ M17    BHEШHИЙ ЦИKЛ=ДЛИHE ПACПOPTA                         
CБPOC1 HOП
 CЧ (M6)
 ЗП PAЯ21   BPEMEHHЫЙ БYФEP
 YИИ M16(M6)
CБPOC2 HOП
 CЛИA 1(M16)
 CЧ (M16)
 ЗП -1(M16)    ПEPEПИCЬ HAЗAД HA 1 ЯЧEЙKY                      
 CЧИ M16
 HTЖ PAЯ22    KOHEЧHЫЙ AДPEC
 ПE CБPOC2
 CЧ PAЯ21
 ЗП (M16)    ИЗ БYФEPA-B KOHEЧHЫЙ AДPEC                        
 ЦИKЛ CБPOC1(M17)
 CЧ PAЯ22    ПOCЛEДHЯЯ ЯЧEЙKA ПACПOPTA                         
 BЧ PAЯ23    ДЛИHA ПACПOPTA
 CЛЦ E1
 ПБ (M13)
*
*
*
ДИBBO HOП
* BBOДИT ДИAПAЗOH HOMEPOB ДЛЯ
* ДИPEKTИB PEДAKTИPOBAHИЯ
*  BXOДHЫE ЗHAЧEHИЯ:
*   TEKCT B БФBB
*  BЫXOДHЫE ЗHAЧEHИЯ:
*   HET OПEPAHДA - CM=0,PAЯ41,PAЯ42=0                          
*   TOЛЬKO HИЖHЯЯ ГPAHЬ - CM=1,PAЯ41-ЧИCЛO,PAЯ42=0             
*   ДИAПAЗOH - CM=2,PAЯ41-HИЖHЯЯ,PAЯ42-BEPXHЯЯ                 
*   ECЛИ HИЖHЯЯ > BEPXHEЙ,TO BЫXOД HA 'OШПAP'                  
*   ECЛИ E2(ЯЧPEЖ) = 0 ,  TO BЫXOД HA 'HETMPБ'                 
*  ИCПOЛЬЗYЮTCЯ M2,M3,M14,M15,M16                              
*  BOЗBPAT ПO M13
*
 CЧ ЯЧPEЖ
 И E2
 ПO HETMPБ
 YИA 40(M2)   TAK HYЖHO
 YИA БФBB(M3)    ДЛЯ 'CЧИT'
 CЧ
 ЗП PAЯ41
 ЗП PAЯ42
 ЗП PAЯ1
 ПB CЧИT(M15)    TAK HYЖHO ДЛЯ 'ПPOГOH'                        
 YИA (M16)    ДECЯTИЧHOE ЧИCЛO
 ПB ПPOГOH(M14)
 ПO (M13)    0 HA CM - HET OПEPAHДA                            
 ПB BBЧИC(M14)
 ПB ПX108(M15)
 ЗП PAЯ41     HИЖHЯЯ ГPAHИЦA
 ПB ПPOГOH(M14)
 ПO ДИAH    HE ДИAПAЗOH,A ЧИCЛO
 ПB BBЧИC(M14)
 ПB ПX108(M15)
 ЗП PAЯ42    BEPXHЯЯ ГPAHИЦA
 BЧ PAЯ41
 ПE OШПAP    HИЖHЯЯ > BEPXHEЙ
 CЧ E2    BCE XOPOШO
 ЗП PAЯ1
 ПБ (M13)
ДИAH CЧ E1    KOД OTBETA
 ЗП PAЯ1
 ПБ (M13)
*
*
*
KOДYПП HOП
* БЛOK ПPИEMA TEKCTA ПOCЛE
* YПPABЛЯЮЩEГO CИMBOЛA 'CTRL'M
*  BXOДHЫE ЗHAЧEHИЯ:
*   'BC' HACTPOEH HA HAЧAЛO TEKCTA                             
*  BЫXOДHЫE ЗHAЧEHИЯ:
*   BЫXOДHOЙ TEKCT ЗAПИCAH ПO 'ЗC',A                           
*   ПOCЛEДHИЙ CИMBOЛ HAXOДИTCЯ B 'PЯЗC'                        
*  ИCПOЛЬЗYETCЯ M16
*  BOЗBPAT ПO M14
*
 CЧ
 ЗП PЯЗC
 YИA -2(M16)    ДЛЯ ЦИKЛA ПPИEMA TPEX CИMBOЛOB                 
KOДYП1 CЧ PЯЗC
 CДA 64-8    MECTO ДЛЯ CЛEДYЮЩEГO CИMBOЛA                      
 ЗП PЯЗC
 ПB BC(M13)
 ЗП PЯЧЗC    ДЛЯ AHAЛИЗA
 ИЛИ PЯЗC
 ЗП PЯЗC    ПPИCOBOKYПИЛИ
 CЧ PЯЧЗC
 HTЖ TД
 ПO ДK    ЗAПИCATЬ 'ДИCПETЧEPCKИЙ KOHEЦ'                       
 CЧ PЯЧЗC
 HTЖ TK
 ПO KKД    ЗAПИCATЬ '341'
 ЦИKЛ KOДYП1(M16)
 CЧ T377
 HTЖ BCEEД
 И PЯЗC
 ПE OШKOД    HE BOCЬMИБИTOBЫЙ KOД                              
 CЧ PЯЗC
 CБP T377
 CДA 64+40
 ЗП PЯЗC    CИMBOЛ B KOДE YПП
 ПБ (M14)
ДK HOП
 CЛИA 2(M16)
 ПИHO OШKOД(M16)    CИMBOЛ 'Д' HE ПEPBЫЙ                       
------------------------*                          
 YИA -5(M16)    ДЛЯ ЗAПИCИ 5 ШTYK '342'                        
 YИA ДK1(M13)    ДЛЯ BOЗBPATA B ЦИKЛ                           
ДK1 CЧ П342
 ЦИKЛ ЗCC(M16)    ЗAПИCЬ
 ЗП PЯЗC    ШECTOЙ ЗAПИШET BЫЗЫBABШИЙ                          
 ПБ (M14)
KKД HOП
 CЛИA 2(M16)
 ПИHO OШKOД(M16)    CИMBOЛ 'K' HE ПEPBЫЙ                       
 CЧ П341
 ЗП PЯЗC
 ПБ (M14)
*
*
*
BЫДOГЛ HOП
* BЫДAЧA OГЛABЛEHИЯ ПACПOPTOB
*  BXOДHЫE ЗHAЧEHИЯ:
*   TEKOПE - HAЧAЛЬHЫЙ ПACПOPT (1-16 PP.)                      
*   M6     - KOЛИЧECTBO BЫДABAEMЫX                             
*  BЫXOДHЫE ЗHAЧEHИЯ:
*   CM = 1 - БЫЛA XOTЯ БЫ OДHA BЫДAЧA                          
*   CM = 0 - BЫДAЧИ HE БЫЛO
*  ИCПOЛЬЗYЮTCЯ PAЯ22,PAЯ23
* BOЗBPAT ПO M15
*
 CЧИ M15
 ЗП PAЯ22
 CЧ
 ЗП PAЯ23    CЧETЧИK BЫДAЧИ
ЦBOГЛ HOП
 CЧ TEKOПE
 И E16E8
 ПE TПHET
 CЧ TEKOПE
 ПB ПИЩИ(M13)    AДPEC ПO ИMEHИ
 ПO TПHET    HET TAKOГO
 ПB ФOPOГЛ(M14)
 YИA БФBB(M1)
 YИA BЫДCBO(M14)    BOЗBPAT ПPИ "DEL"                          
 ПB BЫДШAГ(M13)
 CЧ E1
 ЗП PAЯ23    БЫЛA BЫДAЧA
TПHET HOП
 CЧ TEKOПE
 CЛЦ E1
 ЗП TEKOПE    ПEPEXOД K CЛEДYЮЩEMY                             
 ЦИKЛ ЦBOГЛ(M6)
 CЧ PAЯ23    KOД OTBETA
 MOД PAЯ22
 ПБ
*
*
*
ПPKA HOП
* ПPOBEPKA ПPABИЛЬHOCTИ ИMEHИ ПACПOPTA                         
*  BXOДHЫE ЗHAЧEHИЯ:
*   TEKOПE - ИMЯ ПACПOPTA (CT.PP.)                             
*  BЫXOДHЫE ЗHAЧEHИЯ:
*   CM =     0 - HET ИMEHИ
*        E16П1 - TOЛЬKO 'З'
*        E32П1 - TOЛЬKO ЦИФPA
*        E40П1 - ИMЯ BEPHO
*  BOЗBPAT ПO M13
*
 CЧ TEKOПE
 CДA 64+40
 HTЖ П377
 ПO (M13)    HИЧEГO HET
 HTЖ П377
 HTЖ TЗ
 ПE KAHOH    ПEPBЫЙ CИMBOЛ - HE 'З'                            
 CЧ TEKOПE
 CДA 64-8
 HTЖ E48П41
 ПO TOЛЗ   TOЛЬKO 'З'
 HTЖ E48П41
 ЗП TEKOПE
KAHOH HOП
 CЧ TEKOПE
 ПO (M13)
 CДA 64+32    B MЛAДШИE PAЗPЯДЫ
 ЗП TEKOПE
 CЧ TEKOПE
 И П377
 HTЖ П377
 ПO TOЛЦ    TOЛЬKO OДHA ЦИФPA
BEPHO HOП
 CЧ E40П1
 ПБ (M13)
TOЛЗ HOП
 CЧ П400
 ЗП TEKOПE    TAK HYЖHO
 CЧ E16П1
 ПБ (M13)
TOЛЦ HOП
 CЧ E32П1
 ПБ (M13)
*
*
*
POCП HOП
* POCПИCЬ CBOБOДHЫX ЯЧEEK
* B ЗOHAX CTAHДAPTHЫX ПACПOPTOB
*  BXOДHЫE ЗHAЧEHИЯ:
*   CM - AДPEC ПEPBOЙ CBOБOДHOЙ ЯЧEЙKИ                         
*  ИCПOЛЬЗYETCЯ M16
*  BOЗBTAP ПO M13
*
 YИ M16
 CЛИA -ПOЛE1-'3777'(M16)
POCП0 CЧ
 ЗП ПOЛE1+'3777'(M16)
 ЦИKЛ POCП0(M16)
 ПБ (M13)
*
*
*
* BЫДAET AДPEC ПEPBOЙ CBOБOДHOЙ ЯЧEЙKИ                         
* B ЗOHAX CTAHДAPTHЫX ПACПOPTOB
* BЫXOДHЫE ЗHAЧEHИЯ:*  CM      AДPEC CBOБOДHOЙ ЯЧEЙKИ          
*  CM = 0  BCE ЗAHЯTO
* BOЗBPAT ПO M14
*
*
ПEPCBO HOП
 YИA ПOЛE1(M16)
 YИA -'3777'(M17)
ЦИKПCB HOП
 CЧ (M16)
 ПO KOHПCB
 MOД (M16)
 CЛИA (M16)
 ЦИKЛ ЦИKПCB(M17)
 YИA ПOЛE1+'4000'(M16)
KOHПCB HOП
 CЧИ M16
 ПБ (M14)
*
*
*
* БЛOK BЫДAЧИ ДИAГHOCTИKИ
*  BXOД ПO COOTBETCTBYЮЩEЙ METKE                               
*  BЫXOД HA 'OCЦИKЛ'
*
ГЫH YИA TECTЬ(M1)
 ПБ OTBET
HИЧABO YИA THEBBE(M1)
 ПБ OTBET
HETMPБ YИA THYЖH(M1)
 ПБ OTBET
OШKOД YИA TOШKOД(M1)
 ПБ OTBET
HMECT YИA ЧTПACП(M13)
 ПB BЫДШA(M1)
THETM  TEKCT П'ДЛИHA > CBOБ'
       KOHД П'.00000'M32B'377'
OTBET YИA OCЦИKЛ(M13)
 ПБ BЫДШA
*
*
*
BЫЧДЛИ HOП
* BЫЧИCЛEHИE ДЛИHЫ MACCИBA B CTPOKAX И CЛOBAX                  
* BXOДHЫE ДAHHЫE:
*                MACCИB B 'PБПOЛE'                             
* BЫXOДHЫE ДAHHЫE:
*                ДCЛOB - ДЛИHA B CЛOBAX                        
*                ДCTPOK - ДЛИHA B CTPOKAX                      
* PAБOЧИE:
*         PAЯ41,M1,M2,M17
* BOЗBPAT ПO M16
 CЧИ
 ЗП ДCTPOK
 YИA -5(M2)     ДЛЯ BC
 YИA PБПOЛE(M1)
BЫЧДЛ1 ПB BC(M13)
 HTЖ П376
 ПO BЫЧДЛ2     HAШЛИ KOHEЦ TEKCTA                              
 HTЖ П376
 HTЖ П377
 ПE BЫЧДЛ1
*!  ЭTO COПЛЯ ДЛЯ ПYCTЫX CTPOK!!!                              
 CЧ (M1)
 CБP П377(M2)   MOДEЛИPYEM 'BC'
 HTЖ E48П41
 YИA BЫЧДЛ1(M13)   ДЛЯ BOЗBPATY
 ПO BC
*! A ЭTO KOHEЦ COПЛИ ДЛЯ ПYCTЫX CTPOK!!!                       
 CЧ ДCTPOK
 CЛЦ E1
 ЗП ДCTPOK
 ПБ BЫЧДЛ1
BЫЧДЛ2 CЛИA -PБПOЛE+1(M1)
 CЧИ M1
 ЗП ДCЛOB
 ПБ (M16)
*
*
PAЗДИP HOП
* БЛOK PAЗБOPA ДИPEKTИBЫ
* M1-AДPEC HAЧAЛA БYФEPA ПPИEMA
* TEKДИP-ПEPBЫE TPИ CИMBOЛA ДИPEKTИBЫ                          
* TEKOПE-OПEPAHД
* M2,M3,M4,M5-PAБOЧИE (ДЛЯ BC И ЗC)                            
* M6-CДBИГ
* BOЗBPAT ПO M15
 CЧ
 ЗП TEKДИP
 ЗП PЯЧЗC
 CЧ E48П41
 ЗП TEKOПE
 YИA -5(M2)
HEЗПPO HOП
 ПB BC(M13)
 ЗП PЯЗC
 HTЖ TПPOБ
 ПO HEЗПPO
 CЧ PЯЗC
 HTЖ П377
 ПO (M15)
 YИA 2(M5)
 YИA 24(M6)
ЗAПДИP HOП
 CЧ TEKДИP
 CДA 64-8
 ИЛИ PЯЗC
 ЗП TEKДИP
 CЛИA -8(M6)
ИЩИPAЗ HOП
 ПB BC(M13)
 ЗП PЯЗC
 HTЖ TПPOБ
 ПO YЖEOПE
 CЧ PЯЗC
 HTЖ П377
 ПO (M15)
 ПИO ИЩИPAЗ(M5)
 CЛИA -1(M5)
 ПБ ЗAПДИP
YЖEOПE HOП
------*                          
 YИA -5(M4)
 YИA TEKOПE(M3)
 YИA -8(M5)
 YИA ПДOETX(M14)
ПДOETX HOП
 CЧ PЯЧЗC
 HTЖ П377
 ПO (M15)
 ЦИKЛ ПC(M5)
 CЧ П377
 YИИ M13(M15)
 ПБ ЗCC
*
*
*
*
* ЗAПИCЬ CИMBOЛA
* BXOДHЫE ЗHAЧEHИЯ:
*   ДЛЯ ЗCC-CИMBOЛ HA CYMMATOPE
*   ДЛЯ ЗC-B 1-8 PP PЯЗC
*   M3-AДPEC БYФEPA (KYДA ПИCATЬ)                              
*   M4-HOMEP БAЙTA-6
* BOЗBPAT ПO M13
ЗC HOП
 CЧ PЯЗC
 ЗП PЯЧЗC
ЗCC HOП
 ЗП PЯЧЗC
 CЧ (M3)
 ИЛИ П377(M4)
 HTЖ П377(M4)
 ЗП (M3)
 CЧ PЯЧЗC
 CДA 64-40
 PЗБ П377(M4)
 ИЛИ (M3)
 ЗП (M3)
 MOДA (M13)
 ЦИKЛ (M4)
 CЛИA 1(M3)
 YИA -5(M4)
 CЧИ M3
 HTЖ KПOЛE1
 ПO AMЦX
 ПБ (M13)
*
*
*
* BЫБOP CИMBOЛA
* BXOДHЫE ЗHAЧEHИЯ:
*   M1-AДPEC HAЧAЛA БYФEPA
*   M2-HOMEP БAЙTA-6
* BЫXOДHЫE ЗHAЧEHИЯ:
* CM-BЫБPAHHЫЙ CИMBOЛ
* BOЗBPAT ПO M13
BC HOП
 CЧ (M1)
 CБP П377(M2)
 CДA 64+40
 MOДA (M13)
 ЦИKЛ (M2)
 CЛИA 1(M1)
 YИA -5(M2)
 ПБ (M13)
*
*
*
BCK HOП
* YCЛOЖHEHHЫЙ BAPИAHT 'BC'
* C KOHTPOЛEM BЫБИPAEMOГO CИMBOЛA                              
*  BXOДHЫE ЗHAЧEHИЯ:
*   M1,M2 - KAK ДЛЯ 'BC'
*   M17   - BЫXOД ПPИ BЫБOPKE ГPAHИЧHOГO CИMBOЛA               
*   M6 - BЫXOД ПPИ BЫБOPKE KOHEЧHOГO CИMBOЛA                   
*   PЯГBCK - KOHEЧHЫЙ CИMBOЛ
*   BЫБCK,BЫБCK+1... - ПPOПYCKAEMЫE CИMBOЛЫ                    
*   PЯBCK - ГPAHИЧHЫЙ CИMBOЛ
*  BЫXOДHЫE ЗHAЧEHИЯ:
*   AHAЛOГИЧHO 'BC'
*  ИCПOЛЬЗYЮTCЯ PAЯ41,PAЯ42,PAЯ33                              
*  BЫXOД ПO M13
*
 CЧИ M13
 ЗП PAЯ41    AДPEC BOЗBPATA
 CЧИ M16
 ЗП PAЯ42    HYЖHO BOCCTAHOBИTЬ
BЫБPOC YИA -ДЛИBCK(M16)
 ПB BC(M13)
 ЗП PAЯ33
 HTЖ PЯBCK    ГPAHИЧHЫЙ CИMBOЛ
 ПO (M17)    BЫXOД
 HTЖ PЯBCK
 BЧ PЯГBCK
 ПO BCГP
CИПPO CЧ BЫБCK+ДЛИBCK(M16)
 HTЖ PAЯ33
 ПO BЫБPOC
 ЦИKЛ CИПPO(M16)
 MOД PAЯ42
 YИA (M16)
 CЧ PAЯ33
 MOД PAЯ41
 ПБ
BCГP HOП
 MOД PAЯ42
 YИA (M16)
 CЧ PAЯ33
 ПБ (M6)
*
*
*
ПAKП HOП
* ПAKYET ПACПOPT
*  BXOДHЫE ЗHAЧEHИЯ:
*   PЯBCK - CИMBOЛ KOHЦA ПACПOPTA                              
*   BЫБCK+1 - BTOPOЙ BЫБPACЫBAEMЫЙ CИMBOЛ                      
*   M1,M2,M3,M4 - HACTPOEHЫ ДЛЯ 'BC' И 'ЗC'                    
*  ИCПOЛЬЗYЮTCЯ M16,M17
*  BЫXOД ПO M15
*
 YИA ФПAKП(M17)    ПEPEXOД ПPИ KOHЦE ПACПOPTA                  
 ПB ПCK(M14)    ПEPEПИCЬ C KOHTPOЛEM                           
 HTЖ THAДЧ
 ПE ПAKП    ПPOГOH ДO HAДЧEPKA
 ПB ПCK(M14)   ПEPEПИCAЛИ ПEPBЫЙ ПOCЛE HAДЧEPKA                
 HTЖ TE
 ПE ПAKП     ИЩEM 'E' ПOCЛE HAДЧEPKA                           
 CЧ TПPOБ
 ЗП BЫБCK    TEПEPЬ HYЖHO BЫБPACЫBATЬ ПPOБEЛЫ                  
ПAKП1 ПB ПCK(M14)
 HTЖ TA
 ПO ПAKПA    BBOД ПO ПPИЗHAKY 'A'                              
 HTЖ TA
 HTЖ TБ
 ПE ПAKП1    HE 'A' И HE 'Б'
 YИA -5(M16)   ШECTЬ CИMBOЛOB C KOHTPOЛEM '377'                
ПAKБ ПB ПC(M14)
 HTЖ PЯBCK
 ПO ФПAKП
 ЦИKЛ ПAKБ(M16)
 ПБ ПAKП1
ПAKПA HOП
 ПB ПCK(M14)
 BЧ П6
 ПO ПAKП1    ЭTO HE ЦИФPA < 6
 CЧ PЯЧЗC
 ПB BBOДA(M14)    BBOД ПO 'A'
 ПE ФПAKП    ДOБPAЛИCЬ ДO KOHЦA MACCИBA                        
 YИA ФПAKП(M17)    'BBOДA' ИCПOPTИЛ HAM M17                    
 YИA ПAKП1(M13)
 ПБ ЗC
ФПAKП HOП
 CЧ ЯЧPEЖ
 И E7
 ПE (M15)
 CЧИ M3    KOHEЦ ПACПOPTA
 BЧ HAЧПTE
 CЛ E1    HOBAЯ ДЛИHA
 ЗП ДЛИПTE
 MOД HAЧПTE
 CЧ
 И E48П33    OЧИCTИЛИ MECTO ДЛЯ HOBOЙ ДЛИHЫ                    
 ИЛИ ДЛИПTE
 MOД HAЧПTE
 ЗП
 CЧ П377
 YИИ M16(M3)    B M3 AДPEC,KYДA CEЙЧAC ЗAПИШYT                 
 ПB ЗCC(M13)   CИMBOЛ KOHЦA ПACПOPTA B ПOЛE1                   
 CЛИA 1(M16)
 CЧИ M16
 YИИ M13(M15)    AДPEC BOЗBPATA
 ПБ POCП
AMЦX HOП
 CЧ E1
 ПБ (M15)
*
*
*
YПAK HOП
* YПAKOBKA B ПOЛE1
*  BXOДHЫE ЗHAЧEHИЯ:
*   HAЧПTE - HAЧAЛO ПACПOPTA B ПOЛE1                           
*  ИCПOЛЬЗYETCЯ PAЯ21
*  BOЗBPAT ПO M13
*
 CЧИ M13
 ЗП PAЯ21   AДPEC BOЗBPATA
 CЧ П377
 ЗП PЯBCK     CИMBOЛ KOHЦA ПACПOPTA                            
 CЧ BCEEД
 ЗП BЫБCK
 ЗП BЫБCK+1   ПPOБEЛЫ BЫБPOCИT 'ПAKП'                          
 CЧ E16П1
 ЗП PЯГBCK
 MOД HAЧПTE
 YИA 1(M1)    ДЛЯ 'BC'
 YИA -5(M2)
 YИИ M3(M1)   ДЛЯ 'ЗC'
 YИИ M4(M2)
 ПB ПAKП(M15)    YПAKOBAЛИ
 MOД PAЯ21
 ПБ
*
*
*
ЗAПAK HOП
*
* YПAKOBKA ИЗ PБПOЛЯ B ПOЛE1
*  BXOДHЫE ЗHAЧEHИЯ:
*   CM - ИMЯ ПACПOPTA
*  ИCПOЛЬЗYЮTCЯ PAЯ1,PAЯ2
*  BЫXOД ПO M13
*
 ЗП PAЯ2
 CЧИ M13
 ЗП PAЯ1    AДPEC BOЗBPATA
 CЧ PAЯ2
 ПB ПИЩИ(M13)
 ПB CБPOC(M13)
 ЗП HAЧПTE
 YИ M16
 YИA PБПOЛE+1(M1)   ДЛЯ 'BC'
 YИA -5(M2)
 MOДA (M16)
 YИA 1(M3)    ДЛЯ 'ЗC'
 YИИ M4(M2)
 CЧ PAЯ2
 CДA 64-32
 ЗП -1(M3)   B ПOЛE1
 CЧ П376
 ЗП PЯBCK    CИMBOЛ KOHЦA PACПAKOBAHHOГO MACCИBA               
 CЧ П377
 ЗП BЫБCK   TAM ПOTOM БYДET ПPOБEЛ                             
 ЗП BЫБCK+1    CИMBOЛЫ KOHЦA CTPOK BЫБPACЫBAEM                 
 CЧ E16П1
 ЗП PЯГBCK
YЖEOПE HOП
------*                          
 ПB ПAKП(M15)    YПAKOBAЛИ ИЗ PБПOЛЯ B ПOЛE1                   
 MOД PAЯ1
 ПБ 0  BOЗBPAT
*
*
*
ПCK HOП
 YИA ПC1(M13)
 ПБ BCK
ПC HOП
 ПB BC(M13)
ПC1 HOП
 ПB ЗCC(M13)
 CЧ PЯЧЗC
 ПБ (M14)
*
*
*
*    ДИPEKTИBA ' Ч И T ' (CAMAЯ KOPOTKAЯ)                      
*----------------------------------------                      
*
ЧИT HOП
 CЧ
 ЗП ЯЧPEЖ     HET ДOCTYПA K PБПOЛЮ                             
 YИA TECTЬ(M1)
 ПB BЫДШA(M13)
 ПБ ЧTПACП     ЧИTAEM ЗOHЫ ПO-HOBOЙ                            
*
*
*
*-------------------------------------*                        
**                        
**                        
*      *-----------------------*      *                        
*      *  ДИPEKTИBA " Д A Й "  *      *                        
*      *-----------------------*      *                        
**                        
**                        
*-------------------------------------*                        
*
*
*
ДAЙ HOП
 ПB ПPKA(M13)    ПPOBEPИM OПEPAHД                              
 HTЖ E40П1
 ПE OШПAP    ПЛOXOE ИMЯ - HE ДAM                               
 CЧ TEKOПE
 ПB ПИЩИ(M13)    ДAЙ AДPEC HAЧAЛA                              
 ПO HИЧABO    HET TAKOГO
 ПB CБPOC(M13)    CБPOCИM B KOHEЦ                              
 ЗП HAЧПTE
 CЧ TEKOПE
 ЗП TEKПAC    ПACПOPT BЫБPAH
 MOД HAЧПTE
 CЧ
 И E15П1
 ЗП ДЛИПTE    ДЛИHA
 CЧ ЯЧPEЖ
 ИЛИ E1
 ЗП ЯЧPEЖ    ПPИЗHAK - ПACПOPT BЫБPAH                          
 ПB YПAK(M13)    YПAKOBAЛИ B ПOЛE1                             
 ПB PACПAK(M13)    PACПAKOBAЛИ ИЗ ПOЛE1 B PБПOЛE               
 ПO БEЗOШИ    XOPOШO PACПAKOBAЛCЯ                              
 YИA TOШBПT(M1)    OШИБKA B ПACПOPTE                           
 ПB BЫДШA(M13)
БEЗOШИ HOП
 CЧ ЯЧPEЖ
 ИЛИ E2    ПPИЗHAK - MACCИB B PБПOЛE                           
 ЗП ЯЧPEЖ
 И E8
 ПE ФY3
 ПБ ГЫH
*
*
*
PACПAK HOП
 CЧИ M13
 ЗП PAЯ21
 CЧ
 ЗП PAЯ22
 YИA -5(M2)
 YИA PБПOЛE+1(M3)    ДЛЯ БЛOKA ЗC                              
 YИA -5(M4)        ДЛЯ БЛOKA ЗC
 MOД HAЧПTE
 YИA 1(M1)
 CЧ -1(M1)           ПИШEM ПOЛE1-->PБПOЛE                      
 И E48П33
 ЗП -1(M3)
 CЧ -1(M1)          ИMЯ ПACПOPTA                               
 CДA 64-30
 PЗБ BCE7           PAЗOБPAЛИ ДЛИHY ( 3 ЦИФPЫ)                 
 ИЛИ OOПOOO
 ИЛИ -1(M3)
 ЗП -1(M3)          ДЛИHA
 CЧ П377
 ПB ЗCC(M13)
 CЧ П377
 ЗП PЯBCK
 ЗП BЫБCK+1
 CЧ TПPOБ
 ЗП BЫБCK
 YИA KOHДAЙ(M17)
ИЩИHAД HOП             OБPAБATЫBAEM HAЧAЛO                     
 ПB ПC(M14)
 HTЖ П377
 ПO KOHДAЙ
 HTЖ П377
 HTЖ THAДЧ
 ПE ИЩИHAД            KOHEЦ OДHOГO ПPEДЛOЖEHИЯ                 
 CЧ П377
 ПB ЗCC(M13)
 ПB BCK(M13)
 ЗП PЯЗC
 HTЖ TE
 YИA ИЩИHAД(M13)
 ПE ЗC        'ПACПOPT' CTПACП'A YЖE KOHЧИЛCЯ                  
ЦИKДAЙ HOП
 YИA -ДЛПДAЙ(M14)
 ПB ЗC(M13)
ИЩИYПP HOП
 CЧ ПEPДAЙ+ДЛПДAЙ(M14)   ПEPEKЛЮЧATEЛЬ ПO YПP. CИMBOЛAM        
 И П377
 HTЖ PЯЗC
 ПO ПEPДAЙ+ДЛПДAЙ(M14)   BCE,ЧTO ЗA CИMBOЛOM ДO HOBOГO         
 ЦИKЛ ИЩИYПP(M14)   OБPAБATЫBAET COOTBETCTBYЮЩИЙ БЛOK          
 CЧ TBOПP
 ПB ЗCC(M13)
 CЧ E1
 ЗП PAЯ22
 ПB BCK(M13)
 ЗП PЯЗC
 ПБ ЦИKДAЙ
ПPBOПP HOП
 ПB BCK(M13)
 ЗП PЯЗC
 ПБ ЦИKДAЙ
KOHДAЙ HOП
 CЧ П377
 ПB ЗCC(M13)   BPEMEHHO !!!
 CЧ П376
 ПB ЗCC(M13)     KOHEЦ.B PБПOЛE-ДBA '377'                      
 CЧ PAЯ22
 MOД PAЯ21
 ПБ
*
*
* БЛOKИ OБPAБOTKИ YПP.CИMBOЛOB : E,B,A,K,C,Ч.*                 
*
OБPE HOП
 CЧ TEKHЦ
 ЗП PAЯ23
OБPEKH HOП
 ПB BCK(M13)
 ЗП PЯЗC
 CЧ PAЯ23
 CДA 64-8
 ЗП PAЯ23
 CЧMP
 HTЖ PЯЗC
 YИA OБPEKH(M13)
 ПO ЗC
 CЧ П377
 ПB ЗCC(M13)
 ПБ ЦИKДAЙ
OБPB HOП
 CЧ TПPOБ
 ПB ЗCC(M13)
OБPAДB HOП
 ПB BCK(M13)
 ЗП PЯЗC
 BЧ П12
 YИA OБPAДB(M13)      YЖE HE ЦИФPA (ДEC. ИЛИ BOC.)             
 ПE ЗC
 CЧ П377
 ПB ЗCC(M13)       B KOHЦE-'377'                               
 ПБ ЦИKДAЙ
OБPБ HOП
 YИA -6(M16)       ДЛЯ ЦИKЛA
OБPCOБ HOП
 YИA OБPCOБ(M14)       ПИШEM ПOДPЯД 6 CИMBOЛOB                 
 ЦИKЛ ПC(M16)
 CЧ П377
 ПB ЗCC(M13)         B KOHЦE CTPOKИ-'377'                      
 ПB BCK(M13)
 ЗП PЯЗC
 ПБ ЦИKДAЙ
OБPA HOП
 ПB BCK(M13)       ПOTOM-OДHA ЦИФPA (0...5)                    
 ЗП PЯЗC
 BЧ П6
 ПO ЦИKДAЙ
 ПB ЗC(M13)
 CЧ П377
 ПB ЗCC(M13)
 CЧ PЯЗC
 ПB BBOДA(M14)
 CЧ П377
 YИA KOHДAЙ(M17)
 YИA ЦИKДAЙ(M13)
 ПБ ЗCC
OБPC HOП
 YИA -3(M15)    HE БOЛЬШE 4 ГPYПП ПO 4 ЦИФPЫ                   
 CЧ П12
 ЗП PЯГBCK
 YИA CYЖEOБ(M6)
OБPCOC HOП
 YИA -3(M16)
 CЧ TПPOБ
 ПB ЗCC(M13)      ПOCЛE 'C'-ПPOБEЛ                             
OБPC1 HOП
 ПB ПCK(M14)
 ЦИKЛ OБPC1(M16)
 ЦИKЛ OБPCOC(M15)
 ПB BC(M13)
CYЖEOБ HOП
 ЗП PЯЗC
 CЧ E16П1
 ЗП PЯГBCK
 CЧ П377
 YИA ЦИKДAЙ(M13)      B KOHЦE CTPOKИ-'377'                     
 ПБ ЗCC
*
*
OБPK HOП
 CЧ П12
 ЗП PЯГBCK
 YИA KOБPK(M6)
 CЧ TПPOБ
 ПB ЗCC(M13)       ПPOБEЛ
 ПB ПCK(M14)        ПEPEПИCAЛИ ИP                              
 ПB ПCK(M14)         (ДBE ЦИФPЫ)                               
 CЧ TПPOБ
 ПB ЗCC(M13)       ПOCЛE ИP-ПPOБEЛ                             
 ПB ПCK(M14)
 ЗП PЯЗC
 ПB ПCK(M14)     ЗAПИCAЛИ ПEPBЫE ДBE                           
 CЧ PЯЗC
 BЧ E2
 ПE KOPAДP        KOMAHДA KOPOTKOAДPECHAЯ                      
 CЧ TПPOБ
 ПB ЗCC(M13)      ДЛИHHOAДPECHAЯ-ДBE ЦИФPЫ И ПPOБEЛ            
 YИA ПИШAДP(M14)
------*                          
 ПБ ПCK          ПEPBAЯ ЦИФPA AДPECA                           
KOPAДP HOП
 ПB ПCK(M14)        EЩE OДHA ЦИФPA KOП'A                       
 CЧ TПPOБ
 ПB ЗCC(M13)        ПPOБEЛ ПOCЛE KOП                           
ПИШAДP HOП
 YИA -4(M16)        ДЛЯ ЦИKЛA
 YИA ПEPAДP(M14)    ДЛЯ BOЗBPATA B ЦИKЛ                        
ПEPAДP HOП
 ЦИKЛ ПCK(M16)
 ПБ OБPK     HA ЗAПИCЬ BTOPOЙ ПOЛOBИHKИ                        
KOБPK HOП
 ЗП PЯЗC
 CЧ E16П1
 ЗП PЯГBCK
 YИA ЦИKДAЙ(M13)
 ПБ ЗCC          B KOHЦE CTPOKИ-'377'                          
*
*
*
OБPЧ HOП
 CЧ TПPOБ
 ПB ЗCC(M13)        ПOCЛE 'Ч'-ПPOБEЛ                           
OБPCOЧ HOП
 ПB BCK(M13)
 ЗП PЯЗC
 BЧ П12
 YИA OБPCOЧ(M13)
 ПE ЗC         EЩE ЦИФPA
 YИA -4(M16)       ДЛЯ ЦИKЛA
 YИA OБPCOЧ(M13)    ДЛЯ БЛOKA 'ЗC'                             
ПOPAЗЧ HOП
 CЧ TДДEC(M16)     '+','-'...
 HTЖ PЯЗC
 ПO ЗC      HA ЗAПИCЬ
 ЦИKЛ ПOPAЗЧ(M16)
 CЧ П377
 ПB ЗCC(M13)        B KOHЦE CTPOKИ - '377'                     
 ПБ ЦИKДAЙ
*
*
*
ПEPДAЙ HOП         ПEPEKЛЮЧATEЛЬ ПO БЛOKAM                     
 ПБ OБPK
 KOHK П'K'         OБPAБOTKИ YПP. CИMBOЛOB                     
 ПБ OБPE
 KOHK П'E'
 ПБ OБPБ
 KOHK П'Б'
 ПБ OБPC
 KOHK П'C'
 ПБ OБPA
 KOHK П'A'
 ПБ OБPB
 KOHK П'B'
 ПБ OБPЧ
 KOHK П'Ч'
 ПБ KOHДAЙ
 KOHK B'377'
TBOПP ПБ ПPBOПP
 KOHK B'136'
ДЛПДAЙ ЭKB *-ПEPДAЙ-1
ПPИKOH HOП
 KOHД M40B'132'M32B'127'
 KOHД M40B'132'M32B'127'
 KOHД B'377'
 KOHД M40B'342'M32B'342'M24B'342'M16B'342'M8B'342'B'342'       
 KOHД B'377'
 KOHД M40B'342'M32B'342'M24B'342'M16B'342'M8B'342'B'342'       
*
*
*
*
*
*
*--------------------------------*                             
**                             
**                             
*     *--------------------*     *                             
*     *  MOHИTOP ДИPEKTИB  *     *                             
*     *--------------------*     *                             
**                             
**                             
*--------------------------------*                             
*
*
*
ПACП HOП
BXOД HOП
  CЧ ПPИГЛ
  ПB ЗAППAP(M15)
  YИA ПAPПAC(M11)
  ПB ДEKOД(M15)
 CЧ MД2053
 ПB ЗAXBAT(M13)
 YИA THOBEP(M1)
 ПB BЫДШA(M13)      ПPEДYПPEДИЛИ O CMEHE BEPCИИ                
 CЧ 0
 ЗП ПPИЗOC
 ЗП ЯЧPEЖ
 ПB Э50112(M13)
ЧTПACП HOП
 Э70 ИHФЧT1
 Э70 ИHФЧT2
 CЧ E16П1
 ЗП PЯГBCK
OCЦИKЛ HOП
 CЧ ПPИПAC
 ЗП БФBB
 YИA OCЦИKЛ(M15)
 YИA PAЗOП(M14)
 CЧ ЯЧPEЖ
 И П7
 ЗП ЯЧPEЖ
 И E3
 ПO ПPИEM
 HTЖ ЯЧPEЖ
 ЗП ЯЧPEЖ
 YИA OCЦИKЛ(M15)
 ПБ OШИБKA
PAЗOП HOП
 YИA БФBB(M1)
 ПB PAЗДИP(M15)
 YИA -KДИПAC(M1)
OПOЗH HOП
 CЧ ПKЛПAC+KДИПAC(M1)
 И E24П1
 CДA 64(M6)
 HTЖ TEKДИP
 ПO ПKЛПAC+KДИПAC(M1)
 ЦИKЛ OПOЗH(M1)
OШПAP HOП    OШИБKA B ДИPEKTИBE ИЛИ OПEPAHДE                   
 CЧ ЯЧPEЖ
 ИЛИ E3
 ЗП ЯЧPEЖ
 ПБ OCЦИKЛ
*
*
*
*
*
*
*----------------------------*
*    ДИPEKTИBA  ' O Г Л '    *
*----------------------------*
*
*
*
OГЛ HOП
 CЧ ЯЧPEЖ
 ИЛИ E2
 HTЖ E2    HET MACCИBA B PБПOЛE
 ЗП ЯЧPEЖ
 CЧ ПPИЗOC
 ПE БECK
 Э70 ИHФЧT3    CЧИTAЛИ ЗOHY KЛЮЧEЙ                             
БECK HOП
 ПB ПPKA(M13)     ПPOBEPИM OПEPAHД                             
 ПO OГЛBCE    HИЧEГO HET - BCE ПACПOPTA                        
 CДA 64+8
 ПO OШПAP    HEBEPHOE ИMЯ
 CДA 64+8
 ПO OГЛBCЦ    BЫДAEM ПACПOPTA '00'..'99'                       
 CДA 64+8
 ПO OГЛГPC    BЫДAEM ПACПOPTA 'ЗC...'                          
 CДA 64+8
 ПO OГЛЦИФ   'ЗN...'
 YИA (M6)
 ПB BЫДOГЛ(M15)   BЫДATЬ ПPO OДИH                              
 ПБ BЫДAЙ
OГЛГPC HOП
 YИA -'137'(M6)    'ЗC0'..'ЗC-137-'                            
 ПБ OГЛГP
OГЛЦИФ HOП
 YИA -'137'(M6)    'ЗN0'..'ЗN9'
 ПБ OГЛГP
OГЛГP HOП
 CЧ TEKOПE
 ИЛИ П377
 HTЖ П377
 ЗП TEKOПE
 YИA BЫДAЙ(M15)
 ПБ BЫДOГЛ
OГЛBCЦ HOП
 CЧ
 ЗП PAЯ33    CЧETЧИK BЫДAЧ
OГЛИЗB HOП
 YИA -9(M5)
OГЛBЦ1 HOП
 YИA -9(M6)
 ПB BЫДOГЛ(M15)
 ИЛИ PAЯ33    ПPИCOBOKYПИЛИ ПPИЗHAK BЫДAЧИ                     
 ЗП PAЯ33
 CЧ TEKOПE
 ИЛИ TПPOБ
 HTЖ TПPOБ   ПEPEXOД K HOBOЙ ГPYППE                            
 CЛЦ П400    =E9
 ЗП TEKOПE
 ЦИKЛ OГЛBЦ1(M5)
 CЧ PAЯ33
 ПБ BЫДAЙ
OГЛBCE HOП
 CЧ 0
 ЗП TEKOПE
 YИA 1(M6)
 ПB BЫДOГЛ(M15)    CHAЧAЛA - ГPYППY 'ЗC...'                    
BЫДAЙ HOП
 ПE BЫДCBO    YЖE ЧTO-TO BЫДABAЛИ                              
 YИA THEBBE(M1)
 ПB BЫДШA(M13)
BЫДCBO HOП
 YИA БФBB(M1)
 ПB ПEPCBO(M14)   AДPEC ПEPBOЙ CBOБOДHOЙ                       
 CЛИA -ПOЛE1(M16)
 CЧИ M16
 BЧOБ П4000
 CДA 64-36   KOЛИЧECTBO CBOБOДHЫX                              
 PЗБ BCE7
 ИЛИ TCBOБ+1
 ЗП БФBB+1
 CЧ TCBOБ
 ЗП БФBB
 YИA OCЦИKЛ(M13)    ДЛЯ BOЗBPATA                               
 ПБ BЫДШA
*
*
*
* ФOPMИPYET CTPOKY ДЛЯ OГЛ
*  BXOДHЫE ЗHAЧEHИЯ:
*   CM - AДPEC HAЧAЛA ПACПOPTA B ПOЛE1                         
*  BЫXOДHЫE ЗHAЧEHИЯ:
*   БФBB - ГOTOBAЯ K BЫДAЧE CTPOKA                             
*  ИCПOЛЬЗYЮTCЯ M15,M16,M17,ЧИC10                              
*  BOЗBPAT ПO M14
*
ФOPOГЛ HOП
 YИ M16
 CЧ (M16)
 CДA 64+24
 ИЛИ MACCTP
 ЗП БФBB
 CЧ (M16)           ДЛИHA ПACПOPTA                             
------*                          
 CДA 64-30
 PЗБ BCE7           PAЗOБPAЛИ 4 MЛAДШИE ЦИФPЫ                  
 ИЛИ MACCTP+1
 ЗП БФBB+1          ПPИФOPMИPOBAЛИ ДЛИHY                       
 CЧ ПPИЗOC
 ПE БEЗKЛ
 CЧ (M16)
 CДA 64+32
 YИA PБПOЛE+'1402'(M17)
 ЗП ЧИC10
HAЙKЛЮ HOП          ИЩEM KЛЮЧ ПO ПACПOPTY                      
 CЧ -'1376'(M17)
 HTЖ BCEEД
 ПO БEЗKЛ
 CЧ -'1377'(M17)
 HTЖ ЧИC10
 И E16П1
 ПO ECTKЛЮ          HAШЛИ
 CЛИA 1(M17)         HA KAЖДYЮ CИCTEMY - ДBA CЛOBA             
 ЦИKЛ HAЙKЛЮ(M17)
БEЗKЛ CЧ MACCTP+2
 ИЛИ E48П41+2
 ЗП БФBB+2
 ПБ (M14)
ECTKЛЮ HOП
 CЧ -'1400'(M17)
 CДA 64+32
 ИЛИ MACCTP+2
 ЗП БФBB+2            ПEPBЫE 3 CИMBOЛA KЛЮЧA                   
 CЧ -'1400'(M17)
 CДA 64-16
 ИЛИ MACCTP+3
 ЗП БФBB+3            OCTAЛЬHЫE CИMBOЛЫ                        
 CЧ -'1377'(M17)
 CДA 64+24    ДBA MЛAДШИX БAЙTA ПPOПAЛИ                        
 ПB П8П10(M15)    ЧИCЛO TEPMИHAЛOB - ДECЯTИЧHOE                
 CДA 64+8
 ПE ЭTOCДC    ДBYЗHAЧHOE ЧИCЛO
 CЧ ЧИC10    'П8П10' CЮДA ПИШET
 CДA 64-8
 ИЛИ TПPOБ    HOЛЬ CЛEBA HAM HE HYЖEH                          
 ЗП ЧИC10
ЭTOCДC HOП
 CЧ ЧИC10
 CДA 64-8
 ИЛИ MACCTP+4
 ЗП БФBB+4            ПPИФOPMИPOBAЛИ ЧИCЛO TEPMИHAЛOB          
 CЛИA -1(M17)
 CЧ 1(M17)
 ПE ECTШИФ
 CЧ E48П41
 ЗП БФBB+5    O CИCTEME БEЗ ШИФPA HE BЫДABATЬ                  
 ПБ (M14)
ECTШИФ HOП
 CЧ 1(M17)    ЗДECЬ - ШИФP CИCTEMЫ                             
 PЗБ BCEПPO
 ЗП БФBB+5
 CЧ 1(M17)
 CДA 64-24
 PЗБ BCEПPO           PAЗOБPAЛИ И                              
 ЗП БФBB+6            ПPИФOPMИPOBAЛИ                           
 CЧ E48П41
 ЗП БФBB+7
 ПБ (M14)             BCE CДEЛAHO. B БФBB-CTPOKA               
* MACKA CTPOKИ БЛOKA  ' Ф O P O Г Л  '                         
MACCTP HOП
 KOHД П' -З00-'
 KOHД П' (0000'
 KOHД П'B) "00'
 KOHД П'0000" '
 KOHД П'VT-00 '
*
*
*
BЫД HOП
 YИA OCЦИKЛ(M16)
 CЧИ M16
 ЗП BЫXBЫД
 ПB ДИBBO(M13)   ЗA ПAPAMETPAMИ
 YИ M16 KOД OTBETA - 0,1,2
 ПБ BЫД0(M16)
BЫД0 CЧ 0
 ЗП PЯЧBЫ1
BЫДП77 CЧ П777
 ЗП PЯЧBЫ2
ECПABЫ HOП
 YИA -1(M5)   ПOTOMY ЧTO HYMEPAЦИЯ C HYЛЯ                      
 YИA PБПOЛE(M1)
 YИA -5(M2)       ДЛЯ БЛOKA 'BC'                               
ЦИKBЫД HOП
 CЛИA 1(M5)   CЧETЧИK TEKYЩEЙ CTPOKИ                           
 YИA БФBB+1(M3)
 YИA -5(M4)       ДЛЯ БЛOKA 'ЗC'                               
 CЧИ M5
 ПB П8П10(M15)
 CДA 64-8      HOMEP CTPOKИ
 ИЛИ TПPOБ
 ЗП БФBB         B БФBB
ПИШCTP HOП
 ПB ПC(M14)    ПИШEM CTPOKY
 CЧ PЯЧЗC
 HTЖ П377
 ПE ПИШCTP     EЩE MOЖHO
 CЧ (M1)
 CБP П377(M2)     BЫБPAЛИ,KAK 'BC'                             
 CДA 64+40
 HTЖ П376
 ПO KOHBЫД     OПЯTЬ 'ETX'-KOHEЦ MACCИBA                       
 CЧИ M5
 HTЖ PЯЧBЫ1
 ПE ЦИKBЫД     HE ДOШЛИ ДO HИЖHEЙ ГPAHИЦЫ                      
 CЧИ M5
 HTЖ PЯЧBЫ2
 ПO KOHBЫД     ДOШЛИ ДO BEPXHEЙ ГPAHИЦЫ                        
 CЧ PЯЧBЫ1
 CЛ E1
 ЗП PЯЧBЫ1      HOMEP TPEБYEMOЙ CTPOKИ                         
 YИИ M15(M1)
 YИA БФBB(M1)
 YИA OCЦИKЛ(M14)      ПPИ 'DEL'-HA OCЦИKЛ                      
 ПB BЫДШAГ(M13)  BЫДATЬ CTPOKY
 YИИ M1(M15)
 ПБ ЦИKBЫД
KOHBЫД HOП
 YИA БФBB(M1)
 MOД BЫXBЫД           TUTAJ MIESZKA WYCHOD                     
 YИA (M13)            BЫДATЬ ПOCЛEДHЮЮ CTPOKY,                 
 ПБ BЫДШA             ПOTOM-BOЗBPAT                            
*
*
*
OTM HOП
 ПB ДИBBO(M13)    ЗA ПAPAMETPAMИ                               
 ПB BЫЧДЛИ(M16)   ЗA ДЛИHOЮ
 CЧ PAЯ1
 ПO OШПAP         ДИPEKTИBA БEЗ ПAPAMETPOB                     
 CЧ PAЯ41
 BЧOБ ДCTPOK
 ПE OШПAP         HET KAPT
 CЧ PAЯ1
 HTЖ E1
 ПE OTM8          ДBA ПAPAMETPA
 CЧ PAЯ41
 ЗП PAЯ42         N2 := N1
 ПБ OTM7
OTM8 HOП
 CЧ PAЯ42
 BЧOБ ДCTPOK
 ПO OTM7
 CЧ ДCTPOK
 ЗП PAЯ42         N2 := ДCTPOK
OTM7 HOП
OTM1 CЧ PAЯ41
 ПO OШПAP
OTM2 CЧИ
 BЧ PAЯ41
 YИ M16
 CЛИA 1(M16)
 YИA PБПOЛE(M1)
 YИA -5(M2)
OTM3 ПB BC(M13)
 HTЖ П377
 ПE OTM3
 ЦИKЛ OTM3(M16)
 YИИ M3(M1)
 YИИ M4(M2)
 CЧ PAЯ41
 BЧ PAЯ42
 YИ M16
OTM4 ПB BC(M13)
 HTЖ П377
 ПE OTM4
 ЦИKЛ OTM4(M16)
OTM5 ПB ПC(M14)
 HTЖ П376
 ПE OTM5
 CЧ ЯЧPEЖ
 И E4
 ПO OCЦИKЛ     PAБOTAET =OTM=, A HE =ЗAM=                      
 HTЖ ЯЧPEЖ
 ЗП ЯЧPEЖ
 CЧ PAЯ41
 BЧ E1        ПOTOMYЧTO BCTABKA ПEPEД                          
 ЗП PAЯ41     OПEPAHД ДИPEKTИBЫ
 YИA KYДBCT(M16)      ДЛЯ BOЗBPATA                             
 ПБ BЫЧДЛИ    ДЛИHA ИЗMEHЧИBA
*
*
*     ДИPEKTИBA  =  З  A  M  =
*
*
ЗAM HOП
 CЧ E4
 ИЛИ ЯЧPEЖ
 ЗП ЯЧPEЖ     PAБOTAET =ЗAM=
 ПБ OTM
*
*
*
*
*     ДИPEKTИBA  =  P E Д  =
*---------------------------
*
* PEAЛИЗYET BOЗMOЖHOCTЬ ПOЛYЭKPAHHOГO PEДAKTИPOBAHИЯ           
*
PEД HOП
 CЧ E5
 ИЛИ ЯЧPEЖ
 ЗП ЯЧPEЖ       PAБOTAET 'PEД'
 И E2
 ПO HETMPБ
 CЧ TПPBBД
 ЗП БФBB
 ПB BЫЧДЛИ(M16)
 YИA BЫXPEД(M15)
 ПB ПPИEM(M14)       SENDИ
 YИA БФBB(M1)
 YИA -5(M2)          ДЛЯ BC
 CЧИ M1
 ЗП PAЯ12
 CЧИ M2
 ЗП PAЯ13            SAVE REGISTERS                            
ДAЙHOM HOП           BЫБOP N CTP.                              
 MOД PAЯ12
 YИA (M1)
 MOД PAЯ13
 YИA (M2)            RESET REGISTERS                           
 CЧ
ЦИKHOM ЗП PAЯ41
 ПB BC(M13)
 ЗП PЯЗC
 BЧ П12
 ПO KOHHOM           HOMEP KOHЧИЛCЯ                            
*                          
 CЧ PAЯ41
 CДA 64-4
 ИЛИ PЯЗC
 ПБ ЦИKHOM           ПPOДOЛЖИM BЫБOP                           
KOHHOM HOП
 CЧ PЯЗC
 HTЖ П377
 ПO BЫXPEД
 HTЖ П377
 HTЖ TПPOБ
 ПE BЫXOШ            ПOCЛE N HE ПPOБEЛ-OШИБKA                  
 CЧИ M1
 ЗП PAЯ12
 CЧИ M2
 ЗП PAЯ13
 CЧ PAЯ41
 ПO BЫXOШ            N=0 - OШИБKA                              
 ПB ПX108(M15)
 ЗП PAЯ41
 ЗП PAЯ42            ПAPAMETPЫ ДЛЯ 'OTM'                       
 BЧOБ ДCTPOK
 ПE BЫXOШ            N > ДЛИHЫ ПACПOPTA - OШИБKA               
 CЧ ЯЧPEЖ
 ИЛИ E4
 ЗП ЯЧPEЖ            PAБOTAET 'ЗAM'                            
 ПБ OTM2
ПPИPEД HOП
 MOД PAЯ12
 YИA (M1)
 MOД PAЯ13
 YИA (M2)
 CЧ (M1)
 CБP (M2)            PSEUDO-BC
 HTЖ E48П41
 ПE ДOПИC1           EMPTY LINE
 CЧ ЯЧPEЖ
 HTЖ E5
 ЗП ЯЧPEЖ
 ПБ ДOДBИГ
BЫXOШ HOП
 CЧ П6
 ЗП ЯЧPEЖ             ERR.REPEAT-                              
 ПБ OCЦИKЛ
BЫXPEД HOП            HOPMAЛЬHЫЙ BЫXOД                         
 CЧ E2
 ЗП ЯЧPEЖ
 ПБ OCЦИKЛ
*
*
*   ДИPEKTИBA 'BCT'
*   ---------------
BCT HOП
 ПB ДИBBO(M13)
 ПB BЫЧДЛИ(M16)
 CЧ PAЯ1
 ПO OШПAP       HET ПAPAMETPOB
 HTЖ E1
 ПE OШПAP       MHOГO ПAPAMETPOB                               
 CЧ PAЯ41
 ПO OШПAP       ПEPEД HYЛEBOЙ HEЛЬЗЯ                           
 BЧ E1
 ЗП PAЯ41
 BЧOБ ДCTPOK
 ПE OШПAP       HET KAPT
*
*ИЩEM MECTO BCTABKИ
* PAЯ41-OПEPAHД ДИP-BЫ 'BCT'
* PAЯ42-CЧETЧИK KOHЦOB KAPT
KYДBCT HOП
 YИA -1(M10)
 YИA -5(M2)     ДЛЯ BC
 YИA PБПOЛE(M1)
KYДBC1 ПB BC(M13)
 HTЖ П377
 ПE KYДBC1
 CЛИA 1(M10)
 CЧИ M10
 HTЖ PAЯ41
 ПE KYДBC1
*HAШЛИ. <M1>=CЛOBO, <M2>=БAЙT-6
*KOHEЦ KYДBCT
*
*OTOДBИHYTЬ B KOHEЦ ЛИCTA
CKИHEM HOП
*M5 - OTKYДA
*M6 - KYДA
 CЧИ M1
 ЗП PAЯ41
 MOД ДCЛOB
 YИA PБПOЛE-1(M5)
 YИA PБПOЛE+'1777'(M6)
*ГPYБO
CKИH1 CЧИ M5
 HTЖ PAЯ41
 ПO CKИH2     ГPYБO CKИHYЛИ
 CЧ (M5)
 ЗП (M6)
 CЧИ
 ЗП (M5)
 CЛИA -1(M5)
 CЛИA -1(M6)
 ПO CKИH1
*TOЧHO
CKИH2 CЧ (M1)
 И E8П1(M2)
 ЗП (M6)
 CЧ E8П1(M2)
 HTЖ BCEEД
 И (M1)
 ЗП (M1)
*TOЧHO CKИHYЛИ
*ЗAПOMHИM OTKYДA БPATЬ ДOПИCЬ ДЛЯ BC                           
*PAЯ41 - CЛOBO
*PAЯ42 - БAЙT
 CЧИ M6
 ЗП PAЯ41
 CЧИ M2
 ЗП PAЯ42
*KOHEЦ CKИHEM*
*OБPAБOTKA И ДOПИCЬ TEKCTA
ДOПИCЬ HOП
 YИИ M3(M1)
 YИИ M4(M2)
*ПPИMEM BCTABKY
ПPИMEM HOП
 CЧ ЯЧPEЖ
 И E5
 ПE ПPИPEД     PAБOTAET 'PEД'
 CЧИ M3
 ЗП PAЯ22
 CЧИ M4
 ЗП PAЯ23
 YИA ДOПИC2(M15)
 CЧ TПPBBД
 ЗП БФBB
 ПB ПPИEM(M14)
 MOД PAЯ22     ИX ЗAГAДИЛ, A MЫ
 YИA (M3)      ИX OБPATHO
 MOД PAЯ23     BOCCTAHOBИM
 YИA (M4)
*KOHEЦ ПPИMEM
 YИA БФBB(M1)
 YИA -5(M2)
ДOПИC1 ПB BC(M13)
 ЗП PЯЗC
 HTЖ COПKOД
 ПE ДOПИC3
 ПB KOДYПП(M14)
ДOПИC3 HOП
 CЧ PЯЗC
 HTЖ П377
 ПE ДOПИC5
 CЧ ЯЧPEЖ
 ИЛИ E6
 ЗП ЯЧPEЖ
ДOПИC5 CЧ PЯЗC
 HTЖ П214
 ПE ДOПИC4
 CЧ П377
 ЗП PЯЗC
ДOПИC4 HOП
 ПB ЗC(M13)
 CЧ П377
 HTЖ PЯЗC
 ПE ДOПИC1
 CЧ ЯЧPEЖ
 И E5
 ПO ПPИMEM      ДOПИCЬ OДHOЙ KAPTЫ CДEЛAHA                     
 CЧИ M1
 ЗП PAЯ12
 CЧИ M2
 ЗП PAЯ13   SAVE REGS
ДOПИC2 HOП     ГOTOBИM ДOДBИГ CKИHYTOГO                        
*COБCTBEHHO, BCE YЖE ГOTOBO
*KOHEЦ ДOПИCЬ
*
*ПPИДBИHYTЬ TO, ЧTO CKИДЫBAЛИ
ДOДBИГ HOП
 MOД PAЯ41
 YИA (M1)
 MOД PAЯ42
 YИA (M2)
ДOДB1 CЧИ M1
 ЗП PAЯ41
 YИA PБПOЛE+'2000'(M6)
 CЧИ M6
 HTЖ PAЯ41
 ПE ДOДB2
 CЧ ЯЧPEЖ
 И П60
 HTЖ E5
 ПO ДAЙHOM     TO THE NEXT LINE
 ПБ OCЦИKЛ     'BCT' KOHЧИЛA
ДOДB2 ПB BC(M13)
 ЗП PЯЗC
 YИA ДOДB1(M13)
 ПБ ЗC
*KOHEЦ ДOДBИГ
*
*
*
*
*     +----------------------------+                           
*     I ДИPEKTИBA   =  B  C  E  =  I                           
*     +----------------------------+                           
*
*
*
*
BCE HOП     BЫДAЧA BCEX ПACПOPTOB B HEPACПAKOBAHHOM BИДE       
 CЧ ЯЧPEЖ
 ИЛИ E2
 HTЖ E2
 ЗП ЯЧPEЖ   TPETИЙ YPOBEHЬ БYДET ИCПOPЧEH                      
 YИA ПOЛE1(M15)    HAЧAЛO ПEPBOГO ПACПOPTA                     
ЦИKBCE HOП
 YИA E48П41(M1)
 ПB BЫДШAГ(M13)
 CЧ (M15)
 ПO BЫДCBO  BCE,YXOДИM
 HTЖ BCEEД
 CЛЦ E1     CM:=(-ДЛИHA ПACПOPTA)                              
 YИ M1      ДЛЯ ЦИKЛA
 MOД (M15)
 YИA (M2)   ДЛИHA ПACПOPTA
 CЛИ M15(M2)
ПEPПИC HOП
 MOДA (M15)
 CЧ (M1)
 MOДA PБПOЛE(M2)
 ЗП (M1)    <ПOЛE1> =-> PБПOЛE
 ЦИKЛ ПEPПИC(M1)
 CЧ PБПOЛE
 И E48П33
 ЗП PБПOЛE
 CЧ BCEПPO
 CДA 64+16
 ИЛИ PБПOЛE
 ЗП PБПOЛE
 YИA BЫДCBO(M14)        BOЗBPAT ПPИ <DEL>                      
 YИA PБПOЛE(M1)
 YИA ЦИKBCE(M13)        HOPMAЛЬHЫЙ BOЗBPAT                     
 ПБ BЫДШAГ
*
*
*
*
*
*
*-------------------------------------*                        
**                        
**                        
*      *-----------------------*      *                        
*      *  ДИPEKTИBA ' З A П '  *      *                        
 
*      *-----------------------*      *                        
**                        
**                        
*-------------------------------------*                        
*
*
*
ЗAП HOП
 ПB ПPKA(M13)
 ПE ЗAППPM    'ЗAП' C ПAPAMETPOM                               
 CЧ ЯЧPEЖ
 И E2
 ПO ЗAПЗOH     HET ПACПOPTA B PБПOЛE - HE CБPACЫBAEM           
 CЧ TEKПAC
 ПB ПИЩИ(M13)
 ПO ЗAПЗOH
 CЧ TEKПAC
 ПБ ЗAПЗAП
ЗAППPM HOП
 HTЖ E40П1
 ПE OШПAP    OШИБKA B ПAPAMETPE
 CЧ ЯЧPEЖ
 И E2
 ПO HETMPБ
 CЧ TEKOПE
 ПB ПИЩИ(M13)    ДAЙ AДPEC
 ПO HИЧABO
 ЗП HAЧПTE       HAЧAЛO HOBOГO TEKYЩEГO                        
 CЧ PБПOЛE
 И E32П1      OЧИCTИЛИ MECTO ДЛЯ ИMEHИ HOBOГO                  
 ЗП PБПOЛE
 CЧ TEKOПE
 CДA 64-32
 ИЛИ PБПOЛE
 ЗП PБПOЛE
 CЧ TEKOПE
 ЗП TEKПAC
ЗAПЗAП HOП
 ПB ЗAПAK(M13)    YПAKOBAЛИ B ПOЛE1                            
 ПO ЗAПЗOH    ПOMECTИЛCЯ
 CЧ E2
 ЗП ЯЧPEЖ
 CЧ 0
 MOД HAЧПTE
 ЗП
 ПБ HMECT
ЗAПЗOH HOП
 CЧ MД2053
 Э50 '115'    ЗAXBAT
 CЧ MД2053
 ПB ДAЙЗП(M13)    YCTAHOBKA HA ЗAПИCЬ                          
 AIF (&Д2212 EQ 1).HEЗAП
 Э70 ИHФЗA1
 Э70 ИHФЗA2
.HEЗAП ANOP
 CЧ MД2053
 Э50 '116'    OCBOБOЖДEHИE
 ПБ ГЫH
*
*
*
*-----------------------*
*  ДИPEKTИBA ' И C K '  *
*-----------------------*
*
*
*
ИCK HOП
 ПB ПPKA(M13)    ПPOBEPИM,ЧTO ИCKЛЮЧAEM                        
 HTЖ E40П1
 ПE OШПAP    HYЖHO TOЛЬKO ПOЛHOE И ПPABИЛЬHOE                  
 CЧ TEKOПE
 ПB ПИЩИ(M13)   YЗHAEM AДPEC HAЧAЛA                            
 ПO HИЧABO    TAKOГO HETY
 ПB CБPOC(M13)    CБPOCИЛИ B KOHEЦ                             
 ПB POCП(M13)    ЗAPYБИЛИ
 CЧ TEKOПE
 HTЖ TEKПAC
 ПO ГЫH
 CЧ TEKПAC
 ПB ПИЩИ(M13)
 ЗП HAЧПTE
 ПБ ГЫH
*
*
HOB HOП
 ПB ПPKA(M13)
 HTЖ E40П1
 ПE OШПAP
 CЧ TEKOПE
 ПB ПИЩИ(M13)
 ПO ЗHOB    TAKOГO EЩE HE БЫЛO
 ПB CБPOC(M13)    OБHYЛЯЮT YЖE ИMEЮЩИЙCЯ                       
 ПB POCП(M13)    YHИЧTOЖИM ДЛЯ EДИHOOБPAЗИЯ                    
ЗHOB HOП
 ПB ПEPCBO(M14)  HAЧAЛO B ПEPBOЙ CBOБOДHOЙ                     
 BЧ KПOЛE1
 ПO HMECT    BCE ЗOHЫ ЗAHЯTЫ
 CЧ TEKOПE
 CДA 64-32
 ИЛИ E2
 ЗП (M16)    ЗДECЬ AДPEC,YCTAHOBЛEHHЫЙ 'ПEPCBO'                
 CЧ E48П41
 ЗП 1(M16)
 CЧ
 ЗП 2(M16)     ДAЛЬШE CBOБOДHO
 ПБ ГЫH
*
*
*
* Д И P E K T И B A   = H A Й =
*-------------------------------                               
*
* HA[Й] <OБPAЗ> (OБPAЗ HE БOЛEE 6-TИ CИMBOЛOB).*               
SZUKAJ NOP
 CЧ ЯЧPEЖ
 И E2
 ПO HETMPБ    NO OBJECT
 YИA (M10)   CЧETЧИK CИMBOЛOB OБPAЗA                           
 YИA -5(M2)   ЦИKЛ HA 6 CИMBOЛOB                               
 CЧ TEKOПE    OПEPAHД ДИPEKTИBЫ
SZLOOP CДA 64-8
 ЗП TEKOПE
 CЧMP 0       CИMBOЛ
 HTЖ П377
 ПO ГOTOBO
 HTЖ П377
 ИЛИ TEKOПE
 CЛИA 1(M10)
 ЦИKЛ SZLOOP(M2)
 ПБ ГOTOB1  BЫБPAHЫ ПEPBЫE 6 CИMBOЛOB OПEPAHДA                 
ГOTOBO CЧ TEKOПE
 CДA 64+8     <ETX> HE ПИШEM
ГOTOB1 ЗП TEKOПE  OБPAЗ ГOTOB
 ПИO OШПAP(M10) HET OБPAЗA - HEЧEГO ИCKATЬ                     
 CЧИ M10
 HTЖ BCEEД
 YИ M10
 CЛИA 2(M10)
* <M10> := - <M10> + 1 (ДЛЯ BЫБOPA OБPEЗAЮЩEЙ MACKИ)           
 CЧ TEKOПE
 И E8П1(M10)    OБPEЗAЛИ B ЗABИCИMOCTИ OT ЧИCЛA CИMB.          
 ЗП TEKOПE
* YCTAHOBKИ ДЛЯ ПOИCKA
 YИA (M5)      CЧETЧИK CTPOK
 YИA PБПOЛE(M1)  ДЛЯ 'BC'. ЗДECЬ - ИCCЛEДYEMЫЙ ПACПOPT         
 YИA -5(M2)      ДЛЯ HEГO ЖE
 CЧ TПPOБ
 ЗП BЫБCK
 ЗП BЫБCK+1       DELETE BLANCS
 CЧ П376
 ЗП PЯBCK         END-MARKING CHARACTER                        
 CЧ П777
 ЗП PЯГBCK        ORD(CHARACTER) < '777'                       
 YИA KHCKAH(M17) THE END OF SCANNING,WHEN CHAR('376') OCCURS   
 YИA '71000'(M3) WRITE HERE NUMBERS OF LINES TO DISPLAY        
 YИA -5(M4)      ДЛЯ 'ЗC'
 CЧ 0
 ЗП PAЯ12         ПЛЫBYЩИЙ OБPAЗ                               
 ЗП PЯЧЗC         NUMBER OF THE PREVIOUS LINE                  
SLOOP1 HOП       SEARCH - CYCLE
 CЧ PAЯ12
 CДA 64-8
 ЗП PAЯ12
 ПB BCK(M13)      ЗA OЧEPEДHЫM CИMBOЛOM                        
 HTЖ П377
 ПO CTPOKA        KOHЧИЛACЬ
 HTЖ П377
 ИЛИ PAЯ12
 И E8П1(M10)       PEЖЬ ПЛЫBYЩEГO ПO MACKE                     
 ЗП PAЯ12
 HTЖ TEKOПE
 ПO OБPECT        HAШЛИ
 ПБ SLOOP1        GO ON
* THE END OF THE LINE
CTPOKA HOП
 CЛИA 1(M5)
 CЧ
 ЗП PAЯ12
 ПБ SLOOP1        GO ON
* OБPAЗEЦ OБHAPYЖEH
OБPECT HOП
 CЧИ M5
 HTЖ PЯЧЗC
 ПO SLOOP1        NOT THE FIRST IN THIS LINE                   
 HTЖ PЯЧЗC
 ПB ЗCC(M13)      STORE THE NUMBER OF THE LINE                 
 ПБ SLOOP1        GO ON
* STOP SCANNING, THAT'S IT
KHCKAH HOП
 CЧ П377
 ПB ЗCC(M13)      END-MARK
 YИA '71000'(M1)
 YИA -5(M2)
 CЧИ M1
 ЗП BЫБCK
 CЧИ M2
 ЗП PAЯ33
BЫДHAЙ HOП
 MOД BЫБCK
 YИA (M1)
 MOД PAЯ33
 YИA (M2)
 ПB BC(M13)
 HTЖ П377
 ПO OCЦИKЛ        MY WORK IS DONE                              
 HTЖ П377
 ЗП PЯЧBЫ1
 ЗП PЯЧBЫ2
 YИA BЫДHAЙ(M16)
 CЧИ M16
 ЗП BЫXBЫД       TO RETURN
 CЧИ M1
 ЗП BЫБCK
 CЧИ M2
 ЗП PAЯ33
 ПБ ECПABЫ       DISPLAY AND RETURN                            
*
*
*
* Д И P E K T И B A   = Ф O P =
*------------------------------
 
*
* Ф[OP]  (БEЗ ПAPAMETPOB)
*    ПOPTЯTCЯ BTOPOЙ И TPETИЙ YPOBEHЬ                          
*
ФOP NOP
 CЧ TEKOПE
 HTЖ E48П41
 ПO ФY3
 CЧ ЯЧPEЖ
 ИЛИ E8
 ЗП ЯЧPEЖ
 ПБ ДAЙ
ФY3 CЧ TEKПAC
 CДA 64-32
 ИЛИ E48П41+2
 ЗП '70000'+65
 XTA ЯЧPEЖ
 AOX E7
 ATX ЯЧPEЖ
 AAX E2
 UZA HETMPБ
 VTM PБПOЛE(M1)
 CЧ PБПOЛE
 ЗП XPCTP
 XTA ПPHAД
 ATX (M1)
 VTM ПOЛEФ+1(M3)
 VTM -5(M2)
 MTJ M4(M2)
 XTA П376
 ATX PЯBCK
 XTA П377
 ATX BЫБCK
 ATX BЫБCK+1
 XTA E16П1
 ATX PЯГBCK
 VJM ПAKП(M15)
 MTJ M17(M3)
 ПB ЗAПЛAT(M15)
 VZM HCЛ(M4)
 UTM 1(M17)
HCЛ VTM 1(M12)
 VJM ФOPM(M15)
 XTA XPCTP
 ATX PБПOЛE
 UJ ЧTПACП
*
*
* Д И P E K T И B A   = Б O Б =
*------------------------------
*
* Б[OБ] <NБOБ>[ <ЗOHA>]
*
БOБ HOП
 YИA 40(M2)
 YИA БФBB(M3)
 YИA ПOBБOБ(M15)
 ПB CЧИT(M13)
 ЗП PAЯ1
 YИA 1(M16)
 ПB ПPOГOH(M14)
 ПO БEЗДEЛ
 ПB BBЧИC(M14)
БEЗДEЛ ИЛИ ИCЧT55
 BЧ П3
 ЗП ПPИЗOC
 CЧ PAЯ1
 ПB ЗAXBAT(M13)
 CЧ ПPИЗOC
 Э50 '112'
ДEЛTAП ПБ ЧTПACП
 Э55 '543'
*
*
*
*
************************************************               
**               
*     Д И A Л O Г O B A Я    C И C T E M A     *               
*                 C  E  P  П                   *               
**               
*----------------------------------------------*               
*  HEPEЗИДEHTHЫЙ MOДYЛЬ CEPП4.                 *               
*  PAЗДEЛ 'KЛЮЧ'. BEPCИЯ OT 14.11.82.          *               
************************************************               
*
*
*  ПPOГPAMMA ЗABEДEHИЯ KЛЮЧEЙ TEPMИHAЛЬHЫX CИCTEM.             
*  ПO ЭTИM ФYHKЦИЯM ЗAMEHЯET CTAPYЮ ПPOГPAMMY " З A П ".       
*  HAЧATA 22.10.82. ИCПOЛHИTEЛЬ ЯPOCЛABЦEB M.Ю. (ИTM И BT).    
*  ПOCЛEДHЯЯ ПPABKA BHECEHA 26.01.84.*                         
*
*
*
* KOHCTAHTЫ
* ---------
ШИФPЫ ЭKB '1400'
ПAPOЛИ ЭKB '1401'
CЛHTEP KOHД П' 00  П'
ППTEPM KOHД П'  TEPM'
CЛПACП KOHД П'ACП 00'
ПШИФPП KOHД П' ШИФP '
TKЛЮЧM KOHД M40П'*'M32B'170'M24B'377'                          
TEPM KOHД M8П'TEPM-'B'377'
TШИФP KOHД M8П'ШИФP-'B'377'
ЗAПШИФ KOHД П'ЗAПШИФ'
* ДEШИФPATOP ДИPEKTИB
* -------------------
*
TAБДИP HOП
 ПБ ПOK
 KOHK П'ПOK'
 ПБ YБP
 KOHK П'YБP'
 ПБ HOBKЛЮ
 KOHK П'HOB'
 ПБ ЗAПKЛЮ
 KOHK П'ЗAП'
 ПБ ЧИTKЛЮ
 KOHK П'ЧИT'
 ПБ OГЛKЛЮ
 KOHK П'OГЛ'
KДИKЛЮ ЭKB *-TAБДИP
*
*
* OБЩИE БЛOKИ
* -----------
*
YПOPЯД HOП
* БЛOK ПPИBOДИT ИHФOPMAЦИЮ,
* CЧИTAHHYЮ ИЗ ЗOHЫ KЛЮЧEЙ
* K KAHOHИЧECKOMY BИДY:
* CPEДИ KЛЮЧEЙ HE ДOЛЖHO БЫTЬ
* HYЛEBЫX CЛOB, A ПOCЛE ПOCЛEДHEГO                             
* KЛЮЧA ЗAПИCAH 'BCEEД'.
*   ИCПOЛЬЗOBAHЫ:
*     -M6,M7
*   BOЗBPAT ПO [M17]
*
 YИA PБПOЛE(M6)
 YИA (M7)
 YИA -'176'(M5)
YПOP1 CЛИA 2(M6)
 CЧ (M6)
 HTЖ BCEEД
 ПE YПOP2      HE BCEEД
 MOДA (M17)
 ПИO (M7)      BCEEД И '0' B M7:YXOД ИЗ БЛOKA                  
 ПБ YПOP3      BCEEД И HE '0' B M7                             
YПOP2 HTЖ BCEEД
 ПE YПOP4      HE BCEEД И HE '0': KЛЮЧ                         
 ПИHO KЦYПOP(M7)      '0' ИЩEM KЛЮЧ ИЛИ 'BCEEД'                
 YИИ M7(M6)      ПEPBЫЙ '0'
 ПБ KЦYПOP      ИЩEM KЛЮЧ ИЛИ 'BCEEД'                          
YПOP4 ПИHO YПOP3(M7)      HA ПEPEДBИЖKY KЛЮЧA                  
KЦYПOP ЦИKЛ YПOP1(M5)
 CЧ BCEEД
 ЗП (M7)
 ПБ (M17)      HYЛEЙ И 'BCEEДA' HET. ЗAПИCAЛИ 'BCEEД' И YШЛИ   
YПOP3 HOП
 CЧ (M6)
 ЗП (M7)
 CЧ 1(M6)
 ЗП 1(M7)
 CЧ ШИФPЫ(M6)
 ЗП ШИФPЫ(M7)
 CЧ ПAPOЛИ(M6)
 ЗП ПAPOЛИ(M7)
 CЧ 0
 ЗП (M6)
 ЗП 1(M6)
 ЗП ШИФPЫ(M6)
 ЗП ПAPOЛИ(M6)
 ПБ YПOPЯД      PEKYPCИЯ. PAБOTAEM ДAЛЬШE                      
*
*
*
ДAЙИMЯ HOП
* БЛOK ЗAHOCИT ИMЯ TEKYЩEГO
* KЛЮЧA B ЯЧEЙKY 'PAЯ41',ДOПOЛHИB                              
* EГO ДO ШECTИ CИMBOЛOB ПPOБEЛAMИ                              
* CПPABA. ECЛИ ИMЯ B KAЧECTBE OПEPAHДA                         
* ДИPEKTИBЫ HE ЗAДAHO, TO OHO ДOЗAПPAШИBAETCЯ                  
*   БЛOK ИCПOЛЬЗYET:
*     -M1,M2,M3,M4,M14,M15;
*     -ЯЧEЙKИ 'PЯЗC','TEKOПE'.
*   BOЗBPAT ПO [M12].
*
 CЧ TEKOПE
 HTЖ E48П41
 ПE ДAЙИM1      ИMЯ B OПEPAHДE ПPИKAЗA                         
 YИA ПOBT1(M15)
 CЧ TИMЯ
 ЗП БФBB
 ПB ПPИEM(M14)      ДOЗAПPOC ИMEHИ                             
 CЧ БФBB
 ЗП TEKOПE
ДAЙИM1 HOП
 YИA TEKOПE(M1)
 YИA PAЯ41(M3)
 YИA -5(M2)
 YИA -5(M4)      BXOДHЫE ЗHAЧEHИЯ ДЛЯ БЛOKOB 'BC' И 'ЗC'       
ДAЙИM2 ПB BC(M13)      ЦИKЛ ПEPEПИCИ ИЗ 'TEKOПE' ИЛИ 'BCEПPO' B
 ЗП PЯЗC
 HTЖ П377
 ПE ДAЙИM3      HE KOHEЦ KЛЮЧA
 YИA BCEПPO(M1)      ПEPEKЛЮЧEHИE HA ДOПOЛHEHИE ПPOБEЛAMИ      
 YИA -5(M2)      BMECTO <ETX> - ПPOБEЛ                         
 ПB BC(M13)
 ЗП PЯЗC
ДAЙИM3 ПB ЗC(M13)
 YИИ M5(M4)
 CЛИA 5(M5)
 ПИHO ДAЙИM2(M5)      ПEPEПИCЬ HE OKOHЧEHA                     
 ПБ (M12)      YXOД ИЗ БЛOKA
*
*
*
ПOK1 HOП
* БЛOK OCYЩECTBЛЯET ПOИCK KЛЮЧA C ЗAДAHHЫM                     
* ИMEHEM B 'PБПOЛE'. ECЛИ KЛЮЧ HAЙДEH, TO                      
* HA ЭKPAH BЫДAЮTCЯ CBEДEHИЯ O HEM, B ПPOTИBHOM                
* CЛYЧAE BЫДAETCЯ "HEBBE"
 
*   BXOДHЫE ЗHAЧEHИЯ:
*     -ИMЯ KЛЮЧA B ЯЧEЙKE 'PAЯ41'                              
*   ИCПOЛЬЗYЮTCЯ:
*     -M1,M10,M13,M15
*   BOЗBPAT:
*     -ПO [M12],ECЛИ KЛЮЧ HAЙДEH                               
*     -ПO [M11] B ПPOTИBHOM CЛYЧAE                             
*
 YИA PБПOЛE+2(M10)
ПOK2 CЧ (M10)
 YИA ЧTПACП(M13)
 HTЖ PAЯ41
 ПO ПOK3      KЛЮЧ HAЙДEH
 CЧ (M10)
 HTЖ BCEEД
 ПO ПOK4      BCE KЛЮЧИ ПPOCMOTPEHЫ                            
 CЛИA 2(M10)
 ПИO ПOK4(M10)      ПPOCMOTPEH ЦEЛЫЙ ЛИCT                      
 ПБ ПOK2      CMOTPИM ДAЛЬШE
ПOK4 YИA THEBBE(M1)
 CЧ PAЯ41
 HTЖ TEKHЦ
 ПO BЫДШAГ
 YИИ M13(M11)
 ПБ BЫДШAГ
ПOK3 CЧ (M10)
 ЗП БФBB
 CЧ 1(M10)
 CДA 64+24      HA CM ЧИCЛO TEPMИHAЛOB                         
 ПB П8П10(M15)
 CДA 64-24
 ИЛИ CЛHTEP
 ЗП БФBB+2
 CЧ ППTEPM
 ЗП БФBB+1
 CЧ 1(M10)
 И E16П1      HA CM ИMЯ CT.ПACПOPTA                            
 ИЛИ CЛПACП
 ЗП БФBB+3
 CЧ ШИФPЫ(M10)
 ПE ПOK5
 CЧ ETX
 ЗП БФBB+4
 ПБ BЫДATЬ
ПOK5 PЗБ BCEПPO
 ЗП БФBB+5
 CЧ ПШИФPП
 ЗП БФBB+4
 CЧ ШИФPЫ(M10)
 CДA 64-24
 PЗБ BCEПPO
 ЗП БФBB+6
 CЧ ETX
 ЗП БФBB+7
BЫДATЬ YИA БФBB(M1)
 YИA ПOBT1(M14)      BOЗBPAT ПPИ <DEL>                         
 YИИ M13(M12)
 ПБ BЫДШAГ
*
*
*
* CTAPTOBЫЙ БЛOK
* --------------
KЛЮЧ HOП
 CЧ ПPИГЛ
 ПB ЗAППAP(M15)      ЗAПPOC ПAPOЛЯ HA BXOД B БЛOK              
 YИA ПAPKЛЮ(M11)
 ПB ДEKOД(M15)
 CЧ MД2053
 ПB ЗAXBAT(M13)      ДOЗAKAЗ MД ЗAГPYЗKИ OC HA YCTPOЙCTBO '55' 
 ПB Э50112(M13)
ЧTЗ675 ЗП ЯЧPEЖ
 Э70 ИHФЧT3      ЧTEHИE ЗOHЫ KЛЮЧEЙ HA 'PБПOЛE'                
 CЧ PБПOЛE
 HTЖ ЗAПШИФ
 ПE NON
 ПB YПOPЯД(M17)      ПPИBEДEHИE ЗOHЫ K KAHOHИЧECKOMY BИДY      
*
*
*  MOHИTOP ДИPEKTИB
*  ----------------
ПOBT1 HOП
 CЧ TKЛЮЧM
 ЗП БФBB
 YИA HAЧ1(M15)
 ПB ПPИEM(M14)
ПOBTOP YИA БФBB(M1)
 ПB PAЗДИP(M15)
 YИA -KДИKЛЮ+1(M1)
ПEPEKЛ CЧ TAБДИP+KДИKЛЮ-1(M1)
 И E24П1
 CДA 64(M6)
 HTЖ TEKДИP
 ПO TAБДИP+KДИKЛЮ-1(M1)
 ЦИKЛ ПEPEKЛ(M1)
 YИA HAЧ1(M15)
 YИA ПOBTOP(M14)
 ПБ OШИБKA      TAKOЙ ДИPEKTИBЫ HET                            
*
*
*
* ДИPEKTИBA " П O K "
* -------------------
* BЫДAЧA HA ЭKPAH CBEДEHИЙ O KЛЮЧE                             
ПOK HOП
 ПB ДAЙИMЯ(M12)
 YИA ПOBT1(M11)
 YИИ M12(M11)
 ПБ ПOK1
*
*
*
* ДИPEKTИBA " O Г Л "
* -------------------
* BЫДAЧA HA ЭKPAH CBEДEHИЙ O BCEX KЛЮЧAX                       
OГЛKЛЮ HOП
 YИA PБПOЛE(M10)
OГЛKЛ1 CЛИA 2(M10)
 CЧ (M10)
 HTЖ BCEEД
 ПO ПOBT1      BCE BЫДAHO
 HTЖ BCEEД
 ЗП PAЯ41
 YИA OГЛKЛ1(M12)      ДЛЯ BOЗBPATA                             
 ПБ ПOK3
*
*
*
* ДИPEKTИBA " Ч И T "
* -------------------
* ПOBTOPHOE ЧTEHИE ЗOHЫ KЛЮЧEЙ
ЧИTKЛЮ HOП
 ПБ ЧTЗ675
*
*
*
* ДИPEKTИBA " Y Б P "
* -------------------
* YHИЧTOЖEHИE KЛЮЧA C ЗAДAHHЫM ИMEHEM                          
YБP HOП
 ПB ДAЙИMЯ(M12)
 YИA ПOBT1(M11)      ДЛЯ BOЗBPATA,ECЛИ HEBBE                   
 ПB ПOK1(M12)
 CЧ 0
 ЗП (M10)
 ЗП 1(M10)
 ЗП ШИФPЫ(M10)
 ЗП ПAPOЛИ(M10)
 ПB YПOPЯД(M17)
 CЧ TYБPAH
 ИЛИ П377
 ЗП БФBB
 YИA БФBB(M1)
 YИA ПOBT1(M13)
 ПБ BЫДШAГ
*
*
*
* ДИPEKTИBA " H O B "
* -------------------
* ЗABEДEHИE HOBOГO KЛЮЧA
HOBKЛЮ HOП
 ПB ДAЙИMЯ(M12)
 YИA HOB1(M11)
 ПB ПOK1(M12)
HOB1 CЧ PAЯ41
 ЗП (M10)
 CЧ
 ЗП 1(M10)
 ЗП ШИФPЫ(M10)
 ЗП ПAPOЛИ(M10)
 CЧ TEPM
 ЗП БФBB
 YИA YБP(M15)
 ПB ПPИEM(M14)      ЗA ЧИCЛOM TEPMИHAЛOB                       
HOB2 YИA БФBB(M3)
 YИA 40(M2)
 ПB CЧИT(M15)
 YИA (M16)
 ПB ПPOГOH(M14)
 ПB BBЧИC(M14)
 YИA YБP(M15)      YБPATЬ,ECЛИ HE BBOДЯT ЧИCЛO TEPMИHAЛOB      
 YИA HOB2(M14)
 ПO OШИБKA      ЧИCЛO TEPMИHAЛOB = 0                           
 ПB ПX108(M15)
 CДA 64-24
 ЗП 1(M10)
 CЧ ПPИПAC
 ЗП БФBB
 YИA YБP(M15)      YБPATЬ,ECЛИ HE BBOДЯT ПACПOPT               
 ПB ПPИEM(M14)
HOB3 CЧ БФBB
 И П377-3
 HTЖ П377-3
 YИA HOB3(M14)
 YИA YБP(M15)
 ПE OШИБKA      HE ЦИФPA
 CЧ БФBB
 CДA 64+32
 ИЛИ 1(M10)
 ЗП 1(M10)
 CДA 64+25
 ПO ДЛЯYПO    OДHOTEPMИHAЛЬHOЙ CИCTEME ШИФP HИ K ЧEMY          
 CЧ TШИФP
 ЗП БФBB
 YИA YБP(M15)      YБPATЬ,ECЛИ HE ДAЮT ШИФP                    
 ПB ПPИEM(M14)
HOB6 CЧ 0
 ЗП PAЯ42
 YИA -11(M5)      ДЛЯ ЦИKЛA
 YИA БФBB(M1)
 YИA -5(M2)      ДЛЯ БЛOKA 'BC'
HOBЦ ПB BC(M13)
 ЗП PЯЗC
 BЧOБ П12
 YИA HOB6(M14)
 YИA YБP(M15)
 ПE OШИБKA
 CЧ PAЯ42
 CДA 64-4
 ИЛИ PЯЗC
 ЗП PAЯ42
 ЦИKЛ HOBЦ(M5)
 CЧ PAЯ42
 ЗП ШИФPЫ(M10)
 CЧ ПPИГЛ
 ПB ЗAППAP(M15)
 ЗП БФBB
 HTЖ ETX
 ПE HOB7      ECTЬ ПAPOЛЬ
 CЧ 0
 ЗП БФBB
HOB7 YИA -5(M5)      ДЛЯ ЦИKЛA
 YИA БФBB(M1)
 YИA -5(M2)      ДЛЯ БЛOKA 'BC'
HOBЦ1 ПB BC(M13)
 BЧOБ П12
 ПE YБP
 ЦИKЛ HOBЦ1(M5)
 
 
 CЧ ШИФPЫ(M10)
 CДA 64-1
 HTЖ БФBB
 HTЖ (M10)
 HTЖ 1(M10)
ДЛЯYПO ЗП ПAPOЛИ(M10)
 ПB YПOPЯД(M17)
 YИA ПOBT1(M12)
 ПБ ПOK3
*
*
*
* ДИPEKTИBA " З A П "
* -------------------
* ЗAПИCЬ PAБOЧEГO ПOЛЯ B ЗOHY KЛЮЧEЙ                           
ЗAПKЛЮ HOП
 CЧ MД2053
 ПB ДAЙЗП(M13)      YCTAHOBKA HA ЗAПИCЬ                        
 YИA TECTЬ(M1)
 Э70 ИHФЗA3      ЗAПИCЬ
 YИA ПOBT1(M13)
 ПБ BЫДШA
NON HOП ИCПOPЧEHA ЗOHA KЛЮЧEЙ!!!                               
 YИA HAЧ1(M13)
 YИA HAЧ1(M14)
 ПB BЫДШAГ(M1)
 TEKCT П' ИCПOPЧEH KATAЛOГ KЛЮЧEЙ!'                            
 KOHД M40B'377'
*
*
*
ЗAПЛAT CЧ (M3)
 ИЛИ E8П1(M4)
 HTЖ E8П1(M4)
 ЗП (M3)
 CЧ BCEПPO
 И E8П1(M4)
 ИЛИ (M3)
 ЗП (M3)
 CЛИA 5(M4)
 ПБ (M15)
 ФИHИШ
*KOHEЦ ЧACTИ
CПOPTA                            
 ИЛИ CЛПACП
 ЗП БФBB+3
 CЧ ШИФPЫ(M10)
 ПE ПOK5
 CЧ ETX
 ЗП БФBB+4
 ПБ BЫДATЬ
ПOK5 PЗБ BCEПPO
 ЗП БФBB+5
 CЧ ПШИФPП
 ЗП БФBB+4
 CЧ ШИФPЫ(M10)
 CДA 64-24
 PЗБ BCEПPO
 ЗП БФBB+6
 CЧ ETX
 ЗП БФBB+7
BЫДATЬ YИA БФBB(M1)
 YИA ПOBT1(M14)      BOЗBPAT ПPИ <DEL>                         
 YИИ M13(M12)
 ПБ BЫДШAГ
*
*
*
* CTAPTOBЫЙ БЛOK
* --------------
KЛЮЧ HOП
 CЧ ПPИГЛ
 ПB ЗAППAP(M15)      ЗAПPOC ПAPOЛЯ HA BXOД B БЛOK              
 YИA ПAPKЛЮ(M11)
 ПB ДEKOД(M15)
 CЧ MД2053
 ПB ЗAXBAT(M13)      ДOЗAKAЗ MД ЗAГPYЗKИ OC HA YCTPOЙCTBO '55' 
 ПB Э50112(M13)
ЧTЗ675 ЗП ЯЧPEЖ
 Э70 ИHФЧT3      ЧTEHИE ЗOHЫ KЛЮЧEЙ HA 'PБПOЛE'                
 CЧ PБПOЛE
 HTЖ ЗAПШИФ
 ПE NON
 ПB YПOPЯД(M17)      ПPИBEДEHИE ЗOHЫ K KAHOHИЧECKOMY BИДY      
*
*
*  MOHИTOP ДИPEKTИB
*  ----------------
ПOBT1 HOП
 CЧ TKЛЮЧM
 ЗП БФBB
 YИA HAЧ1(M15)
 ПB ПPИEM(M14)
ПOBTOP YИA БФBB(M1)
 ПB PAЗДИP(M15)
 YИA -KДИKЛЮ+1(M1)
ПEPEKЛ CЧ TAБДИP+KДИKЛЮ-1(M1)
 И E24П1
 CДA 64(M6)
 HTЖ TEKДИP
 ПO TAБДИP+KДИKЛЮ-1(M1)
 ЦИKЛ ПEPEKЛ(M1)
 YИA HAЧ1(M15)
 YИA ПOBTOP(M14)
 ПБ OШИБKA      TAKOЙ ДИPEKTИBЫ HET                            
*
*
*
* ДИPEKTИBA " П O K "
* -------------------
* BЫДAЧA HA ЭKPAH CBEДEHИЙ O KЛЮЧE                             
ПOK HOП
 ПB ДAЙИMЯ(M12)
 YИA ПOBT1(M11)
 YИИ M12(M11)
 ПБ ПOK1
*
*
*
* ДИPEKTИBA " O Г Л "
* -------------------
* BЫДAЧA HA ЭKPAH CBEДEHИЙ O BCEX KЛЮЧAX                       
OГЛKЛЮ HOП
 YИA PБПOЛE(M10)
OГЛKЛ1 CЛИA 2(M10)
 CЧ (M10)
 HTЖ BCEEД
 ПO ПOBT1      BCE BЫДAHO
 HTЖ BCEEД
 ЗП PAЯ41
 YИA OГЛKЛ1(M12)      ДЛЯ BOЗBPATA                             
 ПБ ПOK3
*
*
*
* ДИPEKTИBA " Ч И T "
* -------------------
* ПOBTOPHOE ЧTEHИE ЗOHЫ KЛЮЧEЙ
ЧИTKЛЮ HOП
 ПБ ЧTЗ675
*
*
*
* ДИPEKTИBA " Y Б P "
* -------------------
* YHИЧTOЖEHИE KЛЮЧA C ЗAДAHHЫM ИMEHEM                          
YБP HOП
 ПB ДAЙИMЯ(M12)
 YИA ПOBT1(M11)      ДЛЯ BOЗBPATA,ECЛИ HEBBE                   
 ПB ПOK1(M12)
 CЧ 0
 ЗП (M10)
 ЗП 1(M10)
 ЗП ШИФPЫ(M10)
 ЗП ПAPOЛИ(M10)
 ПB YПOPЯД(M17)
 CЧ TYБPAH
 ИЛИ П377
 ЗП БФBB
 YИA БФBB(M1)
 YИA ПOBT1(M13)
 ПБ BЫДШAГ
*
*
*
* ДИPEKTИBA " H O B "
* -------------------
* ЗABEДEHИE HOBOГO KЛЮЧA
HOBKЛЮ HOП
 ПB ДAЙИMЯ(M12)
 YИA HOB1(M11)
 ПB ПOK1(M12)
HOB1 CЧ PAЯ41
 ЗП (M10)
 CЧ
 ЗП 1(M10)
 ЗП ШИФPЫ(M10)
 ЗП ПAPOЛИ(M10)
 CЧ TEPM
 ЗП БФBB
 YИA YБP(M15)
 ПB ПPИEM(M14)      ЗA ЧИCЛOM TEPMИHAЛOB                       
HOB2 YИA БФBB(M3)
 YИA 40(M2)
 ПB CЧИT(M15)
 YИA (M16)
 ПB ПPOГOH(M14)
 ПB BBЧИC(M14)
 YИA YБP(M15)      YБPATЬ,ECЛИ HE BBOДЯT ЧИCЛO TEPMИHAЛOB      
 YИA HOB2(M14)
 ПO OШИБKA      ЧИCЛO TEPMИHAЛOB = 0                           
 ПB ПX108(M15)
 CДA 64-24
 ЗП 1(M10)
 CЧ ПPИПAC
 ЗП БФBB
 YИA YБP(M15)      YБPATЬ,ECЛИ HE BBOДЯT ПACПOPT               
 ПB ПPИEM(M14)
HOB3 CЧ БФBB
 И П377-3
 HTЖ П377-3
 YИA HOB3(M14)
 YИA YБP(M15)
 ПE OШИБKA      HE ЦИФPA
 CЧ БФBB
 CДA 64+32
 ИЛИ 1(M10)
 ЗП 1(M10)
 CДA 64+25
 ПO ДЛЯYПO    OДHOTEPMИHAЛЬHOЙ CИCTEME ШИФP HИ K ЧEMY          
 CЧ TШИФP
 ЗП БФBB
 YИA YБP(M15)      YБPATЬ,ECЛИ HE ДAЮT ШИФP                    
 ПB ПPИEM(M14)
HOB6 CЧ 0
 ЗП PAЯ42
 YИA -11(M5)      ДЛЯ ЦИKЛA
 YИA БФBB(M1)
 YИA -5(M2)      ДЛЯ БЛOKA 'BC'
HOBЦ ПB BC(M13)
 ЗП PЯЗC
 BЧOБ П12
 YИA HOB6(M14)
 YИA YБP(M15)
 ПE OШИБKA
 CЧ PAЯ42
 CДA 64-4
 ИЛИ PЯЗC
 ЗП PAЯ42
 ЦИKЛ HOBЦ(M5)
 CЧ PAЯ42
 ЗП ШИФPЫ(M10)
 CЧ ПPИГЛ
 ПB ЗAППAP(M15)
 ЗП БФBB
 HTЖ ETX
 ПE HOB7      ECTЬ ПAPOЛЬ
 CЧ 0
 ЗП БФBB
HOB7 YИA -5(M5)      ДЛЯ ЦИKЛA
 YИA БФBB(M1)
 YИA -5(M2)      ДЛЯ БЛOKA 'BC'
HOBЦ1 ПB BC(M13)
 BЧOБ П12
 ПE YБP
 ЦИKЛ HOBЦ1(M5)
 
 
*CEPBИCHAЯ ПPOГPAMMA  ДЛЯ  PAБOTЫ C MOДYЛЯMИ ЗAГPYЗKИ          
*XPAHЯЩИMИCЯ HA MД
*BЫПOЛHЯET 6 ДИPEKTИB:
*  1) ПOИCK MOДYЛЯ,ГДE METKA OПИCAHA KAK BXOДHAЯ               
*  2) ПOИCK MOДYЛEЙ,ГДE ЗAПPAШИBAEMAЯ METKA ЯBЛЯETCЯ           
*     METKOЙ CBЯЗИ- BXOДHOЙ ИЛИ BHEШHEЙ                        
*  3) AHAЛOГ.2),HO ПOИCK BEДETCЯ ПO ЗAДABAEMЫM                 
*     C TEPMИHAЛA MOДYЛЯM
*  4) BЫДAЧA TAБЛИЦ METOK ИЗ ЗAПPAШИBAEMЫX MOДYЛEЙ             
*  5) BЫДAЧA TAБЛИЦ METOK ПO BCEM MOДYЛЯM                      
*  6) ПEЧATЬ PEЗYЛЬTATOB HA AЦПY                               
METKИ CTAPT '1000'
HAЧAЛO PЖA 3
 Э71 =B'-1'
 ЗП R
 HTЖ =U'0'
 ПO KOHEЦ
 CЧ R
 HEД
 ЗП R1
 CДA 64-12
 ЗП R
 ИЛИ ПPИEM
 ЗП ПPИEM
 CЧ R
 ИЛИ BЫД
 ЗП BЫД
 CЧ R1
 ИЛИ OПPOC
 ЗП OПPOC
 YИA BЫB(7)
*BЫBECKA O HAЧAЛE PAБOTЫ
 Э71 ПPИEM
 Э71 OПPOC
 И ПPO
 HTЖ ПPO
 ПO ABOCT
BBTOM CЧ ПPTOM     ЗAПPOC HOMEPA MД                            
 ЗП ПOЛE
 YИA ПOЛE(6)
 ПB BBДИP(13)
 CЧ ПOЛE
 CДA 64+24
 HTЖ =П'KHЦ'
 ПO KOHEЦ
 CЧ ПOЛE
 HTЖ ПPKHЦ
 ПE ДГ
 CЧ CTCЛ
 Э50 '131'    ЗAKAЗ MД 2113
 ЗП R
 HTЖ 0
 ПO ПOДГ
 ПB OШИБ(13)
 ПБ BBTOM
OШИБ YИA MДHET(7)
 CЧ R
 HTЖ EД
 ПO ПEЧOШ
 YИA MДЗAH(7)
 CЧ R
 HTЖ ДBA
 ПO ПEЧOШ
 YИA OШNMД(7)
ПEЧOШ Э71 ПPИEM
 Э71 OПPOC
 И ПPO
 HTЖ ПPO
 ПO ABOCT
 ПБ (13)
ДГ CЧ ПOЛE
 CДA 64+40
 BЧ X10           =Ф'10'
 ПO ЗAKOБЛ        BBEДEHO ИMЯ OБЛACTИ "APФЫ"                   
 CЧ ПOЛE
 CБP =M16X'0F0F0F0F'
 CДA 64+32
 ЗП TOM        HOMEP MД
ECTЬ HOП
 ИЛИ CЛOБM
 ЗП CЛOBOБ
 Э50 '131'
 ЗП R
 HTЖ 0
 ПO ДAЛH
 ПB OШИБ(13)
 ПБ BBTOM
****** ЗAKAЗ OБЛACTИ "APФЫ" ******                             
ЗAKOБЛ HOП
 CЧ 0
 HTЖ 0
 CЧ =П'KЛЮЧAP'
 Э63 ИC
 ЗП TOM           CCЫЛKA HA OБЛACTЬ                            
 CЧ =B'-1'
 ЗП ПOЛE
 CЧ TOM
 ПИO ECTЬ(14)     ЗAKAЗ ПPOШEЛ YCПEШHO                         
 CЧИ 14
 ЗП R
 ПB OШИБ(13)
 ПБ BBTOM
*
ДAЛH CЧ ПOЛE
 ЗП R1
 CЧ TOM
 Э50 '127'
 CДA 64-47
 HTЖ 0
 ПO БEЗПAP
 CЧ ПAPOЛЬ
 ЗП ПOЛE
 ПB BBДИP(13)    ЗAПPOC ПAPOЛЯ HA MД                           
 CЧ ПOЛE
 HTЖ ПPKHЦ
 ПO БEЗПAP
 CЧ ПOЛE
 CДA 64+16
 CБP MACKA
 CДA 64+36
 И =B'-1'M10B'3'
 ЗП R2           ПAPOЛЬ
 CЧ EД
 CДA 64-14
 CЛЦ R2
 YИ 13
 CЧ TOM
 Э50 '121'       ПOДTB. ПAPOЛЯ
БEЗПAP CЧ R1     ПAPOЛЯ HET
 CДA 64+8
 И KOH
 HTЖ KOH
 ПO ПOДГ
 CЧ ПOЛE+1
 CДA 64+16
 CБP MACKA
 CДA 64+36
 ЗП CДBЗ        ЧИCЛO ЗOH- CДBИГ ПO MД                         
 CЧ ПOЛE+1
 CДA 64+8
 И KOH
 HTЖ KOH
 ПO ПOДГ
 CЧ ПOЛE+2
 CДA 64+16
 CБP MACKA
 CДA 64+36
 ЗП З             ЗOHA C AДPECAMИ                              
 CЧ ЗOHA1
 И =B'-1'B'7777'  ГAШ. HOMEPA ЗOHЫ                             
 ИЛИ З
 ЗП R
 Э70 R
 CЧ ЗOHA2
 И =B'-1'B'7777'
 ИЛИ З
 CЛЦ EД
 ЗП R
 Э70 R       ЧT. ЗOH C AДPECAMИ
 ПБ ПPИKAЗ
ПOДГ Э70 ЗOHA1  C MД ЧИTAETCЯ ЗOHA C AДPECAMИ                  
 Э70 ЗOHA2
ПPИKAЗ YИA '74000'(1)
 CЧ MTPИ
 ЗП ФTAБЛ
 YИA OTBET(5)
 CЧИ
 ЗП CИГHAЛ
 ЗП BXOД
 ЗП CTPOK
 YИA ПOЛE(6)  BBOД ДИPEKTИBЫ C ПPИГЛAШEHИEM                    
 CЧ ПPИГЛ
 ЗП ПOЛE
 ПB BBДИP(13)
 ПБ ЧTO
***
BBДИP Э71 BЫД   ПPИEM  COOБЩEHИЯ                               
 Э71 OПPOC
 И ПPO
 HTЖ ПPO
 ПO ABOCT
 ПБ (13)
***
ЧTO CЧ ПOЛE
 HTЖ K
 ПO OTK
 CЧ ПOЛE
 CДA 64-8
 CЧMP
 HTЖ =П'K'
 ПE HEK
OTK Э72 OTKAЗ
 ПБ BBTOM
HEK CЧ ПOЛE
 ЗП ДИPEKT
 CЧ ПOЛE
 HTЖ BCE5
 ПE ДИP123
 CЧ MOДYЛЬ
 ЗП ПOЛE
 ПB BBДИP(13)   BBOД ИMEHИ MOДYЛЯ                              
 CЧ ПOЛE
 HTЖ ПPKHЦ
 ПO ДИP5
 CЧ ПOЛE
 ПB PACПAK(13)
 CЧ CЛOBO
 ЗП MOДYЛИ
 ПБ ДИP4
ДИP123 CЧ MET
 ЗП ПOЛE
 CЧ MET+1
 ЗП ПOЛE+1
 ПB BBДИP(13)   BBOД ИMEHИ METKИ                               
 CЧ ПOЛE
 ЗП ПOДOTB+1
 ЗП R
 ПB ИMЯ(13)
 CЧ ИMЯTP
 ЗП METKA1
 CЧ AЦПY
 ЗП ПOЛE
 YИA ПOЛE(6)
 ПB BBДИP(13)
 CЧ ПOЛE
 ЗП BЫДAЦ
 HTЖ ПPKHЦ
 ПO ПPИK
 ПB ЧEPTA(13)
 ПB ПPOCTP(13)
 YИA ПOДOTB(7)
 YИA ПOДOTB+1(6)
 Э64 ИHФ
 ПB ПPOCTP(13)
ПPИK CЧ ДИPEKT
 HTЖ O
 ПO ДИP1
 CЧ ДИPEKT
 HTЖ И
 ПO ДИP2
 CЧ ДИPEKT
 HTЖ ИM
 ПO ДИP3
 YИA OШДИP(7)
ДИAГH Э71 ПPИEM  HEBEP. ИMЯ ДИPEKTИBЫ                          
 Э71 OПPOC
 И ПPO
 HTЖ ПPO
 ПO ABOCT
 ПБ ПPИKAЗ
*****  ПOИCK METKИ B TBX И TBM ЗAДAHHЫX MOДYЛEЙ  *****         
ДИP3 YИA MOДYЛИ(6)
 YИA -21(2)
 CЧ ПPБEЛЫ
ПPЛ ЗП (6)
 CЛИA 1(6)
 ЦИKЛ ПPЛ(2)
 
 YИA -10(2)
 YИA MOДYЛИ(6)
BBOДM CЧ MOДYЛЬ
 ЗП (6)
 ПB BBДИP(13)  BBOД ИMEH MOДYЛEЙ                               
 CЧ (6)
 HTЖ ПPKHЦ
 ПO ПEMOД
 CЧ (6)
 ПB PACПAK(13)
 CЧ CЛOBO
 ЗП (6)
 CЛИA 2(6)
 ЦИKЛ BBOДM(2)
ПEMOД CЧ BЫДAЦ
 HTЖ ПPKHЦ
 ПO Ч3
 YИA -9(2)
 YИA MOДYЛИ+1(3)
 CЧ ПPБEЛЫ
ПP ЗП (3)
 CЛИA 2(3)
 ЦИKЛ ПP(2)
 YИA MOДYЛИ(7)
 YИA MOДYЛИ+10(6)
 Э64 ИHФ
 CЛИA 12(7)
 CЛИA 10(6)
 Э64 ИHФ
 ПB ПPOCTP(13)
Ч3 YИA MOДYЛИ(6)
 ПB AДP(13)
 YИA -10(2)
 ПБ ПEPEБP
CHOBA ПB AДPEC(13)
 YИA -10(2)
 YИA MOДYЛИ(6)
ПEPEБP CЧ (6)
 HTЖ ПPKHЦ
 ПO CHOBA
 CЧ (6)
 HTЖ (5)   ПOИCK AДPECOB HYЖHЫX MOДYЛEЙ                        
 ПO BЫЗOB
 CЛИA 2(6)
 ЦИKЛ ПEPEБP(2)
 YИA MOДYЛИ(6)
 ПБ CHOBA
BЫЗOB Э70 ЧTEH
 CЧИ 6
 ЗП I6
 ПB CЧT(13)
 ПИO *+1(9)
 ПB TBX(13)
 ПИO *+1(3)
 ПB TBM(13)
 CЧ I6
 YИ 6
 ПБ CHOBA
*****  ПOИCK METKИ B TBX И TBM BCEX MOДYЛEЙ  *****             
ДИP2 YИA MOДYЛИ(6)
 CЧ MOДYЛЬ
 ЗП (6)
 ПB BBДИP(13)
 CЧ (6)
 HTЖ ПPKHЦ
 ПO ДИPT2
 CЧ (6)
 ПB PACПAK(13)
 CЧ CЛOBO
 ЗП (6)
 ЗП R
 ПB ИMЯ(13)
 CЧ ИMЯTP
 ЗП 1(6)
ДИPT2 ПB AДP(13)
 ПБ ДP2
Д2 ПB AДPEC(13)
ДP2 Э70 ЧTEH
 ПB CЧT(13)
 ПИO *+1(9)
 ПB TBX(13)
 ПИO Д2(3)
 ПB TBM(13)
 ПБ Д2
*****  ПOИCK METKИ B TBX BCEX MOДYЛEЙ  *****                   
ДИP1 ПB AДP(13)
 ПБ ДP1
Д1 ПB AДPEC(13)
ДP1 Э70 ЧTEH
 ПB CЧT(13)
 ПИO ДИP1(9)
 ПB TBX(13)
 ПБ Д1
*****  BЫBOД HA AЦПY TBX И TBM ЗAДAHHЫX MOДYЛEЙ  *****         
ДИP4 ПB AДP(13)
 ПБ ДP4
Д4 ПB AДPEC(13)
ДP4 CЧ (5)
 HTЖ MOДYЛИ
 ПE Д4
 Э70 ЧTEH
 ПB CЧT(13)
 ПB BCEMET(13)
 ПБ ПPИKAЗ
*****  BЫBOД HA AЦПY TBX И TBM BCEX MOДYЛEЙ  *****             
ДИP5 ПB AДP(13)
 ПБ ДP5
Д5 ПB AДPEC(13)
ДP5 Э70 ЧTEH
 ПB CЧT(13)
 ПB BCEMET(13)
 YИA OTBET+13(5)
 ПБ Д5
*****
PACПAK ЗП R  YДAЛEHИE ПPИЗH. KOHЦA COOБЩEHИЙ ИЗ CЛOBA          
 CЧИ
 ЗП CЛOBO
 YИA -40(11)
 YИA -8(8)
 YИA -5(7)
PAC CЧ R
 CДA 64(8)
 CЧMP
 И KOH
 ЗП БYKBA
 HTЖ KOH
 ПO ДOПAK
 CЧ БYKBA
 CДA 64(11)
 ИЛИ CЛOBO
 ЗП CЛOBO
 CЛИA -8(8)
 CЛИA 8(11)
 ЦИKЛ PAC(7)
 ПБ (13)
ДOПAK CЧ ПPOБEЛ
 CДA 64(11)
 ИЛИ CЛOBO
 ЗП CЛOBO
 CЛИA 8(11)
 ЦИKЛ ДOПAK(7)
 ПБ (13)
*****
ИMЯ CЧИ
 ЗП ИMЯTP
 YИA -5(7)
 YИA -40(11)
PAЗБ CЧ R     ПEPEKOДИPOBKA  B KOД TPAHCЛЯTOPA                 
 CДA 64-8
 ЗП R
 CЧMP
 ЗП БYKBA
 HTЖ ПPOБEЛ
 ПO HE6
 CЧ БYKBA
 HTЖ KOH
 ПO HE6
 CЧ БYKBA
 CДA 64+4
 HTЖ HOЛЬ
 ПO ЦИФPA
 CЧ БYKBA
 И =X'F'
 YИ 10   ИP10-AДPEC БYKBЫ B TAБЛИЦE ПEPEKOДИPOBKИ              
 CЧ БYKBA
 CДA 64+4
 И =B'7'
 CДA 64-3
 YИ 8
 CЧ YППTR(10)
 CДA 64-16
 CДA 64(8)
 И =X'FF'
ДOФOPM CДA 64(11)
 ИЛИ ИMЯTP
 ЗП ИMЯTP
 CЛИA 8(11)
 ЦИKЛ PAЗБ(7)
 ПБ (13)
ЦИФPA CЧ X5
 CДA 64-4
 ИЛИ БYKBA
 ПБ ДOФOPM
HE6 CЧ TПPO
 CДA 64(11)
 ИЛИ ИMЯTP
 ЗП ИMЯTP
 CЛИA 8(11)
 ЦИKЛ HE6(7)
 ПБ (13)
*****  BЫБOP AДPECA ИЗ 1 ЗOHЫ  *****                           
AДP CЧ 1(1)
 ЗП (5)
 CЧ 2(1)
 ЗП R
 ПБ HAЧ
AДPEC YИA -5(2)
 CЧ (1)
 ЗП R
 YИA 0(3)
 YИA 48(6)
AД CЛИA -8(3)
 CЛИA -8(6)
 CЧ R
 CДA 64-8
 ЗП R
 CЧMP
 HTЖ HAДЧ  ИЩEM HAДЧEPK MДЛ -HAЧAЛO ЗAПИCИ O MOДYЛE            
 ПO ДA
 ЦИKЛ AД(2)
 CЛИA 1(1)
 ПБ AДPEC
ДA ПИHO ДA1(2)  HAШЛИ HAДЧEPK
 CЛИA 1(1)
 CЧ (1)
 ЗП R
ДA1 CЧ R
 CДA 64-8
 CЧMP
 ЗП R1
 HTЖ KH
 ПO KHЦ       KOHEЦ CПИCKA AДPECOB (1ЗOHA MД)                  
 CЧ R1
 HTЖ MДЛ
 ПE AД
 ПИO AДP(2)
HAД CЧ 1(1)   HAШЛИ ЗAПИCЬ O CЛEД. MOДYЛE                      
 CДA 64(3)
 ЗП R1
 CЧ 2(1)
 CДA 64(6)
 ИЛИ R1
 ЗП (5)       ИMЯ MOДYЛЯ
 CЧ 2(1)
 CДA 64(3)
 ЗП R1
 CЧ 3(1)
 CДA 64(6)
 ИЛИ R1
 ЗП R
HAЧ CЧ R
 CБP MACKA
 CДA 64+36
 CЛЦ CДBЗ
 ЗП З            AДPEC MOДYЛЯ- HOMEP ЗOHЫ                      
 ИЛИ ЛИCT2
 ЗП ЧTEH
 YИA '4000'(4)
 CЛИA 3(1)
 ПБ (13)
*****  PAБOTA C TEKCTOM MOДYЛЯ  *****                          
CЧT CЧ (4)
 HTЖ EД
 ПO ДAHHЫE
 CЛИA 1(4)
 ПБ CЧT
ДAHHЫE CЧ 5(4)    BЫБOP ДAHHЫX O MOДYЛE ИЗ ЗAГOЛOBKA           
 ЗП ЧБЛ
 CЛЦ EД
 YИ 2
 YИA 0(3)
ЯM CЛИA 12(3)
 
 
 CЛИA -1(2)
 ПИHO ЯM(2)
 CЧИ 3
 ЗП ЯЧMOД      ЧИCЛO ЯЧ.B TEЛE MOДYЛЯ                          
 CЧ 7(4)
 CДA 64+24
 YИ 2
 YИA 0(3)
ЯB CЛИA 12(3)
 CЛИA -1(2)
 ПИHO ЯB(2)
 CЧИ 3
 ЗП ЯЧBX     ЧИCЛO ЯЧ. B TBX
 CЧ 7(4)
 И =B'7777'
 ЗП R1       ЧИCЛO BXOДOB
 CЧ 8(4)
 И =B'77777'
 ЗП ЯЧBHE
 CЛЦ ЯЧBHE
 ЗП ЯЧBHE    ЧИCЛO ЯЧ. B TBM
 CЧИ
 ЗП ЧЗOH
 CЧ ЯЧMOД
 ЗП ДOБ
 BЧ ЛИCT
 ПE H1
MK CЧ ДOБ     BЫЧИCЛ. CДBИГ ПO MOДYЛЮ TAБЛИЦ METOK             
 BЧ ЛИCT
 ПE OБME
 CЧ ЧЗOH
 CЛЦ EД
 ЗП ЧЗOH
 CЧ ДOБ
 CЛЦ =B'4'
 ЗП ДOБ
 CЧ ДOБ
 BЧ ЛИCT
 ЗП ДOБ
 ПБ MK
OБME CЧ ЧTEH
 CЛЦ ЧЗOH
 ЗП ЧTEH
 Э70 ЧTEH
H1 CЧИ 4
 CЛЦ ДOБ
 YИ 4         YCT. ИP4 HA HAЧAЛO TBX                           
 CЧ ЯЧBX
 YИ 9
 CЧ ЯЧBHE
 YИ 3
 ПБ (13)
*****   П O И C K  M E T K И  B  T B X   *****                 
TBX CЧИ 13
 ЗП I13
 CЧ (4)
 HTЖ METKA1      ПOИCK METKИ B TBX                             
 ПE HEMET
 CЧ ДИPEKT
 HTЖ И
 ПE HAШЛИ
 CЧ MOДYЛИ
 HTЖ ПPKHЦ
 ПO HAШЛИ
 CЧ (5)
 HTЖ MOДYЛИ
 ПO HAШЛИ
HEMET CЛИA 2(4)
 CЛИA -2(9)
 ПИO HAЗAД(9)   KOHEЦ TBX
 CЧИ 4
 BЧ =B'5774'
 ПE TBX
 CЛИA 4(4)
 CЛИA -1024(4)
 CЧ ЧTEH
 CЛЦ EД
 ЗП ЧTEH
 Э70 ЧTEH
 ПБ TBX
HAШЛИ CЧ EД
 ЗП CИГHAЛ
 ЗП ПPИЗH
 CЧ BXOД
 CЛЦ EД
 ЗП BXOД
 CЧ (5)
 ЗП OПPEД+14
 CЧ BXOД
 HTЖ EД
 ПE CЛ
 CЧ (5)
 ЗП OПPEД+4
CЛ CЛИA 1(4)    ЗAПOMHИTЬ AДPEC METKИ ИЗ TBX                   
 CЧИ 4
 HTЖ =B'5774'
 ПE BЫБAДP
 CЧ ЧTEH      ECЛИ AДPEC B CЛEД. ЛИCTE                         
 CЛЦ EД
 ЗП ЧTEH
 Э70 ЧTEH
 YИA '4000'(4)
BЫБAДP CЧ (4)
 CДA 64-33
 PЗБ BЧ
 ИЛИ =M40П'-'     AДPEC BXOДA
 ЗП R
 ЗП OПPEД+18
 YИA OПPEД+10(7)
 YИA OПPEД+19(6)
 CЧ BXOД
 HTЖ EД
 ПE BЫBBX
 YИA OПPEД(7)
 YИA OПPEД+9(6)
 CЧ R
 ЗП OПPEД+8
BЫBBX ПB ПГ(13)
 CЧ BЫДAЦ
 HTЖ ПPKHЦ
 MOД I13
 ПO
 Э64 ИHФ
HAЗAД MOД I13
 ПБ
*****   П O И C K  M E T K И  B  T B M  *****                  
TBM YИA 1(12)  ИP12-HOMEP METKИ B TBM                          
 CЧ ЯЧBHE
 YИ 9
 CЧ 0
 ЗП ПPИЗH
 CЧИ 5
 CЛЦ ДBA
 ЗП AДB
 ПБ ЗИMЯ
BH CЛИA 1(4)
 CЧИ 4
 BЧ =B'5774'
 ПE ПPBH
 CЛИA -1020(4)
 CЧ ЧTEH    TAБЛИЦA B CЛEД. ЛИCTE                              
 CЛЦ EД
 ЗП ЧTEH
 Э70 ЧTEH
ПPBH CЧ (4)
 HTЖ METKA1   ПPOCMOTP TBM
 ПE HEHAЙД
 CЧ ДИPEKT
 HTЖ И
 ПE BCEM
 CЧ MOДYЛИ
 HTЖ ПPKHЦ
 ПO BCEM
 CЧ MOДYЛИ+1
 HTЖ R
 ПE HEHAЙД
BCEM CЧ (5)
 ЗП 4(5)
 CЛИA 2(5)
 CЧИ 12
 ЗП (5)
 CЧ 0
 ЗП 1(5)
 CЛИA 2(5)
 CЧ EД
 ЗП ПPИЗH
HEHAЙД CЛИA -2(9)
 CЛИA 1(12)
 ПИO ПOИCK(9)    KOHEЦ TBM-BHEШ. METOK БOЛЬШE HET              
 CЛИA 1(4)
ЗИMЯ CЧ (4)
 ЗП R
 CЧИ 4
 BЧ =B'5774'
 ПE BH
 CЧ ЧTEH
 CЛЦ EД
 ЗП ЧTEH
 Э70 ЧTEH       ПPOДOЛЖEHИE TBM B CЛEД. ЛИCTE                  
 CЛИA -1020(4)
 CЧ (4)
 ЗП R
 ПБ BH
*****  ПOИCK  METKИ  B  TEЛE  MOДYЛЯ  *****                    
ПOИCK CЧ ПPИЗH
 HTЖ EД
 ПE BOЗBP
 CЧ EД
 ЗП CИГHAЛ
 CЧ ПPKHЦ
 ЗП (5)
 ЗП 2(5)
 CЧ AДB
 YИ 5
CKOЛЬ YИA -3(8)  ПOИCK ПO HOMEPY B TBM                         
 CЧ ЧTEH
 И =B'7777'
 HTЖ З
 ПO HEЧИT
 CЧ ЛИCT2
 ИЛИ З
 ЗП ЧTEH
 Э70 ЧTEH
HEЧИT YИA '4014'(4)   ЛИCT TOT ЖE                              
БЫЛOЧT CЧ ЧБЛ
 YИ 2
 YИA 85(6)
БЛOKИ CЧ 11(4)    ПPOCMOTP MOДYЛЯ ПO БЛOKAM                    
 CДA 64-20
 ЗП R
 YИA -19(3)
ИHБЛ CЧ R      AHAЛИЗ ИHФOPMAЦИOHHЫX CЛOB БЛOKA                
 CДA 64-1
 ЗП R
 CЧMP
 HTЖ EД
 ПE ПPABAЯ
ЛKOM CЧ (4)    ПPOBEPKA ЛEBOЙ ПOЛOBИHЫ CЛOBA                   
 CДA 64+24     ECЛИ ECTЬ 1 B COOTBETCT. PAЗPЯДE ИHФ.CЛOBA      
 И HO
 HTЖ (5)
 ПE ПK
 CЧ 1(5)
 CЛЦ EД
 ЗП 1(5)
ПK CЛИA 4(5)
 CЧ (5)
 HTЖ ПPKHЦ
 ПE ЛKOM
 CЧ AДB
 YИ 5
ПPABAЯ CЛИA 1(3)
 CЧ R
 CДA 64-1
 ЗП R
 CЧMP
 HTЖ EД
 ПE ЛEBAЯ
ПPKOM CЧ (4)  ПPOBEPKA ПPAB. ПOЛOBИHЫ CЛOBA                    
 И HO
 HTЖ (5)
 ПE ЛK
 CЧ 1(5)
 CЛЦ EД
 ЗП 1(5)
ЛK CЛИA 4(5)
 CЧ (5)
 HTЖ ПPKHЦ
 ПE ПPKOM
 CЧ AДB
 YИ 5
ЛEBAЯ CЛИA 1(4)
 ЦИKЛ ИHБЛ(3)
 CЛИA 2(4)
 CЛИA -1(6)
 CЛИA -1(2)
 ПИO KЦ(2)
 ПИHO БЛOKИ(6)
 YИA 85(6)
 CЧ ЧTEH
 CЛЦ EД
 ЗП ЧTEH
 Э70 ЧTEH   ПEPEXOД HA CЛEД. ЛИCT MOДYЛЯ                       
 YИA '4000'(4)
 ПИHO БЛOKИ(2)
KЦ CЧ 1(5)     CK. PAЗ METKA ИCП. B MOДYЛE                     
 CДA 64-33
 PЗБ BЧ
 
 ЗП R
 HTЖ =U'0'
 ПE BИД
 CЧ =П'0     '
 ЗП R
 ПБ YПAK
BИД CЧ R   ЗAMEHA ЛEBЫX HYЛEЙ ПPOБEЛAMИ                        
 CДA 64-8
 CЧMP
 YИ 2
 ПИHO YПAK(2)
 CЧ R
 CДA 64-8
 ИЛИ ПPOБEЛ
 ЗП R
 ПБ BИД
YПAK CЧ R
 CДA 64+8
 ИЛИ =M40П'-'
 ЗП (5)
 CЧ ПPБEЛЫ
 ЗП 1(5)
 CЧ ДИPEKT
 HTЖ BCE5
 ПO HECДB
 CЧ HИЧTO
 ЗП -1(5)
HECДB CЛИA 4(5)
 CЧ (5)
 HTЖ ПPKHЦ
 ПO CДB
 CЧ ДИPEKT
 HTЖ BCE5
 ПO KЦ
CДB CЧ ФTAБЛ
 CЛЦ EД
 ЗП ФTAБЛ
 ПE CГ
 ПБ HECT
CГ CЧ CДBИГ
 ЗП -3(5)
 CЧ CTPOK
 CЛЦ EД
 ЗП CTPOK
 HTЖ =B'12'
 ПE HEBCE
 CЧ ПPKHЦ
 ЗП -3(5)
 CЧИ
 ЗП CTPOK
HEBCE CЧ MTPИ
 ЗП ФTAБЛ
HECT CЧ (5)
 HTЖ ПPKHЦ    HE BCE METKИ
 ПE KЦ
 CЛИA -2(5)
BOЗBP ПБ (13)
*****  BЫBOД  HA  AЦПY  TBX  И  TBM  MOДYЛЯ  *****             
BCEMET CЧИ 13
 ЗП I13
 CЧ EД
 ЗП ПPИЗH
 YИA MИHYCЫ+13(7)
 YИA -6(2)
 CЧ MИHYC  ЧEPTA ДЛЯ AЦПY
MC ЗП (7)
 CЛИA 1(7)
 ЦИKЛ MC(2)
 YИA MИHYCЫ(7)
 YИИ 6(7)
 CЛИA 19(6)
 Э64 ИHФ
 CЧ (5)
 ЗП ЗAГBCE+5  ЗAПИCЬ ИMEHИ MOДYЛЯ B ЗAГOЛOBOK TAБЛИЦЫ          
 YИA ЗAГBCE(7)
 YИA ЗAГBCE+5(6)
 Э64 ИHФ
 ПИO ФBHE(9)
 CЧ R1
 YИ 8                 ЧИCЛO BXOДOB                             
ПOДПEЧ YИA OTBET(5)
 YИИ 7(5)
ФBX ПB KOДTP(13)   ИЗ TBX
 CЧ CЛOBO
 ЗП (5)              ИMЯ BXOДA
 CЛИA 1(4)
 CЧИ 4
 HTЖ =B'5774'
 ПE ДAЛЬ
 ПB ЧTEHИE(13)
ДAЛЬ CЧ (4)
 CДA 64-33
 PЗБ BЧ
 ЗП 1(5)            AДPEC BXOДA
 CЛИA 2(5)
 CЛИA -2(9)
 CЛИA -1(8)
 ПИO YЖEПEЧ(8)
 CЛИA 1(4)
 CЧИ 4
 HTЖ =B'5774'
 ПE ФBX
 ПB ЧTEHИE(13)
 ПБ ФBX
YЖEПEЧ CЧ ПPKHЦ     ПEЧATЬ B AЛФ. ПOPЯДKE                      
 ЗП (5)
 YИA -4(8)
 YИA ПOЛEПЧ(2)
 YИИ 7(2)
 YИA ПOЛEПЧ+14(6)
 CЧ =X'20'          БYKBA A
 ЗП HAЧБYK
 ЗП БYKBA
 YИA 3(11)
ПPOBЗ YИA 16(10)
ПPOBBX YИA OTBET(5)
ИMBXOД CЧ (5)
 HTЖ ПPKHЦ
 ПO CЛБYK
 CЧ (5)
 CДA 64-8
 CЧMP
 HTЖ БYKBA
 ПO OЧBXOД
 CЛИA 2(5)
 ПБ ИMBXOД
CЛБYK CЛИA -1(10)   ПEPEБOP БYKB                               
 ПИO ДPYГБ(10)
 CЧ БYKBA
 CЛЦ EД
 ЗП БYKBA
 ПБ ПPOBBX
ДPYГБ CЛИA -1(11)
 ПИO BCEBX(11)
 CЧ EД
 CДA 64-4
 CЛЦ HAЧБYK
 ЗП HAЧБYK
 ЗП БYKBA
 ПБ ПPOBЗ
OЧBXOД CЧ (5)
 ЗП (2)
 CЧ 1(5)
 ИЛИ =M40П'-'
 ЗП 1(2)            ЗAПИCЬ B CTPOKY Д/ПEЧATИ                   
 CЧ ПPБEЛЫ
 ЗП 2(2)
 CЛИA 3(2)
 CЛИA 2(5)
 ЦИKЛ ИMBXOД(8)
 Э64 ИHФ           ПEЧATЬ OЧEPEД. CTPOKИ                       
 CЛИA -5(12)
 YИA -4(8)
 YИA ПOЛEПЧ(2)
 CЧ CTPOK
 CЛЦ EД
 ЗП CTPOK
 HTЖ =B'5'
 ПE ИMBXOД
 YИA ПOЛEПЧ+1(6)
 CЧ ПPБEЛЫ
 ЗП (6)
 ЗП (7)
 Э64 ИHФ
 YИA ПOЛEПЧ+14(6)
 CЧИ
 ЗП CTPOK
 ПБ ИMBXOД
BCEBX ПИO ПEПP(12)
 CЧ ПPKHЦ
 ЗП (2)
 ЗП 1(2)           ПEЧ. OCTATKA
 CЛИA 1(2)
 YИИ 6(2)
 Э64 ИHФ
ПEПP CЧ ПPБEЛЫ
 ЗП (7)
 ЗП 1(7)
 YИИ 6(7)
 CЛИA 1(6)
 Э64 ИHФ
ФBHE ПИO ПЬ(3)
ДOKH ПИO ПOДПE1(9)
 CЛИA 1(4)  HE OKOHЧ. ПOCЛEД. БЛOK TBX                         
 CЧИ 4
 HTЖ =B'5774'
 ПE TOTЖ
 ПB ЧTEHИE(13)
TOTЖ CЛИA -1(9)
 ПБ ДOKH
ПOДПE1 YИA OTBET(5)
 CЧ EД
 ЗП ЧИC
ФB CЛИA 1(4)  ИЗ TBM
 CЧИ 4
 HTЖ =B'5774'
 ПE ДЛ
 ПB ЧTEHИE(13)
ДЛ ПB KOДTP(13)
 CЧ CЛOBO
 ЗП (5)      ИMЯ MOДYЛЯ
 CЛИA 1(4)
 CЧИ 4
 HTЖ =B'5774'
 ПE ДЛШ
 ПB ЧTEHИE(13)
ДЛШ ПB KOДTP(13)
 CЧ CЛOBO
 ЗП 1(5)   ИMЯ METKИ
 CЧ ЧИC   ЗAПИCЬ HOMEPA METKИ B TBM                            
 ЗП 2(5)
 CЧ 0
 ЗП 3(5)
 CЛИA 4(5)
 CЧ ЧИC
 CЛЦ EД
 ЗП ЧИC
 CЛИA -2(3)
 ПИHO ФB(3)
ПOPAПE CЧ ПPKHЦ  ПEЧATЬ B AЛФ. ПOPЯДKE                         
 ЗП (5)
 ЗП 2(5)
 YИA OTBET+2(5)
 CЧИ 5
 ЗП AДB
 ПB CKOЛЬ(13)
 CЧ =X'20'
 ЗП HAЧБYK
 ЗП БYKBA
 YИA 3(11)
ПOДПP YИA 16(9)
ПOДПP1 YИA OTBET(5)
ИMMOД CЧ (5)
 HTЖ ПPKHЦ
 ПO CЛEДБK  KOHEЦ TBM ПOИCK MOДYЛEЙ HA CЛEД.БYKBY              
 CЧ (5)
 CДA 64-8
 CЧMP
 HTЖ БYKBA
 ПO OЧEPEД  HAШЛИ MOДYЛЬ HA OЧEPEДH. БYKBY                     
 CЛИA 4(5)
 ПБ ИMMOД
CЛEДБK CЛИA -1(9)
 ПИO ДPБYK(9)
 CЧ БYKBA
 CЛЦ EД
 ЗП БYKBA
 ПБ ПOДПP1
ДPБYK CЛИA -1(11)   ПEPEБOP БYKB                               
 ПИO ПЬ(11)
 CЧ EД
 CДA 64-4
 CЛЦ HAЧБYK
 ЗП HAЧБYK
 ЗП БYKBA
 ПБ ПOДПP
OЧEPEД CЧ (5)
 ЗП MOДYЛИ
 ЗП ПOЛEПЧ
 CЧ ПPБEЛЫ
 ЗП ПOЛEПЧ+1
 YИA ПOЛEПЧ(7)
 YИA ПOЛEПЧ+1(6)
 Э64 ИHФ
 CЧ MИHYCЫ
 
 ЗП ПOЛEПЧ
 CЧ ПPБEЛЫ
 ЗП ПOЛEПЧ+1
 Э64 ИHФ     ПEЧATЬ HAЗBAHИЯ MOДYЛЯ                            
HOBCTP YИA 7(10)
 YИA ПOЛEПЧ(12)
 YИИ 7(12)
ИMMET CЧ 1(5)       BЫБOP METOK
 ЗП (12)
 CЧ ПPБEЛЫ
 ЗП (5)
 CЛИA -1(10)
 CЧ 2(5)
 ЗП 1(12)
 CЛИA 4(5)
 CЛИA 2(12)
 ПИO ДЛЯПEЧ(10)
 CЧ ПPБEЛЫ
 ЗП (12)
 CЛИA 1(12)
 CЧ (5)
 HTЖ ПPKHЦ
 ПO ДЛЯПEЧ
ПPMДЛ CЧ (5)  ПOИCK B TBM METOK TOГO ЖE MOДYЛЯ                 
 HTЖ MOДYЛИ
 ПO ИMMET
 CЛИA 4(5)
 CЧ (5)
 HTЖ ПPKHЦ
 ПE ПPMДЛ
ДЛЯПEЧ CЧ (5)   ПEЧATЬ CTPOKИ ИЗ TBM                           
 HTЖ ПPKHЦ
 ПE ПEЧCTP
 CЧ =B'-7'
 ЗП ФTAБЛ
 CЧИ 10
 HTЖ =B'7'
 ПO ПЧПPБ
ПEЧCTP YИИ 6(12)
 CЛИA -1(6)
 Э64 ИHФ
 CЧ (5)
 HTЖ ПPKHЦ
 ПO ПЧПPБ
 YИA 7(10)
 YИA ПOЛEПЧ(12)
 ПБ ПPMДЛ
ПЧПPБ CЧ ПPБEЛЫ
 ЗП ПOЛEПЧ
 CЧ ПPБEЛЫ
 ЗП ПOЛEПЧ+1
 YИA ПOЛEПЧ+1(6)
 Э64 ИHФ
 ПБ ПOДПP1
ПЬ YИA MИHYCЫ(7)   ЧEPTA
 YИИ 6(7)
 CЛИA 19(6)
 Э64 ИHФ
 MOД I13
 ПБ
*****
ЧTEHИE CЧ ЧTEH
 CЛЦ EД
 ЗП ЧTEH
 Э70 ЧTEH
 YИA '4000'(4)
 ПБ (13)
*****
KOДTP CЧИ 0   ПEPEBOД ИЗ KOДA TPAHCЛЯTOPA B KOД ПEЧATИ         
 ЗП CЛOBO
 YИA -5(2)
 CЧ (4)
 ЗП R
 YИA -40(11)
ПEPEB CЧ R        PAЗБOP CЛOBA ПO БYKBAM                       
 CДA 64-8
 ЗП R
 CЧMP
 ЗП БYKBA
 HTЖ TПPO
 ПE ЦИФ
 CЧ ПPOБEЛ      ПEPEB. ПPOБEЛA
 ПБ ФБYK
ЦИФ CЧ БYKBA     ПEPEB.ЦИФPЫ
 И =M7B'1'
 ПE HEЦИФ
 CЧ БYKBA
 И =X'0F'
 ПБ ФБYK
HEЦИФ CЧ БYKBA    ПEPEB. БYKBЫ
 И TPИ
 ЗП R1
 CДA 64-3
 YИ 12
 CЧ БYKBA
 CДA 64+2
 И TPИ
 ЗП R1
 CЧ БYKBA
 CДA 64+6
 HTЖ TPИ
 ПE ПEPB
 CЧ R1
 CЛЦ =B'10'
 ЗП R1
ПEPB CЧ БYKBA
 CДA 64+4
 И EД
 ПO ФM10
 CЧ R1
 CЛЦ =B'4'
 ЗП R1
ФM10 CЧ R1
 YИ 10
 CЧ T0(10)
 CДA 64(12)
 И KOH
ФБYK CДA 64(11)
 ИЛИ CЛOBO ФOPMИP. CЛOBA B KOДE TPAHCЛЯTOPA                    
 ЗП CЛOBO
 CЛИA 8(11)
 ЦИKЛ ПEPEB(2)
 ПБ (13)
*****  BЫBOД PEЗYЛЬTATOB
KHЦ CЧ ДИPEKT
 HTЖ BCE5
 ПO ПPИKAЗ
 CЧ ДИPEKT
 HTЖ O
 ПO ПPИKAЗ
 CЧ ПPKHЦ
 ЗП (5)
 ЗП 1(5)
 CЧ CИГHAЛ
 HTЖ EД
 ПE ПYCT
 YИA ИCП(7)
 ПB ПГ(13)
 YИA OTBET(7)
 ПБ BЫДOTB
ПYCT YИA ПYCTO(7)  METKA HE HAЙДEHA                            
 ПB ПГ(13)
 ПБ ПPИKAЗ
ПГ Э71 ПPИEM  BЫДAЧA OTBETA HA TEPMИHAЛ                        
 Э71 OПPOC
 И ПPO
 HTЖ ПPO
 ПO ABOCT
 ПБ (13)
BЫДOTB ПB ПГ(13)
 CЛИA 120(7)
 CЧИ 5
 ЗП R
 CЧИ 7
 BЧ R
 ПO BЫДOП
 CЧ BOПPOC
 ЗП ПOЛE
 YИA ПOЛE(6)
 ПB BBДИP(13)
 CЧ ПOЛE
 HTЖ ПPKHЦ
 ПO BЫДOTB
BЫДOП CЧ BЫДAЦ
 HTЖ ПPKHЦ
 ПO ПPИKAЗ
Д12 YИA ИCП(7)  ЗAГOЛOBOK
 YИA ИCП+3(6)
 Э64 ИHФ
 YИA OTBET(7)
 YИИ 6(7)
ПOBT YИA 1(3)
ПPOB CЧ (6)
 HTЖ ПPKHЦ
 ПE HETO
 CЧ 1(6)
 HTЖ ПPKHЦ
 ПO ДПEЧ
 ПБ ЗAБ
HETO CЧ (6)
 HTЖ CДBИГ
 ПO ЗAБ
 CЛИA 1(6)
 ПБ ПPOB
ЗAБ ПИO ДПEЧ(3)
 CЧ ПPБEЛЫ
 ЗП (6)
 CЛИA 1(6)
 CЛИA -1(3)
 ПБ ПPOB
ДПEЧ CЧИ 6
 ЗП R
 CЧИ 5
 HTЖ R
 ПE ДП1
 CЧ ПPБEЛЫ
 ЗП 1(6)
 CЛИA 1(6)
ДП1 Э64 ИHФ  ПEЧATЬ OЧEPEДHOЙ CTPOKИ                           
 CЧ -1(6)
 HTЖ ПPKHЦ
 ПO BCEДOП
 CЛИA 1(6)
 YИИ 7(6)
 ПБ ПOBT
BCEДOП ПБ ПPИKAЗ
ПPOCTP YИA ПPБEЛЫ(7)
 YИA ПPБEЛЫ+1(6)
 Э64 ИHФ
 ПБ (13)
ЧEPTA YИA MИHYCЫ+19(6)
 YИA MИHYCЫ(7)
 Э64 ИHФ
 ПБ (13)
KOHEЦ YИИ 2(7)
 YИA CT(7)
 Э71 ПPИEM
 Э71 OПPOC
 И ПPO
 HTЖ ПPO
 ПO ABOCT
 Э74
ABOCT YИA AB(7)
 YИA AB+2(6)
 Э64 ИHФ
 Э74
HOЛЬ KOHД U'0'
ПPИEM KOHД X'7100007400D7'
OПPOC KOHД M40B'5'
BЫД KOHД X'61C00064000B'
BЫB TEKCT П'<*> M E T K И <*> BEPCИЯ OT 28.09.87'              
 KOHД M40B'377'
BOПPOC KOHД M16П'ИДTИ'M8B'136'B'377'                           
 KOHД M40B'377'
ИHФ ЗП (7)
 ЗП (6)
 ЗП
 ЗП (8)
AB TEKCT П'OБPЫB ЛИHИИ CBЯЗИ.'
ПPKHЦ KOHД M40B'377'
ЗOHA1 KOHД B'0010360000420001' B 30 ЛИCT                       
ЗOHA2 KOHД B'0010370000420002'
K KOHД M40П'K'M32B'377'
KOH KOHД B'377'
И KOHД M40П'И'M32B'377'
O KOHД M40П'O'M32B'377'
BCE5 KOHД M24П'BCE'M16B'377'
BCE KOHД П'BCE   '
ИM KOHД M32П'ИM'M24B'377'
ПPTOM KOHД M16П'TOM-'M8B'377'
OTKAЗ KOHД M46B'1'M36B'42'M30B'77'                             
CЛOBOБ ПAM 1
CЛOБM KOHД M16B'1'M36B'77'M42B'42'                             
CTCЛ KOHД M16B'1'M36B'77'M42B'42'B'20423'                      
CДBЗ ПAM 1
