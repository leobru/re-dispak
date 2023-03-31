OP2    CЧ    ИCЧT
       ПB    PAБMЛ(M2)
       ПБ    KTO
HETПPM ЦИKЛ  ПPM(M1)
  ПБ HETПEP  *HET ПEPEMOTKИ
KTO    CЧ    '13'
       HTЖ   '16'
       ПE    OPИEHT
  CЧ '13'
       И     E25П39
       HTЖ   KЛЮЧCC
       ПE    OPИEHT
 AIF (&BS EQ 0).KTO
 ПИO KTO1(M12)      M12=0  -HOPMAЛЬHЫЙ XOД PAЗMETKИ            
 ЦИKЛ KTO2(M13)    M12 HE 0 -ПPOИЗ.BЫKЛ.MГ.BEДETCЯ PEMOHT      
 ПБ BЫKЛM          M13 - ЧИCЛO ПOПЫTOK HAЙTИ OПOPHYЮ ЗOHY      
KTO2 CЧ '10'
 HTЖ CЛ0
 ПE OPИEHT
 CЧ '12'
 HTЖ CЛ2
 ПE OPИEHT
 CЧ '14'
 HTЖ CЛ4
 ПE OPИEHT
 YИA (M12)
KTO1 HOП
.KTO ANOP
       CЧ    '13'
       И     П3777
       YИ    M7
       ПБ    ЗПMГЗ
CTИP   CЧ    KЛЮЧ     * БЛOK CTИPAHИЯ                          
       Э70   ИCCT
       CЧИ   M16
  ПE HETCT  *HET CTИPAHИЯ
       ПБ    (M11)  BЫXOД
ПPOBCC ЗП     OШCC      * БЛOK ПPOBEPKИ CЛYЖ. CЛOB             
       CЧ    '13'
       ИЛИ   '16'
       ЗП    PЯ1
       CЧИ   M7
       ЗП    PЯ2
 CДA 64+1
 CДA 64-13
       ИЛИ   PЯ2
       HTЖ   KЛЮЧCC
       HTЖ   PЯ1
       ПE    ПPCC1
 CЧ '17' ПPOB.KOHTP.CYMMЫ
 HTЖ KCM
 ПE ПPCC1
       CЧ    '12'
       HTЖ   HOMБOБ
       И     E12П1
       ПO    (M11)
       CЧ    '12'
       CДA   64+30
       HTЖ   HOMБOБ
       И     E12П1
       ПE    ПPCC1
       ПБ    (M11)   * BЫXOD
ПPCC1  ЗП    OШCC
       ПБ    (M11)
HOBPAЗ CЧ 0
       ЗП    OШ
       CЧ    ИCШГЗH
       ПB    PAБMЛ(M2)
       CЧИ   M16     AHAЛИЗ HA HAЧAЛO ЛEHTЫ                    
       HTЖ   E1
       ПO    HOBPЗ1
       CЛИA  1(M5)  * +1 K ЧИCЛY CTИPAHИЙ  B ЗOHE              
 CЛИA 1(M4)
       CЧИ   M7
 HTЖ ДEФ(M6)
       ПO    KCT    * ЗOHA ECTЬ B CПИCKE ДEФEKTHЫX             
       CЧИ   M7
 ЗП ДEФ+1(M6)
       CЛИA  1(M6)  * +1 K ЧИCЛY ДEФEKTHЫX ЗOH                 
KCT    CЧИ   M5
       HTЖ   E4
  ПO MHOГO  *БOЛЬШE 7 CTИP. B ЗOHE                             
       CЛИA  -1(M7)
       ПB    CTИP(M11)
       ПБ    ЗПMГЗ
HOBPЗ1 CЛИA  -1(M10)   CЧETЧИK ЦИKЛOB CTИPAHИЙ                 
       CЧИ   M10
 И П7
  ПO MHOГO  *БOЛЬШE 7 CTИPAHИЙ B ЗOHE                          
       YИИ   M1(M10)
CT     ПB    CTИP(M11)
       ЦИKЛ  CT(M1)
       ПБ    ЗПMГЗ
PAБMЛ  ЗП    KOП        * БЛOK PAБOTЫ C MЛ                     
       CЧИ   M7
       ИЛИ   KOП
       ЗП    KOП  +N ЗOHЫ
       CЧ    KЛЮЧ
       Э70   KOП
       ЗП    CM
       И     E48
  ПE BЫKЛMГ   *MФ HE ГOTOB
       CЧ    CM
 ПO AHMOД
       CЧ    KOП
       И     E41П42
 ПE AHMOД     БЫЛO ДBИЖEHИE
       CЧ    CM
       И     E1E814
       ПO    AHЗП
ABAP ПИHO ABOБP(M3)
       YИA   -4(M3)    1-ЫЙ PAЗ ИДEM B ABOБP                   
       ПБ    ABOБP
AHЗП CЧ KOП
       И     E40П42
 ПE AHЧT  БЫЛO ЧTEHИE
 CЧ CM
 И E10
       ПE    ABAP     BЫXOД B ABOБP                            
 ПБ (M2)
AHЧT   CЧ    CM
       И     E11
       ПE    OPИEHT   CЧИTAЛИ MГЗ5                             
       CЧ    CM
       И     E9E13
       ПE    ABAP
       ПБ    0(M2)   BЫXOД
AHMOД CЧИ M16   AHAЛИЗ M16
       ПO    0(M2) BЫXOД
       И     E3      * 10 M
       ПE    OPИEHT
       CЧИ   M16
       HTЖ   E1E2    CЧИTAH MГЗ
       ПO    0(M2)
       CЧИ   M16
       И     E1
       ПE    0(M2)   HAЧAЛO ЛEHTЫ                              
       CЧИ   M16
       И     E2
       ПO    0(M2)
  ПБ KЛ  *KOHEЦ ЛEHTЫ
CHЯTЬ1 Э64 AYЖEP  *ЦП ЗAHЯT PAЗMETKOЙ                          
  ПБ KOHEЦ
ПEЧ CЧ KЛЮЧ
 Э70 '1'
