#!/usr/bin/env python3
"""xref.py SYM... : вхождения имён во все *.be (регистр и латиница/кириллица
одинакового начертания не различаются), кроме строк-комментариев; смотрятся только поля метки и адреса."""
import glob, re, sys
LAT = str.maketrans("abcehkmoptxyABCEHKMOPTXY", "авсенкмортхуАВСЕНКМОРТХУ")
def norm(s): return s.translate(LAT).upper()
syms = {norm(s): s for s in sys.argv[1:]}
word = re.compile(r"[0-9A-Za-zА-Яа-яЁё’]+")
for f in sorted(glob.glob("*.be")):
    for n, line in enumerate(open(f, encoding="utf-8"), 1):
        if line.startswith("*"):
            continue
        f3 = line.split("!")[0].split()
        if not f3:
            continue
        if line[0] in " \t":
            f3 = f3[1:2]
        else:
            f3 = [f3[0]] + f3[2:3]
        hit = sorted({syms[norm(w)] for w in word.findall(" ".join(f3)) if norm(w) in syms})
        if hit:
            print("%s:%d: [%s] %s" % (f, n, ",".join(hit), line.rstrip()[:110]))
