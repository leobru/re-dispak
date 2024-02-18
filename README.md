# re-dispak
An attempt to disassemble the binary code of OS DISPAK for BESM-6

Попытка дизассемблирования двоичного кода ОС ДИСПАК для БЭСМ-6

* Исходные тексты ОС ДИСПАК для БЭСМ-6, в отличие от СВС (Э1-К2) не сохранились. 
* Имеется только системный диск с двоичным кодом работающей ОС.
* В коде ОС есть небольшая таблица имён и адресов системных переменных.
* На основании этой таблицы и исходного текста ОС для СВС можно попытаться восстановить
исходный текст ОС для БЭСМ-6 с осмысленными догадками об именах прочих переменных и функциях кода.

В проект будут добавляться листинги модулей ОС по мере появления.

Содержимое зон 400-777 диска 2053, где находился код ОС:
```
зона |0000000011111111222222223333333344444444555555556666666677777777
     |0123456701234567012345670123456701234567012345670123456701234567
======================================================================
 4.. |_+    _++__+++++++++__++----__-    -------_-..___.._.____+__.++.
 5.. |......-  __..___+._...+__++.++._---------++......+++++++++++++++
 6.. |++++++.+++....._.+++++++......_. _.---------.    _--    ++..+-++
 7.. |------++ _    +++    +        +     +_      +++.---------------_


  + - дизассемблирована
  _ - нули или разметочный код
  - - не представляет интереса (не относящаяся к ОС ДИСПАК информация)
  . - на очереди для дизассемблирования
  пробел - предстоит разобраться
```