KOHEЦ Э74 0
MHOГO Э64 MHCTИP
  ПБ ИTOГ
MHCTИP KOHK A(TCTИP)
 KOHK A(TCTИP+3)
 KOHД M21B'5'
TCTИP KOHД П'БOЛЬШE'
 KOHД П' 7 CTИ'
 KOHД П'PAHИЙ '
 KOHД П'B ЗOHE'
BЫKЛЗП ПB HAПPMГ(M11)
  ИЛИ TBЫKЗП+4
  ЗП TBЫKЗП+4
  Э64 BЫKЗП1
  ПБ ПEЧ
BЫKЗП1 KOHK A(TBЫKЗП)
 KOHK A(TBЫKЗП+4)
 KOHД M21B'5'
TBЫKЗП KOHД П'HET PA'
 KOHД П'ЗPEШEH'
 KOHД П'ИЯ ЗП '
 KOHД П'HA MГ '
 KOHД П'0/0   '
KЛ Э64 KOHEЦЛ
  ПБ ИTOГ
KOHEЦЛ KOHK A(TKЛ)
 KOHK A(TKЛ+1)
 KOHД M21B'5'
TKЛ KOHД П'KOHEЦ '
 KOHД П'ЛEHTЫ '
HETПEP ПB HAПPMГ(M11)
  ИЛИ TПEPE+3
  ЗП TПEPE+3
  Э64  HEПEPE
  ПБ ПEЧ
HEПEPE KOHK A(TПEPE)
  KOHK A(TПEPE+3)
  KOHД M21B'5'
TПEPE KOHД П'HET ПE'
 KOHД П'PEMOTK'
 KOHД П'И  MГ '
 KOHД П'0/0   '
HETCT ПB HAПPMГ(M11)
  ИЛИ THETCT+3
  ЗП THETCT+3
  Э64  HETCT1
  ПБ ИTOГ
THETCT  KOHД П'HET CT'
  KOHД П'ИPAHИЯ'
  KOHД П'HA MГ '
 KOHД П'0/0   '
HETCT1 KOHK A(THETCT)
 KOHK A(THETCT+3)
 KOHД M21B'5'
 AIF (&BS EQ 0).BЫKMГ
BЫKЛMГ HOП
 CЧ П77
 Э50 '7700' ПOДOЖДEM 5 CEK.
 ПИHO OPИEHT(M12)
 YИA 1(M12)
 YИA '77764'(M13)
 ПБ OPИEHT
BЫKЛM YИA BЫKMГ1(M11)     HE HAШЛИ OПOPHOЙ ЗOHЫ                
 AGO .BЫKM1
.BЫKMГ ANOP
BЫKЛMГ YИA BЫKMГ1(M11)  *BЫKMГ1-->M11                          
.BЫKM1 ANOP
HAПPMГ CЧ NMГ  *HAПP И NMГ ДЛЯ PACПEЧATKИ                      
  И П7
  CДA 64-24
  ЗП PЯ1
  CЧ NMГ
  И  E4П6
  CДA 64-37
  ИЛИ PЯ1
 ПБ (M11)  *4048 P. CM-NHAПP,2432 P.-NMГ                     
BЫKMГ1 ИЛИ TBЫKMГ+2  *HAПP. И NMГ B TEKCT PACП.                
  ЗП TBЫKMГ+2
  Э64  BЫKMГ2   *ПEЧATЬ : BЫKЛЮЧEH MГ X/X                      
  ПБ ИTOГ
BЫKMГ2 KOHK A(TBЫKMГ)
  KOHK A(TBЫKMГ+2)
  KOHД M21B'5'
TBЫKMГ KOHД П'BЫKЛЮЧ'
  KOHД П'EH MГ '
 KOHД П'0/0   '
CHЯTЬ2 CЧ HOMБOБ
 PЖA 3
 ПO ПEЧ     N БOБИHЫ=0
 Э50 '114'
 ЗП PЯ1
 CДA 64+16
 CДA 64-29
 ЗП ПЗC+6      48-30PP.ДATA
 CЧ PЯ1
 И П7
 
 CДA 64-26
 ИЛИ ПЗC+6
 ЗП ПЗC+6      29-27PP.ЭBM
 CЧ NMГ
 И П77
 CДA 64-20
 ИЛИ ПЗC+6
 ЗП ПЗC+6     26-21PP.HAПP.MГ
 CЛИA -10(M7)
 CЧИ M7
 CДA 64-10
 ИЛИ ПЗC+6
 ЗП ПЗC+6      20-11PP PAЗM.ЗOH
 CЧ ПOP
 BЧ E1
 ИЛИ ПЗC+6
 ЗП ПЗC+6       10-1 PP. ДEФ.ЗOH                               
  YИA ПЗC(M16)
 CЧИ M16
 Э50 '7701' ФOPM-E ЗAДAЧИ ДЛЯ YHИЧT.CT-KИ O БOБ.               
  ПБ ПEЧ
ПEP10 YИA -5(M15) БЛOK ПEPEBOДA 10-->8                         
 ЗП PЯ1
K8 CДA 64+8
 ЗП PP
 CЧ PЯ1
 YMH KOH01
 ЗП PЯ1
 CЧMP 64
 YMH KOH01+1
 CДA 64-40
 ИЛИ PP
 ЦИKЛ K8(M15)
  ПБ (M11)
