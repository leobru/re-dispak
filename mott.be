шифр 419999 зс5^
ацпу 128^
лен 43(2222-зп)42(2099)^
еев1а3
*name мотт
*call yeslis
*bemsh
ВВД$$$
МОТТ    СТАРТ   '76000'
	Е
	М
ИПЗ     КОНД    В’0’          СМ
        КОНД    М41В’3’       РК = 3
        КОНД    В’0’          РМР
        КОНД    А(НАЧАЛО)     М33
        КОНД    В’0’          М32
        КОНД    В’201302007’  М21,М27
        КОНД    (6)В’0’       М20, М17-М13
        пам     1
П143    конд    в'0000000000000143'
        конд    в'0000000000000236'
        конд    в'0000000000000210'
П145    конд    в'0000000000000145'
        конд    в'0000000000000220'
        конд    в'0000000000000200'
        конд    в'0000000000000374'
Е8П6    конд    в'0000000000000340'
        конд    в'0000000000000240'
мой377  конд    в'4000000000000377'
КОТ1    конд    в'2377777777777777'
КОТ2    конд    в'7377777777777777'
R       пам     1
D76032  пам     1
HOME    конд    м40X'FF'м32X'C'м24X'88'м16X'88'м8X'88'X'C5'
D76034  конд    м40X'FF'м32X'8E'м24X'78'м16X'F7'м8X'F'X'70'
D76035  конд    м40в'322'м32в'322'
D76036  конд    в'7560534066406640'
        конд    в'4211523261351000'
        конд    в'7560646053404000'
        конд    в'4000000000000000'
        конд    в'0761740202017437'
        конд    в'7777777777605000'
        конд    в'0001003700000000'
СNБЭСМ  конд    в'5000037702400000'
        конд    в'4010033475000000'
        конд    в'4770477051606570'
        конд    в'7777777777605000'
НАЧАЛО  уиа     '2003'
        сч      ШКОПР
        и       D76777
        по      A76120
        нед     Е15П1
        уи      М17
        сч      ШКОПР
        нтж     E48(М17)
        зп      ШКОПР
        уиа     1(М13)
        сч      ТСЛ(М17)
        и       E17
        по      A76066
        пв      ОБЛ(М15)
        уиа     '3'
        уиа     8(М14)
        сч      ГТСЛ+8(М17)
        зп      R(М13)
        сч      ТСЛ(М17)
        и       Е18Е17
        нтж     Е18Е17
        пе      A76065
        уиа     (М14)
        пб      ПОСОБЛ
A76065  сч      R(М13)
        пб      НОВКОД
A76066  счи     М17
        нтж     П37
        уи      М16
        сч      D77000
        и       E48(М17)
        по      A76072
        слиа    -3(М16)
A76072  сч      ГТСЛ+8(М17)
        сда     64+11(М16)
        зп      R(М13)
        счмр    
        по      A76113
        сч      D77213
        и       E48(М17)
        пе      ВЫХОД
        уиа     '2003'
        сч      ВППС(М17)
        или     E41
        слц     E42
        зп      ВППС(М17)
        пе      ВЫХОД
        сч      ШКОРАБ
        или     E46
        зп      ШКОРАБ
        сч      D77021
        или     E48(М17)
        зп      D77021
        сч      D76777
        нтж     E48(М17)
        зп      D76777
        и       D77001
        зп      D77001
        сч      D77162
        или     E48(М17)
        зп      D77162
ВЫХМОН  уиа     НАЧАЛО(М16)
        счи     М16
        зп      ИПЗ+3
        сч      ИВ25
        зп      ИПЗ+5
        пб      ВИСП16
A76113  уиа     '2003'
        пв      ОБЛ(М15)
        уиа     '3'
        мод     R(М13)
        уиа     -32(М15)
        и       E16
        по      A76334
        уиа     -7(М14)
        уиа     15(М15)
        пб      A76166
A76120  сч      СПНОМ+28
        нтж     ШКВЫД
        и       ШКУСТР
        и       Е48П25
        или     D07010
        нтж     D07010
        по      ВЫХМОН
        уиа     '3'
        нед     Е15П1
        уи      М15
        мод     ТБЛ(М15)
        уиа     (М16)
        сч      D77000
        и       E48(М15)
        по      A76155
        уиа     1(М12)
        уиа     -7(М13)
        уиа     -4(М17)
A76131  сч      ТСЛ(М15)
        и       Е36
        пе      A76135
        сч      (М16)
        слц     Е15П1
        нтж     3(М16)
        и       Е15П1
        по      A76161
A76135  мод     (М16)
        мода    (М16)
        уиа     9(М14)
        сч      (М14)
        по      A76162
A76140  мода    (М12)
        и       D77113-1
        по      A76146
        мода    (М15)
A76142  сда     64-1
        зп      D77114
        нтж     D77126(М13)
        и       E48(М15)
        нтж     D77126(М13)
        зп      D77126(М13)
        сч      D77114
        цикл    A76142(М13)
A76146  сч      (М14)
        сда     64-8(М17)
        зп      (М14)
        пе      A76152
        сч      E1
        слц     (М16)
        зп      (М16)
        мода    -7
A76152  пино    A76140(М13)
        сч      E48(М15)
        или     СПНОМ+28
        зп      СПНОМ+28
        уиа     '3'
        пб      НАЧАЛО
A76155  уиа     (М12)
        уиа     -4(М13)
A76156  уиа     (М17)
        сч      E48(М15)
        или     D77121
        зп      D77121
        пб      A76131
A76161  сч      1(М16)
        зп      ТБЛ(М15)
A76162  уиа     A76155-1(М16)
        по      A76164
        уи      М16
        пб      A76135
A76164  уиа     '2003'
        счи     М15
        слц     СВИСТ5
        пб      ПРЯТ
A76166  сч      R(М13)
        нтж     П37(М13)
        сда     64-8
        зп      R(М13)
