 Б
&BS seta 0
ЦИРКУЛ СТАРТ ’20000’
 М
 УПОТР ЦИРКУЛ(М1)
*
 УИА 3
 СЧ Е48(М2)
 СБР ПРИЦИП
 НЕД
 УИ М2
 СЧ ТР5-П(М7)
 МОДА ПРКЦИП-1
 ПБ (М2)
ПРКЦИП ЗП РЯ1
 ПБ ПР2 ПРТ
 И П77
 ПБ ТНЕТ-П(М7)   ПР5 ПЕРЕНЕСЕН
 И П77
 ПБ ПР7       БОБ,ЕСМ
 НТЖ П17
 ПБ ПР10      ДАЙ,НЕТ,ОТМ,СТК,ОТЛ,КПИ,СМЕНА
 И П3
 ПБ ПР17      ЗАКР. ТЕРМИНАЛЫ
ПР2 МОДА БУФТРВ
 УИА (М15)
 ПВ СЧЕТРВ(М16)
 СЧ РЯ1
 И Е47
 ПО ПР2А
*
 УИА -7(М17)
ОБНГР СЧ ГРУП+7(М17)
 И ЕЗАР
 ЗП ГРУП+7(М17)
 МОДА ОБНГР
 ЦИКЛ (М17)
*
 УИА -МЧПЗ(М17)
ОБНКВ СЧ ШКРЗ
 И Е48+МЧПЗ(М17)
 ПО ОБН
 МОД ТУСП+МЧПЗ(М17)
 СЧ КВНЗАД
 ИЛИ П177
 НТЖ П177
 МОД ТУСП+МЧПЗ+НПЗ(М17)
 ЗП КВНЗАД
ОБН МОДА ОБНКВ
 ЦИКЛ (М17)
 ПБ ТВЫП-П(М7)
*
ПР2А МОДА NПРКАН-П(М7)
 ПВ (М17)
 ЗП R2-П(М7)
 СЧ ТР5-П(М7)
 СДА 64+6
 И П7777
 ЗП R1-П(М7)
 СЧ КВНЗАД(М14)
 СДА 64+8
 И П17
 УИ М15
 ВЧОБ Е4
 УИ М17
 СЧ ТР5-П(М7)
 СДА 64+21
 И П7
 НТЖ П5
 ПО НОВГР
 СЧ ТР5-П(М7)
 И Е48
 СДА 64+41
 ПЕ СТАНД    КВ 100
СТ СЧ R1-П(М7)
 И П177
СТАНД ЗП R1-П(М7)
 СЧИ М15
 СДА 64-8
 ИЛИ R1-П(М7)
 ЗП R1-П(М7)
НОВГРУ СЧ ГРУП(М17)
 ИЛИ Е48-1(М5)
 НТЖ Е48-1(М5)
 ЗП ГРУП(М17)
 СЧ R1-П(М7)
 НТЖ КВНЗАД(М14)
 И П7777
 НТЖ КВНЗАД(М14)
 ЗП КВНЗАД(М14)
 И П177
 ПО ТВЫП-П(М7)
 СЧ R1-П(М7)
 СДА 64+8
 И П17
 ВЧОБ Е4
 УИ М15 НОВ ГРУППА
 СЧ ГРУП(М15)
 ИЛИ Е48-1(М5)
 ЗП ГРУП(М15) НОВ ГРУП
 СЧ R2-П(М7)
 ПБ ВЦП-П(М7)
НОВГР СЧ ТР5-П(М7)
 И Е19
 ПЕ НОВГРУ
 ПБ СТ
ДИСП70 ВНЕШ КВНЗАД,ГРУП,П5,ТУСП,НПЗ,МЧПЗ
ПРИКАЗ ВНЕШ ВЦП
*
*
*
*      Д И Р Е К Т И В А  N 7
*      ----------------------
*
*        БОБ <N БОБ> <N У-ВА>
*          ТР4 = <N БОБ>
*          ТР5 = <N У-ВА>
*
*        ЕСМ <N БОБ> <N У-ВА>
*          ТР4 = <N БОБ> + Е24
*          ТР5 = <N У-ВА>
*
ПР7 НОП ---
 УИ М14 НОМЕР МГ
 СЧ ТР4-П(М7)
 И Е16П1
 ПВ ИЗ10В8(М15)
 И П7777
 ЗП РЯ1
 И  Е12
 УИА (М6)         ПРИЗН: ЭТО МД
 ПЕ ПР7МД
 УИА 1(М6)
