 МАСRО
∧М УВВ ∧А
 АIF ((∧ВS NЕ 0)).К1
∧М КК 27,∧А
 МЕХIТ
.К1 АIF (∧А ЕQ ’’’4102’’’).К2
∧М ДК 27,∧А  ОСТАНОВ
 МЕХIТ
.К2 АNОР
∧М КК 0,0
 МЕХIТ
 МЕND
 Б
&bs seta 0 
ПРИКАЗ СТАРТ ’10000’
 УПОТР ПРИКАЗ(М7)
 КОНД В’0’
 КОНД М41В’3’       РЖА 3
 КОНД (12)В’0’
 КОНД В’77773’      М10=-5 ДЛЯ 16 ПР.
 КОНД (7)В’0’
Б77 КОНД П’000077’
КВЫД КОНД М39В’7’В’1777’
ВРЕМПР КОНД В’62’
 КОНД В’764’
 КОНД В’5670’
 КОНД В’72460’
 КОНД В’537440’
 КОНД В’6673500’
МСК КОНД В’17677577’
 ПАМ 1    ПРИП
П36 КОНД В’36’
 КОНД М47В’1’
К КОНД В’7777740077777400’
К3 КОНД М25В’7’В’16’
 ПАМ 1     РАБ
R3 ПАМ 1
R1 КОНД В’0’
R2 КОНД В’0’
*
*
*      ВХОД В ПРИКАЗ
*      -------------
*
*
 СЧ ТУМБ6
 ПЕ ЭТОПР        ЭТО КНОПКА ’ЗАПРОС’
****** ПРОВЕРКА НА БНБОТ
ВХОДБ УИА 1027
 СЧ ШПРИК
 ПО ЕND          ВЫХОД ИЗ ПРИКАЗА
 НЕД 0
 И П177
 УИ М2
 ЗП НОМУС1
 СЧ ШПРИК
 НТЖ Е48-1(М2)
 ЗП ШПРИК
 СЧ ТСЛ-1(М2)
 УИ М2
****** ПЕРЕПИСЬ
 СЧ Н+9(М2)
 ЗП ТР3
 СЧ Н+8(М2)
 ЗП ТР4
 СЧ Н+7(М2)
 ЗП ТР5
 СЧ Н+6(М2)
 ПБ ВХОД1
*
*
*
ЭТОПР СЧ ТИР4
 ЗП ТР4
 СЧ ТИР5
 ЗП ТР5
 СЧ ТУМБ6
 И П77
ВХОД1 ЗП ТР6
 УИ М1
 УИ М13
 ЗП НАЧП
*
 СЧ ЗАНЯТА
 РЖА 3
 УИА (М4)
 УИА (М6)
 И Е47
 ПО ЗВР
 МОДА ДЕШИФ
 УИА (М12)
ЗАПЕТХ УИА -13(М15)
 СЧ ВСЕЕД
ЕТХ МОДА (М15)
 ЗП ПОЛЕ+14
 МОДА ЕТХ
 ЦИКЛ (М15)
 ПБ (М12)
ДЕШИФ НОП
 УИА -КОЛПР(М13)  8 ПРИКОВ
 СЧ ДОВРЕМ
 И Е48(М1)
 ПЕ ПРКЛЧ ПРИКАЗЫ РАЗРЕШЕННЫЕ ДО ВРЕМ
 СЧ ЗАНЯТА
 И Е7
 ПО ЗВР
ПРКЛЧ НОП --- ПЕРЕКЛЮЧАТЕЛЬ ПРИКОВ
 СЧ Е48(М1)
 МОДА ТПРИК
 И КОЛПР(М13)
 ПЕ ЕСТЬП НАШЛИ ПРИКАЗ
 МОДА ПРКЛЧ
 ЦИКЛ (М13)
*
*
*
 УИИ М13(М1)
 СЧ ТР4
*
 МОДА ВЗ
 ПИО (М13)         ВЦПП
*
 ПБ ТНЕТ2 было тнет
ТПРИК НОП ---
*
*
*
*
*      Д Е Ш И Ф Р А Т О Р   П Р И К А З О В
*      -------------------------------------
*
*
******* ЦИРКУЛ:  2    7,10      17
*       ИМЯ:    ПРТ  БОБ,ДАЙ   ---
 КОНД М45В’1’М39В’3’М32В’1’
*
*
******* ПРИК1:  3      5     6      15     36    41    53
*       ИМЯ:   АДР    ВМГ    ВКН     СТО    СПЕ   УПР   КТЧ
      КОНД   М44В’1’М42В’1’М41В’1’М34В’1’М17В’1’М14В’1’М4В’1’
*
*
****** ПРИК2:  1      11     21    25
*      ИМЯ:   ВВД,ФС  СБВ    ВЫБ    ПОР
 КОНД М46В’1’М38В’1’М30В’1’М26В’1’
*
*
****** ПРИК3:  24     26    30
*      ИМЯ:   ЗРА    ПОР   ПАК(РАЗ,РЗД,РЗЕ)
 КОНД М27В’1’М25В’1’М23В’1’
*
*
*   ПРИК4:    4    13   14   16   20   27   31   32
*   ИМЯ:    СМЕ   ВЫД  ПОВ  ВРЕ  ПРО  ДАТ  КЛК  СБО
 КОНД М43В’1’М33В’15’М31В’1’М24В’1’М21В’3’
*
*
****** ПРИК5: 12    44     45
*      ИМЯ:  УСТ   НАЙ    СВМ(СВД)
 КОНД М37В’1’М11В’1’М10В’1’
*
*
******* ПРИК6:  37       40    42     43
*       ИМЯ:   НОТ      ПУЛ    ПОД    НУС
 КОНД М16В’1’М15В’1’М13В’1’М12В’1’
*
*
****** ПРИК7:  22
*      ИМЯ:   НОМ
 КОНД М29В’1’
*
*
*------ ПРИК8:   33
*       ИМЯ:    ДИС
 КОНД М20В’1’
*
*
*******ПРИК9  46   50
*      ИМЯ   ОШУ  ВМЛ
 КОНД М9В’1’М7В’1’
*
*
******* ПРИСКВ
*       ИМЯ:       С К В
 КОНД М28В’1’
*
*
ЗВР УИА ЗВР1-П(М16)
 ПБ ЗВРА
*
*
*
*
ЕСТЬП МОДА КУСПР-П+КОЛПР(М13)
 УИА (М13)
ВЫЗОВ СЧИ М7
 СДА 64-2
 СЛИ М13(М7)
 ИЛИ (М13)
 СЛЦ НОММБ1
 УИИ М2(М1)       ЗАПОМНИЛИ N ДИРЕКТИВЫ
 УИИ М1(М7)
 СЛИА 768(М1)
 ЗП РЯ
 И КВЫД
 НТЖ NСЕКТ
 ПО (М1)
 НТЖ NСЕКТ
 ЗП NСЕКТ
 СЧ РЯ
 УИИ М16(М1)
 ПБ ФИЗОБМ
