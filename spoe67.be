СПОЭ67 СТАРТ ’12000’ ЭКСТРАКОД ОТЛАДКИ
 УПОТР СПОЭ67(М7)
 КОНД В’0’
 КОНД М41В’3’ БЛ. РЕЖ. АУ   1
 КОНД (3)В’0’ 3,4,2
 КОНД М15В’3’В’3’М24В’2’ 5
 КОНД (17)В’0’
 КОНД В’0’   НЕ ЗАНИМАТЬ
ВКПСТТ КОНД М47В’1’М32В’364’М24В’334’
 КОНД В’0’
ВКТТ КОНД М47В’1’М32В’364’
ОР КОНД В’0’
РЯШК КОНД В’0’
ИНФТТ КОНД М17В’1’В’133’ ЧТ,26ТР 3СЕКТОР
 КОНД В’0’
 КОНД (2)В’0’
 КОНД М47В’1’ 33
СУММ КОНД (2)В’0’
 КОНД В’0’ 44
КУС КОНД М2В’25’М17В’3’
НОМЕ КОНД М40В’377’М32В’14’М24В’210’М16В’311’ ТАНДЕМ
 КОНД В’4000717075605540’ НОМЕ.<-.I
Э67 ЗП СУММ УПРЯТ. СУММАТОРА
 ЗП 25(М7)
 МОД 25(М7)
 СЧ ТУС-1
 УИ М1
 УИА (М6)
 СЧ 36(М1) СОД. 16 ИР
 УИ М5
 МОДА АБ
 ПИНО (М5) ЕСЛИ ЭКСТР. НЕ ИЗ СПО
 СДА 64+21
 УИ М5 АДРЕС ЯЧЕЙКИ С ИНФОРМАЦ.
 СЛИА -1(М5)
 СЧ (М1)
         ПО    ЗАНЧИС
 УИ М2
 СДА 64+16
 ПО Б ЕСЛИ БЫЛ АДРЕС ВХОДА В СПО
 УИ М4
 СЧ 36(М1)
 И Е37
 ПО ОШИБКА
 МОДА АБ1
 ПИНО (М4) ЭТО БЫЛ ВХОД В ПРОГР. МАТЕМ.
 УИА -1(М6)
В5 СЛИА -1(М5)
 МОДА АБ4
 ПВ (М3) НА СЧИТ. ЯЧЕЙКИ СПО-1
 УИ М2 АДРЕС ОСТАНОВА НА РЕГ.
 УИИ М3(М1)
 МОДА В3
 ПИО (М6) ЕСЛИ ЭТО КРА.
 ЗП (М1)
 СЛИА 1(М3) ДЛЯ СЧИТ.
 СЧ 5(М1)
 И С3
 ЗП 5(М1) ЗАНУЛ. ПРИЗН. СЧИТ.В ИПЗ
 СЧ (М1)
 СДА 64+21
 И Е20
 НТЖ 5(М1)
 ЗП 5(М1) ЗАМ. ПРИЗН. СЧ ИЛИ ЗП  В  ИПЗ ЗАДАЧИ
В3 СЧИ М2
 УИА ’2003’
 ИЛИ 22(М3)
 ЗП 22(М3) ЗАНЕСЕН.АДРЕСА ПРЕРЫВ.В ИПЗ
 УИА 3
 МОДА В5
 ЦИКЛ (М6) ЕСЛИ   БЫЛО  СЧИТ. ИЛИ  ЗП
В1 УИА ’2003’
 ПВ ЗАНОСМ(14)
 МОД 25(М7)
 СЧ Е48-1-ПЗ
 ПВ ВШГП(М15)
ВЫХ СЧ Е8
 ПБ БЛИСКВ
Б СЧ 36(М1) ЗАПОМИНАНИЕ АДРЕСА ВХОДА В СПО
 И С1
 ЗП 36(М1)
 СЧ (М1)
 СДА 64-21
 НТЖ 36(М1)
 ЗП 36(М1)
 УИА ’2003’
 СЧ 22(М1) ЧИСТКА И 34
 И С2
 ЗП 22(М1)
 СЧ 23(М1) ЧИСТКА И 35
 И С2
 ЗП 23(М1)
 СЧ ЯЧЧАВ(М1)
 И Е41П1
 ИЛИ =М41В’63’
 ЗП ЯЧЧАВ(М1)
 УИА 3
 СЧ Е19
 ИЛИ 5(М1)
 НТЖ Е19
 ЗП 5(М1) УБР. ОСТ. ПО КОНТРОЛЮ
 ПБ В1 НА ВЫХОД ИЗ НЕРЕЗИД.