МЛ СЧИ М14
 ВЧ П30
 ПЕ ТНЕТ-П(М7)    <30
 И Е6
 ПЕ ТНЕТ-П(М7)    70
 СЧИ М14
 НТЖ П7
 УИ М15
 СЧ РМЛ1
 И Е32-24(М15)
 ПЕ ТНЕТ-П(М7)
 СЧ ТЗНМЛ-24(М14)
 И ПРСВЛ
 ПЕ ТНЕТ-П(М7)
 АIF (∧ВS ЕQ 0).ЗТ
 ПБ ДПР7
ЗТТ ЗП ТЗНМЛ-24(М14)
 И Е12
 СДА 64-32
 ИЛИ ЕЗ
 ИЛИ ЕЧ
 ИЛИ ТЗНМЛ-24(М14)
 ЗП ТЗНМЛ-24(М14)
 АGО .ЗТ1
.ЗТ АNОР
 СЧ ЕС5017
 ПЕ ДПР7
ЗТТ СЧ РЯ1
 ИЛИ Е39
З ИЛИ ЕЗ
 ИЛИ ЕЧ
 ЗП ТЗНМЛ-24(М14)
.ЗТ1 АNОР
ЗТ СЧ ТР4-П(М7)
 И Е16П1
 СДА 64-28
 РЗБ МСК1
 ИЛИ ТПР7+1-П(М7)
 ЗП ПОЛЕ+1-П(М7) Т: -<N БОБ>↑
 СЧИ М14
 СДА 64-30
 РЗБ К1-П(М7)
 ИЛИ ТПР7-П(М7)
 МОДА ПР7Ж         ОСТАВИМ БУКВУ "Г" - МГ
 ПИНО (М6)
 СЛЦ Е25          ВМЕСТО "Г" БУКВУ "Д"
ПР7Ж ЗП ПОЛЕ-П(М7)   Т: МГ(Д) <N У-ВА>
 СЧ ТР4-П(М7)
 И Е24
 ПО ЗАНШК     ИСПОЛН.ПРИКАЗ 7
 АIF (∧ВS ЕQ 1).ЗАНШК
 СЧИ М14
 СДА 64+3
 НТЖ ЕС5017
 ПЕ НЕТЕС        С: НЕТ:ЕСМЛ
.ЗАНШК АNОР
 СЧ ПОЛЕ+1-П(М7)
 НТЖ П36-П(М7)
 ЗП ПОЛЕ+1-П(М7) Т: -<N БОБ> ПРОБЕЛ
 СЧ КТЕ
 ЗП ПОЛЕ+2-П(М7) Т: ЕС↑
 СЧ Е13
ЗАНШК УИА 1027
 ИЛИ ТЗНМЛ-24(М14)
 ЗП ТЗНМЛ-24(М14)
 МОДА ЗПNЛШК
 пв (М17)
ВЫД уиа поле-п(м16)
 пб звра-п(м7)
*
НЕТЕС СЧ ТНЕТЕС
 ЗП ПОЛЕ-П(М7)
 СЧ ТНЕТЕС+1
 ЗП ПОЛЕ+1-П(М7)
 ПБ выд
*
*
ПР7МД СЧ РЯ1
 ВЧОБ NБЛ
 ПЕ МЛ
 ПБ ТНЕТ-П(М7)
ДПР7 СЧ РЯ1
 ИЛИ Е39
 ЗП Р1
 сч ТЗНМЛ-24(м14)
 и е13
 по ЗТТ
* СЧ ТР4-П(М7)
* И Е24
* ПО НЕЕСМГ
* СЧ Р1
* ПБ ЗТТ
НЕЕСМГ НОП ,
* СЧ БЕЗДУБ  ПРИЗНАКИ ТИПА МЛ
* ИЛИ УПНОВ
* И ТЗНМЛ-24(М14)
 ИЛИ Р1
 ПБ З было ЗТТ
ПР17 УИА 1027
 УИ М2
 СЧ ТР4-П(М7)
 И П77
Д00 ЗП R1-П(М7)
 ПЕ Х
Р НОП
 ЗП МСЗАК
 ПБ ТВЫП-П(М7)
Х НТЖ П77
 ПЕ НТ
 СЧ ВСЕЕД
 ПБ Р