*
*
*
*      Д И Р Е К Т И В А  N0
*      ----------------------
*
*         ВЦПП -  ТР4=77;
*         ВЦПТ - 44Р ТР4=1;
*         ВЦП  -  ТР4=0;
*         ВЦП <N ПРОГР.КАНАЛА> -  ТР4=
*          =  <N ПРОГР.КАНАЛА>.
*
ВЦП УИ М5
НАВЦП СЧ
 ЗП ТР5
 УИА (М1)
 ПБ НАВЦП1
*
ВЗ УИА (М1)      ДЛЯ ВРЕМЕНИ
 СЧ ТР4
 НТЖ =П’А’
 ПЕ ВЗ1          НЕ ВЦПА
*
 СЧ ШКСПЕЦ
 ПБ ВЦ2
*
ВЗ1 СЧ ТР4
 НТЖ П377
 ПЕ ВЦ1
*      == ЭТО СТRL/О ==
 МОДА NКТСЛ
 ПВ (М17)
 УИ М5
 ПБ НАВЦП1
*
ВЦ1 СЧ ТР5
 ПЕ ВЦ2
 СЧ ВСЕЕД
 НТЖ ШКСПЕЦ
ВЦ2 И ШКРЗ
    или '71664'
    нтж '71664'
 ПО ТНЕТ
 ЗП ТР5
ПОИСКЗ НЕД
 УИ М5
 СЧ ТР5
 НТЖ Е48-1(М5)
 ЗП ТР5
*      == ВЦП <ПАР-Р> ==
 СЧ ТР4
 НТЖ П17
 ПЕ ВРЗА         НЕТ
*
НАВЦП1 НОП
 МОДА НЕТОБМ
 УИА (М12)
 МОДА NНNУ
 ПВ (М17)
 МОДА ДПОЛЕ
 УИА (М12)
 МОДА ПЕЧОБМ
 ПВ (М17)
 УИА ДПОЛЕ-П(М16)
 МОДА ЗВР2
 ПВ (М17)
*
НЕТОБМ НОП
*
ВРЗА СЧ КОПР1
 ЗП ПОЛЕ
 ЗП ДПОЛЕ
 СЧ ТУСП-1(М5)
 УИ М14
 СЧ ТР4
 НТЖ =П’Т’
 ПЕ НЕВЦПТ
 СЧ ШЗНКТ
 ПО ТНЕТ         НЕТ ДИАЛ.ЗАДАЧИ
*
 СЧ ТЕРЕЗА(М14)
 ПО ПОИСК1
 ЗП ДТЕРЕЗ
 НЕД
 УИ М10
 СЧ ДТЕРЕЗ
 НТЖ Е48-1(М10)
 ЗП ДТЕРЕЗ       СТ.НОМЕР НЕ ВЫДАВАТЬ
 ПО НЕВЦПТ
ВЦПТ0 СЧ КОПР
 ЗП ДПОЛЕ
 УИА (М13)
 УИА 12(М11)
 СЧ =М40П’ ’
 ЗП МАРШ
*
ВЦПТ1 СЧ ДТЕРЕЗ
 ПО ВЦПТТ
 МОДА ТТТЕРМ
 ПВ (М2)
 МОДА (М13)
 ЗП ДПОЛЕ+1
ВЦПТ2 ноп
 СЧ ВСЕЕД
 МОДА (М13)
 ЗП ДПОЛЕ+2
 СЛИА 1(М13)
 СЛИА -1(М11)
 МОДА ВЦПТ4
 ПИО (М11)
 ПБ ВЦПТ1
ВЦПТ4 УИА ДПОЛЕ-П(М16)
 МОДА ЗВР2
 ПВ (М17)
 ПБ ВЦПТ0
ВЦПТТ МОДА НЕВЦПТ
 ПИО (М13)
 УИА ДПОЛЕ-П(М16)
 МОДА ЗВР2        С: ПЕРЕЧ.ФИЗ.N ТЕРМ.
 ПВ (М17)
*
*------ N ПРОГР.КАНАЛА ------*
*
НЕВЦПТ СЧИ М5
 СДА 64-42
 РЗБ НН77НН
 ИЛИ УР00РУ
 ЗП ПОЛЕ+3
 СЧ МСК1
 И Е48П24
 ЗП ПОЛЕ+4       РРР000 ИЛИ УУУ000
 СЧ И(М14)
 СДА 64+21
 И П77
   уи   м17
   по   шифр
   сч   E48-1(м17)
   нтж  '71664'
 ПО ШИФР
    счи м17
 СДА 64-42
 РЗБ =П’770000’
 ИЛИ =П’00 000’
 ЗП ПОЛЕ+4       <ПРОГР.КАНАЛ ГЛ.З-ЧИ> 000
*
*------ ШИФР МАТЕМАТИКА ------*
*
ШИФР СЧ ШИФРМ(М14)
 РЗБ МСК1
 ЗП ПОЛЕ+1       НАЧАЛО ШИФРА
 СЧ ШИФРМ(М14)
 СДА 64-24
 РЗБ МСК1
 ЗП ПОЛЕ+2       КОНЕЦ ШИФРА
*
*
*
*------ ДАЙ N ТЕРМ ------*
*
ТЕРМ СЧ =М40В’7’
 ЗП МАРШ
 СЧ ТЕРЕЗА(М14)
 ПО ПОРИ
 ЗП ДТЕРЕЗ
 МОДА ТТТЕРМ
 ПВ (М2)
 ЗП ПОЛЕ
*
*
ПОРИ МОДА ВРЗ
 УИА (М2)
НЕТТЕР СЧ ТР4
 НТЖ =П’К’
 ПО КТО
*
*------ ВРЕМЯ СЧЕТА ------*
*
 СЧ ЯЧВР(М14)
 СДА 64+39
 СДА 64-16         9 СТАРШ.РАЗР.ВРЕМЕНИ
 ЗП R2
 СЧ 35(М14)
 СДА 64+32         МЛАДШ.16 РАЗР.
 ИЛИ R2
 ЗП R2            ЗАКАЗ.ВРЕМЯ СЧЕТА
 СЧ 39(М14)
 СДА 64-25
 СЛЦ 39(М14)
 СЛЦ 33(М14)
 СДА 64+23
 СЛЦ R2            ВРЕМЯ СЧЕТА ЗАДАЧИ
 И Е1П25
 МОДА ВР1А    РЕШ
 ПИО (М1)
 ВЧОБ R2            ВРЕМЯ ДО КОНЦА СЧЕТА
ВР1А УИА 6(М10)
 УИА (М11)
ВР1 ЗП R1
 МОДА ВРЕМПР-2
 ВЧ (М10)
 ПЕ ВР2
 СЛИА 1(М11)
 ПБ ВР1
ВРЗ СЧ ТВР1+1
 СДА 64+24
 ИЛИ П17
 НТЖ Е5
 ЗП ПОЛЕ+5