A76170  и       E9(М14)
        сда     64(М15)
        или     R(М13)
        зп      R(М13)
        слиа    -2(М15)
        цикл    A76170(М14)
        и       П377
        уи      М15
        пио     A76334(М13)
        пб      A77251
ПОСОБЛ  уиа     E29(М15)
        сч      ТСЛ(М17)
        и       E37
        пе      ТЕСТР
        пио     A76205(М13)
        сч      D77316
        и       П377
        чед     
        и       E1
        по      A76205
        сч      ШКУСТР
        и       E48(М17)
        по      ВЫХОД
        счи     М17
        слц     СВИСТ0
        пб      ПРЯТ
A76205  сч      ШНР
        и       E48(М17)
        пе      '17060'
        сч      R(М13)
НОВКОД  и       П177
        уи      М15
        сч      ШРИН
        и       E48(М17)
        по      ВУПП
        слиа    -13(М15)
        пио     SW5(М15)
        слиа    13(М15)
ВУПП    сч      ТАБКОД(М15)
        сда     64+8(М14)
        и       П377
        зп      R(М13)
        и       E8
        по      ЗПСИМВ
        сч      ШКАС
        или     ШКУСТР
        и       E48(М17)
        по      SW5
        мод     R(М13)
        пб      A76156
        сч      E6
        пб      A76261
        уиа     4(М15)
        пб      A76270
        уиа     29(М15)
        пб      A76270
        уиа     27(М15)
        пб      A76270
        сч      
        пб      A76261
        уиа     28(М15)
        пб      A76270
        уиа     26(М15)
        пб      A76270
        уиа     25(М15)
        пб      A76270
        уиа     7(М15)
        пб      A76270
        уиа     3(М15)
        пб      A76270
        уиа     24(М15)
        пб      A76270
        уиа     15(М15)
        пб      A76270
        уиа     (М15)
        пб      A76270
        уиа     23(М15)
        пб      A76270
        уиа     14(М15)
        пб      A76270
        уиа     22(М15)
        пб      A76270
        уиа     1(М15)
        пб      A76270
        уиа     10(М15)
        пб      A76270
        уиа     18(М15)
        пб      A76270
        уиа     20(М15)
        пб      A76270
        уиа     19(М15)
        пб      A76270
        уиа     9(М15)
        пб      A76270
        уиа     11(М15)
        пб      A76270
        уиа     ВЫХОД(М15)
        пб      A76403
        уиа     8(М15)
        пб      A76270
        уиа     5(М15)
        пб      A76270
        уиа     21(М15)
        пб      A76301
        уиа     2(М15)
        пб      A76270
        уиа     17(М15)
        пб      A76270
        уиа     ВЫХОД(М15)
        пб      A76435
        уиа     16(М15)
        пб      A76270
        сч      E7
        пб      A76261
A76261  зп      R(М13)
        нтж     6(М16)
        и       Е15П1
        по      A76265
        сч      6(М16)
        и       Е48Е47
        или     R(М13)
        пб      A76267
A76265  сч      6(М16)
        ржа     '13'
        по      ВЫХОД
        слц     E47
A76267  зп      6(М16)
        пб      ВЫХОД
A76270  сч      6(М16)
        ржа     '13'
        пе      A76274
        сда     64+5
        уи      М14
        сч      КЗП2+14(М14)
        и       E48(М15)
        пе      A76275
A76274  уиа     D77631+7(М14)
        мод     6(М16)
A76275  слиа    E19(М14)
        сли     М15(М14)
        пио     ОТСИМВ(М15)
        сч      6(М16)
        и       Е15П1
        зп      6(М16)
        уиа     -8(М14)
        пб      ВУПП
A76301  сч      6(М16)
        или     E47
        нтж     E47
        пе      A76270
        сч      E48
        пб      A76267
ТЕСТР   сч      R(М13)
        и       П377
        зп      R(М13)
        и       П177
        нтж     П37
        по      A76364
        нтж     D76765
        по      ETX1
        пб      '17147'
ЗПСИМВ  сч      ШКВЫД
        уиа     ВЫХОД(М14)
        и       E48(М17)
        пе      ВЫКЛБ
ЗПСЕС   мод     (М16)
        сч      9(М16)
        сда     64-8
        или     R(М13)
        мод     (М16)
        зп      9(М16)
        уиа     E45(М15)
        сч      (М16)
        ржа     '13'
        пе      З1
        нтж     3(М16)
        и       мой377
        по      З2
        уиа     КЗП2(М15)
        сч      ШКАС
        или     ШКУСТР
        и       E48(М17)
        пе      З1
        сч      Е46Е45
        пб      A76326
З1      сч      (М16)
        слц     (М15)
A76326  зп      (М16)
        пб      (М14)
З2      сч      1(М16)
        зп      ТБЛ(М17)
        по      КПФШ
        сч      6(М16)
        мод     ТБЛ(М17)
        зп      6
        сч      Е46Е45
        мод     ТБЛ(М17)
        зп      
        пб      (М14)
A76334  сч      ТСЛ(М17)
        и       E37
        по      ВУПП+6(М15)
        счи     М15
        сда     64-2
        или     E8
        зп      R(М13)
        слиа    -29(М15)
        пио     A76343(М15)
        слиа    6(М15)
        пино    ЗПСИМВ(М15)
        пв      A76404(М15)
        уиа     ВЫХОД(М14)
        пб      ЗПСЕС
A76343  уиа     ЗПСЕС(М15)
        пв      A76435(М14)
        сч      (М16)
        пв      A76441(М15)
A76345  сч      D77202
        и       ШКОПР
        пе      НАЧАЛО
        сч      D77202
        или     ШКОПР
        зп      ШКОПР
        сч      
        зп      D77202
        пб      НАЧАЛО
ВЫХОД   пино    A76345(М13)
        мод     D01425
        уиа     (М13)
        мод     Р
        уиа     (М14)
        пб      A76547
ВЫКЛБ   сч      
        зп      ВППС(М17)
