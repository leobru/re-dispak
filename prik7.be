ПРИК7 СТАРТ ’21400’
 УПОТР ПРИК7(М1)
 М
 Б
*
НАЧАЛО НОП ,
*      Д И Р Е К Т И В А  N22
*      ----------------------
*
*       НОМ [<ШИФР> ИЛИ <ЧИСЛО>]
*          ТР5 = <ШИФР>;
*
*          ТР5 = 0; ТР4 = <ЧИСЛО>;
*
НОМ УИА (М5)
 УИА 3
 СЧ ТР4-П(М7)
 И Е48
 ПЕ НОМВХХ       НА ИНФ О АЦПУ,ПИ,ПЛ
 СЧ 0
 ЗП ПОЛЕ+3-П(М7)
 МОДА НОМ3         АДР ВОЗВР. ИЗ ЧТКАТ2
 УИА (М12)
 СЧ ТР5-П(М7)
 СДА 64-32
 ЗП РЯ1П7
 ПЕ НОМ1         ШИФР
 УИА -8(М5)
 СЧ ТР4-П(М7)
 И П37
 СДА 64-3
 УИ М4
 СЛИА -255(М4)
 СЧ КУС545
 ПБ НОМ2
НОМ1 СЧ КУС545
 УИА -255(М4)
НОМ2 ЗП КУС-П(М7)
 ПБ ЧТКАТ2-П(М7)
НОМ3 УИИ М14(М2)
 СЧИ М4
 СЛЦ П177
 И П77777
 СДА 64+7
 ПЕ НОМ4
 СЛИА 128(М14)
НОМ4 МОДА (М14)
 СЧ 255(М4)
 ЗП РЯ2П7
 НТЖ '71665' было РЯ1П7
 СДА 64-16 было 64+32
	по	ном5
	сч	ря2п7
	нтж	ря1п7
	сда	64+32
 ПО НОМ7         НАШЛИ
 МОДА НОМ8
 ПИНО (М5)
 СЧ РЯ1П7
 ПО НОМ6
НОМ5 МОДА НОМ3
 ЦИКЛ (М4)
НОМ6 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
 СЧ ПОЛЕ+3-П(М7)
 И Е48П43
 ПО ТНЕТ-П(М7)
 ПБ ПР1А-П(М7)
*
*------ ПЕЧ.СООБЩЕНИЙ ------*
*
НОМ7 СЧ РЯ1П7
 ПО НОМ5
НОМ8 МОДА НОМ9
 ЦИКЛ (М5)
НОМ9 СЧ РЯ2П7
 РЗБ ПРОБ6
 ЗП ПОЛЕ+1-П(М7)  <ШИФР>
 СЧ РЯ2П7
 СДА 64-24
 РЗБ ПРОБ6
 ЗП ПОЛЕ+2-П(М7)  <ШИФР>
 СЧИ М4
 СЛЦ П377
 СДА 64-33
 РЗБ К1-П(М7)
 ИЛИ СТР
 ЗП ПОЛЕ+3-П(М7)  <N СКВ>
 СЧ КОПР-П(М7)
 ЗП ПОЛЕ-П(М7)   7 ЛОГ.НОМЕР
 УИА ПОЛЕ-П(М16)
 МОДА ЗВР2-П(М7)
 ПВ (М17)
 ПБ НОМ5
*
*
ИНФА СЧ ТНЕТП
 ЗП ДПОЛЕ+1-П(М7)
 УИА МГРП(М4)
 СЧ Е1
 ЗП ШАБЛО
 СЧ Е3
 ЗП ШАБЛО+1
*
 МОДА ТА
 УИА (М6)
*
 МОДА ПЕРЕЧ
 ПВ (М13)
*      == ДЛЯ А1 ==
 СЧ ТСБОЙ
 ЗП ДПОЛЕ+1-П(М7)
 УИА ШИФРАЦ(М4)
 СЧ Е25
 ЗП ШАБЛО
 СЧ Е27