*
 СЧ ТВР1
 СДА 64+24
 ЗП ТВР1
 СЧМР 0
 ИЛИ ПОЛЕ+5
 ЗП ПОЛЕ+5       ММ.СС.Р
*
 СЧ ТВР1
 ИЛИ ПОЛЕ+4
 ЗП ПОЛЕ+4       УУУЧЧ. ИЛИ РРРЧЧ.
 УИА 1(М1)
 МОДА НЕТТЕР
 ПВ (М2)
 ЗП ПОЛЕ+6
 СЧ ТВР1+1
 ЗП ПОЛЕ+7
 СЧ ТР4
 нтж =п'з'
 по G10327
 СЧ ТР4
 НТЖ =П’Р’
 ПЕ НЕВЦПР
*
*------ В Ц П Р ------*
*
 СЧ ЯЧЛИС(М14)
 И П7777
 ЗП РЯ1
 ПВ ПЕРЕВ(М15)
 СДА 64-8
 ИЛИ =П’ 0000:’
 ЗП ПОЛЕ+9       ЗАКАЗ.ЛИСТОВ ОЗУ
*      *-- СЧЕТ РЕАЛЬНО ИСП.ОЗУ --*
 СЧ РЯ1
 СЛЦ ЛИСОСТ(М14)
 И П7777
 ПВ ПЕРЕВ(М15)
 ИЛИ ПРОБ1
 ЗП ПОЛЕ+10     ИСП.ЛИСТЫ
 СЧ ПУСТО      ПРОЗАПАС
 ЗП ПОЛЕ+8       ДЛЯ СИММЕТРИИ
*      *-- СЧЕТ ЗАКАЗ-ЫХ ТРАКТОВ --*
 СЧ ШЗНМБ(М14)
 СДА 64+СДТ
 И П777
 ЗП РЯ1
 ПВ ПЕРЕВ(М15)
 ИЛИ =П’   000’
 ЗП ПОЛЕ+11
*      *-- СЧЕТ РЕАЛЬНО ИСП.ТРАКТОВ --*
 СЧ ШЗНМБ+1(М14)
 СДА 64+СДТ
 И П777
 ПО НЕТТР        ТРАКТЫ НЕ ЗАКАЗАНЫ
 НТЖ П777
 СЛЦ Е1
НЕТТР ВЧОБ РЯ1
 ПВ ПЕРЕВ(М15)
 И Е24П1
        или     =м40в'037'м32в'143'м24в'143'
        зп      поле+12
        пб      УМЕН
G10327  сч      25(М14)
        и       Е27
        по      УМЕН
        мода    поле+8
        уиа     0(М12)
        уиа     0(М6)
        уиа     ТЗНМД(М16)
        сч      25(М14)
        сда     64+20
        мода    ПЕЧОБМ
        мода    
        пв      (М17)
        сч      П17
        сда     64-40
        или     поле+8
        зп      поле+8
        сч      ВСЕЕД
        зп      поле+10
        пб      УМЕН
НЕВЦПР  сч      проб6
 СДА 64-8
 ИЛИ П21
 ЗП ПОЛЕ+9
    мода        тприч
    уиа         (м12)
    сч          шгп
    и           E48-1(м5)
    по          G10354
*
*
*      *--------------*
*
*
*      *-- СОСТОЯНИЕ ЗАДАЧИ --*
*
 СЧ ОСПОД
 И Е48-1(М5)
 ПЕ ЗППРИЧ     ОСТАНОВЛЕННАЯ ПЗ
 СЧ МШГП
 И Е48-1(М5)
 слиа 1(М12)
 ПО ЗППРИЧ     ЖДУ СОБЫТИЙ
	сч	смшгп было И ШГП
	и	E48-1(м5)
        слиа    1(м12)
        по      зпприч
        пб      нетпри
G10354  ноп
 СЧ ШАРБОП
 ИЛИ Ш1
 ИЛИ ШАРКЗ
 И Е48-1(М5)
	слиа	3(М12)
 ПЕ ЗППРИЧ     ЗАДАЧА ОБРАТИЛАСЬ К АРХИВУ
 СЧ ШКЭ70А
 И Е48-1(М5)
	слиа	1(М12)
 ПЕ ЗППРИЧ     ОБРАБОТКА АРХИВНОГО Э70
 СЧ ТУСП-1(М5)
 И Е36
	слиа 	1(М12)
 ПЕ ЗППРИЧ     ЛИСТ В ОБМЕНЕ
 СЧ ШЗН
 ИЛИ РШЗН
 И Е48-1(М5)
	слиа	1(М12)
 ПЕ ЗППРИЧ     ВЫЗОВ НЕРЕЗИДЕНТА
	сч	25(м14)
        сда     64+20(м5)
        нтж     шкзакз
 И Е48-1(М5)
        слиа    1(м12)
 ПЕ ЗППРИЧ     ЖДЕТ ОСВОБОЖДЕНИЯ ТОМА
 СЧ ЭКБУД
 И Е48-1(М5)
	слиа	1(М12)
 ПЕ ЗППРИЧ     ЗАДАЧА НА ПАУЗЕ
	сч      54(м14)
        и       е28
        слиа    1(м12)        
 ПЕ ЗППРИЧ 
 СЧ ТУСП-1(М5)
 И Е37
	слиа	1(М12)
 ПЕ ЗППРИЧ        ПОДКАЧКА ЛИСТА
 СЧ ТЕРЕЗА(М14)
	и	шкотл
	слиа	1(м12)
НЕОТЛ НОП ,
  пе зпприч
  слиа 1(м12)
ЗППРИЧ НОП ,
     сч         (м12)
 ЗП ПОЛЕ+9
*
НЕТПРИ НОП ,
 СЧ ПУСТО
 ЗП ПОЛЕ+8       ЗАБЬЕМ КЛ И КВАНТ ДЛЯ ПОЛЬЗ
 СЧ КВНЗАД(М14)
 СДА 64-36
 РЗБ КОНС
 ИЛИ КНС
 ЗП ПОЛЕ+8
 СЧ ТР4
 НТЖ =П’П’
 ПЕ УМЕН
 МОДА УМЕН1
 УИА (М12)        ВЫХ.,ЕСЛИ НЕТ ОБМЕНА
 МОДА NНNУ
 ПВ (М17)
 МОДА ПОЛЕ+9
 УИА (М12)        ДЛЯ ПЕЧОБМ
 МОДА ПЕЧОБМ
 ПВ (М17)
      сч        поле+9
      и         е41п1
      или       пусто1+1
 ЗП ПОЛЕ+9
 СЧ ПОЛЕ+13
 НТЖ ВСЕЕД
 ПО УМЕН1        ОБМЕН С ЕС
 НТЖ ВСЕЕД
 ПО УМЕН1
 ЗП ПОЛЕ+10      <ВЫКЛ↑> --> ВМЕСТО <N БОБ>
 СЧ ПОЛЕ+14      Т: МГ↑(ДЛЯ"СМЕНИ")
 ЗП ПОЛЕ+11
 ПБ УМЕН