ИTOГ CЧ HOMБOБ
 PЖA 3
 ПB ПEP10(M11) *N БOБ ДЛЯ PACПEЧATKИ                           
  ИЛИ ПEЧATЬ
 ЗП ПEЧATЬ
  ПB HAПPMГ(M11)
  CДA 64+8
 ИЛИ ПEЧATЬ+12
 ЗП ПEЧATЬ+12        HAПP. И NMГ B TEKCT PACПEЧATKИ            
 Э50 '114' ДAЙ ДATY
 ЗП PЯ1
 CДA 64-13
 PЗБ KДATЫ
 ИЛИ ПEЧATЬ+15
 ЗП ПEЧATЬ+15
 Э65 MГPП
 CДA 64+21
 И П7
 CДA 64-16
 ИЛИ ПEЧATЬ+17
 ЗП ПEЧATЬ+17
 CЧ PЯ1
 CДA 64+20
 И E4П1
 CДA 64-32
 ИЛИ ПEЧATЬ+16
 ЗП ПEЧATЬ+16
 CЧ PЯ1
 CДA 64+16
 И E4П1
 CДA 64-40
 ИЛИ ПEЧATЬ+16
 ЗП ПEЧATЬ+16
  CЧИ M7
  CДA 64+3
  ПO ШAПKA  *PAБOЧИE ЗOHЫ HE PAЗMEЧAЛИCЬ                       
 YИИ M1(M7) * N ЗOHЫ-->M1
 AIF (&BS EQ 0).ИTOГ
 MOД TЗHMЛ
 CЧ ПPИKAЗ
 ЗП ПEЧATЬ+'22'
 CЧ TЗHMЛ
 И E2
 ПO ИTOГ1 CДYБЛЬ-ЗOHAMИ
 CЛИA -4(M1)
 CЧИ M1
 CДA 64-36
 ПБ ИTOГ2
ИTOГ1 HOП
.ИTOГ ANOP
 CЛИA -10(M1)
 CЧИ M1
  CДA 64-35  *KOЛ-BO ЗOH B 37-48 P.                            
ИTOГ2 HOП
 PЗБ K14
 ИЛИ ПEЧATЬ+3
 ЗП ПEЧATЬ+3  *ЧИCЛO ЗOH B TEKCT PACП.                         
ШAПKA CЧИ M4
 ЗП ПЗC+7     OШ.PAЗM
 ПE HEШAЛИ
 CЧ ПPH
 ЗП ПEЧATЬ+7
 ПБ ПЧ
HEШAЛИ ПB ПEP10(M11)
 ЗП PЯ1
 ПB Ф(M4)
 CЧ PЯ1
 CДA 64-8
 ИЛИ ПEЧATЬ+7
  ЗП ПEЧATЬ+7
ПЧ Э64 AПЧ3   *ПEЧATЬ ИHФ
  CЧИ M7
  CДA 64+3
  ПO CHЯTЬ2
  ПИHO ДEФEKT(M6)  *ECTЬ ДEФEKTHЫE ЗOHЫ                        
  Э64 HДEФ
  ПБ CHЯTЬ2
ДEФEKT YИA 1(M1)
 YИA (M2)
Д1 CЧ ДEФ(M1)
 ПO BЫXД
 CДA 64+3
 ПO ПPOП
 CЧ ПOP
 ПB ПEP10(M11)
 ЗП PЯ1
 YИA BЫX1(M4)
Ф YИA -5(M3)
Ф1 CЧ PЯ1
 И БAЙT+5(M3)
 ПE (M4)
 CЧ ПPOБEЛ
 И БAЙT+5(M3)
 ИЛИ PЯ1
 ЗП PЯ1
 ЦИKЛ Ф1(M3)
 ПБ (M4)
BЫX1 CЧ PЯ1
 И E24П1
 ИЛИ ЗAГ
 ЗП ЗAГ+1
 PЖA 3
 CЧ ДEФ(M1)
 ИЛИ ПOP64
 BЧ Ц10
 И E12П1
 CДA 64-35
 PЗБ MCK
 ЗП PЯ1
 ПB Ф(M4)
 CЧ PЯ1
 ИЛИ TЧK
 ЗП ЗAГ+3
 CЧ ДEФ(M1)
 И E1
 ИЛИ ЗAГ+3
 ЗП ЗAГ+3
 CЧ YДЛ(M1)
 CДA 64-16
 ИЛИ H3П
 ЗП ЗAГ+5
 YИA -5(M4)
П CЧ ЗAГ+6(M4)
 MOДA (M4)
 ЗП ПOЛE+5(M2)
 ЦИKЛ П(M4)
 CЧ ПOP
 CЛЦ E1
 ЗП ПOP
 CЛИA 6(M2)
ПPOП CЛИA 1(M1)
 ПБ Д1
BЫXД CЧ ПOЛE
 ПO CHЯTЬ2
 CЧ ЧEPTA
 ЗП ПOЛE(M2)
 Э64 ПEЧДEФ
 ПБ CHЯTЬ2
E24П1 KOHД X'FFFFFF'
ПPH KOHД П'  0000'
ПOP KOHД B'1'
БAЙT KOHД M40X'FF'    ЯЧ. БAЙT HE PAЗДEЛЯTЬ                    
 KOHД M32X'FF'
 KOHД M24X'FF'
 KOHД M16X'FF'
 KOHД M8X'FF'
 KOHД X'FF'
ПPOБEЛ KOHД П'      '
ЗAГ KOHД П'0A000'M40B'173'
 KOHД B'0'
 KOHД П' 0E  'M24B'173'
 KOHД B'0'
 KOHД П'     '
 KOHД B'0'
 KOHД П'0G  0'M40B'173'B'175'
MCK KOHД M16X'7070707'
ПOP64 KOHД M42B'64'
Ц10 KOHД M42B'64'B'10'
TЧK KOHД П'0000.0'
H3П KOHД П'   0  '
ПEЧДEФ ЗП KEПKA
 ЗП KEПKA
 KOHД M21B'7'
AПЧ3 KOHK A(ПEЧATЬ)
 KOHK A(ПEЧATЬ)
 KOHД M23B'1'M36B'55'M20B'1'
AYЖEP KOHK A(YЖEP)
 KOHK A(YЖEP+2)
 KOHД M21B'5'
YЖEP KOHД П'ЦП ЗAH'
 KOHД П'ЯT PAЗ'
 KOHД П'METKOЙ'
ПЗC KOHД П'ШИФP 4'
 AIF (&ЭФ EQ 0).ПЗC
 KOHД П'199000'
 AGO .ПЗCC
.ПЗC ANOP
  KOHД П'155070'
.ПЗCC ANOP
  KOHД П'00000З'
 KOHД П'C,0E00'M24B'115'
 KOHД B'5000'
 KOHД B'0'    N БOБИHЫ
 KOHД B'0'    ИHФ-Я O PAЗM.
 KOHД B'0'    ЧИCЛO OШ.PAЗM.
 KOHД П'0!0!0!'M40B'132'M24B'132'M8B'132'                      
 KOHД П'EKOHEЦ'
