CONSUL СТАРТ ’10000’
 Б
 УПОТР СОNSUL(7)
ИПЗ КОНД В’0’
 КОНД М41В’7’       РЕЖИМ АУ
 ПАМ 3
 КОНД В’3’
 ПАМ 22
ФИЗУСТ  СЧИ 1
 ПБ НОМ2А
 ПАМ 3
*ЕДИН КОНД М32В’3’М8В’1’
един конд в'0400044000000400'
 КОНД М47В’1’
РЯ1 КОНД В’0’
РЯ2 КОНД В’0’
 КОНД (2)В’0’
 КОНД В’0’
 КОНД В’0’
ВХОД УИ М1
 СЧ Е48-1(М1)
 ЗП РЯ1
 МОД ТУС-1(М1)
 УИА (М10)
 МОД 36(М10)
 УИА (М2)
 СЧ (М2)
 СДА 64+40
 УИ М6
 ВЧОБ П7
 ПЕ Ц
    сч  (М2)
    нтж слог
    по дайбуф
 СЧ НОМУС1
 ПЕ Ц
 СЧ РЯ1
 И ЕДИН
 ПЕ Ц
 СЧ ШКАЛА
 И Е48(М6)
 ПО Ц
ДАЙБУФ СЧ 0
 ПВ ТБУФ(М15)
 СДА 64-8
 УИ М13
 СДА 64-2
 СЛЦ НОММБ
 СЛЦ КУС
 ЗП РЯ2
 ПВ ФИЗОБМ(М16)
 УИА 3
 СЧ (М13)
 НТЖ е24п1      КЛЮЧ
 ПО ГОТЛИС
 СЧ 0
 ЗП 2(М13)
 СЧ е24п1       КЛЮЧ
 ЗП (М13)
 СЧ Е16
 ИЛИ Е18
 ИЛИ Е2
 ЗП 1(М13)
ГОТЛИС НОП
 СЧ 1(М13)
 И П1777
 УИ М16
 СЛИ М16(М13)
 СЧ 1(М13)
 СДА 64+15
 И П7
 УИ М4
 УИА 5(М5)
 УИА -13(М15)
 СЧ ГОД
 СДА 64-45
     или (М2)
     зп ря4
 МОДА КК
 УИА (М12)
 ПБ СИ
СИ1 МОДА 13(М15)
 СЧ (М2)
 УИА 5(М5)
 ЗП РЯ4
СИ СБР КОНСБР(М5)
 ЗП РЯ3
 СДА 64+40
 НТЖ П377
 ПО ВЫ
 НТЖ О21Р8
 ПО ВЫ
 нтж п162
 по кк
 СЧ РЯ3
ЗПБАЙТ НОП
 РЗБ КОНСБР(М4)
 ИЛИ (М16)
 ЗП (М16)
 МОДА ККК
 ПИО (М4)
 СЛИА -1(М4)
 ПБ (М12)
ККК СЛИА 1(М16)
 УИА 5(М4)
 СЧИ М16
 И П1777
 ПЕ ПУ
 УИИ М16(М13)
 СЛИА 2(М16)
ПУ СЧ 0
 ЗП (М16)
 ПБ (М12)
КК НОП
 СЧ РЯ4
 МОДА ПИ
 ПИО (М5)
 СЛИА -1(М5)
 ПБ СИ
ПИ МОДА СИ1
 ЦИКЛ (М15)
ВЫ НОП
 СЧ Е48П41
 МОДА ЗПБАЙТ
 ПВ (М12)
 СЧ ГОД
 СДА 64-13
 СДА 64+6  СТ. ЦИФРА ДАТЫ
 МОДА ЗПБАЙТ
 ПВ (М12)
 СЧ ГОД
 СДА 64-15
 СДА 64+4  МЛ. ЦИФРА ДАТЫ
 УИА (М5)
 МОДА ЗПБАЙТ
 ПВ (М12)
 УИА -3(М15)
 СЧ ЗАНЯТА
 И Е7
 НТЖ Е7
 ПО ВРЕ
 СЧ Е24П1
ВРЕ ИЛИ ВРЕМЯ
ДЕЛ НОП
 ЗП РЯ5
 МОДА МИНУТА
 ВЧ (М15)
 ПЕ ЧАСТ
 СЛИА 1(М5)
 ПБ ДЕЛ
