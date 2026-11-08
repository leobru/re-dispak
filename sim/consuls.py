#!/usr/bin/env python3
"""Копия 2053.bin с включёнными КОНСУЛАМИ '31' и '32' (tty25, tty26).

consuls.py ИЗ В [--consul]

Во всех непустых вариантах конфигурации (логическая зона 0750, раскладка - как в
SIMH BESM6/tools/makeBESM2053.py) зажигаются разряды 24 и 23 ШКУСТР (по ним
ГЕНС1.пб35л открывает маски ПРП 12, 10 и 11, 9) и разряд 29 ТРАКТЫ; разряд 39
ТРАКТЫ (ТМГУ ДА, исходно в варианте 10) гасится: при нём ГЕНС1 запускает ТЕРМАС,
и концентратор занимает КОНСУЛ 0 (T031). Без --consul
обе линии - видеотоны по каналу КОНСУЛА (VIDI: ПМБ разр.8, 7; ЕСТЕРМ гасится),
в SIMH - set ttyN vt. С --consul - настоящие КОНСУЛЫ (ЕСТЕРМ 31, 32: ПРОГОН
разр.8, 7; VIDI гасится), в SIMH - set ttyN consul.
"""
import argparse
import struct

ZONE = (8 + 1024) * 8
M48 = (1 << 48) - 1
CONF = (0o750 + 4) * ZONE
PROGON, PMB, TRAKTY, SHKUSTR = 0o4, 0o10, 0o15, 0o27
LINES = (1 << 23) | (1 << 22)       # '31', '32': разр.24, 23 ШКУСТР
BITS87 = (1 << 7) | (1 << 6)        # '31', '32': разр.8, 7 ПМБ и ПРОГОН
E29 = 1 << 28
E39 = 1 << 38                       # ТМГУ ДА


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("src")
    ap.add_argument("dst")
    ap.add_argument("--consul", action="store_true")
    args = ap.parse_args()
    data = bytearray(open(args.src, "rb").read())

    def get(i):
        return struct.unpack_from("<Q", data, CONF + 8 * i)[0]

    def put(i, value):
        struct.pack_into("<Q", data, CONF + 8 * i, (get(i) & ~M48) | (value & M48))

    for v in range(16):
        first = 8 + v * 0o40
        if not get(first) & M48:
            continue
        w = lambda k: get(first + k) & M48
        put(first + SHKUSTR, w(SHKUSTR) | LINES)
        put(first + TRAKTY, (w(TRAKTY) | E29) & ~E39)
        if args.consul:
            put(first + PMB, w(PMB) & ~BITS87)
            put(first + PROGON, w(PROGON) | BITS87)
        else:
            put(first + PMB, w(PMB) | BITS87)
            put(first + PROGON, w(PROGON) & ~BITS87)
    cs = 0
    for i in range(8, 8 + 1024):
        cs += get(i) & M48
        if cs > M48:
            cs = (cs + 1) & M48
    put(3, cs)
    put(7, cs)
    open(args.dst, "wb").write(data)


if __name__ == "__main__":
    main()