SWCV    мода    
        пб      ВЫХОД
        уиа     ВЫХОД(М15)
        пб      A76403
A76360  уиа     (М15)
        пб      ОТСИМВ
        уиа     ВЫХОД(М15)
        пб      A76435
НЕЛЬЗЯ  уиа     ERR(М14)
        пб      СБРОСБ
SW5     уиа     ВЫХОД(М14)
        пб      ETX
A76364  уиа     A76466(М14)
        пб      DELERA
U76365  сч      ПЕОТ
        пб      СNТRО
SW10    пино    ВЫХОД(М13)
        пв      СБРОСБ(М14)
ВЫДNЦП  мод     ГОД
        сч      ТАБКОД
        и       Е40П33
        или     СNБЭСМ
        слиа    -1(М16)
        пб      ВЫДNЦ1
        пб      ЗПСИМВ
SW15    уиа     ВЫХОД(М14)
        пб      CTRLS
        сч      П145
        зп      R(М13)
        сч      ТСЛ(М17)
        или     E31
        зп      ТСЛ(М17)
        пб      ETX1
ВЫДNЦ1  зп      R(М13)
        сч      ШVD130
        и       E48(М17)
        по      A76402
        уиа     '10400'(М15)
        счи     М15
A76402  или     R(М13)
        пб      A76500
A76403  сч      П377
        зп      R(М13)
A76404  сч      ШКВЫД
        и       E48(М17)
        пе      ЗАЧЕМ
        сч      8(М16)
        нтж     (М16)
        по      A76467
КПД     мод     (М16)
        сч      9(М16)
        сда     64-8
        или     R(М13)
        сд      (М16)
        мод     (М16)
        зп      9(М16)
        счи     М17
        слц     СВИСТ4
        пб      ПРЯТ
CTRLS   сч      ШVD130
        и       E48(М17)
        пе      SW10
        пб      КПФШ1
КПФШ    уиа     '2003'
        сч      ТСЛ(М17)
        нтж     E28
        зп      ТСЛ(М17)
        сч      ШКАС
        или     ШКУСТР
        и       E48(М17)
        пе      КПФШ1
        сч      ТСЛ(М17)
        или     E31
        зп      ТСЛ(М17)
КПФШ1   сч      E47
        или     ШКОРАБ
        зп      ШКОРАБ
        сч      E48(М17)
        или     ШКЗАПР
        зп      ШКЗАПР
        сч      ШЗПРИМ
        или     E48(М17)
        зп      ШЗПРИМ
        сч      D07010
        и       E48(М17)
        пе      (М14)
        сч      9(М16)
        сда     64+40
        нтж     ПЕОТ
        по      ВЫХОД
        пб      ВЫКЛБ
A76435  сч      ШКВЫД
        и       E48(М17)
        пе      ВЫХОД
        сч      (М16)
        нтж     8(М16)
        зп      8(М16)
        по      A76460
        сч      (М16)
A76441  зп      8(М16)
        пб      (М15)
ETX     сч      П377
        зп      R(М13)
ETX1    сч      ШКВЫД
        и       E48(М17)
        пе      ВЫХОД
        сч      ШКУСТР
        или     ШКАС
        и       E48(М17)
        по      КПД
        сч      ТСЛ(М17)
        и       E29
        по      КПД
        уиа     ERR(М14)
        пб      СБРОСБ
ЗАЧЕМ   сч      ТСЛ(М17)
        и       Е36
        пе      ВЫХОД
        уиа     ОТМВД(М14)
СБРОСБ  уиа     '2003'
        мод     ТСЛ(М17)
        уиа     (М16)
        сч      Е46Е45
        зп      (М16)
        сч      П60
        зп      4(М16)
        сч      ТСЛ(М17)
        зп      ТБЛ(М17)
        пб      (М14)
A76460  уиа     D76036+4(М15)
        пв      СБРОСБ(М14)
        и       E17
        пе      A76466
        сч      ШКУСТР
        и       E48(М17)
        по      ВЫХОД
q1      мода    (М13)
        уиа     КЗП2+4(М15)
        сч      E4
        зп      4(М16)
A76466  слиа    -1(М16)
        пб      A76477
A76467  зп      8(М16)
        сч      D76737
СNТRО   зп      R(М13)
        пб      ЗПСИМВ
ERR     сч      ШНР
        и       E48(М17)
        мода    (М13)
        уиа     D76035(М15)
        пе      A76466
        пв      '17267'(М15)
        мода    (М13)
        пам     0
        уиа     HOME(М15)
        пам     0
        сч      (М15)
        зп      9(М16)
A76477  сч      2(М15)
A76500  зп      10(М16)
        сч      
        зп      11(М16)
        уиа     ВЫХОД(М16)
        сч      ШКУСТР
        или     ШКАС
        и       E48(М17)
        по      (М16)
        сч      ТСЛ(М17)
        или     Е36
        зп      ТСЛ(М17)
        сч      ШЗПРИМ
        или     E48(М17)
        зп      ШЗПРИМ
УСТВД2  сч      ШКВЫД
        или     E48(М17)
        зп      ШКВЫД
        и       D77001
        по      A76512
        пв      '17516'(М15)
A76512  сч      ШКАС
        и       E48(М17)
        по      (М16)
        сч      ПРЕДЕЛ
        и       E27
        по      A76516
        мод     D77354
        пб      
A76516  сч      E48(М17)
        или     '7777'
        зп      '7777'
        уии     М15(М16)
        сч      E6
        пб      УСТПРП
DELERA  сч      ШКВЫД
        и       E48(М17)
        пе      ЗАЧЕМ
        сч      ШНР
        и       E48(М17)
        уиа     (М16)
        по      A76525
        уиа     2(М16)
A76525  мода    
        пв      '17267'(М15)
        мода    (М16)
        мода    (М13)
        уиа     КЗП2+6(М15)
        пб      СБРОСБ
        сч      ШКОРАБ
        или     E45
        зп      ШКОРАБ
        сч      E48(М16)
        или     D77022
        зп      D77022
        сч      E48(М16)
        или     ШЗПРИМ
        зп      ШЗПРИМ
        пб      (М15)