НТ СЧ R1-П(М7)
 УИ М4
 ВЧОБ П60
 ПЕ ТВЫП-П(М7)
 СЧ Е48-1(М4)
 ИЛИ МСЗАК
 МОДА Р
 ПИО (М2)
 НТЖ Е48-1(М4)
 ПБ Р
*
*       Д И Р Е К Т И В А N 10
*       ----------------------
*
*
G20151 нтж п21-п(м7) было СЧ МГВЫБ
 ПЕ СПЕЦ2 было ВОЗВ         НА Э73 ’77777’ ВЫБРОС ВИРТ.НОСИТЕЛЯ
*
* МОДА ТВЫП-П(М7)
* УИА (М15)        ВЫХОД ДЛЯ ТР
 сч е18
 пб G20217
*
ПР10 ноп
 СЧ ТР4-П(М7)
 И Е48
 ПО спецф было намгтр       ДИРЕК-ВА С ТР
*
*
*      ДАЙ - ТР4=0;НЕТ - ТР4=1
*
 МОДА ДЕШ+LДЕШ-1
 УИА (М5)
 УИА -LДЕШ+1(М15)
*
ПОИСК МОДА (М5)
 СЧ (М15)
 НТЖ ТР5-П(М7)
 И Е24П1
 ПО СОВП
 МОДА ПОИСК
 ЦИКЛ (М15)
 ПБ ТНЕТ-П(М7)
СОВП МОДА (М5)
 СЧ (М15)
 СДА 64+24
 ЗП ТР5-П(М7)
 пб СПЕЦФ
*
*
*
ДЕШ КОНК В’1’
 КОНК П’А0 ’
*
 КОНК В’2’
 КОНК П’ПИ ’
*
 КОНК В’3’
 КОНК П’СПЕ’
*
 КОНК В’4’
 КОНК П’А1 ’
*
 КОНК В’5’
 КОНК П’ДИА’
*
 КОНК В’12’
 КОНК П’ЕС0’
*
 КОНК В’10’
 КОНК П’ПЛ ’
*
 КОНК В’20’
 КОНК П’КЛК’
*
 КОНК В’40’
 КОНК П’ГП ’
*
 КОНК В’15’
 КОНК П’СТО’
*
 КОНК В’16’
 КОНК П’ФОР’
*
 КОНК В’17’
 КОНК П’АРХ’
*
 КОНК В’37’
 КОНК П’КПИ’
*
 КОНК М5В’4’В’0’
 КОНК П’В0 ’
*
 КОНК М5В’10’В’0’
 КОНК П’В1 ’
*
 КОНК В’2’
 КОНК П’ПИ1’
*
 КОНК М11В’2’В’2’
 КОНК П’ПИ0’
*
 КОНК В’10’
 КОНК П’ПЛ1’
*
 КОНК М11В’1’В’10’
 КОНК П’ПЛ0’
*
 КОНК М14В’1’
 КОНК П’СТК’
*
 КОНК М15В’1’
 КОНК П’ОТЛ’
*
LДЕШ ЭКВ *-ДЕШ
*
*
*----- ЧТО ДЕЛАТЬ
*
СПЕЦФ   сч      ТР5-п(М7)
        нтж     П12
        по      G20220
        сч      ТР5-п(М7)
        нтж     П17
        по      G20223
        нтж     E5
        пе      G20151
        сч      E19
G20217  зп      БУФТРВ
        пб      ЗППРЕД
G20220  сч      тр4-п(М7)
        нтж     E1
G20221  зп      тр4-п(М7)
        сч      E25
        пб      G20217
G20223  сч      E20
        зп      БУФТРВ
 ago .skip
СПЕЦФ СЧ ТР5-П(М7)
 И П37
 УИ М2           ЧТО СЧИТАТЬ
*
 СЧ ТР5-П(М7)
 СДА 64+5
 И П17
 УИ М3           КУДА ИДТИ
*
 СЧ ТР5-П(М7)
 И Е10
 ПО СПЕЦ
*      ИНВЕРЦИЯ ТР4
 СЧ ТР4-П(М7)
 И Е1
 НТЖ Е1
 ЗП ТР4-П(М7)
*
СПЕЦ СЧ ТР5-П(М7)
 И Е11
 ПЕ СПЕЦ1        ЕСТЬ ЕЩЕ ИНФ-Я
 МОДА ТВЫП-П(М7)   НА С:"ЕСТЬ"
 УИА (М15)
 ПБ СПЕЦ2
