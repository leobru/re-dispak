КОНВОЙ	СТАРТ	'70000'
	Б
	Е
	М
*
	 ГБЛВ ∧К71
∧К71 УСТВ 1
*
	АПУ (&К71).ДА
	АПБ	.ОБЩ
*
.ДА АНОП
*
***** ПОДПРОГРАММА КОНВОЙ N2 ******
*
* АВТОНОМНЫЙ "КОНВОЙ". В К-71 НЕ ИСПОЛЬЗ.
*****************************************
*
C1      экв     '600'  !АДР ВХОДА ИДЕНТИЧЕН N1
	сч	вых1	!ОТСУТСВ. ВХОД МЕТКИ
	пб	прер1+C1 !АДРЕСА ОСН. МЕТОК "70600"
	сч	вых2
	пб	проц1+C1
	сч	вых3
	пб	общ1+C1
	сч	вых4
	пб	авд1+C1
	пам	3 РЕЗЕРВ
*
*** КОНТРОЛЬ ПРЕРЫВАНИЙ ***
*
прер1	слиа	-3(М16) * !МОДИФ. УЧАСТОК. ДОБАВЛЕНЫ СТРОКИ С "*"
	счи	М16 *
	слиа	3(М16)	*
	мод	вых1	*
	по	0	*
	сч	вых1
	и	Е15П1
	или	тип2
	зп	рк71
	сч	пор
	слц	E19
	и	окно
	зп	пор
	зп	рконво+С1 !ЗП РАБ. ЯЧ. СО СМЕЩЕНИЕМ
	сч	ВРЕМЯ
	сда	64-24
	или	пор
	или	рк71
	мод	упрер
	зп	0	СЛОВО: ВРЕМЯ, АД. ВОЗВРАТА
	счи	М33
	сда	64-30
	зп	рк71
	счи	М16
	сда	64-15
	или	рк71
	мод	упрер
	зп	1	1 СЛОВО: М33,М16,0
	сч	ШЗПОМД
	или	СОД+1(М16)
	мод	упрер
	зп	2	2 СЛОВО: ШЗПОМД
	сч	ЯПРМД+1(М16) !ПОЧЕМУ НЕ СОВП. "ОЖОСВ-5"?
	мод	упрер
	зп	3	3 СЛОВО: ЯПРМД
	сч	КУС2-1(М16)
	мод	упрер
	зп	4	4 СЛОВО: КУС2
	сч	упрер
	слц	ход1
	зп	упрер
	нтж	конад1
	мод	вых1
	пе	0
	сч	начад1
	зп	упрер
	мод	вых1
	пб	
*
*** КОНТРОЛЬ ПРОЦЕССОВ НИЖНЕГО УРОВНЯ
*** КОНТР. ТОЧКИ: ОПРГД(ДИСКИ), ЗАПРОС(ДИСКИ)
*** АВАР(АВМД), ОПРД(АВМД)
*
проц1	слиа	-3(М16) !МОДИФ. УЧАСТОК. ДОБАВЛЕНЫ СТРОКИ С "*"
	счи	М16	*
	слиа	3(М16)	*
	мод	вых2	*
	по	0	*
	сч	вых2
	и	Е15П1
	или	тип1
	зп	рк71+1
	сч	пор
	слц	E19
	и	окно
	зп	пор
	или	E22	!ДОБ. РАБОТА С НОВ. РАБ. ЯЧ.
	вч	рконво+C1	*
	и	окно	*
	сда	64+18	*
	вч	П60	*
	пе	проц1а+C1	*
	счи	0	*
	зп	бат	*
проц1а	сч	ВРЕМЯ	!НОВ. МЕТКА
	сда	64-24
	или	пор
	или	рк71+1
	мод	упроц
	зп	0
	счи	М3
	сда	64-45
	зп	рк71+1
	счи	М33
	сда	64-30
	или	рк71+1
	зп	рк71+1
	счи	М16
	сда	64-15
	или	рк71+1
	зп	рк71+1
	счи	М4
	или	рк71+1
	мод	упроц
	зп	1	1 СЛОВО: М3(3:1), М33, М16, М4
	сч	ШЗПОМД
	мод	упроц
	зп	2	2 СЛОВО: ШЗПОМД
	сч	ЗАВ(М16) !РАНЕЕ - "ЗАНКМД-3(М16)"
	мод	упроц
	зп	3	3 СЛОВО: ЗАВ. 	
	сч	зневып
	мод	упроц
	зп	4
	сч	упроц
	слц	ход2
	зп	упроц
	нтж	конад1+1
	мод	вых2
	пе	0
	сч	конад1
	зп	упроц
	мод	вых2
	пб	0