ОТМВД   сда     64+15
        и       П7
        уи      М15
        сч      D76036+4(М15)
        зп      9(М16)
        сч      
        зп      10(М16)
        сч      ТСЛ(М17)
        или     E35
        или     E19
        зп      ТСЛ(М17)
        пб      ВЫХОД
        сч      ШЗПРИМ
        и       E48(М17)
        пе      ВЫХОД
        уиа     E29(М15)
АС4     сч      ТСЛ(М17)
        или     (М15)
        зп      ТСЛ(М17)
        пб      ВЫХОД
A76547  сч      E37
        нтж     ВСЕЕД
        уи      
        рег     '37'
        пб      БМВ
КОНВЫД  сч      ШКВЫД
        нтж     E48(М15)
        зп      ШКВЫД
        сч      ТСЛ(М15)
        и       E27
        пе      КВ2
        сч      D77012
        пе      КВ2
        сч      ШЗПРИМ
        или     E48(М15)
        нтж     E48(М15)
        зп      ШЗПРИМ
        сч      ТСЛ(М15)
        и       E32
        по      КВ2
        мод     ТБЛ(М15)
        сч      5
        мод     ТБЛ(М15)
        зп      
        пб      КВ4
КВ2     сч      Е46Е45
        мод     ТСЛ(М15)
        зп      
        сч      ТСЛ(М15)
        зп      ТБЛ(М15)
        и       Е33
        пе      КВ4
КВ3     сч      ШКОКВД
        или     E48(М15)
        зп      ШКОКВД
        сч      ШКОРАБ
        или     E43
        зп      ШКОРАБ
КВ4     счи     М15
        слц     СВИСТ7
        пб      ПРЯТ
A76575  сч      ТСЛ(М15)
        и       ГАШТСЛ
        зп      ТСЛ(М15)
        и       E17
        пб      (М16)
A76600 сч      СЧПР1
        слц     E1
        зп      СЧПР1
        уи      М15
        уии     М16(М15)
        слиа    -3(М15)
        и       E3
        пе      A76605
        слиа    5(М15)
A76605  сч      D76776
        нтж     D77000
        зп      АКТИВН
        увв     '4100'
        сда     64-36
        и       АКТИВН
        зп      СПНОМ+1
        нтж     АКТИВН
        или     D76777
        зп      D76777
        нтж     РАБШК
        или     ШЗПРИМ
        нтж     ШЗПРИМ
        и       СПНОМ+1
        зп      D01425
        или     РАБШК
        зп      РАБШК
        сч      D01425
        или     РАБШК(М15)
        зп      РАБШК(М15)
        сч      РАБШК(М16)
A76620  зп      Р
        по      A76641
        нед     Е15П1
        уи      М15
        уиа     (М17)
        пино    A76624(М16)
        уиа     3(М17)
A76624  сч      СПНОМ+1
        и       E48(М15)
        сда     64+7(М17)
        или     СПНОМ+2(М15)
        сда     64-1
        зп      СПНОМ+2(М15)
        и       E48(М15)
        по      A76637
        пио     A76632(М16)
        нтж     РАБШК(М16)
        зп      РАБШК(М16)
A76632  сч      СПНОМ
        или     E48(М15)
        зп      СПНОМ
        сч      СПНОМ+2(М15)
        зп      ГТСЛ+8(М15)
        сч      
        зп      СПНОМ+2(М15)
        сч      РАБШК
        нтж     E48(М15)
        зп      РАБШК
A76637  сч      Р
        нтж     E48(М15)
        пб      A76620
A76641  сч      СПНОМ+1
        и       ШКУСТР
        или     D07010
        нтж     D07010
        или     ШКВЫД
        нтж     ШКВЫД
        и       ТАЙНА
        или     D01425
        нтж     ВКАНАЛ
        и       АКТИВН
        нтж     ВКАНАЛ
        зп      ВКАНАЛ
        пио     A76716(М16)
        уии     М15(М16)
        слиа    -5(М15)
        пино    A76667(М15)
        сч      
        зп      СЧПР1
A76652  уиа     4(М16)
        сч      СПНОМ+26(М15)
        по      A76663(М15)
        мод     СПНОМ+30(М15)
        уиа     (М17)
        мода    (М15)
        сч      D77126+1(М17)
        нтж     ВЫДАТЬ
        и       СПНОМ+26(М15)
        нтж     ВЫДАТЬ
        зп      ВЫДАТЬ
        цикл    A76666(М17)
        сч      СПНОМ+26(М15)
        нтж     СПНОМ+28
        зп      СПНОМ+28
        сч      
        зп      СПНОМ+26(М15)
        пб      A76667
A76663  сч      D76776
        мода    4
A76664  уиа     -10(М17)
        нтж     D77000
        и       СПНОМ+28
        зп      СПНОМ+26(М15)
A76666  счи     М17
        зп      СПНОМ+30(М15)
A76667  сч      ВКАНАЛ
        или     ВЫДАТЬ
        сда     64+24
        уи      
        увв     '140'
        сч      ШКВЫД
        или     D07010
        нтж     D07010
        и       Е48П25
        нтж     СПНОМ+28
        или     СПНОМ
        и       D76777
        по      A76676(М16)
        сч      E6
A76676  увв     '31'
        пб      A76676(М16)
        сч      ГУС
        пб      u3701
q       пб      A04177
qq      пб      A04177
A76702  пб      '17506'
qq1     сда     64-36
        и       D77000
        зп      СПНОМ+1
        нтж     D77000
        или     D77001
        зп      D77001
        или     D76777
        зп      D76777
        нтж     РАБШК
        или     ШЗПРИМ
        нтж     ШЗПРИМ
        и       СПНОМ+1
        зп      D01425
        или     РАБШК
        и       D76777
        зп      РАБШК
        сч      D77000
        зп      АКТИВН
        сч      РАБШК
        и       D77001
        уиа     (М16)
        пе      A76620
