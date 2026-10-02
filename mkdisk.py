#!/usr/bin/env python3
"""
Собирает загружаемый образ системного диска 2053 для SIMH из пустого образа
и зон ОС, записанных РВС на рабочий диск 2222.

Переносятся зоны, указанные в rvs.src (ЗОНГП 43zzzz n), только < 01000 -
зоны 01000 и выше лежат на 2048, а не на 2053.  Зона в образе физическая =
логическая + 4.  Из 2222 берутся 48 разрядов данных; тег слова остаётся
прежним, если слово не изменилось, иначе ставится командная свёртка (1) -
SIMH выполняет только слова с командной свёрткой, а читает как число
и командную, и числовую.  Служебные слова зоны берутся из образа, кроме
контрольной суммы (СС[3], СС[7]), которая пересчитывается.

Зоны (или секторы зон) удалённых модулей, указанные в --zero ЗОНА[:СЕКТОРЫ],
заполняются нулями с числовой свёрткой, чтобы их нельзя было выполнить.

    python3 mkdisk.py [--base образ] [--src 2222] [--out 2053.bin]
                      [--zero 0677] [--zero 0567:0]
"""
import argparse
import re
import struct
import sys

WORD = 8
ZONE_WORDS = 8 + 1024
ZONE = ZONE_WORDS * WORD
M48 = (1 << 48) - 1
PHYS_OFFSET = 4
PARITY_INSN = 1
PARITY_NUM = 2
DEFAULT_BASE = "sbor2053.orig"


def cyclic_sum48(words):
    s = 0
    for w in words:
        s += w & M48
        s = (s & M48) + (s >> 48)
    return s


def rvs_zones(path):
    pat = re.compile(r"мдл +(......).*зонгп \d\d(\d\d\d\d) *(\d+)", re.I)
    for line in open(path, encoding="utf-8"):
        if line.startswith("#"):
            continue
        m = pat.search(line)
        if m:
            name, start, n = m.group(1).strip(), int(m.group(2), 8), int(m.group(3))
            for k in range(n):
                yield name, start + k


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--base", default=DEFAULT_BASE)
    ap.add_argument("--src", default="2222")
    ap.add_argument("--rvs", default="rvs.src")
    ap.add_argument("--out", default="2053.bin")
    ap.add_argument("--zero", action="append", default=[], metavar="ZONE[:SECTORS]")
    args = ap.parse_args()

    img = bytearray(open(args.base, "rb").read())
    src = open(args.src, "rb").read()

    def get(buf, zone, i):
        off = (zone + PHYS_OFFSET) * ZONE + i * WORD
        return struct.unpack("<Q", buf[off:off + WORD])[0]

    def put(zone, i, raw):
        off = (zone + PHYS_OFFSET) * ZONE + i * WORD
        img[off:off + WORD] = struct.pack("<Q", raw)

    def checksum(zone):
        cs = cyclic_sum48(get(img, zone, i) for i in range(8, ZONE_WORDS))
        for i in (3, 7):
            put(zone, i, (get(img, zone, i) & ~M48) | cs)

    changed = []
    for name, zone in rvs_zones(args.rvs):
        if zone >= 0o1000:
            continue
        if (zone + PHYS_OFFSET + 1) * ZONE > len(src):
            sys.exit("mkdisk: зоны %04o нет в %s" % (zone, args.src))
        nwords = 0
        for i in range(8, ZONE_WORDS):
            new = get(src, zone, i) & M48
            old = get(img, zone, i)
            if new != old & M48:
                put(zone, i, (PARITY_INSN << 48) | new)
                nwords += 1
        if nwords:
            checksum(zone)
            changed.append("%s %04o: %d" % (name, zone, nwords))

    for spec in args.zero:
        zone, _, sectors = spec.partition(":")
        zone = int(zone, 8)
        for s in map(int, sectors or "0123"):
            for i in range(8 + 256 * s, 8 + 256 * (s + 1)):
                put(zone, i, PARITY_NUM << 48)
        checksum(zone)
        changed.append("обнулено %s" % spec)

    open(args.out, "wb").write(img)
    print("mkdisk: %s -> %s, изменённых зон %d" % (args.base, args.out, len(changed)))
    for c in changed:
        print("    " + c)


if __name__ == "__main__":
    main()