АБ1 СЧ (М1)
 СДА 64+16
 ЗП 6(М1) АДРЕС ДОБ. НА ИР 20
 СДА 64+15
 ЗП 3(М1)
 СЧИ М2
 ЗП 8(М1) ВОССТ.  16 ИР
 МОДА АБ2
 УИА (М3) АДРЕС ВЫХОДА ИЗ БЛОКА
АБ4 МОДА ОШИБКА БЛОК ВЫБОРКИ ЧИСЛА ОТ МАТЕМАТИКА
 УИА (М15)
 СЧИ М15
 ПВ ЗАПВЫХ(М15)
 УИА ’2000’
 СЧ (М5)
 УИА 3
 ПБ (М3)
АБ2 ЗП (М1)
 СЧ Е5
 ИЛИ 5(М1) ПРИЗНАК ТОГО ЧТО БЫЛА 22(23)КОМ.
 ЗП 5(М1)
 ПБ В1
АБ И Е37
 ПЕ ОШИБКА
 СЧ 36(М1)
 И С1
 ЗП 36(М1)
 СЧ 4(М1)
 СДА 64-21
 ИЛИ 36(М1)
 ЗП 36(М1) АДРЕС ВОЗВРАТА ПРИ ОСТАНОВКАХВЫБ°°°
 МОДА АБ4
 ПВ (М3)
 ЗП СУММ+1
 И Е24 ПРИЗНАК ВЫД. СТАНД. ИНФОРМАЦИИ
 СДА 64-14
 ИЛИ 36(М1) 38 РАЗРЯД ИПЗ
 ЗП 36(М1)
 СЧ ЯЧЭК(М1)
 И ЕВАМОS
 ПО ОБХОД
 СЧ Е21
 ИЛИ СУММ+1
 ЗП СУММ+1
ОБХОД СЧ СУММ+1
 УИ М2
 УИИ М3(М1)
 И =М20В’3’ ЭТО КРА ИЛИ ЗП
 ПО АБ5
 СЛИА 1(М3)
 СЧ 5(М1)
 И С3
 ЗП 5(М1) ЗАНЕС. ПРИЗН. СЧ В ИР 21
 СЧ СУММ+1
 И Е21
 НТЖ Е21
 СДА 64+1
 ИЛИ 5(М1)
 ЗП 5(М1)
АБ5 СЧ СУММ+1
 СДА 64+24
 УИ М4 АДРЕС ВХОДА В ПРОГР.МАТЕМ.
 МОДА А3
 ПИО (М4) ЕСЛИ ПРОДОЛЖ. ЗАДАЧУ
 ЗП 3(М1)
АБ7 УИА ’2003’
 СЧ 22(М3)
 И С2
 ЗП 22(М3)
 УИА 3
 ПБ В3
ОШИБКА УИА 36(М17) ОШ. НА ПЕЧАТЬ
 УИИ М15(М1)
 ПВ АВОСТА(М16)
 ПБ В1
А3 СЧ 38(М1)
 ЗП 3(М1)
 СДА 64+15
 ЗП 6(М1) ИР 20
 СДА 64+7
 И Е9 ПРИЗНАК ПРАВ. ИЛИ ЛЕВ. КОМАНДЫ
 ИЛИ Е5
 ИЛИ 5(М1)
 ЗП 5(М1)
 ПБ АБ7
ЗАНЧИС    СЧ     36(М1)
          И      Е37
          ПО     ОШИБКА                НЕТ  СПО
          СЧ   19(М1)
          УИ     М5
          МОДА   АБ4
          ПВ     (М3)
          УИА     ’2003’
          РЕГ     ’107’
          УИА     ’2000’
          ЗП       (М5)
           УИА    ’2003’
           РЕГ    ’101’
           ПБ      В1
 ЛИТЕР
С2 КОНД М15В’-1’ 34
С1 КОНД В’-1’М21В’377777’
С3 КОНД В’-1’М19В’1’ 36
 АДРЕС СПОЭ67+’377’
П374 КОНД В’374’
ВЗУ ВНЕШ ФИЗОБМ
БОЭК1 ВНЕШ ЗАПВЫХ
ДИСП70 ВНЕШ ЗАНОСМ,АВОСТА,ТУС,ШГ,П7,БЛИСКВ,И,П77777,П3
ДИСП70 ВНЕШ Е46Е45,НОММБ,П17,П37,ШИФРМ
ДИСП70 ВНЕШ ПЗ,ЯЧЧАВ,ЯЧЭК,ЕВАМОS
ДИСП70 ВНЕШ Е41П1
ВИСП ВНЕШ ВШГП
 Е
 М