A76716  сч      МГРП
        или     E19
        зп      МГРП
        уиа     1(М15)
        пб      A76652
ВАСЗВ   сч      (М16)
        слц     E1
        зп      (М16)
        слиа    1(М17)
        слц     Е15П1
        нтж     3(М16)
        и       Е15П1
        пе      A76731
        сч      1(М16)
        по      A76732
        зп      ТБЛ+24(М15)
        уи      М17
        счи     М15
        слц     СВИСТ8
        пб      ПРЯТ
A76731  сч      9(М17)
        пе      '17372'
A76732  уиа     БМВ(М16)
        слиа    24(М15)
        зп      ВППС(М15)
        пб      КОНВЫД
A76734  сч
        пб      A17365
D76735  пам     1
D76736  пам     1
D76737  конд    в'0000000000000175'
        пам     2
ПЕОТ    конд    в'0000000000000207'
КЗП2    конд    в'5400000000000000'
        конд    в'0001743707617437'
        конд    в'0010020040100200'
NLС     конд    в'3026114230461000'
        конд    в'3026117430461000'
        конд    в'3027517236475000'
        конд    п'200000'
        конд    в'0000000000000334'
        конд    в'7760621062200000'
        конд    в'4000717075605540'
        конд    в'7770423262200000'
        конд    в'7770756064605540'
АТС     конд    в'3645615400000000'
НЕДОПС  конд    в'3643743300000000'
        конд    в'2331142522000000'
        конд    в'0105062310000000'
        конд    в'6021021047000000'
ГАШТСЛ  конд    в'7777010377777777'
D76765  конд    в'0000000000000034'
E48E24  конд    в'4000000040000000'
КОТ     конд    п'000/00'
ШСТRLО  пам     2
МЫЖДЕМ  пам     1
ШКОЛА   пам     1
АСОТ    пам     2
D76776  конд    в'7777600000000000'
D76777  пам     1
D77000  пам     1
D77001  пам     1
ШКОТЛ   пам     1
ШЗНКТ   пам     1
ШЗНКТ1  пам     1
ШКЭ71   пам     1
ШКВЭ71  пам     1
ШКОПР   пам     1
ШКВЫД   пам     1
ШЗПРИМ  пам     1
D77012  пам     1
ТАЙНА   конд    в'7777777777777777'
ШКОКВД  пам     2
ШКЗАК   пам     1
ШКОРАБ  пам     1
ШКЗАПР  пам     1
D77021  пам     1
D77022  пам     1
ШКАС    пам     1
ШКЗАКВ  пам     2
НОМУС   пам     1
ШКУСТР  пам     1
ДШКОПТ  ноп
ШКОПТТ  пам     1
ШСВЯТ   пам     1
ВЫДАТЬ  пам     1
ГТСЛ    конд    в'7760000000777777'
НОМУСД  пам     1
НОМУС1  пам     1
в6050   конд    в'6050'
D77037  конд    в'6000000001000000'
D77040  конд    в'4000000177700000'
        конд    в'2000000000001777'
ключтм  конд    п'КЛЮЧТМ'
        пам     39
        конд    в'7760000000000000'
D77113  конд    в'7777000000000000'
D77114  пам     1
CTRLN   конд    в'0000000000000216'
        конд    в'7777777700000000'
D77117  пам     2
D77121  пам     5
D77126  пам     3
ПРЯТ    уиа     '2003'
        зп      ПАР
        и       П377
        зп      РЯЧ
        сч      ПАР
        сда     64+8
        зп      РЯЧ+1
        сда     64+16
        зп      ПАР
        сч      Е48П41
        мод     РЯЧ+1
        сда     64
        зп      D77166
        мод     РЯЧ
        и       ТАС
        нтж     D77166
        пе      НЕПОЛН
        сч      ШРНОМБ
        или     E48
        зп      ШРНОМБ
        сч      E26
        или     ШКИВ
        зп      ШКИВ
        пб      ВОН
НЕПОЛН  мод     РЯЧ+1
        сч      E41
        мод     РЯЧ
        слц     ТАС
        мод     РЯЧ
        зп      ТАС
ВОН     мод     ПАР
        пб      
        конд    в'7700000000777777'
СВИСТ0  конк    A(АС4)
        конк    в'00013001'
СВИСТ1  конд    в'0001734500013031'
СВИСТ2  конд    в'0001727300013031'
СВИСТ4  конк    A(КПФШ)
        конк    в'00007001'
СВИСТ5  конк    A(КОНВЫД)
        конк    в'00003001'
СВИСТ7  конк    A(A76575)
        конк    в'00003001'
СВИСТ8  конк    A(A76731)
        конк    в'00003031'
        пам     1
D77162  пам     2
РЯЧ     пам     1
        пам     1
D77166  пам     1
ПАР     пам     1
A77170  вчоб
        вч      Е1
        сда     64+5
        уи      М3
        сли     М3(М16)
        сч      D77175
        или     E48(М3)
        зп      D77175
        пб      A67662
D77175  пам     1
        конд    в'0000000000400024'
        пам     1
        конд    в'7777177777777777'
АКТИВН  пам     1
D77202  пам     2
        конд    п'      '
        конд    в'7400000000000000'
ШКАЛ    пам     1
ШНР     пам     1
ШРИН    пам     1
ШVD130  пам     1
D77212  пам     1
D77213  пам     1
D77214  конд    в'4650423147016414'
        конд    в'2104430320241305'
D77216  пам     1
D77217  пам     1
D77220  пам     1        
E77221  счи     М32
        уи      М15
        слиа    -'2527'(М15)
        пино    ST7007(M15)
