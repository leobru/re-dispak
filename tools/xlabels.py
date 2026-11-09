#!/usr/bin/env python3
"""Сопоставляет метки двух вариантов модуля по совпадающим участкам кода.

tools/xlabels.py [-l] НАШ.be ЧУЖОЙ.bemsh [K]

-l: все имена, кроме М<n>, Е<n>, П<n>, считаются равными (внешние ячейки
в вариантах называются по-разному); тогда K стоит брать больше.

Берутся живые команды (не '*', не данные). Команда сравнивается по
операции и адресной части; имена, определённые как метки в своём файле,
заменяются на '@', латинские буквы-двойники приводятся к кириллице.
Находятся максимальные совпадающие участки не короче K команд (по
умолчанию 4) в любом порядке. На совпавших позициях пары
(своя метка, чужая метка) — из поля метки и из адресной части —
собираются с числом голосов. Печатаются пары с разными именами:
  НАШ -> ЧУЖОЙ  голоса  строки-примеры
и затем список совпавших участков.
"""
import collections
import re
import sys

DATA = {"КОНД", "КОНК", "ПАМ", "ЭКВ", "ЭКВИВ", "ВХОД", "ВНЕШ", "РЕГ", "СТАРТ",
        "ТЕКСТ", "ФИНИШ", "АНОР", "АНОП", "АПУ", "АПБ", "ГБЛВ", "УСТВ", "УПОТР"}
LAT = str.maketrans("ABCEHKMOPTXaceopxyNnVvSsDdRrLlFfGgIiJjQqUuWwZzYb",
                    "АВСЕНКМОРТХасеорхуNnVvSsDdRrLlFfGgIiJjQqUuWwZzУЬ")
IDENT = re.compile(r"[A-Za-zА-Яа-яЁё][A-Za-zА-Яа-яЁё0-9]*")


def canon(s):
    return s.translate(LAT).upper().replace("’", "'")


def parse(path):
    lines = open(path, encoding="utf-8", errors="replace").read().split("\n")
    rows, labels = [], set()
    for n, ln in enumerate(lines, 1):
        if not ln.strip() or ln[0] == "*":
            continue
        f = ln.split()
        lab = ""
        if not ln[0].isspace():
            lab, f = canon(f[0]), f[1:]
        if lab and not lab.startswith("."):
            labels.add(lab)
        if not f:
            continue
        op = canon(f[0])
        if op in DATA:
            continue
        arg = f[1] if len(f) > 1 else ""
        if arg.startswith("!"):
            arg = ""
        arg = canon(arg)
        # 'СЧ  КОММЕНТАРИЙ' без адреса: адрес — только похожее на операнд
        if arg and not re.match(r"[\w'(\-=+,]", arg):
            arg = ""
        rows.append((n, lab, op, arg))
    return rows, labels


KEEP = re.compile(r"(М\d+|Е\d+(П\d+)?|П\d+|Е\d+Е\d+)$")
LOOSE = False


def key(row, labels):
    _, _, op, arg = row
    if op in ("МОДА", "МОД") and arg in ("0", ""):
        return None
    if LOOSE:
        norm = IDENT.sub(lambda m: m.group(0) if KEEP.match(m.group(0)) else "@", arg)
    else:
        norm = IDENT.sub(lambda m: "@" if m.group(0) in labels else m.group(0), arg)
    return op + " " + norm


def idents(arg, labels):
    return [m.group(0) for m in IDENT.finditer(arg) if m.group(0) in labels]


def main():
    global LOOSE
    if sys.argv[1] == "-l":
        LOOSE = True
        del sys.argv[1]
    k = int(sys.argv[3]) if len(sys.argv) > 3 else 4
    a, la = parse(sys.argv[1])
    b, lb = parse(sys.argv[2])
    a = [r for r in a if key(r, la)]
    b = [r for r in b if key(r, lb)]
    ka = [key(r, la) for r in a]
    kb = [key(r, lb) for r in b]
    index = collections.defaultdict(list)
    for j in range(len(kb) - k + 1):
        index[tuple(kb[j:j + k])].append(j)
    used = set()
    runs = []
    for i in range(len(ka) - k + 1):
        for j in index.get(tuple(ka[i:i + k]), ()):
            if (i, j) in used:
                continue
            m = 0
            while i + m < len(ka) and j + m < len(kb) and ka[i + m] == kb[j + m]:
                used.add((i + m, j + m))
                m += 1
            runs.append((i, j, m))
    votes = collections.defaultdict(lambda: [0, []])
    for i, j, m in runs:
        for t in range(m):
            ra, rb = a[i + t], b[j + t]
            pairs = []
            if ra[1] or rb[1]:
                pairs.append((ra[1] or "-", rb[1] or "-"))
            pairs += zip(idents(ra[3], la), idents(rb[3], lb))
            for p in pairs:
                v = votes[p]
                v[0] += 1
                if len(v[1]) < 3:
                    v[1].append(f"{ra[0]}/{rb[0]}")
    for (x, y), (c, ex) in sorted(votes.items(), key=lambda kv: kv[0]):
        if x != y:
            print(f"{x:8} -> {y:8} {c:3}  {' '.join(ex)}")
    print()
    for i, j, m in sorted(runs):
        print(f"{m:3} команд: наш {a[i][0]}-{a[i + m - 1][0]}"
              f"  чужой {b[j][0]}-{b[j + m - 1][0]}")


if __name__ == "__main__":
    main()