.skip anop
*
ЗППРЕД МОДА ПРЕДЕЛ
 УИА (М12)
****** ЗАПИСЬ В ЯЧЕЙКУ ПО М12
ЗАПИСЬ УИА 1027
* СЧ РЯ1
 ИЛИ (М12)
 ЗП (М12)
 СЧ ТР4-П(М7)
 И Е1
 ПЕ ТВЫП-П(М7)
*       ГАШЕНИЕ
 СЧ РЯ1
 НТЖ (М12)
 ЗП (М12)
 ПБ твып-п(м7)
SW      сч      ЖИЗОС
        слц     Т
        зп      врспец-п(М7)
        мода    ЗПNЛШК
        мода
        пв      (М17)
        слиа    2(М17)
        зп      лnтер1-п(М7)
        пб      G20326
G20237  сч      E17
        пб      G20217
G20240  сч      ЖИЗОС
        слц     Т
        зп      врстоп-п(М7)
        мода    ЗПNЛШК
        мода
        пв      (М17)
        зп      лnтер-п(М7)
        уиа     '2003'
        сч      E21
        зп      r1-п(М7)
        сч      ТР4-П(М7)
        и       E1
СПЕЦ1   по      G20302
        пб      G20307
G20247  сч      Е44Е43
        зп      БУФТРВ
ЗПЗАН ноп
 мода ЗАНЯТА
 уиа (М12)
 ПБ ЗАПИСЬ
СПЕЦ2   мода    G20325
        уиа     0(М15)
        сч      ТР5-п(М7)
        нтж     П5
        по      G20247
        нтж     E4
ЗПНУСВ  по      G20240
        нтж     П16
ЗНУСВУ  по      SW
        сч      Е24П22
        уиа     '2003'
        и       ТР5-п(М7)
        пе      СМЕ
        сч      ТР5-п(М7)
        и       Е20П1
        по      G20325
        нед
        уи      М4
        сч      ТР5-П(М7)
        нтж     E16
        по      G20274
        сч      ТР5-П(М7)
        нтж     E15
        по      G20314
        сч      ТР5-П(М7)
        нтж     E13
        нтж     E2
        по      G20276
        сч      ТР5-П(М7)
        нтж     E12
        нтж     E4
        по      G20276
G20272  сч      E48-1(М4)
        или     ЗАПР
        нтж     ЗАПР
        пб      G20277
G20274  мода    ЗПNЛШК
        пв      (М17)
        пб      G20314
G20276  сч      ТР5-П(М7)
        и       Е20П1
G20277  мода    G20325
        уиа     0(М15)
 ЗП R1-п(м7)
 СЧ ТР4-П(М7)
 И Е1
 ПО гашмгр было ТВЫП-П(М7)
*
G20302 сч мгрп
 пб устмгр
ГАШМГР СЧ П37 СВС: П77 и далее
 НТЖ РЯПСЗ
 И П37
 ИЛИ ШКПЛАН
 ЗП ШКПЛАН
 СЧ П37
 ИЛИ РЯПСЗ
 ЗП РЯПСЗ
G20307 СЧ r1-п(м7) было РЯ1
 мода G20316
 уиа (м15)
 ПБ ТВ67А
*
СМЕ ЗП r1-п(м7)
 СЧ Е24П22
 ИЛИ МГРП
 НТЖ Е24П22
УСТМГР ИЛИ r1-п(м7)
 ПБ ТВ67Б
********
G20314  мода    G20326
        пв      (М17)
        пб      G20272
G20316  сч      ТР5-П(М7)
        нтж     E2
        по      G20322
        сч      ТР5-П(М7)
        нтж     E4
        пе      G20325
ЭТОСПЕ  сч      E12
        пб      G20323
G20322  сч      E13
G20323  мода    G20325
        уиа     0(М15)
ЭТОСТО  зп      r1-п(М7)
        пб      G20302
G20325  пб      ТВЫП-П(М7)
G20326  сч      тр4-п(М7)
        и       E1
*
G20327 нтж      е1
       зп       тр4-п(м7)
G20330 пб       (м17)
*
*
*
*------- ЗПNЛШК -------*
*
ЗПNЛШК УИА 1027
 СЧ Е36
 ИЛИ ШКИВ
 ЗП ШКИВ
 СЧ НОМУС1
 ПБ (М17)