E77223  уиа     '2000'
        сч      (М3)
        уиа     '2003'
        зп      РМР
        счи     М12
        зп      РК
        и       П1777
        или     E11
        уи      М15
        счи     М14
        сда     64-15
        или     РК
        сда     64+10
        сда     64-38
        рзб     ПРИП+1
        рег     '20'
        сч      РМР
        и       СМ
        зп      СМ
        сч      РМР
        нтж     ВСЕЕД
        уиа     '2002'
        и       (М15)
        уиа     '2003'
        или     СМ
        рег     '101'
        уиа     '2002'
        зп      (М15)
        уиа     '2003'
        уиа     -3(М16)
        зп      СМ
        счи     М17
        зп      И17
        мод     ГУС
        уиа     (М17)
A77245  зп      2
        зп      3
        цикл    A77245(М16)
        пв      БИЗОН1(М15)
        мод     И17
        уиа     (М17)
        пб      A06561
A77251  счи     М15
        зп      D77316
        сч      D77334
        и       E48(М17)
        по      ПОСОБЛ
        счи     М15
        и       П177
        по      ПОСОБЛ
        уи      М15
        сда     64+5
        пе      ПОСОБЛ
        сч      D77331
        и       Е48-1(М15)
        по      ПОСОБЛ
        счи     М15
        сда     64+3
        и       П3
        уи      М15
        сч      D77316
        и       П7
        умн     I6
        счмр    64
        зп      D77317
        сч      D77320+1(М15)
        мод     D77317
        сда     64-2
        рзб     D77335
        и       П377
        зп      R(М13)
        пб      ПОСОБЛ
A77270  зп      42(М7)
        сч      D07025
        и       E48(М2)
        мод     '71422'
        пе      '506' смещение
        сч      D77334
        и       E48(М2)
        по      A77313
        сч      42(М7)
        нтж     П377
        пе      A77277
        сч      D77320
        зп      42(М7)
        пб      A77313
A77277  сч      42(М7)
        и       П177
        по      A77313
        уи      М14
        сда     64+5
        пе      A77313
        сч      D77332
        и       Е48-1(М14)
        по      A77313
        счи     М14
        сда     64+3
        и       П3
        уи      М6
        счи     М14
        и       П7
        умн     I6
        счмр    64
        уи      М14
        сч      D77320+5(М6)
        сда     64-2(М14)
        рзб     D77335
        и       П377
        зп      42(М7)
A77313  сч      42(М7)
        сда     64-8
        зп      42(М7)
        уиа     -7(М6)
        пб      A07460
D77316  пам     1
D77317  пам     1
D77320  конд    в'0000000000000215'
        пам     1
        конд    в'1400007700000314'
        конд    в'0000003574000000'
        конд    в'0003727117503000'
        конд    п'000Д00'
        конд    в'3300005000000072'
        пам     1
        конд    в'1403246300357471'
D77331  конд    в'0031006077000000'
D77332  конд    в'1021100167400000'
        конд    в'3046040000000000'
D77334  пам     1
D77335  конд    в'7777777777777637'
I6      конд    в'6400000000000006'
A77337  сч      D77334
        и       E48(М17)
        по      '7561'
        сч      ТСЛ(М17)
        уи      М14
        сч      9(М14)
        сда     64-8
        сда     64+8
        или     D77345
        зп      9(М14)
        пб      '7561'
D77345  конд    в'5160000000000000'
        конд    в'0000000000100000'
        конд    п'0000F0'
        конд    п'00000D'
        пам     2
        конд    в'0000000000300000'
****************** ДИСКИ ******************        
D77354  конд    a(A77355)
A77355  уиа     -7(М14)
        мод     КНАПР-1(М3)
        уиа     7(М1)
A77357  сч      RR(М16)
        мод     КНАПР-1(М3)
        и       E25(М14)
        по      A77372
        сч      E32(М1)
        или     D73336+14(М16)
        зп      D73336+14(М16)
        счи     М16
        и       E3
        сда     64-3
        уи      М10
        мода    (М10)
        сч      ТЗНМД(М1)
        по      A77372
        мода    '627'(М7) смещение
        пв      (М2)
        и       E37
        сда     64+5(М1)
        нтж     D73510(М16)
        и       E32(М1)
        нтж     D73510(М16)
        зп      D73510(М16)
A77372  слиа    -1(М1)
        мода    A77357
        цикл    (М14)
        сч      D73336+14(М16)
        сбр     Е32П25(М3)
        сда     64+36
        зп      D73361
        уиа     49(М11)
        мода    
        пв      A66761(М5)
        сч      РЯД2
        и       П17
        или     D73361
        зп      РЯД2
        уиа     47(М11)
        мода    8(М7)
        уиа     (М5)
        пб      A67002
        сч      ВРЕМЯ
        зп      D77435
        счи     М1
        сда     64+3
        нтж     D77545
        пе      A77414
        счи     М1
        и       П7
        уи      М2
        сч      D73362
        зп      D77545+9(М2)
        сч      D77545+1(М2)
        и       Е24П1
        зп      D77545+1(М2)
        сч      D73361
        сда     64-24
        или     D77545+1(М2)
        зп      D77545+1(М2)
A77414  счи     
        уиа     -3(М2)
A77415  зп      D77434
A77416  сч      D77435
        мода    (М2)
        вчаб    D77432-1
        пе      A77422
        зп      D77435
        сч      D77434
        слц     E29
        пб      A77415
A77422  сч      D77434
        сда     64-4
        зп      D77434
        мода    A77416
        цикл    (М2)
        рзб     D77432
        или     D77433
        пб      (М15)
D77426  конд    ф'1800000'
        конд    ф'180000'
        конд    ф'30000'
        конд    ф'3000'
D77432  конд    п'  0  0'
D77433  конд    в'0000001600000021'
D77434  пам     1
D77435  пам     1
ДИП     сч      ШЗПОМД
        или     E24
        нтж     E24
        зп      ШЗПОМД
ДКО     уиа     -3(М3)
        сч      D73374(М16)
        и       П377
        пе      ЗАН
ДГ      сч      D73403(М16)
        и       КОНСБР(М3)
        пе      A74073
        цикл    ДГ(М3)