HДEФ KOHK A(THДEФ)
 KOHK A(THДEФ+12)
 KOHД M21B'5'
THДEФ KOHД (2)П'      '
 KOHД П'   Д E'
 KOHД П' Ф E K'
 KOHД П' T O B'
 KOHД П'   H O'
 KOHД П' C И T'
 KOHД П' E Л Я'
 KOHД П'   H E'
 KOHД П'   O Б'
 KOHД П' H A P'
 KOHД П' Y Ж E'
 KOHД П' H O !'
ПEЧATЬ KOHД П'Б 0000'
  KOHД П'00Д   'M40B'175'M32B'173'                             
 KOHД П'00@00H'M40B'031'M32B'174'M16B'175'M8B'173'             
 KOHД П'0000 З'
 KOHД П'.  00З'M16B'175'M8B'173'                               
 KOHД П'BCEГO '
 KOHД П'OШИБOK'
 KOHД B'20'
 KOHД П'000   'M40B'175'M32B'175'M24B'175'                     
 И П7
 
PAЗMEC CTAPT '20'  *ПPOГPAMMA PAЗMETKИ MЛ EC-5017(PEЖ.Б-6)     
 Б
*
ABBX PЖA 3  *ABOCTHЫЙ BXOД
  ПБ ИTOГ
ИCCT KOHД M26B'3'M39B'7'M15B'3'
ИCПPM KOHД M39B'6'M27B'1'M15B'3'                               
ИCШЗB KOHД M39B'2'M27B'1'M15B'3'                               
ИCШГЗB KOHД M39B'4'M27B'1'M15B'3'                              
ИCШЗH KOHД M39B'3'M27B'1'M15B'3'                               
ИCШГЗH KOHД M39B'5'M27B'1'M15B'3'                              
ИCЧT KOHД M39B'1'M27B'1'M30B'3'M15B'3'                         
ИCЗП KOHД M30B'2'M27B'1'M15B'3'
ИCMГЗ  KOHД  M39B'7'M27B'1'M12B'30'                            
OШ KOHД B'0'
OШCC KOHД B'0'
KOП KOHД B'0'
KOПAB KOHД B'0'
ABM2 KOHД B'0'
ИHФCЛ KOHД B'0'
KCM KOHД B'4141414141414141'
PЯ2 KOHД B'0'
PЯ1 KOHД B'0'
KИHФБ KOHД B'20000100000'
BCE6 KOHД X'DB6DB6DB6DB6'
BCEEД KOHД B'-1'
BCE25 KOHД X'555555555555'
KЛЮЧCC KOHД M24B'70707'
KЛЮЧPЗ KOHД П'KЛЮЧPЗ'
KЛЮЧ KOHД П'PAЗMEC'
CM KOHД B'0'
PЯЗ KOHД B'0'
PP KOHД B'0'
HOMБOБ KOHД B'0'
NMГ KOHД B'0'
E11 KOHД M9B'2'
E13 KOHД M12B'1'
E3E1 KOHД B'5'
E12П1 KOHД X'FFF'
E48 KOHД M47B'1'
E31 KOHД M30B'1'
E47 KOHД M46B'1'
E9E13 KOHД M8B'21'
E40П42 KOHД M39B'7'
E1 KOHД B'1'
E2 KOHД B'2'
E1E2 KOHД  B'3'
E3 KOHД B'4'
E4 KOHД B'10'
E10 KOHД M9B'1'
E41П42 KOHД M40B'3'
E19 KOHД M18B'1'
П7 KOHД B'7'
 Э50 10
 CЧ K1
 Э75 2050
 CЧ K2
 Э75 2051
 CЧ 1
 AIF (&BS EQ 0).П3
 YИ M1
.П3 ANOP
 И П3
 YИ M16
 CЧ ИHФ1(M16)
 ЗП 2048
 CЧ ИHФ2(M16)
 ЗП 2049
 CЧ ИHФ3(M16)
 Э75 2052
 ПБ 2050
П3 KOHД B'3'
K1 Э70 2048
K2 Э70 2049
ИHФ1 KOHД M39B'1'B'410612'
 KOHД M39B'1'B'410713'
 KOHД M39B'1'B'410614'
 KOHД M39B'1'B'410616'
ИHФ2 KOHД M39B'1'M30B'1'B'410613'                              
 KOHД M39B'1'M30B'1'B'410714'
 KOHД M39B'1'M30B'1'B'410615'
 KOHД M39B'1'M30B'1'B'410617'
ИHФ3 ПБ 24
 MOДA 0
 ПБ 1
 MOДA 0
 ПБ 17
 MOДA 0
 ПБ BXOД
BXOД MOДA '41777'
       Э62   0 * OTKAЗ OT ПPOГPAMMHOЙ MЛ                       
       PЖA   7
 CЧ E3E1
       Э63   3     *ДAЙ 5 CEK HA AB. BЫДAЧY                    
 AIF (&BS EQ 0).K1
 CЧИ M1
 CДA 64+3
 И П3
 ЗП TЗHMЛ
.K1 ANOP
 YИA -K(M16)
 CЧ 0
K3 ЗП ПOЛE+K(M16)
 ЦИKЛ K3(M16)
 CЧ ИHФИ
 ИЛИ E19
 ЗП ИHФИ
 Э71 ИHФИ
       CЧ    KЛЮЧ  * ЗAЯBKA
       Э70    0
       ЗП    PЯЗ
       И     E48
 ПE CHЯTЬ1  *ЦП ЗAHЯT PAЗMETKOЙ
       CЧ    PЯЗ
       И     E7П18
 CДA 64+6
       ЗП    HOMБOБ
 CЧ PЯЗ
 И П77
 ЗП NMГ
       CЧ    KИHФБ
       CЛЦ   E31
       ЗП    ИHФCЛ
       Э70   ИHФCЛ *OБHYЛEHИE TPAKTA MБ                        
       CЧ    BCE25 *БЛOK POCПИCИ 2-OЙ CTP.                     
       YИA   -1022(M1)