УМЕН1 СЧ ВСЕЕД
 ЗП ПОЛЕ+11
УМЕН СЧ ПОЛЕ+7    УБР СТР
 И КОНСТ2
 ИЛИ КОНСТ1
 ЗП ПОЛЕ+7
СТАН УИА ПОЛЕ-П(М16)
 УИА (М1)
 МОДА ЗВР2
 ПВ (М17)
 МОДА ЗАПЕТХ
 ПВ (М12)
ПОИСК1 СЧ ТР5
 ПЕ ПОИСКЗ
*
 СЧ ТР4
 НТЖ =П’К’
 ПЕ ПР1А
 СЧ Е1
 ЗП NСЕКТ
 ПБ ПР1А
*
ТНЕТ УИА ТЕК-ПРИКАЗ(М16)
 ПБ ЗВРА
*
*      СТАРИННЫЕ ЧАСЫ ЕЩЕ ИДУТ...
*
ВР2 СЧ ТВР1
 СДА 64-16
 ЗП ТВР1
 СЧИ М11
 УИА (М11)
 ПВ ПЕРЕВ(М15)
 ИЛИ ТВР1
 ЗП ТВР1
 СЛИА -2(М10)
 СЧ ПРИЗН4
 ПО ВР20
 УИИ М15(М10)
 СЛИА -2(М15)
 МОДА ВР2А
 ПИО (М15)
ВР20 СЧ R1
 МОДА ВР1
 ПИНО (М10)
ВР2А СЧ ТВР1
 СДА 64-32
 ИЛИ ТВ
 ЗП ТВР1+1
 СЧ ПРИЗН4
 ПО ВР3
 СЧ ТВР1
 И Е48П17
 ИЛИ =В’16’М8В’143’М40В’143’
 ПБ ВР3А
ВР3 СЧ ТВР1
 РЗБ К
 ИЛИ К3
ВР3А ЗП ТВР1
 ПБ (М2)
*
*
*
*      К Т О
*      -----
*
КТО СЧ ПУСТО        НЕ ЗАБУДЬ ПРО ЕТХ ! ! !
 ЗП ПОЛЕ+7
*
 МОДА МКВ3АБ
 ПВ (М16)
*
 УИА 3
 СЛИ М10(М2)
 СЧ ФИО(М10)
 ЗП ПОЛЕ+4       < 1 ПОЛОВ.ФИО>
 СЧ ФИО1(М10)
 ЗП ПОЛЕ+5       < 2 ПОЛОВ.ФИО>
 СЧ СТПМК(М10)
 И Е16П1
 ПО КТО2
 СДА 64-16
 НТЖ =П’ З00  ’
КТО1 ЗП ПОЛЕ+6       З<N СТАНД.ПАСПОРТА>
 СЧ КЛМК(М10)
 ПО СТАН
 ЗП ПОЛЕ+7    КЛЮЧ
 ПБ СТАН
КТО2 СЧ ПРОБ6        ВЫРАВНИТЬ ФОРМАТ
 ПБ КТО1
*
*
*      *---- Е N D ----*
*
*
*      БЛОК ЧТ И ЗП С МД И МБ
*
*
ЧТБК НОП ---
 СДА 64+7
 ЗП РЯ4
 МОД РЯ4
 СЧ КУСБК
 ЗП КУС
 СЧМР
 СДА 64+38
 УИ М13
ЧТКАТ2 ЗП РЯ3
 СЧ 0
 ПВ ТБУФ(М15)
 СДА 64-8
 УИ М2            БАЗА БК
 СЛИ М13(М2)      ФИЗ.АДР.З-ЧИ
 СДА 64-2
 ИЛИ НОММЛ1
 ПБ ДЛЯБК
ПРКАТ УИА 1(М1)         ДАЙ БУФЕР
 УИА НОММБ(М13)
ЧТКАТ СЧИ М1            ЗАПРОС БУФЕРА
 ПВ ТБУФ(М15)     ДАЙ БУФЕР
ЧКАТ СДА 64-8
 УИ М1
 СДА 64-2
 ИЛИ (М13)
ДЛЯБК СЛЦ КУС
 ПБ ЧТК
КОНЦ1А СЧ КУС
 НТЖ Е18
ЧТК ЗП КУС
 ПВ ФИЗОБМ(М16)   ЧТЕНИЕ КАТАЛОГА
 УИА 3
 ПБ (М12)
*
*
******** ВЫХОД ИЗ ПРИКАЗА *********
*
ПР1А НОП ----
ПР1Г НОП
 СЧ 0
 ЗП РЯ1
 ЗП ТУМБ6
 ПБ ВХОДБ        ЕСТЬ ЗАЯВКА БОНБОТУ
*
ЕND СЧ НОМУС1
 ПО ЕND1
 УИ М2
* УИА 1027
 СЧ ШЗПРИМ
 ИЛИ Е48-1(М2)
 НТЖ Е48-1(М2)
 ЗП ШЗПРИМ
* УИА 3
 СЧ 0
 ЗП НОМУС1
ЕND1 НОП
 ПВ ЗАНОСС(М16)
 СЧ Е25
 ПБ ОТКАЗН
*
*      ------------      *
*
*
КУСПР КОНД М17В’1’М2В’37’М10В’3’     ЦИРКУЛ
КУСПР1 КОНД М17В’1’М2В’37’М10В’3’В’1’
КУСПР2 КОНД М17В’1’М2В’37’М10В’3’В’2’
КУСПР3 КОНД М17В’1’М2В’37’М10В’3’В’3’
КУСПР4 КОНД М17В’1’М10В’3’М2В’36’
КУСПР5 КОНД М17В’1’М10В’3’М2В’36’В’1’
КУСПР6 КОНД М17В’1’М10В’3’М2В’36’В’2’
КУСПР7 КОНД М17В’1’М10В’3’М2В’36’В’3’
КУСПР8 КОНД М17В’1’М10В’3’В’21’
ПРИК9 КОНД М17В’1’М10В’3’М2В’32’В’2’  ДЛЯ СВС
ПРИСКВ КОНД М17В’1’М10В’3’М2В’5’В’2’
*КУСОПР КОНД М17В’11’М2В’32’В’1’М10В’3’
*КУСП10 КОНД М17В’1’М10В’3’М2В’5’В’3’
КОЛПР ЭКВ *-КУСПР-1
*КУСЛИМ КОНД М24В’610’М17В’1’
КОПР1 КОНД П’7     ’
ПРИЗН4 КОНД В’0’
*
*  ТЕКСТЫ ПРИЧИН НЕ РАЗДЕЛЯТЬ !
*
ТПРИЧ КОНД П’ГЛАВ ↑’
      КОНД П’ЖДУ  ↑’
      КОНД П’ТРАКТ↑’
      КОНД П’АРХ. ↑’
      КОНД П’Э70А ↑’
      КОНД П’ОБМЕН↑’
      КОНД П’ВИСП ↑’
      КОНД П’ENQ  ↑’
      КОНД П’ПАУЗА↑’
      КОНД П’Э71  ↑’
      КОНД П’КАЧКА↑’
      КОНД П’ОТЛ. ↑’
      КОНД П’ЭК   ↑’