ИН ЗП ШАБЛО+1
*
 МОДА ТА
 УИА (М6)
*
G21463 УИИ М13(М12)
 ПБ ПЕРЕЧ
*
*
ИНФИ СЧ тнетп было ТУСВА
 ЗП ДПОЛЕ+1-П(М7) С:N УС-ВА:
 УИА МГРП(М4)
 СЧ Е2
 ЗП ШАБЛО
 СЧ Е4
 ЗП ШАБЛО+1
 мода тпипл
 уиа (м6)
 МОДА ПЕРЕЧ
 ПВ (М13)
 СЧ ТСБОЙ
 ЗП ДПОЛЕ+1-П(М7)
 УИА ШИФРАЦ(М4)
 СЧ Е26
 ЗП ШАБЛО
 СЧ Е28
 зп шабло+1
 ПБ G21463
*
*
*
*
*      Н О В О С Т И   Б У Ф Е Р А  В Ы В О Д А  N 22
*      ----------------------------------------------
*
*         ТР6 = 22; 48Р ТР4 = 1
*
*
*      ИНФ О АЦПУ
*
НОМВХХ СЧ КОПР-П(М7)
 ЗП ДПОЛЕ-П(М7)
 СЧ ТР4-П(М7)
 И Е47
 ПЕ НОМИ         НОМ ПИ
*
 СЧ ТР4-П(М7)
 И Е46
 ПЕ НОМЛ         НОМ ПЛ
*
 СЧ ТР4-П(М7)
 И Е45
 ПЕ НОМО         НОМ ОБЩИЙ
*
 МОДА ИНФА
 ПВ (М12)
 УИА 1(М4)
НОМПЕЧ МОДА НОМВЫВ
 ПВ (М12)
 ПО ТНЕТ-П(М7)
 ПБ ПР1А-П(М7)
*
*      ИНФ О ПИ
*
НОМИ МОДА ИНФИ
 ПВ (М12)
 УИА 2(М4)
 ПБ НОМПЕЧ
*
*      ИНФ О ПЛ
*
НОМЛ МОДА ИНФИ
 ПВ (М12)
 УИА 4(М4)
 ПБ НОМПЕЧ
*
НОМО МОДА ИНФА
 ПВ (М12)
 МОДА ИНФИ
 ПВ (М12)
* МОДА ИНФЧПК
* ПВ (М12)
 УИА 1(М4)
 МОДА НОМВЫВ
 ПВ (М12)
 УИА 2(М4)
 МОДА НОМВЫВ
 ПВ (М12)
 УИА 4(М4)
 МОДА НОМВЫВ
 ПВ (М12)
 ПБ ПР1А-П(М7)
*
НОМВЫВ nop
	уии	М10(М4)
	слиа	-1(М10)
 СЧ КОПР-П(М7)   УСТ.7 ЛОГ.КАНАЛ
 ЗП ПОЛЕ-П(М7)
 ЗП ДПОЛЕ-П(М7)
*
 УИА 3
 СЧ 0
 ПВ ТБУФ(М15)
 УИА 3
 СДА 64-8
 УИ М2
 СДА 64-2
 ИЛИ НОММЛ1
 СЛЦ КУСВЫВ
 ЗП КУС-П(М7)
 ПВ ФИЗОБМ(М16)  550 ЗОНУ --> В ОЗУ ПО АДРЕСУ М2
*
* УИИ М10(М4)
* СЛИА -1(М10)     М10=0-НОМА ДЛЯ АЦПУ
*
 УИА -8(М15)      ЦИКЛ ПО 8 КЛАССАМ
*
*------ ПРОСМОТР ОЧЕРЕДЕЙ ВСЕХ КЛАССОВ ------*
*
НОМВ НОП
 МОДА (М2)
 СЧ ОЧКЛ+8(М15)
 И Е48П37-1(М4)
 ПО НОМВ1         НЕТ ВЫДАЧ НА АЦПУ В КЛАССЕ
 СД КСД1-1(М4)    было перед ПО