POCП1 HTЖ BCEEД
       ЗП    '5776'(M1)
       ЦИKЛ  POCП1(M1)
  CЧ BCE6
       ЗП    '5777'
 YИA (M4)
       YИA   -10(M1)  *ПEPEMOTKA                               
ПPM    CЧ    KЛЮЧ
       Э70   ИCПPM
       ЗП    PЯЗ      *CM B PЯЗ
 И E47
 ПE BЫKЛЗП      HET PAЗPEШEHИЯ ЗAПИCИ                          
       CЧИ   M16
       HTЖ   E1
 ПE HETПPM
       YИA   1(M7)    * CTИPAHИE                               
 ПB CTИP(M11)
ЗПMГЗ  CЧ    ИCMГЗ    * ЗAПИCЬ MГЗ                             
       ПB    PAБMЛ(M2)
       CЛИA  1(M7) * +1 K ФИЗИЧ. N ЗOHЫ                        
 AIF (&BS EQ 0).ЗПMГЗ
 CЧИ M7
 И E12П1
 MOД TЗHMЛ
 HTЖ OГP
 ПO ИTOГ
 CЧИ M7
 И П7
 ПE ЗПMГ
 CЧ '10'   ЗAПOMИHAHИE
 ЗП CЛ0   OПOPHOЙ ЗOHЫ
 CЧ '12'  (HA CЛYЧAЙ BЫKЛ.MГ)
 ЗП CЛ2
 CЧ '14'
 ЗП CЛ4
ЗПMГ HOП
.ЗПMГЗ ANOP
       CЧ    ИCЗП
       ПB    PAБMЛ(M2)
       CЧ    OШ
       ПE    HOBPAЗ
       YИA   -1023(M1) * OБHYЛEHИE 3-ЬEГO  ЛИCTA               
       CЧ    0
POCПH  ЗП    '7777'(M1)
       ЦИKЛ  POCПH(M1)
       CЧ    ИCШГЗH    * БЛOK KOHTPOЛЯ                         
       ПB    PAБMЛ(M2)
       CЧ    ИCШГЗB
       ПB    PAБMЛ(M2)
       CЧ    ИCЧT      * ЧTEHИE ЗOHЫ B 3-ИЙ ЛИCT               
      ПB    PAБMЛ(M2)
       CЧ    OШ
       ПE    HOBPAЗ
       CЧ    0          * * KOHTPOЛЬHOE CYMMИPOBAHИE           
       YИA   -1023(M1)
KC     CЛЦ   '7777'(M1)
       ЦИKЛ  KC(M1)
  HTЖ KCM
       ПE    HOBPAЗ     * KOHTP. CYMMA HE COBПAЛA              
 ПB ПPOBCC(M11)
       CЧ    OШCC
       ПE    KTO        * БЫЛИ OШИБKИ B CЛYЖ. CЛOBAX           
 ПИO KC1(M5)
 CЧИ M5
 ЗП YДЛ(M6)
       YИA   0(M5)  ЧИCЛO CTИPAHИЙ A ЗOHE                      
KC1 YИA (M10)
       ПБ    ЗПMГЗ
ИHФИ MOДA ИHФИ+1
 ЗП ИHФИ+3
 KOHД П'1ПOCT.'
 KOHД П'MЛ EC5'
 KOHД П'017 HA'
 KOHД П'PAЗM.@'
ABOБP  CЛИA  1(M3)      * БЛOK ABAPИЙHOЙ OБPAБOTKИ             
       CЧ    KOП
       ЗП    KOПAB
 CЛИA 3(M3)
 ПИHO AB2(M3)
       CЧИ   M2
       ЗП    ABM2
AB2 CЛИA -3(M3)
 ПИHO AB1(M3)
       CЧ    E1
       ЗП    OШ
BЫXAB MOД ABM2
       ПБ    0      BЫXOD
AB1   CЧ    ИCШГЗH
       ПB    PAБMЛ(M2)
       YИA   ПOBT(M2)
       ПБ    OP3
ПOBT CЧ ИCШГЗB
       ПB    PAБMЛ(M2)
       CЧ    KOПAB    ПOBTOPHЫЙ OБMEH                          
       ПB    PAБMЛ(M2)
       YИA   0(M3)
       ПБ    BЫXAB
OPИEHT CЧ    ИCШГЗH     * БЛOK OPИEHTAЦИИ                      
       ПB    PAБMЛ(M2)
       YИA   OP1(M2)
OP3    CЧИ   M16
       HTЖ   E1
       ПE    0(M2)    HET HЛ
       YИA   1(M7)    NФИЗ.ЗOHЫ=1                              
       ПБ    HOBPЗ1
OP1    CЧ    ИCШЗH
       ПB    PAБMЛ(M2)
       YИA  OP2(M2)
       ПБ    OP3     HA  AHAЛИЗ  HЛ                            
M16)
OP2    CЧ    ИCЧT
       ПB    PAБMЛ(M2)
       ПБ    KTO
HETПPM ЦИKЛ  ПPM(M1)
  ПБ HETПEP  *HET ПEPEMOTKИ
KTO    CЧ    '13'
       HTЖ   '16'
       ПE    OPИEHT
  CЧ '13'
       И     E25П39
       HTЖ   KЛЮЧCC
       ПE    OPИEHT
 AIF (&BS EQ 0).KTO
 ПИO KTO1(M12)      M12=0  -HOPMAЛЬHЫЙ XOД PAЗMETKИ            
 ЦИKЛ KTO2(M13)    M12 HE 0 -ПPOИЗ.BЫKЛ.MГ.BEДETCЯ PEMOHT      
 ПБ BЫKЛM          M13 - ЧИCЛO ПOПЫTOK HAЙTИ OПOPHYЮ ЗOHY      
KTO2 CЧ '10'
 HTЖ CЛ0
 ПE OPИEHT
 CЧ '12'
 HTЖ CЛ2
 ПE OPИEHT
 CЧ '14'
 HTЖ CЛ4
 ПE OPИEHT
 YИA (M12)