АРХ КОНД П’7ЗАПР.’
 КОНД П’АРХ.↑ ’
ТДАЙ КОНД П’2ДАЙ0 ’М8В’143’
ТУПР КОНД П’7ЗУПР↑’
ЕСТЬ КОНД П’7ЕСТЬ↑’
ТЕК КОНД П’7НЕТ↑0’
ТЕК3 КОНД П’7ЗНЕТ↑’
тош	КОНД П’2ОШИБ↑’
ТНВР КОНД П’2ОШВР↑’
СПЕЦСТ КОНД П’2СПЕЦ:’
НАЧП КОНД В’0’
К2 КОНД П’0000↑ ’
К1 КОНД В’0160340701603407’
ЗВР1 КОНД П’2К РАБ’
ТВР3 КОНД П’.НЕ ГТ’
 КОНД П’ ↑    ’
ТМИНУС КОНД П’00000-’
ПР3Г КОНД М40П’7’М32В’143’М24В’143’М16В’143’М8В’143’В’143’
ПР3А КОНД П’00000:’
ТПР21 КОНД В’0’
 КОНД (2)В’0’
 КОНД (2)В’0’
ТВР КОНД (3)В’0’
ТВР1 КОНД В’0’
 КОНД П’00↑   ’
КУС КОНД В’0’
ПОЛЕ ПАМ 15
ДПОЛЕ ПАМ 15
КОНСТ2 КОНД М32В’177777’
КОНСТ1 КОНД М16П’00  ’М8В’143’В’143’
КОНС КОНД В’360000301603400’
П21 КОНД В’21’
ЛNТЕР ПАМ 1
ЛNТЕР1 ПАМ 1
ВРСТОП ПАМ 1
ВРСПЕЦ ПАМ 1
NСЕКТ ПАМ 1
ПРИЗАС ПАМ 1
ПСМЕНИ ПАМ 1
КНС КОНД П’0 000 ’
ТВ КОНД П’00↑   ’
ПУСТО КОНД М40В’143’М32В’143’М24В’143’М16В’143’М8В’143’В’143’
ПУСТО1 КОНД В’143’
      КОНД М40В’143’
МАСКБ КОНД М40В’143’П’ 0000’
НН77НН КОНД П’007700’
Е18П11 КОНД М10В’377’
П15 КОНД В’15’
*
*
ОБЕС КОНД М32П’ЗП’М24В’143’М16В’143’М8В’143’В’143’
 КОНД М32П’ЧТ’М24В’143’М16В’143’М8В’143’В’143’
 КОНД П’ЗОНА.В’  2
 КОНД П’ЗОНА.Н’  3
 КОНД П’ФАЙЛ.В’  4
 КОНД П’ФАЙЛ.Н’  5
 КОНД П’ПЕРЕМ.’
 КОНД П’ЗП.МГЗ’  7
*
*
* 9, 15, 24, 26, 29-30, 33, 37, 39-40
ДОВРЕМ КОНД В'0010100123105400'
* ПРИКАЗЫ:9-15-24-26-29-30-33-37-39-40
тнет2 уиа тош-п(м16)
 ПБ ЗВРА
ТВЫП УИА ЕСТЬ-П(М16)
 ПБ ЗВРА
ТЗНЕТ УИА ТЕК3-П(М16)
 ПБ ЗВРА         С:7ЗНЕТ
ПСН3 УИА ЗВР1+2-П(М16)
 ПБ ЗВРА
ЗВРА МОДА ПР1А
 УИА (М17)
ЗВР2 УИИ ’32’(М17)
 СЛИ М16(М7)
ВР2Б СЧ Е23           ПЕЧАТЬ НА ТТ
 ПБ ТВ40
*     ДЛЯ ПРИКОВ
*
КОНВЫД МОДА ПР1А
 УИА (М17)
ВЫДАЧА УИИ М32(М17)
 СЛИ М16(М1)
 СЧ Е23
 ПБ ТВ40
*
ЧТЕН1 СЧ КУС545
 УИА -255(М4)
ЧТЕН ЗП КУС
 УИА (М1)
 УИА НОММЛ1(М13)
 ПБ ЧТКАТ        ЧТ.КШ
ВОЗБУ1 УИА ТЕК3-П(М4)
 СЧ НАЧП
 НТЖ П36
 ПЕ КОНЦ4
КОНDЕQ СЧ НОММЛ1
 ПВ DЕQ(М15)
КОНЦ4 СЧ КУС
 ПВ ТБУФ(М15)     ВОЗВР.БУФЕР
КОНЦ4А УИИ М16(М4)
 МОДА ЗВРА
 ПИНО (М4)
 ПБ ТВЫП          ПРИКАЗ ВЫПОЛН.
ВОЗБУФ УИА ЗВР1+2-П(М4)
 ПБ КОНЦ4
*
*
NНNУ СЧ ТУСП-1(М5)
 СДА 64-ПП
 И Е48П43
 ЗП РЯ1    НЗАД
 УИА 1(М6)
 УИА ОЧКУС+15(М2)
 УИА ТЗНМЛ-24(М16)
ОБМ УИА -15(М4)
ОБМ1 НОП 0
 МОДА (М4)
 СЧ (М2)
 ПО ОБМ11
 НТЖ РЯ1
 И Е48П43
 ПЕ ОБМ1А
 МОДА (М4)
 СЧ (М2)
 И ЕФ
 ПЕ ОБМ1А
 МОДА (М4)
 СЧ (М2)
 ЗП РЯ2
 СБР НАПРМГ
 СДА 64+42
 ПБ (М17)
ОБМ1А МОДА ОБМ1
 ЦИКЛ (М4)
ОБМ11 УИА ОЧКУСД+15(М2)
 УИА ТЗНМД(М16)
 МОДА (М12)        ВЫХОД, ЕСЛИ ЗАДАЧА НЕ В ОБМЕНЕ
 ПИО (М6)
 СЛИА -1(М6)
 ПБ ОБМ
*
ПЕЧОБМ ноп
       и        п77
 ЗП РЯ1
 СДА 64-42
 РЗБ Б77
 ИЛИ ТПР7
 МОДА ОБМ4    Г ИЛИ Д
 ПИНО (М6)
 СЛЦ Е25
ОБМ4 ЗП (М12)        7МГ(Д) <N УСТ-ВА>
 МОД РЯ1
 СЧ (М16)        ТЗНМЛ ИЛИ ТЗНМД ИЗ NНNУ
 ЗП РЯ3
 И П7777
 ПВ ПЕРЕВ(М15)
 СДА 64-8
 ИЛИ ТПР7+1
 ИЛИ П17
 ЗП 1(М12)
 СЧ РЯ3
 И Е21  ЕСЛИ ТОЛЬКО БЕЗДУБ,УПНОВ=Е21,Е20
 СДА 64+20
 УИ М16
 НТЖ Е1
 УИ М15
 СЧ РЯ2
 СДА 64+24
        и       п7777
 ВЧ Е3
 СДА 64-36 было -34
 РЗБ =П’077770’
 ИЛИ ТПР7-1 =П’00000/’
 ЗП 2(М12)       <N КОНЕЧ.ЗОНЫ>↑
 СЧ 0
 ЗП 4(М12)       ПРИЗН: НМЛ ИЛИ НМД - ВЫКЛ.
