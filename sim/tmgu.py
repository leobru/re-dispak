#!/usr/bin/env python3
"""Включить ТМГУ ДА во всех непустых вариантах зоны 0750.

tmgu.py ИЗ В

ТРАКТЫ (ПРЕДЕЛ) разряд 39 — ГЕНС1 читает зону 0414 (ТЕРМАС) в лист 020
и после переписи ДИСП70 вызывает ВХПУСК. СОЮЗ (разряд 31) не трогаем:
ОСА и ТЕРМАС делят лист 020.
"""
import struct
import sys

ZONE = (8 + 1024) * 8
M48 = (1 << 48) - 1
CONF = (0o750 + 4) * ZONE
TRAKTY = 0o15
# Е39: разряд 39 → бит 38
E39 = 1 << 38


def main():
    if len(sys.argv) != 3:
        sys.exit("usage: tmgu.py SRC DST")
    data = bytearray(open(sys.argv[1], "rb").read())

    def get(i):
        return struct.unpack_from("<Q", data, CONF + 8 * i)[0]

    def put(i, value):
        struct.pack_into("<Q", data, CONF + 8 * i, (get(i) & ~M48) | (value & M48))

    n = 0
    for v in range(16):
        first = 8 + v * 0o40
        if not get(first) & M48:
            continue
        put(first + TRAKTY, (get(first + TRAKTY) & M48) | E39)
        n += 1
    cs = 0
    for i in range(8, 8 + 1024):
        cs += get(i) & M48
        if cs > M48:
            cs = (cs + 1) & M48
    put(3, cs)
    put(7, cs)
    open(sys.argv[2], "wb").write(data)
    print(f"### TMGU: E39 set in {n} config variant(s)", file=sys.stderr)


if __name__ == "__main__":
    main()