KTO1 HOП
.KTO ANOP
       CЧ    '13'
       И     П3777
       YИ    M7
       ПБ    ЗПMГЗ
CTИP   CЧ    KЛЮЧ     * БЛOK CTИPAHИЯ                          
       Э70   ИCCT
       CЧИ   M16
  ПE HETCT  *HET CTИPAHИЯ
       ПБ    (M11)  BЫXOД
ПPOBCC ЗП     OШCC      * БЛOK ПPOBEPKИ CЛYЖ. CЛOB             
       CЧ    '13'
       ИЛИ   '16'
       ЗП    PЯ1
       CЧИ   M7
       ЗП    PЯ2
 CДA 64+1
 CДA 64-13
       ИЛИ   PЯ2
       HTЖ   KЛЮЧCC
       HTЖ   PЯ1
       ПE    ПPCC1
 CЧ '17' ПPOB.KOHTP.CYMMЫ
 HTЖ KCM
 ПE ПPCC1
       CЧ    '12'
       HTЖ   HOMБOБ
       И     E12П1
       ПO    (M11)
       CЧ    '12'
       CДA   64+30
       HTЖ   HOMБOБ
       И     E12П1
       ПE    ПPCC1
       ПБ    (M11)   * BЫXOD
ПPCC1  ЗП    OШCC
       ПБ    (M11)
HOBPAЗ CЧ 0
       ЗП    OШ
       CЧ    ИCШГЗH
       ПB    PAБMЛ(M2)
       CЧИ   M16     AHAЛИЗ HA HAЧAЛO ЛEHTЫ                    
       HTЖ   E1
       ПO    HOBPЗ1
       CЛИA  1(M5)  * +1 K ЧИCЛY CTИPAHИЙ  B ЗOHE              
 CЛИA 1(M4)
       CЧИ   M7
 HTЖ ДEФ(M6)
       ПO    KCT    * ЗOHA ECTЬ B CПИCKE ДEФEKTHЫX             
       CЧИ   M7
 ЗП ДEФ+1(M6)
       CЛИA  1(M6)  * +1 K ЧИCЛY ДEФEKTHЫX ЗOH                 
KCT    CЧИ   M5
       HTЖ   E4
  ПO MHOГO  *БOЛЬШE 7 CTИP. B ЗOHE                             
       CЛИA  -1(M7)
       ПB    CTИP(M11)
       ПБ    ЗПMГЗ
HOBPЗ1 CЛИA  -1(M10)   CЧETЧИK ЦИKЛOB CTИPAHИЙ                 
       CЧИ   M10
 И П7
  ПO MHOГO  *БOЛЬШE 7 CTИPAHИЙ B ЗOHE                          
       YИИ   M1(M10)
CT     ПB    CTИP(M11)
       ЦИKЛ  CT(M1)
       ПБ    ЗПMГЗ
PAБMЛ  ЗП    KOП        * БЛOK PAБOTЫ C MЛ                     
       CЧИ   M7
       ИЛИ   KOП
       ЗП    KOП  +N ЗOHЫ
       CЧ    KЛЮЧ
       Э70   KOП
       ЗП    CM
       И     E48
  ПE BЫKЛMГ   *MФ HE ГOTOB
       CЧ    CM
 ПO AHMOД
       CЧ    KOП
       И     E41П42
 ПE AHMOД     БЫЛO ДBИЖEHИE
       CЧ    CM
       И     E1E814
       ПO    AHЗП
ABAP ПИHO ABOБP(M3)
       YИA   -4(M3)    1-ЫЙ PAЗ ИДEM B ABOБP                   
       ПБ    ABOБP
AHЗП CЧ KOП
       И     E40П42
 ПE AHЧT  БЫЛO ЧTEHИE
 CЧ CM
 И E10
       ПE    ABAP     BЫXOД B ABOБP                            
 ПБ (M2)
AHЧT   CЧ    CM
       И     E11
       ПE    OPИEHT   CЧИTAЛИ MГЗ5                             
       CЧ    CM
       И     E9E13
       ПE    ABAP
       ПБ    0(M2)   BЫXOД
AHMOД CЧИ M16   AHAЛИЗ M16
       ПO    0(M2) BЫXOД
       И     E3      * 10 M
       ПE    OPИEHT
       CЧИ   M16
       HTЖ   E1E2    CЧИTAH MГЗ
       ПO    0(M2)
       CЧИ   M16
       И     E1
       ПE    0(M2)   HAЧAЛO ЛEHTЫ                              
       CЧИ   M16
       И     E2
       ПO    0(M2)
  ПБ KЛ  *KOHEЦ ЛEHTЫ
CHЯTЬ1 Э64 AYЖEP  *ЦП ЗAHЯT PAЗMETKOЙ                          
  ПБ KOHEЦ
ПEЧ CЧ KЛЮЧ
 Э70 '1'
KOHEЦ Э74 0
MHOГO Э64 MHCTИP
  ПБ ИTOГ
MHCTИP KOHK A(TCTИP)
 KOHK A(TCTИP+3)
 KOHД M21B'5'
TCTИP KOHД П'БOЛЬШE'
 KOHД П' 7 CTИ'
 KOHД П'PAHИЙ '
 KOHД П'B ЗOHE'
BЫKЛЗП ПB HAПPMГ(M11)
  ИЛИ TBЫKЗП+4
  ЗП TBЫKЗП+4
  Э64 BЫKЗП1
  ПБ ПEЧ
BЫKЗП1 KOHK A(TBЫKЗП)
 KOHK A(TBЫKЗП+4)
 KOHД M21B'5'
TBЫKЗП KOHД П'HET PA'
 KOHД П'ЗPEШEH'
 KOHД П'ИЯ ЗП '
 KOHД П'HA MГ '
 KOHД П'0/0   '
KЛ Э64 KOHEЦЛ
  ПБ ИTOГ
KOHEЦЛ KOHK A(TKЛ)
 KOHK A(TKЛ+1)
 KOHД M21B'5'
TKЛ KOHД П'KOHEЦ '
 KOHД П'ЛEHTЫ '