рконво	пам	1	!НОВ. ЛОК. РАБ. ЯЧ.
*
*** КОНТРОЛЬ ИСПОЛЬ. МЕХАНИЗМА СЕМАФОРОВ
*** ПРОЦЕССАМИ ВЕРХНЕГО УРОВНЯ
*** КОНТР. ТОЧКИ: ОСВМД (ДИСКИ), ENQ (ДИСКИ), DEQ (ДИСКИ)
*
общ1	слиа	-3(М16) !МОДИФ. УЧАСТОК. ДОБАВЛЕНЫ ЯЧЕЙКИ С "*"
	счи	М16	*
	слиа	3(М16)	*
	мод	вых3	*
	по	0	*
	сч	вых3
	и	Е15П1
	или	тип3
	зп	рк71+2
	сч	пор
	слц	E19
	и	окно
	зп	пор
	сч	ВРЕМЯ
	сда	64-24
	или	пор
	или	рк71+2
	мод	уобщ
	зп	0
	счи	М33
	сда	64-30
	зп	рк71+2
	счи	М16
	сда	64-15
	или	рк71+2
	зп	рк71+2
	счи	М11
	или	рк71+2
	мод	уобщ
	зп	1
	счи	М6
	сда	64-30
	зп	рк71+2
	счи	М15
	сда	64-15
	или	рк71+2
	или	НЗАД
	мод	уобщ
	зп	2	М6,М15,НЗАД
	сч	ЗАНМД+1(М16) !РАНЕЕ - "ENQMDC-3(M16)"
	или	МДНЕИС+1(М16) ! РАНЕЕ - "ШЗМД-3(М16)"
	мод	уобщ
	зп	3	ЗАНМД+МДНЕИС
	сч	ЛИСТМБ(М7)
	мод	уобщ
	зп	4
	сч	уобщ
	слц	ход3
	зп	уобщ
	нтж	конад1+2
	мод	вых3
	пе	0
	сч	конад1+1
	зп	уобщ
	мод	вых3
	пб	
*
*** КОНТРОЛЬ ОБРАБОТКИ АВАРИЙ МД ***
*
авд1	сч	вых4
	и	Е15П1
	или	тип4
	зп	рк71+2
	сч	пор
	слц	E19
	и	окно
	зп	пор
	сч	ВРЕМЯ
	сда	64-24
	или	пор
	или	рк71+2
	мод	бат+1 *****************
	зп	'1765' 0 СЛОВО
	счи	М33
	сда	64-30
	зп	рк71+2
	счи	М16
	сда	64-15
	или	рк71+2
	зп	рк71+2
	счи	М4
	или	рк71+2
	мод	бат+1 *****************
	зп	'1766' 	1 СЛОВО М33,М16,М4
	сч	типош
	мод	бат+1 *****************
	зп	'1767'	2 СЛОВО: ЗНЕВЫП
	сч	ЗАВ(М16)
	мод	бат+1 ******************
	зп	'1770'	3 СЛОВО: ЗАВ
	сч	рс
	мод	бат+1 ******************
	зп	'1771' 	3(4?) СЛОВО: РС
	мод	вых4
	пб	0
*************************
	адрес	КОНВОЙ+'200' !ЗАЧЕМ ЭТОТ СДВИГ?
С2      экв     '400'
*************************
*!В ПРОГРАММЕ НИЖЕ ИЗМ. КРОМЕ СМЕЩЕНИЯ ПО "С2" НЕТ.
	сч	вых1 	
	пб	прер2+С2
	сч	вых2
	пб	проц2+С2
	сч	вых3
	пб	общ2+С2
	сч	вых4
	пб	авд2+С2
	пам	3
*
*** КОНТРОЛЬ ПРЕРЫВАНИЙ ***
*
прер2	сч	вых1
	и	Е15П1
	или	тип2
	зп	рк71
	сч	пор
	слц	E19
	и	окно
	зп	пор
	сч	ВРЕМЯ
	сда	64-24
	или	пор
	или	рк71
	мод	упрер
	зп	0	СЛОВО: ВРЕМЯ, АД. ВОЗВРАТА
	счи	М33
	сда	64-30
	зп	рк71
	счи	М16
	сда	64-15
	или	рк71
	мод	упрер
	зп	1	1 СЛОВО: М33,М16,0
	сч	ШЗПОМД
	или	СОД+1(М16)
	мод	упрер
	зп	2	2 СЛОВО: ШЗПОМД
	сч	ЯПРМД+1(М16) !ПОЧЕМУ НЕ СОВП. "ОЖОСВ-5"?
	мод	упрер
	зп	3	3 СЛОВО: ЯПРМД
	сч	КУС2-1(М16)
	мод	упрер
	зп	4	4 СЛОВО: КУС2
	сч	упрер
	слц	ход1
	зп	упрер
	нтж	конад1
	мод	вых1
	пе	0
	сч	начад1
	зп	упрер
	мод	вых1
	пб	