ЗАН     уиа     '2003'
        сч      ШЗПОМД
        и       О40
        зп      ШЗПОМД
        пе      Д33
        пб      ВХМД
ДКП     сч      МДНЕИС-3(М15)
        пе      ДКО
        сч      D73471(М16)
        по      ППР
ПП      сч      D73467(М16)
        по      ППИ
        сч      D73374(М16)
        и       Е24П17
        или     ОЖОСВ-3(М16)
        пе      ППИ
        сч      ШЗПОМД
        или     Е48-1(М16)
        зп      ШЗПОМД
        пб      ПРО
ППР     сч      ОСУ-3(М16)
        пе      ПП
ППИ     уиа     4(М16)
        цикл    ДКП(М15)
        пб      ВХМД
qqq     зп      D77477
        сч      D77505
        мод     D77477
        по      
        сч      3
        и       E1
        по      '70600'
        счи     
        зп      D77505
        пб      '70600'
qq2     зп      D77500
        сч      D77505
        мод     D77500
        по      
        пб      '70601'
qqqq    зп      D77501
        сч      D77505
        мод     D77501
        по      
        пб      '70602'
qqqqq   зп      D77502
        сч      D77505
        мод     D77502
        по      
        пб      '70603'
D77477  пам     1
D77500  пам     1
D77501  пам     1
D77502  пам     3
D77505  пам     9
        конд    в'0000000077000000'
        пам     7
        конд    в'0000000000100000'
        конд    п'000100'
        конд    в'0000000000300000'
        конд    п'000200'
        конд    п'000008'
        конд    в'0000000000000517'
        конд    в'0000000000000517'
        конд    в'0000000000000517'
        конд    п'000005'
        конд    п'000005'
        конд    п'000005'
        пам     4
D77545  конд    п'000002'
        пам     16
A77566  сч      ЗАНКМД-3(М16)
        сда     64+3
        и       П7
        нтж     D77545
        пе      A77575
        счи     М13
        слц     П7
        и       П7
        нтж     П7
        уи      М2
        сч      D77545+1(М2)
        и       Е48П25
        или     D73361
        зп      D77545+1(М2)
A77575  цикл    A73646(М13)
        пб      (М10)
A77576  уиа     16(М11)
        уиа     '3'
        мода    
        пв      A66761(М5)
        сч      РЯД2
        зп      56(М3)
        уиа     17(М11)
        пв      A66761(М5)
        сч      РЯД2
        сда     64-12
        или     56(М3)
        зп      56(М3)
        уиа     '2003'
qqq2    сч      D73511
        или     E5(М16)
        нтж     E5(М16)
        зп      D73511
        уиа     '3'
        пв      U74137(М11)
        счи     М3
        и       П3
        уи      М17
        уиа     49(М11)
        уиа     U66772(М5)
        пб      A66761
A77613  сч      R2
        сда     64+41
        и       П77
        зп      D77624
        сч      D77622
        по      A77621
        мод     D77624
        и       Е48-1
        по      A77621
        сч      D77623
        и       E48(М16)
        пе      НЕЛЬЗ БОЭК1
A77621  счи     М16
        пб      (М15)
D77622  пам     1
D77623  пам     1
D77624  пам     2
D77626  пам     1
U77627  уиа     ЗАПЭКС(М16)
        счи     М16
D77630  пам     1
D77631  пам     1
A77632  зп      D77630
        сч      ЗАНКМД-3(М16)
        сда     64+3
        и       П3
A77634  зп      D77631
        сч      D77630
        мод     D77631
        и       Е32П25
        пе      ОСВ1
        пб      A74132
A77637  уи      М15
        уиа     6(М16)
A77640  уиа     '2003'
        сч      D73374(М16)
        и       П377
        пе      ЗАН
        счи     М3
        и       П3
        уи      М3
        сч      D73403(М16)
        или     Е32П25(М3)
        нтж     Е32П25(М3)
        зп      D73403(М16)
        сч      ЗАНКМД-3(М16)
        сда     64+3
        и       П3
        уи      М3
        слиа    -3(М3)
        пб      A74073