*    == ФОРМ.ПРИЗН."СМЕНИ МГ" ==
 СЧ РЯ3
 И ЕСМЕНИ
 ЗП ПСМЕНИ
*
 СЧ РЯ1
 НТЖ П7
 УИ М4
 МОДА ОБМ4А
 ПИО (М6)
        сч      ДТЕРЕЗ
        и       Б
        по      G11037
        счи     М17
        зп      ТР3
        сч      
        мода    
        пв      ТБУФ(М15)
        сда     64-8
        уи      М10
        сда     64-2
        или     ТР4Х
        слц     НОММЛ1
        зп      РЯ3
        мода    
        пв      ФИЗОБМ(М16)
        сч      ДТЕРЕЗ
        сда     64+4
        и       П7
        уи      М6
        сли     М6(М10)
        сда     64-5
        уи      М14
        сли     М14(М10)
        сда     64-3
        или     D11124
        зп      3(М12)
        мод     РЯ1
        сч      -56(М14)
        и       П7777
        мода    
        пв      ПЕРЕВ(М15)
        сда     64-8
        или     D11117
        или     П17
        зп      1(М12)
        сч      '340'(М6)
        и       '73'(М4)
        по      G11032
        сч      ТР4
        и       П77
        нтж     П77
        по      G11034
        сч      D11121
G11030  зп      4(М12)
        сч      3(М12)
        нтж     П36
        зп      3(М12)
G11032  сч      РЯ3
        мод     ТР3
        уиа     0(М15)
        пб      ТБУФ
G11034  сч      3(М12)
        сда     64+8
        сда     64-32
        или     D11125
        пб      G11030
G11037  ноп
 МОД РЯ1
 СЧ ТЗОНМЛ-24
 И П7777
 ВЧ Е4(М16)
 СДА 64-36(М15)
 РЗБ =П’077770’
 ИЛИ ТПР7+2
 ЗП 3(М12)       <N ТЕК.ЗОНЫ>↑
 СЧ РМЛ
 И Е48-8(М4)
 ПО ОБМ4В0
 СЧ 3(М12)       ВМЕСТО ↑ СДЕЛАЕМ " "
 НТЖ П36
 ЗП 3(М12)
ОБМ4Б СЧ ТПР7+3
ОБМ4Б0 ЗП 4(М12)
 МОДА (М17)
 ПИО (М6)         ВЫХ.ДЛЯ МД
ОБМ4В СЧ РЯ3
 И Е13
 ПЕ ОБМ6         ЕС
 ПБ (М17)
ОБМ4В0 СЧ ПСМЕНИ
 ПО ОБМ4В        МГ РАБ-ЕТ НОРМ-НО
*
 СЧ 3(М12)
 НТЖ П36
 ЗП 3(М12)
 СЧ ТСМЕНИ+1     Т:МГ↑
 ЗП 5(М12)
 СЧ ТСМЕНИ
 ПБ ОБМ4Б0
*
ОБМ4А И П37
 УИ М4
 СЧ РЯ1
 СДА 64+5
 УИ М2
 СЧ РМД(М2)      ВКЛ.ЛИ НМД
 И Е48+16(М4)
 ПО ОБМ5А
 СЧ ПУСТО
 ЗП 3(М12)
 ПБ ОБМ4Б
ОБМ5А СЧ 2(М12)
 НТЖ П36
 НТЖ П3
 ЗП 2(М12)
 ПБ (М17)
*
ОБМ6 СЧ ИНФСЛП(М14)
 СДА 64+39
 И П7
 УИ М15          НОМЕР РАБОТЫ
 МОДА (М15)
 СЧ ОБЕС
 ЗП 3(М12)       <СООБЩ.О ОБМЕНЕ ЕС>
 СЧ =М40В’143’М32В’143’М24В’143’П’ЕС/’
 ЗП 2(М12)        ЕС/
 СЧ 4(М12)
 ПЕ (М17)
 НТЖ ВСЕЕД
 ЗП 4(М12)       ЕТХ ДЛЯ ЕС
 ПБ (М17)
*
*
*
ЕСТЬЛИ ноп , УИИ М16(М13)
 СЧ 7(М13)
 И Е42П44
 ЗП R2
 УИА 1(М15)
	уии	м16(м2)
ОЧЕР1 СЧ 7(М16)
 И П1777
 ПО ВОЗБУ1 НЕТ ЗАДАЧИ
 УИ М16
 НТЖ R3
 ПО (М12)
ОЧЕР СЛИ М16(М2)
 СЧ 6(М16)
 И Е32
 ПЕ ОЧЕР1 СО ЖДЕМ
 СЧ 7(М16)
 И Е42П44
 НТЖ R2
 ПЕ ОЧЕР1
 СЛИА 1(М15)
 ПБ ОЧЕР1
ПРОБ1 КОНД М40В’143’М32В’143’
БСТОП КОНД П’7СТОП↑’
 КОНД П’ 0000/’
ТПР7 КОНД П’7МГ 00’
D11117 КОНД П’-0000↑’
 КОНД П’ 0000↑’
D11121 КОНД П’ ВЫКЛ↑’
ТСМЕНИ КОНД П’ СМЕНИ’
 КОНД П’ МГ↑00’
D11124      конд	п'НА Э0↑'
D11125      конд	п'00ВЫК↑'
R ПАМ 1
*
*------ МКВ3АБ ------*
*
*   МАЛЫЙ КАТАЛОГ В 3 АБЗ.ПРИКАЗА
*
МКВ3АБ УИИ М2(М7)
 СЛИА 768(М2)
 СЧИ М5  НОМ КАНАЛА
 И П17
 УИ М10
 СЧИ М5
 СДА 64+4
 ВЧОБ Е2
 ИЛИ МАЛКАТ  СЕКТОР МАЛ КАТ
 И КВЫД
 НТЖ NСЕКТ
 ПО (М16)
 НТЖ NСЕКТ
 ЗП NСЕКТ        ПРИЗН: МК --> В 3 АБЗ.
 СЧИ М2
 СДА 64-2
 ИЛИ NСЕКТ
 ИЛИ МАЛКАТ
 ПБ ФИЗОБМ
*
*------ N ТЕРМ ------*
*
NТЕР СЧ ТСЛ-1(М10)
 СДА 64+АТ
 ЗП ПРИЗАС
 ПЕ АС
 СЧИ М10
АС СДА 64-АТ
 ПБ (М17)
