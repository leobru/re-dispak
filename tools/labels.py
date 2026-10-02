#!/usr/bin/env python3
"""Адреса всех меток всех модулей (по *.be.tab).

labels.py > labels.base        - снимок
labels.py --check labels.base  - метки, сменившие адрес (код возврата 1),
                                 и исчезнувшие/новые метки по модулям
"""
import glob
import sys


def current():
    labels = {}
    for tab in sorted(glob.glob("*.be.tab")):
        mod = tab[:-len(".be.tab")]
        for line in open(tab, encoding="utf-8"):
            f = line.split()
            if len(f) >= 3:
                labels[(mod, f[2])] = f[0]
    return labels


def main():
    cur = current()
    if len(sys.argv) == 1:
        for (mod, name), addr in sorted(cur.items()):
            print(mod, name, addr)
        return 0
    base = {}
    for line in open(sys.argv[2], encoding="utf-8"):
        mod, name, addr = line.split()
        base[(mod, name)] = addr
    moved = [(k, base[k], cur[k]) for k in sorted(base) if k in cur and base[k] != cur[k]]
    for (mod, name), a, b in moved:
        print(f"MOVED {mod} {name} {a} -> {b}")
    for k in sorted(set(base) - set(cur)):
        print(f"gone  {k[0]} {k[1]} {base[k]}")
    for k in sorted(set(cur) - set(base)):
        print(f"new   {k[0]} {k[1]} {cur[k]}")
    return 1 if moved else 0


if __name__ == "__main__":
    sys.exit(main())