НОМВ0 УИ М3           ОТН.АДР. ЯЧЕЙКИ С ШИФРОМ
 ЗП РЯ2П7
*
 СЛИ М3(М2)
 СЧ ШОЧ(М3)      ДЕЙСТВ.АДР.ЯЧЕЙКИ С ШИФРОМ
 И Е48П25
 РЗБ ПРОБ6
 ЗП ПОЛЕ+1-П(М7) 1-АЯ ПОЛОВИНА ШИФРА
*
*
 СЧ ПУСТО-П(М7)
 ЗП ПОЛЕ+4-П(М7)
 ЗП ПОЛЕ+5-П(М7)
 ЗП ПОЛЕ+3-П(М7)
 СЧ ВСЕЕД
 ЗП ПОЛЕ+6-П(М7)
 УИА (М5)
*
 СЧ ШОЧ(М3)
 И Е13П8
 ПО НОМВБ        НЕ УКАЗАНО NЭВМ И NУ-ВА
 СДА 64+7
 ЗП РЯ1П7
 И П7
 ПО НОМВА        НЕ УКАЗАН N У-ВА
 СДА 64+1
 МОДА -1(М4)
 ИЛИ ТАЦПУ
 ЗП ПОЛЕ+5-П(М7) Т: А<N У-ВА>
*
НОМВА СЧ РЯ1П7
 СДА 64+3
 И П7
 ПО НОМВБ        НЕ УКАЗАНА ЭВМ
 ИЛИ ТЭВМ
 ЗП ПОЛЕ+3-П(М7)   ЭВМ
*
НОМВБ СЧ ШОЧ(М3)
 И Е14
 ПО НОМВД        СТОИМ В ОЧЕРЕДИ, А НЕ ВЫДАЕМ НА АЦПУ
 УИА -1(М11)
 СЧ ГОД
 И П7
 СДА 64-1
 УИ М5           М5:= N ЭВМ * 2
****** ПЕРЕПИСЬ ТЕКУЩ.ЗОНЫ ДЛЯ А0 И А1
НОМВБ1 МОДА (М5)
 СЧ СВ-2(М2)
 И Е48П37-1(М4)
 СД КСД1-1(М4)
 МОДА (М4)
 ЗП ПОЛЕ+9-П(М7) ДЛЯ ВЫДЕЛЕНИЯ ДОБАВКИ
 И П1777
 МОДА (М4)
 ЗП ПОЛЕ+10-П(М7)
 МОДА НОМВД        ДЛЯ ПИ,ПЛ
 ПИНО (М10)
 СЛИА 2(М4)        ПЕРЕХОД НА А1
 МОДА НОМВБ1
 ЦИКЛ (М11)
 УИА 1(М4)        ВОСС.ДЛЯ МЕТКИ НОМВ
****
НОМВД СЧ РЯ2П7
 СДА 64-42
 РЗБ НННН77
 ИЛИ ТNИДЕН
 ЗП ПОЛЕ+2-П(М7)     НОМ ОЧЕР
*
 СЧ 0
 ЗП ПОЛЕ+4-П(М7)
 СЧ ШОЧ(М3)
 СДА 64+14
 И П1777
*
*------ ПОДСЧЕТ КОЛ-ВА ЗОН ------*
*
НОМВЕ УИ М6
 МОДА НОМВЕ2
 ПИО (М5)
 МОДА (М4)
 НТЖ ПОЛЕ+10-П(М7) СВ
 ПО НОМВЕ1
 МОДА НОМВЕ2
 ПИНО (М10)
*
 СЧИ М6
 НТЖ ПОЛЕ+13-П(М7) СВ ДЛЯ А1
 ПЕ НОМВЕ2
 УИА 1(М11)
 СЧ ПОЛЕ+12-П(М7)