*
*------- ПРОВЕРКА НОМЕРА ПРОГР.КАНАЛА -------*
*
NПРКАН СЧ ТР5
 И П77
 ВЧ МИНЗ
 ПЕ ТНЕТ
 ВЧ МАКЗ
 ПО ТНЕТ
 СЧ ТР5
 И П77
 УИ М5
 СЧ ШКРЗ
 И Е48-1(М5)
 ПО ТНЕТ
 МОД ТУСП-1(М5)
 УИА (М14)        АДР.ИПЗ
 СЧИ М5
 ПБ (М17)
*
*------- ДАЙ N ПР.КАНАЛА ИЗ ТСЛ -------*
*
*        ТО USЕ FОR СТRLО
*
NКТСЛ СЧ НОМУС1
 УИ М3
 СЧ ШЗНКТ
 И Е48-1(М3)
 ПО ТЗНЕТ        С: ЗНЕТ
 СЧ ТСЛ-1(М3)
 СДА 64+20
 И П77
 ПО ТЗНЕТ
 ПБ (М17)
*
*------- ПРОВЕРКА СТАТУСА ТЕРМ. -------*
*
СТАТУС СЧ ШКОПТТ
 МОД НОМУС1
 И Е48-1
 ПБ (М12)
*
*
*
*------ ПОИСК ТЕКСТА ИЗ ТР5 В ДЕШ ------*
*
ПОИСК МОДА (М5)
 СЧ (М15)
 НТЖ ТР5
 И Е24П1
 ПО СОВП
 МОДА ПОИСК
 ЦИКЛ (М15)
 ПБ ТНЕТ
*
СОВП МОДА (М5)
 СЧ (М15)
 СДА 64+24
 ЗП ТР5
 ПБ (М17)
*
*
*
*      ПЕРЕПИСЬ И ПОИСК БОБИН ИЗ БК
*      ----------------------------
*
ИЩУБОБ УИА 1(М3)        МОДИФ.’ПОЛЕ’
 УИА -3(М4)
        сч      5(М13)
        сда     64-3
        и       Е19
        нтж     Е19
        или     ПРСВЛ
        зп      поле+14
ИЩУ МОДА 3(М4)
 СЧ 1(М13)
 ЗП РЯ
ИЩУ1 СЧ РЯ
 ПО ИЩУ2
 СДА 64-16
 ЗП РЯ
 СЧМР 0
* ЗП РЯ1
     мода (м3)
     зп   поле
 И Е13
 ПО ИЩУ1
* СЧ РЯ1
* И П7777
* МОДА (М3)
* ЗП ПОЛЕ
 СЛИА 1(М3)
 ПБ ИЩУ1
ИЩУ2 МОДА ИЩУ
 ЦИКЛ (М4)
      сч        всеед
      мода      (м3)
      зп        поле
*
*
 УИА (М3)
 УИА (М5)         ПРИЗН.ВЫД НА ТТ
ИЩУ3 УИА -95(М4)
 СЛИА 1(М3)
 МОДА (М3)
 СЧ ПОЛЕ
 НТЖ ВСЕЕД
 ПО КОНБОБ
 НТЖ ВСЕЕД
 ЗП РЯ
	сч
        зп      ря1
ИЩУ4 СЧ РЯ
 НТЖ ТЗНМЛ+95(М4)
 И П7777
	пе	ищу4а
	сч      тзнмл+95(м4)
        ржа     '23'
        пе      ищу12а
G11224  и       поле+14
        зп      ря1
        по      G11265
ищу4а МОДА ИЩУ4
 ЦИКЛ (М4)
*
*
* НЕТ БОБИНЫ
        сч      РЯ
        и       Е12
        по      G11233
        сч      РЯ
*      *------------* ЗП.ПРИЗНАКА
НАШБОБ  и       П7777
        вчоб    NБЛ
        по      G11253
G11233  сч      ГОД
        и       Е46П48
        пе      G11235
        пб      G11253
G11235  сда     64+40
        уи      М4
        сч      ТР4Х
        и       НАПРМГ
        пе      G11243
        пв      ТБУФ(М15)
        сда     64-10
        или     ТР4Х
        слц     НОММЛ1
        зп      ТР4Х
        мода    
        пв      ФИЗОБМ(М16)
G11243  сч      ТР4Х
        сда     64+2
        и       Е15П11
        уи      М10
G11245  сч      РЯ
        нтж     (М10)
        и       П7777
        пе      ИЩУ11А
        сч      (М10)
        и       поле+14
        зп      РЯ1
        по      G11265
ИЩУ11А  слиа    -1(М4)
        слиа    1(М10)
        мода    G11245
        пино    (М4)
G11253  сч      РЯ1
        по      G11260
        сбр     Е19
        сда     64+2
        или     Е48
ИЩУ12 ИЛИ РЯ
 МОДА (М3)
 ЗП ПОЛЕ
 ПБ ИЩУ3
G11260  слиа    1(м5)
        пб      ищу3
*
ИЩУ12А 	слиа	'77'(М4)
	счи	М4
	слиа	-63(М4)
	и	Е15
	по	G11265
	сч	тзнмл+95(М4)
	пб	G11224
G11265	счи	М4
	сда	64-16
	или	Е47
	пб	ИЩУ12
*
*      *------------*
*
КОНБОБ НОП ,
        сч      ТР4x
        и       НАПРМГ
 УИА 0(М4)        ДЛЯ СКВ (БОБ)
        по      (М12)
        сч      ТР4x
        пв      ТБУФ(М15)
        сч      ТР5x
        зп      ТР4x
 ПБ (М12)
*
ТТТЕРМ НЕД
 УИ М10
 МОДА NТЕР
 ПВ (М17)
 РЗБ =П’003770’
 ЗП РЯ           N ТЕРМ
 НЕД Е2
 СДА 64+3
 СДА 64-3
 УИ М17          СДВИГ
*
 СЧ ДТЕРЕЗ
 НТЖ Е48-1(М10)
 ЗП ДТЕРЕЗ
*
 СЧ ШРИН
 И Е48-1(М10)
 УИА Е2(М16)
 ПЕ ТТТ1
 СЧ ШVD130
 И Е48-1(М10)
 МОДА П15
 УИА (М16)
 ПЕ ТТТ1
 СЧ ШНР
 И Е48-1(М10)
 ПО ТТТ2
 УИА П16(М16)
ТТТ1 СЧ (М16)
 СДА 64-8
ТТТ2 НТЖ =П’    Т0’
 СДА 64(М17)
 СЧМР
 ИЛИ РЯ
 НТЖ =П’ 0000.’
 ИЛИ МАРШ
 ЗП РЯ
 СЧ ПРИЗАС
 ПЕ СПОСОБ
  сч    ря
  или   п17
  зп    ря
СПОСОБ НОП ,             ПОДСОЕДИНЕНИЯ ТЕРМИНАЛА
  сч  ря
 ПБ (М2)
