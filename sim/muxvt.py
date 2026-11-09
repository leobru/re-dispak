#!/usr/bin/env python3
"""Один терминал АС,VТ как ОТАС, все каналы сообщений — на него.

muxvt.py ИЗ В [ФИЗ]

ФИЗ — физический номер терминала, восьмеричный, как в ГЕНС (1..60), по умолчанию 2
(линия SIMH tty2). Во всех непустых вариантах зоны 0750:

- шкалы АС (ШКТТ, ШКVТ, ШАС128) гасятся, в ШКVТ2 зажигается линия ФИЗ
  (ТЕРМ АС,VТ:ФИЗ);
- NТАС := ФИЗ — первое 6-разрядное поле ОТАС, логический терминал 1;
- НОМУСТ: все 8 каналов сообщений = 1;
- разряд логического терминала 1 снимается с ШКУСТР, иначе подключение
  идёт «на прямую», а не через АСОТ;
- ТРАКТЫ E29 (раздел ТЕРМ задан).

ДКС не включается. Контрольная сумма зоны — как в sim/as_line.py.
"""
import struct
import sys

ZONE = (8 + 1024) * 8
M48 = (1 << 48) - 1
CONF = (0o750 + 4) * ZONE
SHAS128, TRAKTY = 0o13, 0o15
TKANA, SHKUSTR, SHKOPT = 0o26, 0o27, 0o30
NTAS, SHKTT, SHKVT = 0o33, 0o34, 0o36
LINE = 2
# логический терминал 1 — первое поле NТАС; каналы Ф1:0-7
LOG = 1
E29 = 1 << 28


def scale_bit(n):
    """Е48-1(N): разряд 49-N."""
    return 1 << (48 - n)


def main():
    if len(sys.argv) not in (3, 4):
        sys.exit("usage: muxvt.py SRC DST [PHYS]")
    line = int(sys.argv[3], 8) if len(sys.argv) == 4 else LINE
    if not 1 <= line <= 48:
        sys.exit("PHYS must be octal 1..60")
    data = bytearray(open(sys.argv[1], "rb").read())

    def get(i):
        return struct.unpack_from("<Q", data, CONF + 8 * i)[0]

    def put(i, value):
        struct.pack_into("<Q", data, CONF + 8 * i, (get(i) & ~M48) | (value & M48))

    channels = 0
    for ch in range(8):
        channels |= LOG << (6 * ch)

    for v in range(16):
        first = 8 + v * 0o40
        if not get(first) & M48:
            continue
        w = lambda k: get(first + k) & M48
        for k in (SHAS128, SHAS128 + 1, SHKTT, SHKTT + 1, SHKVT, SHKVT + 1):
            put(first + k, 0)
        put(first + SHKVT + 1, scale_bit(line))
        put(first + NTAS, line)
        put(first + TKANA, channels)
        put(first + SHKUSTR, w(SHKUSTR) & ~scale_bit(LOG))
        put(first + SHKOPT, w(SHKOPT) | scale_bit(LOG))
        put(first + TRAKTY, w(TRAKTY) | E29)
    cs = 0
    for i in range(8, 8 + 1024):
        cs += get(i) & M48
        if cs > M48:
            cs = (cs + 1) & M48
    put(3, cs)
    put(7, cs)
    open(sys.argv[2], "wb").write(data)


if __name__ == "__main__":
    main()