*
*** КОНТРОЛЬ ПРОЦЕССОВ НИЖНЕГО УРОВНЯ
*** КОНТР. ТОЧКИ: ОПРГД(ДИСКИ), ЗАПРОС(ДИСКИ)
*** АВАР(АВМД), ОПРД(АВМД)
*
проц2	сч	вых2
	и	Е15П1
	или	тип1
	зп	рк71+1
	сч	пор
	слц	E19
	и	окно
	зп	пор
	сч	ВРЕМЯ
	сда	64-24
	или	пор
	или	рк71+1
	мод	упроц
	зп	0
	счи	М3
	сда	64-45
	зп	рк71+1
	счи	М33
	сда	64-30
	или	рк71+1
	зп	рк71+1
	счи	М16
	сда	64-15
	или	рк71+1
	зп	рк71+1
	счи	М4
	или	рк71+1
	мод	упроц
	зп	1	1 СЛОВО: М3(3:1), М33, М16, М4
	сч	ШЗПОМД
	мод	упроц
	зп	2	2 СЛОВО: ШЗПОМД
	сч	ЗАВ(М16) !РАНЕЕ - "ЗАНКМД-3(М16)"
	мод	упроц
	зп	3	3 СЛОВО: ЗАВ. 	
	сч	зневып
	мод	упроц
	зп	4
	сч	упроц
	слц	ход2
	зп	упроц
	нтж	конад1+1
	мод	вых2
	пе	0
	сч	конад1
	зп	упроц
	мод	вых2
	пб	
*
*** КОНТРОЛЬ ИСПОЛЬ. МЕХАНИЗМА СЕМАФОРОВ
*** ПРОЦЕССАМИ ВЕРХНЕГО УРОВНЯ
*** КОНТР. ТОЧКИ: ОСВМД (ДИСКИ), ENQ (ДИСКИ), DEQ (ДИСКИ)
*
общ2	сч	вых3
	и	Е15П1
	или	тип3
	зп	рк71+2
	сч	пор
	слц	E19
	и	окно
	зп	пор
	сч	ВРЕМЯ
	сда	64-24
	или	пор
	или	рк71+2
	мод	уобщ
	зп	
	счи	М33
	сда	64-30
	зп	рк71+2
	счи	М16
	сда	64-15
	или	рк71+2
	зп	рк71+2
	счи	М11
	или	рк71+2
	мод	уобщ
	зп	1	М33,М16,М11
	счи	М6
	сда	64-30
	зп	рк71+2
	счи	М15
	сда	64-15
	или	рк71+2
	или	НЗАД
	мод	уобщ
	зп	2	М6,М15,НЗАД
	сч	ЗАНМД+1(М16) !РАНЕЕ - "ENQMDC-3(M16)"
	или	МДНЕИС+1(М16) ! РАНЕЕ - "ШЗМД-3(М16)"
	мод	уобщ
	зп	3	ЗАНМД+МДНЕИС
	сч	ЛИСТМБ(М7)
	мод	уобщ
	зп	4
	сч	уобщ
	слц	ход3
	зп	уобщ
	нтж	конад1+2
	мод	вых3
	пе	0
	сч	конад1+1
	зп	уобщ
	мод	вых3
	пб	
*
*** КОНТРОЛЬ ОБРАБОТКИ АВАРИЙ МД ***
*
авд2	сч	вых4
	и	Е15П1
	или	тип4
	зп	рк71+2
	сч	пор
	слц	E19
	и	окно
	зп	пор
	сч	ВРЕМЯ
	сда	64-24
	или	пор
	или	рк71+2
	мод	бат+1 *****************
	зп	'1765' 0 СЛОВО
	счи	М33
	сда	64-30
	зп	рк71+2
	счи	М16
	сда	64-15
	или	рк71+2
	зп	рк71+2
	счи	М4
	или	рк71+2
	мод	бат+1 *****************
	зп	'1766' 	1 СЛОВО М33,М16,М4
	сч	типош
	мод	бат+1 *****************
	зп	'1767'	2 СЛОВО: ЗНЕВЫП
	сч	ЗАВ(М16)
	мод	бат+1 ******************
	зп	'1770'	3 СЛОВО: ЗАВ
	сч	рс
	мод	бат+1 ******************
	зп	'1771' 	3(4) СЛОВО: РС
	мод	вых4
	пб	0
*
БОЭК1	ВНЕШ	ЛИСТМБ
ДИСКИ	ВНЕШ	МДНЕИС,ЗАНМД,типош,СОД,ЗАВ,зневып,рс
ДИСП70	ВНЕШ	ШЗПОМД,НЗАД,КУС2,КУС1Б,ВРЕМЯ,П60,Е15П1,СБОИМБ
КИТ	ВНЕШ	ЯПРМД
МОТТ	ВНЕШ	вых1,вых2,вых3,вых4,бат,окно,упрер,пор
МОТТ	ВНЕШ	упроц,уобщ,начад1,конад1,тип1,тип2,тип3,тип4
МОТТ	ВНЕШ	ход1,ход2,ход3,рк71
*
.ОБЩ АНОП
	ФИНИШ