ЧАСТ СЧИ М5
 СДА 64-40
 МОДА ЗПБАЙТ
 ПВ (М12)
 УИА 0(М5)
 СЧ РЯ5
 МОДА ДЕЛ
 ЦИКЛ (М15)
 СЧИ М16
 И П1777
 ПЕ ПЕП
 ЗП 2(М13)
 СЧ Е2
 УИА 5(М4)
ПЕП ЗП 1(М13)
 СЧИ М4
 СДА 64-15
 ИЛИ 1(М13)
 ЗП 1(М13)
 СЧ РЯ2
 НТЖ Е18
 ПВ ФИЗобм(М16)
    сч ря2
    пв тбуф(М15)
Ц НОП
     уиа 3     
 УИА 0(М5)         М5 := 0 - ПРИ ВЫХОДЕ НЕ ОТКР.ШЗПРИМ
     уиа 0(М4)
 ПО ТТИЛИС        НЕ ЗАМЕНЯТЬ N
 СЧ Е25
 НТЖ РЯ1
 ПЕ ТТИЛИС
G10174 ноп
       мод номус1
       уиа (М4)
* ВЫДАЧА ОТ ПРИКАЗ-А
 УИА 1(М5)         М5 := 1 - ПРИ ВЫХОДЕ ОТКРАТЬ ШЗПРИМ
     счи М4
 ПБ НОМ2
ТТИЛИС СЧ (М2)
 УИА 3
 СДА 64+40
 И П77
 УИ М1
 ВЧОБ П60
 ПЕ ОТКАЗ         N ТЕР > 60
 СЧ (М2)
 И Е48
 ПЕ ФИЗУСТ        ЗАКАЗ НА ФИЗ. УСТР-ВО
     сч (М2)
     нтж слог
     по  ном0
 СЧ РЯ1
 И ЕДИН
 ПЕ ФИЗУСТ        ЗАКАЗ НА ФИЗ УСТР-ВО
ном0 СЧ НОМУС
НОМ1 МОДА НОМ2
 ПИО (М1)
 СДА 64+6
 СЛИА -1(М1)
 ПБ НОМ1
НОМ2 И П77
 ПО НОМ2А
 СЛЦ П77
 И П77
НОМ2А УИ М3            НОМЕР УСТР-ВА
 СЧ ШКАС
 ИЛИ ШКУСТР
 И Е48(М3)
 ПО ОТКАЗ
 СЧ (М2)
 СДА 64+32
 НТЖ СТРЕЛА
 И П377
 ПО ОТКАЗ         ТЕКСТ НЕ ВЫДАВАТЬ
*
* РАБОТА С ЛИСТАМИ ТЕРМИНАЛЬНОЙ ВЫДАЧИ (ЛТВЫД)
*
* ПВ ПРЛТВ(М14)    ЗАХВАТ Е17,ПРИП.ЛТВЫД К ЛИСТ.М.
      сч   Е17
      пв   захзан(М15)
      сч   в6050
      пв   тбуф(М15)
      уиа  3
      сда  64-8
      уи   М14
      уии М15(М14)
      мода G10321
      пв   (М16)
      уиа  0(М12)
      уиа  0(М11)
      уиа -68(М17)
      уии М15(М14)
ПОИСК НОП ,
 СЧ (М15)
 ПО НАШЛИ         НАШЛИ СВОБОДНЫЙ КВАНТ
 СЛИА 14(М15)
      уиа       3
 МОДА ПОИСК
 ЦИКЛ (М17)
      мода G10236
      пио  (М12)
      счи  М12      
 ПБ НЕТМЕС        НЕТ СВОБОДНЫХ КВАНТОВ
G10236 ноп 
      сч в6050
      слц е1
      пв тбуф(м15)
      уиа 3
      сда 64-8
      уи м12
      мода G10304
      пино (м11)
      уии м15(м12)
      мода G10321
      пв (м16)
G10246 НОП
      уиа -72(м17)
      уии м15(м12)
      пб поиск
НАШЛИ НОП
 СЧИ М15
      и п1777
      уиа -11(м17)
      мода G10251
      пио (м12)
      или е47
G10251 зп ря2
      сч (м2)
ЗПНОЛЬ НОП
      или E48п41
      нтж E48п41
      или е44п41
 ЗП (М15)