*
*
МАРШ ПАМ 1
УР00РУ КОНД М40В’143’М8П’ 00 ’В’143’
*
*
*      ВХОД, ВНЕШ, ЭКВИВ
*      -----------------
*
*
ТР4х	конд	в'0000777000400000'
ТР5х	конд	в'0000777000400000'
ТР3 ПАМ 1
ТР4 ПАМ 1
ТР5 ПАМ 1
ТР6 ПАМ 1
ЗПРИ ПАМ 1
 Е
 М
 ЭКВИВ (ДТЕРЕЗ,R2),(NКАН,R2)
 ЭКВИВ (П,ПРИКАЗ),(ПНЕТ,ТНЕТ),(ЕСМЕНИ,Е40)
 ЭКВИВ (Б,95),(ОШДАТ,ЗВР),(КОНЦГД,КОНЦ4)
 ЭКВИВ (ПРКАТА,ЧТКАТ),(КОПР,ПР3Г),(РЯ4,ТПР21)
 ВХОД ЧТКАТ2,ПУСТО1,ПУСТО,ВРСПЕЦ,Б77
 ЭКВИВ (ТIМЕ,ВР1А)
 ВХОД ТIМЕ,ВХОД1,КОНDЕQ,ПРИЗАС
 ВХОД ВР1А,ТВР1,К3,ВР2Б,R2,К1,К2,R1,Е18П11,ПНЕТ
 ЭКВИВ (РЯ1,R1),(РЯ2,R2),(РЯ3,R3),(РЯ,R)
 ВХОД КОНЦГД,ЗВР1,ЗВРА,НАЧП,ЧКАТ,КОНЦ4,П21
 ВХОД ТЕК3,ВЦП,КОНВЫД,ВЫДАЧА,ЗВР2,БСТОП,ВЗ
 ВХОД ТНЕТ,ТВР,ТПР7,РЯ1,РЯ2,РЯ3,ЧТКАТ,КОНЦ1А,ПСН3
 ВХОД ЧТК,КОПР,ТВЫП,ПР3А,ПР3Г,ПР1А,КУС,ПРКАТ
 ВХОД ПОЛЕ,NТЕР,ПРОБ1,ЛNТЕР,ВРСТОП,NНNУ
 ВХОД ЧТБК,ЕСТЬЛИ,СПЕЦСТ,NПРКАН,ЛNТЕР1
 ВХОД МСК,ТНВР,ВРЕМПР,ЗВР,КОНСТ1
 ВХОД КОНСТ2,ОШДАТ,КОНЦ4А,ТДАЙ,РЯ,РЯ4
 ВХОД ЗАПЕТХ,ИЩУБОБ,ВОЗБУФ,НН77НН
 ВХОД ДПОЛЕ,ПРИЗН4,ЕСТЬ,ВОЗБУ1,ТР3,ТР4,ТР5,ТР6
 ВХОД NКТСЛ,СТАТУС,ТЗНЕТ,NСЕКТ,АРХ,ПОИСК
 ВХОД ТУПР,НАВЦП,ЧТЕН,ТМИНУС,МАСКБ,ЧТЕН1,П36
СОСТАВ ВНЕШ ЕПРИК
МОТТ ВНЕШ ШКОТЛ
МОТТ ВНЕШ (МСК1,ПРОБ6),НОМУС1
МОТТ ВНЕШ ШКОПТТ,ШЗНКТ,Н,ШСТRLО
ДИСП70 ВНЕШ ТЗОНМЛ,ГРУП,МАЛКАТ,Ш1,ШАРКЗ,ШАРБОП
ДИСП70 ВНЕШ РМЛ,РМД,П60,ШКОК,ТУСП,МЧПЗ,НПЗ
ДИСП70 ВНЕШ П17,ТЗНМЛ,П77,П377,П3,П77777,ЗАНЯТА,ТБУФ,НОММБ
ДИСП70 ВНЕШ ТУС,ВСЕЕД,ВРЕМЯ,ТВ40,ШКИВ
ДИСП70 ВНЕШ УСТПРП,ПРЕДЕЛ,ТСЛ,ПЕРЕВ,(ЗАНОСС,ЗАНОСМ)
ДИСП70 ВНЕШ ШКСВН,РЯПСЗ,ШКПЛАН,П12
ДИСП70 ВНЕШ Е46П48,НОММБ1,П177,П777,П7,П37
ДИСП70 ВНЕШ ТУМБ6,(ТИР3,ТР3),(ТИР4,ТР4),(ТИР5,ТР5)
ДИСП70 ВНЕШ П3777,ГОД,ГАШЗАН,П5,ШИФРМ,МГРП,ПОТЕРИ,ИПЗЖТ
ДИСП70 ВНЕШ (ВРЭТ,Т),(Т,ЖИЗОС),СМ,К2003,НОММЛ1,ТВ67Б,ШИФРАЦ
ДИСП70 ВНЕШ АВОСТА,Е24П1,П1777,ШКЗАКЗ,П7777,КВНЗАД
ДИСП70 ВНЕШ Е48П43,ОЗУ,ТОБ,ИЗ10В8,РАЗМГ,ШЗРАЗМ,ТЗНМД,ШЗНМБ
ДИСП70 ВНЕШ ТЕРЕЗА,(Е35П25,Е36П25),ЗАПВЕТ,СОБЫТ,ПРИП
ДИСП70 ВНЕШ НАПРМГ,Е15П11,Е48П25,КУСЛСВ,ПРСВЛ,Е41П1
ДИСП70 ВНЕШ (Е42П44,Е44П42),ОЧКУС,ОЧКУСД
ДИСП70 ВНЕШ ЯЧВР,NБЛ,ИНФСЛП,ЕТЗНУП
ДИСП70 ВНЕШ И,Е48П24,ОТКАЗН,МАКЗ,МИНЗ,СМШГП
ДИСП70 ВНЕШ ЧПЗ,ШПРИК,КУСБК,КУС545,ШКСПЕЦ
ВЗУ ВНЕШ ФИЗОБМ,ЕФ,(ПП,П)
ДИСКИ ВНЕШ П11,ЕNQ,DЕQ,Е16П1
КИТ ВНЕШ СТПМК,КЛМК
КАЧКА ВНЕШ ШКРЗ
КАЧКА ВНЕШ П16,Е48П17
КИТ ВНЕШ Е1П25,Е48П41,Е16П9
*ПЛАН2 ВНЕШ ФИО,ФИО1
фио экв '140'
фио1 экв '160'
шкэ70а экв '75565'
СОСТАВ ВНЕШ СДТ,ЛИСОСТ,ЯЧЛИС,АТ
МОТТ ВНЕШ ШРИН,ШVD130,ШНР,ШЗПРИМ,ПРОБ6
ДИСП70 ВНЕШ ШЗН,РШЗН,ШЗУПР,ЭКБУД,ОСПОД,ШГП,МШГП,ЯЧОК,ЕОК
*РЕЗАРХ ВНЕШ ШКЭ70А
 ЛИТЕР
 ПАМ 255
 КОНД В’0’
*
*КОНЕЦ ЧАСТИ