HETПEP ПB HAПPMГ(M11)
  ИЛИ TПEPE+3
  ЗП TПEPE+3
  Э64  HEПEPE
  ПБ ПEЧ
HEПEPE KOHK A(TПEPE)
  KOHK A(TПEPE+3)
  KOHД M21B'5'
TПEPE KOHД П'HET ПE'
 KOHД П'PEMOTK'
 KOHД П'И  MГ '
 KOHД П'0/0   '
HETCT ПB HAПPMГ(M11)
  ИЛИ THETCT+3
  ЗП THETCT+3
  Э64  HETCT1
  ПБ ИTOГ
THETCT  KOHД П'HET CT'
  KOHД П'ИPAHИЯ'
  KOHД П'HA MГ '
 KOHД П'0/0   '
HETCT1 KOHK A(THETCT)
 KOHK A(THETCT+3)
 KOHД M21B'5'
 AIF (&BS EQ 0).BЫKMГ
BЫKЛMГ HOП
 CЧ П77
 Э50 '7700' ПOДOЖДEM 5 CEK.
 ПИHO OPИEHT(M12)
 YИA 1(M12)
 YИA '77764'(M13)
 ПБ OPИEHT
BЫKЛM YИA BЫKMГ1(M11)     HE HAШЛИ OПOPHOЙ ЗOHЫ                
 AGO .BЫKM1
.BЫKMГ ANOP
BЫKЛMГ YИA BЫKMГ1(M11)  *BЫKMГ1-->M11                          
.BЫKM1 ANOP
HAПPMГ CЧ NMГ  *HAПP И NMГ ДЛЯ PACПEЧATKИ                      
  И П7
  CДA 64-24
  ЗП PЯ1
  CЧ NMГ
  И  E4П6
  CДA 64-37
  ИЛИ PЯ1
 ПБ (M11)  *4048 P. CM-NHAПP,2432 P.-NMГ                     
BЫKMГ1 ИЛИ TBЫKMГ+2  *HAПP. И NMГ B TEKCT PACП.                
  ЗП TBЫKMГ+2
  Э64  BЫKMГ2   *ПEЧATЬ : BЫKЛЮЧEH MГ X/X                      
  ПБ ИTOГ
BЫKMГ2 KOHK A(TBЫKMГ)
  KOHK A(TBЫKMГ+2)
  KOHД M21B'5'
TBЫKMГ KOHД П'BЫKЛЮЧ'
  KOHД П'EH MГ '
 KOHД П'0/0   '
CHЯTЬ2 CЧ HOMБOБ
 PЖA 3
 ПO ПEЧ     N БOБИHЫ=0
 Э50 '114'
 ЗП PЯ1
 CДA 64+16
 CДA 64-29
 ЗП ПЗC+6      48-30PP.ДATA
 CЧ PЯ1
 И П7
 
 CДA 64-26
 ИЛИ ПЗC+6
 ЗП ПЗC+6      29-27PP.ЭBM
 CЧ NMГ
 И П77
 CДA 64-20
 ИЛИ ПЗC+6
 ЗП ПЗC+6     26-21PP.HAПP.MГ
 CЛИA -10(M7)
 CЧИ M7
 CДA 64-10
 ИЛИ ПЗC+6
 ЗП ПЗC+6      20-11PP PAЗM.ЗOH
 CЧ ПOP
 BЧ E1
 ИЛИ ПЗC+6
 ЗП ПЗC+6       10-1 PP. ДEФ.ЗOH                               
  YИA ПЗC(M16)
 CЧИ M16
 Э50 '7701' ФOPM-E ЗAДAЧИ ДЛЯ YHИЧT.CT-KИ O БOБ.               
  ПБ ПEЧ
ПEP10 YИA -5(M15) БЛOK ПEPEBOДA 10-->8                         
 ЗП PЯ1
K8 CДA 64+8
 ЗП PP
 CЧ PЯ1
 YMH KOH01
 ЗП PЯ1
 CЧMP 64
 YMH KOH01+1
 CДA 64-40
 ИЛИ PP
 ЦИKЛ K8(M15)
  ПБ (M11)
ИTOГ CЧ HOMБOБ
 PЖA 3
 ПB ПEP10(M11) *N БOБ ДЛЯ PACПEЧATKИ                           
  ИЛИ ПEЧATЬ
 ЗП ПEЧATЬ
  ПB HAПPMГ(M11)
  CДA 64+8
 ИЛИ ПEЧATЬ+12
 ЗП ПEЧATЬ+12        HAПP. И NMГ B TEKCT PACПEЧATKИ            
 Э50 '114' ДAЙ ДATY
 ЗП PЯ1
 CДA 64-13
 PЗБ KДATЫ
 ИЛИ ПEЧATЬ+15
 ЗП ПEЧATЬ+15
 Э65 MГPП
 CДA 64+21
 И П7
 CДA 64-16
 ИЛИ ПEЧATЬ+17
 ЗП ПEЧATЬ+17
 CЧ PЯ1
 CДA 64+20
 И E4П1
 CДA 64-32
 ИЛИ ПEЧATЬ+16
 ЗП ПEЧATЬ+16
 CЧ PЯ1
 CДA 64+16
 И E4П1
 CДA 64-40
 ИЛИ ПEЧATЬ+16
 ЗП ПEЧATЬ+16
  CЧИ M7
  CДA 64+3
  ПO ШAПKA  *PAБOЧИE ЗOHЫ HE PAЗMEЧAЛИCЬ                       
 YИИ M1(M7) * N ЗOHЫ-->M1
 AIF (&BS EQ 0).ИTOГ
 MOД TЗHMЛ
 CЧ ПPИKAЗ
 ЗП ПEЧATЬ+'22'
 CЧ TЗHMЛ
 И E2
 ПO ИTOГ1 CДYБЛЬ-ЗOHAMИ
 CЛИA -4(M1)
 CЧИ M1
 CДA 64-36
 ПБ ИTOГ2
ИTOГ1 HOП
.ИTOГ ANOP
 CЛИA -10(M1)
 CЧИ M1
  CДA 64-35  *KOЛ-BO ЗOH B 37-48 P.                            