*-------  Е N D --------*
*
*
*
*      ПОЛЕ КОНСТАНТ
*
БУФТРВ ПАМ 6
 ЭКВИВ (РЯ1,БУФТРВ),(Р1,БУФТРВ+1)
*
*
ТНЕТЕС КОНД П’7НЕТ:Е’
 КОНД М24П’СМЛ’М16В’377’
КТЕ КОНД П’ЕС↑000’
Е24П22 КОНД М21В’7’
Е20П1 КОНД В’3777777’
ПРИЦИП КОНД М30В’113004’
ЗАПР КОНД М17В’3’М9В’3’
*
*
 ago .vozv
ВОЗВ УИА -3(М4)
ВОЗВ1 НОП
 СДА 64-12
 ЗП МГВЫБ
 СЧМР 0
 ЗП R1-П(М7)
 И П77
 УИ М5
 МОД ТУСП-1(М5)
 УИА (М14)
 СЧ R1-П(М7)
 СДА 64+6
 УИ М2
 СЧ УКАЗД(М14)
 И Е32-24(М2)
 ПЕ НЕТМЛ
 СЧ R1-П(М7)
 СДА 64+7
 И П37
 УИ М2
 СЧ R1-П(М7)
 И Е7
 СДА 64+4
 УИ М17
 МОДА (М14)
 СЧ ШЗНМБ-12(М2)
 СДА 64+8(М17)
 И П17
 ПО НЕТМЛ
 ЗП R1-П(М7)
 И П3
 УИ М2
 СЧ R1-П(М7)
 СДА 64+2
 УИ М17
 МОДА (М14)
 СЧ ОБЩТОМ(М17)
 СД КТОМ-1(М2)
 И П77
 УИ М2
 СЧ МГНЕИС
 ИЛИ Е32-24(М2)
 ЗП МГНЕИС
НЕТМЛ  СЧ МГВЫБ
 МОДА ВОЗВ1
 ЦИКЛ (М4)
 ПБ ТВЫП-П(М7)
П21 КОНД В’21’
.vozv anop
 Е
ДИСП70 ВНЕШ ОЗУ,ТМБ,ТОБ,Е24П1,ВСЕЕД,П7777,П177
ДИСП70 ВНЕШ П77,П60,П50,П37,П30,П17,П7,П3,ШКПЛАН
ДИСП70 ВНЕШ ШКИВ,ШЗНМБО,ШЗНМБ,ШГ,ТУС
ДИСП70 ВНЕШ ТЗНМД,ТЗНМЛ,ТВ67А,ТВ67Б
ДИСП70 ВНЕШ ТБУФ,РЯПСЗ,ОБЩТОМ,НОММБ1,НОММБ,НАПРМГ
ДИСП70 ВНЕШ МСЗАК,МГРП,МГНЕИС,МГВЫБ,ИЗ10В8,ЗАХЗАН
ДИСП70 ВНЕШ ЗАНЯТА,ГОД,РМЛ1,ГАШЗАН,П12,ЖИЗОС,Т
ДИСП70 ВНЕШ К2003,ПР13,NБЛ,ПРЕДЕЛ,ЕЗ,ЕЧ,ЕЗАР
ДИСП70 ВНЕШ ПРСВЛ,ВРЕМЯ
СОСТАВ ВНЕШ ЕПЗФ,ЕЗАПРВ
ДИСП70 ВНЕШ Е44Е43
КИТ ВНЕШ Е32П25,ЕС5017
ДИСКИ ВНЕШ Е16П1,КТОМ,МДНЕИС
БОЭК1 ВНЕШ СЧЕТРВ
КАЧКА ВНЕШ Е48П17,ШКРЗ,П16
ПРИКАЗ ВНЕШ R1,R2,ТПР7,ПОЛЕ,ТВЫП,ТНЕТ,(П,ПРИКАЗ)
ПРИКАЗ ВНЕШ К1,П36,ТР4,ТР5,ЗВРА,п21
ПРИКАЗ ВНЕШ ВРСТОП,ВРСПЕЦ,ЛNТЕР,ЛNТЕР1,NПРКАН
МОТТ ВНЕШ НОМУС1
МОТТ ВНЕШ (МСК1,ПРОБ6)
*КОНЕЦ ЧАСТИ