НОМВЕ3 ЗП РЯ2П7
 СЧ ПОЛЕ+4-П(М7)
 ЗП ПОЛЕ+9-П(М7) КОЛ-ВО ЗОН УЖЕ ПРОСМОТРЕННЫХ
 СЧ РЯ2П7
 СДА 64+10
 ЗП РЯ2П7        ДОБАВКА В ЧИТОМ ВИДЕ
 МОДА НОМВЕ4
 ПИНО (М10)
*
* СЧ ПРЕДЕЛ
* И Е25(М11)
* ЧЕД
* УИ М16
 СЧИ М11
* МОДА НЕЕС
* ПИО (М16)
* МОДА -1
* НЕЕС nop
 ИЛИ ТАЦПУ
НОМВЕ5 ЗП ПОЛЕ+6-П(М7)  Т:А<N>,ПИ,ПЛ
 СЧ ТПЛЮС
 ЗП ПОЛЕ+7-П(М7) Т: + <ЕТХ>
*
НОМВЕ2 СЛИ М6(М2)
*
 СЧ (М6)
 И Е44Е43
 СДА 64+42
 СЛЦ ПОЛЕ+4-П(М7)
 СЛЦ Е1
 ЗП ПОЛЕ+4-П(М7)  КОЛ-ВО ЗОН
 СЧ (М6)
 И П1777
 ПЕ НОМВЕ        ИДЕМ ДАЛЬШЕ
*
*
 МОДА НОМВЖ
 ПИО (М5)         НЕТ ВЫДАЧИ: НЕ НУЖНЫ ОСТАВШ.ЗОНЫ
*
 СЧ ПОЛЕ+4-П(М7)
 ВЧ ПОЛЕ+9-П(М7)
 ВЧ РЯ2П7
 СДА 64-40
 РЗБ ННН377
 ИЛИ ТКОЛВО
 НТЖ =М40В’3’М32В’154’  ДЕЛАЕМ СЛЕЙШ И КILL ПРОБЕЛ
 ЗП ПОЛЕ+5-П(М7) Т: /<N ОСТАВШ.ЗОНЫ>
*
НОМВЖ СЧ ПОЛЕ+4-П(М7)
 СДА 64-40
 РЗБ ННН377
 ИЛИ ТКОЛВО
 ЗП ПОЛЕ+4-П(М7) Т: <ОБЩ.ЧИСЛО ЗОН>
*
*
*
 пам 0
 УИА ПОЛЕ-П(М16)  С:<ШИФР><N><N ОЧЕР><КОЛ-ВО> ЗОН [Э<N>][А<N>]
 МОДА ЗВР2-П(М7)
 ПВ (М17)
*
 СЧ ШОЧ(М3)      ОПР.ОТН.АДР.СЛЕДУЮЩЕГО ЭЛЕМЕНТА ОЧЕРЕДИ
 И П177
 ПЕ НОМВ0
НОМВ1 МОДА НОМВ
 ЦИКЛ (М15)
*
*-----  ЕND ------*
*
 СЧ КУС-П(М7)
 ПВ ТБУФ(М15)
*
 СЧ ПОЛЕ+1-П(М7)
 НТЖ ВСЕЕД
 ПБ (М12)
*
НОМВЕ1 МОДА (М4)
 СЧ ПОЛЕ+9-П(М7) ДОБАВКА
 ПБ НОМВЕ3
*
НОМВЕ4 МОДА (М4)
 СЧ ТА
 ПБ НОМВЕ5
*
*
*------ ПЕРЕЧЕНЬ
*
ПЕРЕЧ УИА (М3)
 УИА (М5)
ПЕР МОДА (М5)
 СЧ ШАБЛО
 ПО ПЕР2
 И (М4)        ЯЧ-КА В КОТОРОЙ ПРОВЕР.ЕД
 ПО ПЕР3
 СЛИА 1(М3)
*
 МОДА (М5)
 СЧ (М6)
ПЕР1 МОДА (М5)
 ЗП ДПОЛЕ+2-П(М7)
 СЧ ВСЕЕД
 МОДА (М5)
 ЗП ДПОЛЕ+3-П(М7)
 СЛИА 1(М5)
 ПБ ПЕР