ПЕРЛТВ НОП
      сч 1(м2)
      зп 1(м15)
 СЛИА 1(М2)
  СЛИА 1(М15)
 МОДА ПЕРЛТВ
 ЦИКЛ (М17)
 сч
 зп 1(м15)
 УИА 1027
 сч шкзак
 или E48(м3)
 ЗП ШКЗАК
 СЧ ШКОРАБ
 ИЛИ ЕВЫД
 ЗП ШКОРАБ
 мода '1712'(м14) уточнить
 сч (м3)
 по первая
 уи м4
 и е47
ОТКАЗ1  пе      вых1
        уии     М15(М14)
G10267  ноп        
        сч      ря2        
        или     Е31
        мода    (М15)
        зп      13(М4)
        мода    '1712'(М14)  
        сч      (М3)
G10272  и       D77040
        или     Е31
        или     ря2        
        мода    '1712'(М14)  
        зп      (М3)
        счи     М12
НЕТМЕС НОП
        по      G10277
        сда     64-2
        или     D77037
        пв      ТБУФ(М15)
G10277  счи     М14
        сда     64-2
        или     D77037
        пв      ТБУФ(М15)
        сч      Е17
        мода    отказ
        уиа     (м15)
        пб      гашзан
вых1    ноп
        мода G10305
        пио (м12)
G10304 уии м15(м12)
       пб G10267
G10305 ноп
       уиа 1(м11)
       пб G10236
ПЕРВАЯ НОП
       сч РЯ2
       СДА 64-15
       мода G10272
       пио (м12)
       или E48
       пб G10272
ОТКАЗ СЧ РЯ1
 ПВ ВШГ(М15)
 СЧ ИПЗ+33
 НТЖ Е48
 СЛЦ 33(М10)
 ЗП 33(М10)       ВРЕМЯ РАБОТЫ В ИПЗ ЗАДАЧИ
       уии м2(м3)
 МОДА ВЫХ
 ПИО (М5)          ШЗПРИМ НЕ ОТКРЫВАТЬ
 СЧ ШЗПРИМ
 ИЛИ Е48(М2)
 НТЖ Е48(М2)
 ЗП ШЗПРИМ
ВЫХ НОП ,
 СЧ Е23
        пб БЛИСКН
G10321  сч      '1776'(М15)
        нтж     ключтм
        по      (М16)
        уиа     -47(М17)        
        уиа     -68(М1)
        сч      ключтм        
        зп      '1776'(М15)    
        сч      
G10325  мода    (М15)
        зп      '1771'(М17)        
        мода    G10325
        цикл    (М17)
G10327  зп      (М15)
        слиа    14(М15)
        мода    G10327
        цикл    (М1)
        пб      (М16)
СТРЕЛА  КОНД В’21’
РЯ3 КОНД В’0’
РЯ4 КОНД В’0’
РЯ5 КОНД В’0’
КУС КОНД М17В’3’М2В’4’
слог конд п'2слог:'
ШКАЛА КОНД М41В’177’
О21Р8 КОНД В’377’В’21’
п162 конд в'162'
* СЛЕД. 4-РЕ КОНСТАНТЫ НЕ РАЗДЕЛЯТЬ
 КОНД В’6673500’  ДЕС.ЧАС
 КОНД В’537440’  ЧАСЫ
 КОНД В’72460’  ДЕС.МИН
МИНУТА КОНД В’5670’
*ФИЗЛИ ПАМ 1
 Е
 М
ДИСП70 ВНЕШ Е40П1,ШКСВН,ШКНПП
МОТТ ВНЕШ ЕВЫД
ДИСП70 ВНЕШ ТУС,П7777,П17,П377,ТБУФ,П3,ДИСП70,ШГ
ДИСП70 ВНЕШ ЗАХЗАН,ГАШЗАН,ГОД,П60,Е24П1,П7
ДИСП70 ВНЕШ Е44П41,П77,П177,П1777,П12
МОТТ ВНЕШ ШКОПТТ,ШСВЯТ,КЛЮЧТМ,D77037,D77040,В6050
ДИСП70 ВНЕШ ВРЕМЯ,ЗАНЯТА,КЛЮЧ,НОММБ,БЛИСКН
КИТ ВНЕШ Е48П41,КОНСБР
ВЗУ ВНЕШ ФИЗОБМ
ВИСП ВНЕШ ВШГ
МОТТ ВНЕШ НОМУС,ШКЗАК,ШКОРАБ,НОМУС1,ШЗПРИМ,ШКАС,ШКУСТР
СОСТАВ ВНЕШ ЕНОМБ
 ФИНИШ