****************** КОНЕЦ ДИСКОВ ******************        
* разные внешние
ДИСП70 ВНЕШ ОАС,ВРЕЗП,ТВ206А,КЛЮЧ,A04461,ВРЗАПР,ВРЕМЯ
ДИСП70 ВНЕШ БМВ,ЭКВЫХ,D03453,СИГН,ТВ40,A04750,D03014
ДИСП70 ВНЕШ D01142,ССЫЛКА,П7,РЯО1,РЕЖРАЗ,РАЗМГ,ТУС
ДИСП70 ВНЕШ ГАШРП1,ШКМДП,D02320,D01530,A03664,ИВ25,СТ175
ДИСП70 ВНЕШ АСБОЙБ,Е37Е36,D03233,БЯК,Е42П1,ТЗНМД,РСЧРАЗ,П13
ДИСП70 ВНЕШ П27,D02006,A03605,НМБТР,D02014,МИН17,U3701
ДИСП70 ВНЕШ ШЗРАЗМ,D02657,БПУ,ЗАПВЕТ,D00342,D00350,МИН15
ДИСП70 ВНЕШ П12,A03601,A04325,КРОМЕ,РТЛ,D03232,П14
ДИСП70 ВНЕШ D01332,УПОК,D02074,ШЗЗ,D05167,D05170
ДИСП70 ВНЕШ НЕТНАП,Е47П1,ЗАПРК,П32,ЧОМБМЛ,A04763,A04371
ДИСП70 ВНЕШ ТСЛ,Е6П4,ЭК38,ЭК30,УЧКОН,ШКЗЗ,Е48П25,УСТПРП,П77
ДИСП70 ВНЕШ СМ,РК,ГУС,Е48П43,СЧЗКМБ,НЗАД,РМР,И17,П177,П60
ДИСП70 ВНЕШ П17,И16,ШЗЗПСЧ,ШЗПОМБ,ТМБ,ШГ,ИПОБМ,ШРНОМБ,Е18Е17
ДИСП70 ВНЕШ ГОД,ВСЕЕД,Е15П1,Е46Е45,Р,ПРЕДЕЛ,МГРП,СЧПР1
ДИСП70 ВНЕШ Е24П16,ИНФМБ,П377,ИНФСЛЭ,ШКИВ,Е48Е47,A04177
ДИСП70 ВНЕШ УСМ,УСММБ,П777,П3777,П1777,РЯО,Е33П25,ОЧКУС
ДИСП70 ВНЕШ ЗОНАТР,ЗОНАМЛ,Е21Е18,МПРЛ,Е15П2,Е21Е1,РАБШК
ДИСП70 ВНЕШ КУС2,ТРАЗМ,МГНЕИС,ФКУСАД,П3,П30,П140,П37
ДИСП70 ВНЕШ ОЧКУСД,ШКМД,ШЗПОМД,ВКАНАЛ,ТАС,(RR,R),СПНОМ
ДИСП70 ВНЕШ D01425,ВИСП16,ПРИП,БИЗОН1,КНАПР,Е24П1
КАЧКА  ВНЕШ R2,ШКРЗ
КИТ    ВНЕШ Е40П33,Е32П25,ТБЛ,ВППС,ЕС5017,ЯПРМД,КОНСБР
КИТ    ВНЕШ Е48П41,Е24П17,ОЖОСВ
ТЕРМ   ВНЕШ ТАБКОД,A07460
ВЗУ    ВНЕШ ВХМД,ST7007,D07010,D07025,A06561,ЗАПЭКС
ДИСКИ  ВНЕШ D73510,A74073,СЧЗАКД,РАБМД,D73511,A73646,ОСВ1,РЯД2
ДИСКИ  ВНЕШ D73336,D73361,О40,Д33,D73362,D73374,D73403
ДИСКИ  ВНЕШ МДНЕИС,D73471,D73467,ПРО,ОСУ,ЗАНКМД,U74137
ДИСКИ  ВНЕШ А74132
ХЛАМ   ВНЕШ A66761,U66772,A67662,A67002
БОЭК1  ВНЕШ (НЕЛЬЗ,НЕЛЬЗЯ),ОТСИМВ,ОБЛ,A17365
 ВХОД ШКОПР,ПРЯТ,D77202,СВИСТ1,СВИСТ2,СТRLN,ШКВЫД,D77334
 ВХОД ТАЙНА,ПЕОТ,ЗПСИМВ,ВАСЗВ,ШКОРАБ,ЕТХ1,КОТ1,КОТ,ШКОТЛ
 ВХОД ШКАС,ШVD130,ДШКОПТ,ШЗНКТ,ШЗПРИМ,Е77221,A76600,D76735
 ВХОД ШКЭ71,ШКОПТТ,ШРИН,ШНР,ШКАЛ,QQ2,ДИП,QQQ,QQQQ,QQ1,QQQ2
 ВХОД ДКП,ЗАН,A77566,A77640,A77632,D76736,A77170,СNБЭСМ,НОМУС1
 ВХОД Е8П6,D77220,A77270,П143,УСТВД2,A77576,A77337,NLС,D77000
 ВХОД НЕДОПС,ШСТRLО,АТС,A77355,QQQQQ,ДКО,ШКУСТР,НОМУСД,НОМУС
 ВХОД D76776,D77001,A77634,U77627,U76365,D77216,КОНВЫД,SWСV
 ВХОД НОВКОД,ВЫХОД,ВУПП,D77212,А76364,D77213,SW5,SW15,КПФШ1
 ВХОД R,A77613,A76360,D77217,D77214,A76734,МЫЖДЕМ,ШКВЭ71
 ВХОД ШКЗАК,ГТСЛ,Е48Е24,ШКОКВД,ШСВЯТ,D77626,КЛЮЧТМ,D77037
* 
 ЭКВИВ (ЕВRЕАК,Е35),(ЕСЛВ,Е36),(ЕСВД,Е27),(ЕПРИМ,Е28)
 ЭКВИВ (ЕОШПР,Е29),(ЕОШС,Е30),(ЕТАВ,Е31),(ЕП,Е32)
 ЭКВИВ (ЕПРИГ,Е33),(ЕОСВ,Е34),(ЕВЫД,Е43)
 ЭКВИВ (ЕЛАТР,Е38),(ЕПОВТ,Е39)
 ВХОД ЕЛАТР,ШЗНКТ1
 ВХОД ЕВRЕАК,ЕСЛВ,ЕСВД,ЕПРИМ,ЕОШПР,ЕОШС,ЕТАВ,ЕВЫД
 ВХОД ПАР,РЯЧ,D77040,В6050
 ВХОД ЕП,ЕПРИГ,ЕОСВ
* ЕВRЕАК ОТМЕНА ВЫДАЧИ
* ЕСЛВ СЛУЖ ВЫД
* ЕСВД ВЫД С МНИМ РЕКОРДА
* ЕПРИМ ТЕРМИНАЛ НА ПРИЕМ
* ЕОШПР ОШ НА ПРИЕМЕ
* ЕОШС ОШИБ СОГЛАС (АС)
* ЕТАВ КАРЕТКУ НЕ ВОЗВРАЩАТЬ
* ЕП ПРИЗ ПОДЗАП ТТ
* ЕПРИГ ВЫДАЧА ПРИГЛАШ
* Е37 - ’ Т Е С Т О В Ы Й  РЕЖИМ ’ - РАБОТА В КОДАХ ТЕРМИНАЛА
* ЕПОВТ - КРАХ ДИНАМИКИ.
* Е40 - ПРИЕМ ОТ Э71 
       ФИНИШ
КВЧ$$$
ТРН$$$
ЧТКОМП420070
1-1
БТМАЛФ
ЗОНМОД430030  0010
КНЦ$$$
*end file
``````
ЕКОНЕЦ