ИTOГ2 HOП
 PЗБ K14
 ИЛИ ПEЧATЬ+3
 ЗП ПEЧATЬ+3  *ЧИCЛO ЗOH B TEKCT PACП.                         
ШAПKA CЧИ M4
 ЗП ПЗC+7     OШ.PAЗM
 ПE HEШAЛИ
 CЧ ПPH
 ЗП ПEЧATЬ+7
 ПБ ПЧ
HEШAЛИ ПB ПEP10(M11)
 ЗП PЯ1
 ПB Ф(M4)
 CЧ PЯ1
 CДA 64-8
 ИЛИ ПEЧATЬ+7
  ЗП ПEЧATЬ+7
ПЧ Э64 AПЧ3   *ПEЧATЬ ИHФ
  CЧИ M7
  CДA 64+3
  ПO CHЯTЬ2
  ПИHO ДEФEKT(M6)  *ECTЬ ДEФEKTHЫE ЗOHЫ                        
  Э64 HДEФ
  ПБ CHЯTЬ2
ДEФEKT YИA 1(M1)
 YИA (M2)
Д1 CЧ ДEФ(M1)
 ПO BЫXД
 CДA 64+3
 ПO ПPOП
 CЧ ПOP
 ПB ПEP10(M11)
 ЗП PЯ1
 YИA BЫX1(M4)
Ф YИA -5(M3)
Ф1 CЧ PЯ1
 И БAЙT+5(M3)
 ПE (M4)
 CЧ ПPOБEЛ
 И БAЙT+5(M3)
 ИЛИ PЯ1
 ЗП PЯ1
 ЦИKЛ Ф1(M3)
 ПБ (M4)
BЫX1 CЧ PЯ1
 И E24П1
 ИЛИ ЗAГ
 ЗП ЗAГ+1
 PЖA 3
 CЧ ДEФ(M1)
 ИЛИ ПOP64
 BЧ Ц10
 И E12П1
 CДA 64-35
 PЗБ MCK
 ЗП PЯ1
 ПB Ф(M4)
 CЧ PЯ1
 ИЛИ TЧK
 ЗП ЗAГ+3
 CЧ ДEФ(M1)
 И E1
 ИЛИ ЗAГ+3
 ЗП ЗAГ+3
 CЧ YДЛ(M1)
 CДA 64-16
 ИЛИ H3П
 ЗП ЗAГ+5
 YИA -5(M4)
П CЧ ЗAГ+6(M4)
 MOДA (M4)
 ЗП ПOЛE+5(M2)
 ЦИKЛ П(M4)
 CЧ ПOP
 CЛЦ E1
 ЗП ПOP
 CЛИA 6(M2)
ПPOП CЛИA 1(M1)
 ПБ Д1
BЫXД CЧ ПOЛE
 ПO CHЯTЬ2
 CЧ ЧEPTA
 ЗП ПOЛE(M2)
 Э64 ПEЧДEФ
 ПБ CHЯTЬ2
E24П1 KOHД X'FFFFFF'
ПPH KOHД П'  0000'
ПOP KOHД B'1'
БAЙT KOHД M40X'FF'    ЯЧ. БAЙT HE PAЗДEЛЯTЬ                    
 KOHД M32X'FF'
 KOHД M24X'FF'
 KOHД M16X'FF'
 KOHД M8X'FF'
 KOHД X'FF'
ПPOБEЛ KOHД П'      '
ЗAГ KOHД П'0A000'M40B'173'
 KOHД B'0'
 KOHД П' 0E  'M24B'173'
 KOHД B'0'
 KOHД П'     '
 KOHД B'0'
 KOHД П'0G  0'M40B'173'B'175'
MCK KOHД M16X'7070707'
ПOP64 KOHД M42B'64'
Ц10 KOHД M42B'64'B'10'
TЧK KOHД П'0000.0'
H3П KOHД П'   0  '
ПEЧДEФ ЗП KEПKA
 ЗП KEПKA
 KOHД M21B'7'
AПЧ3 KOHK A(ПEЧATЬ)
 KOHK A(ПEЧATЬ)
 KOHД M23B'1'M36B'55'M20B'1'
AYЖEP KOHK A(YЖEP)
 KOHK A(YЖEP+2)
 KOHД M21B'5'
YЖEP KOHД П'ЦП ЗAH'
 KOHД П'ЯT PAЗ'
 KOHД П'METKOЙ'
ПЗC KOHД П'ШИФP 4'
 AIF (&ЭФ EQ 0).ПЗC
 KOHД П'199000'
 AGO .ПЗCC
.ПЗC ANOP
  KOHД П'155070'
.ПЗCC ANOP
  KOHД П'00000З'
 KOHД П'C,0E00'M24B'115'
 KOHД B'5000'
 KOHД B'0'    N БOБИHЫ
 KOHД B'0'    ИHФ-Я O PAЗM.
 KOHД B'0'    ЧИCЛO OШ.PAЗM.
 KOHД П'0!0!0!'M40B'132'M24B'132'M8B'132'                      
 KOHД П'EKOHEЦ'
HДEФ KOHK A(THДEФ)
 KOHK A(THДEФ+12)
 KOHД M21B'5'
THДEФ KOHД (2)П'      '
 KOHД П'   Д E'
 KOHД П' Ф E K'
 KOHД П' T O B'
 KOHД П'   H O'
 KOHД П' C И T'
 KOHД П' E Л Я'
 KOHД П'   H E'
 KOHД П'   O Б'
 KOHД П' H A P'
 KOHД П' Y Ж E'
 KOHД П' H O !'
ПEЧATЬ KOHД П'Б 0000'
  KOHД П'00Д   'M40B'175'M32B'173'                             
 KOHД П'00@00H'M40B'031'M32B'174'M16B'175'M8B'173'             
 KOHД П'0000 З'
 KOHД П'.  00З'M16B'175'M8B'173'                               
 KOHД П'BCEГO '
 KOHД П'OШИБOK'
 KOHД B'20'
 KOHД П'000   'M40B'175'M32B'175'M24B'175'                     
 И П7
 
