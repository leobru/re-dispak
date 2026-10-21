#!/usr/bin/env python3
"""Enable one АС teletype line in every non-empty config variant of 2053.bin.

as_line.py ИЗ В

Sets ШКТТ2 bit for physical line 1, NТАС := 1 (first 6-bit field), and
ТРАКТЫ E29 (ТЕРМ section present). Enough for ГЕНС1 ЦОТ/ТЕРАС to build
non-empty ШКАС/АСОТ and open ПРП 7|6. Does not touch ШКУСТР (consuls).
"""
import struct
import sys

ZONE = (8 + 1024) * 8
M48 = (1 << 48) - 1
CONF = (0o750 + 4) * ZONE
TRAKTY, NTAS, SHKTT = 0o15, 0o33, 0o34
E29 = 1 << 28
# physical line 1 → ШКТТ2 (SHKTT+1), bit E48
E48 = 1 << 47


def main():
    if len(sys.argv) != 3:
        sys.exit("usage: as_line.py SRC DST")
    data = bytearray(open(sys.argv[1], "rb").read())

    def get(i):
        return struct.unpack_from("<Q", data, CONF + 8 * i)[0]

    def put(i, value):
        struct.pack_into("<Q", data, CONF + 8 * i, (get(i) & ~M48) | (value & M48))

    for v in range(16):
        first = 8 + v * 0o40
        if not get(first) & M48:
            continue
        w = lambda k: get(first + k) & M48
        put(first + TRAKTY, w(TRAKTY) | E29)
        put(first + SHKTT + 1, w(SHKTT + 1) | E48)  # ШКТТ2, line 1
        put(first + NTAS, 1)  # NТАС: phys line 1 in low 6 bits
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