*
ПЕР2 МОДА (М13)
 ПИО (М3)
 УИА ДПОЛЕ-П(М16)
 МОДА ЗВР2-П(М7)
 ПВ (М17)
 ПБ (М13)       ВЫХОД
*
ПЕР3 СЧ ПУСТО-П(М7)
 ПБ ПЕР1
*
*
*
*
*РЯ ПАМ 1
*
*
*
*
РЯ1П7 ПАМ 1
РЯ2П7 ПАМ 1
ШАБЛО ПАМ 2
 КОНД В’0’
СТР КОНД П’  000↑’
Е13П8 КОНД М7В’77’
НННН77 КОНД П’000077’
ННН377 КОНД П’000377’
* КОНД П’ 000Е0’М32В’143’М24В’143’М16В’143’ НЕ ОТД.ОТ ТАЦПУ
ТАЦПУ КОНД П’ 000А0’М32В’143’М24В’143’М16В’143’
 КОНД П’ ПИ0’М32В’143’М40В’143’
 КОНД П’ ПЛ0’М32В’143’М40В’143’
 КОНД П’ ПЛ0’М32В’143’М40В’143’
ТЭВМ КОНД П’ 000Э0’М32В’143’М24В’143’М16В’143’
ТNИДЕН КОНД М40П’ ’М32В’143’М24В’143’М16В’143’П’00’
ТВЫД КОНД М40В’143’М32В’143’М24В’143’М16В’143’П’ +’
ТКОЛВО КОНД П’  0000’М24В’143’
ТА КОНД М16П’ А0 ’М8В’143’В’143’
 КОНД М16П’ А1 ’М8В’143’В’143’
ТПИПЛ КОНД М16П’ ПИ ’М8В’143’В’143’
 КОНД М16П’ ПЛ ’М8В’143’В’143’
 КОНД М16П’ ПЛ ’М8В’143’В’143’ ОТ ТУСТ:2-ПИ,4-ПЛ
ТПЛЮС КОНД М40П’+’М32В’377’
ТНЕТП КОНД П’ НЕТ :’
ТСБОЙ КОНД П’ СБОЙ:’
*ТУСВА КОНД П’N У-В:’
*ТФСПЧ КОНД П’ВВОД :’
*ТВВД КОНД М24П’ В0’М16В’377’
* КОНД М24П’ В1’М16В’377’
* КОНД М24П’ФС0’М16В’377’
* КОНД М24П’ФС1’М16В’377’
*ТЗВВД КОНД М8П’ЗАПР.’В’377’
*
*
 ЭКВИВ (ПР7,ПРИК7),(ОЧКЛ,’1664’),(ШОЧ,’1675’)
 ЭКВИВ (СВ,’1646’)
ПРИКАЗ ВНЕШ ПОЛЕ,КУС,ЧТКАТ2,ТНЕТ,ПР1А,К1,ЗВР2
ПРИКАЗ ВНЕШ ТР6,ТР5,ТР4,(П,ПРИКАЗ),КОПР
ПРИКАЗ ВНЕШ ПУСТО,ДПОЛЕ,ТВЫП,КОНВЫД
ДИСП70 ВНЕШ ПРИП,П17,ПРЕДЕЛ
ДИСП70 ВНЕШ КУСВЫВ,П1777,Е44Е43
ДИСП70 ВНЕШ Е48П25,Е48П37,КСД1,ВСЕЕД
ДИСП70 ВНЕШ П3,П7,П37,П177,П377,П77777,Е48П43
СОСТАВ ВНЕШ ЕЗАПРВ
ДИСП70 ВНЕШ НОММЛ1,ТБУФ,ГОД,МГРП,ШИФРАЦ,КУС545
ВЗУ ВНЕШ ФИЗОБМ
МОТТ ВНЕШ ПРОБ6
СОСТАВ ВНЕШ ЕПРИК
 Е