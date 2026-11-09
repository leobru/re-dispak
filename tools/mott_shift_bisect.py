#!/usr/bin/env python3
"""Ищет место в МОТТ, после которого сдвиг кода ломает загрузку.

tools/mott_shift_bisect.py FROM TO [N]
tools/mott_shift_bisect.py -d FROM TO   - то же в области данных: перед
    помеченной ячейкой (конд/пам) вставляется 'пам 1'

Перед меткой кода (строка mott.be с меткой в первой колонке и командой)
вставляются N (по умолчанию 5) команд 'мода 0', затем make build и
sim/run.sh (TIMEOUT=60). Делением пополам по меткам между строками FROM и
TO находится граница, где результат (OK/FAIL) меняется; результаты на
концах проверяются первыми и должны различаться.
mott.be восстанавливается после каждого шага.
"""
import os
import re
import subprocess
import sys

DATA = {"конд", "конк", "пам", "экв", "эквив", "вход", "внеш", "рег", "старт",
        "текст", "финиш", "анор", "аноп", "апу", "апб"}
PREFIX = {"мод", "мода"}


def data_candidates(lines, lo, hi):
    out = []
    for i, ln in enumerate(lines, 1):
        f = ln.split()
        if lo <= i <= hi and ln.strip() and not ln[0].isspace() \
                and not ln.startswith("*") and len(f) >= 2 \
                and f[1].lower() in ("конд", "пам", "конк"):
            out.append(i)
    return out


def candidates(lines, lo, hi):
    out, prev_op = [], ""
    for i, ln in enumerate(lines, 1):
        if not ln.strip() or ln.startswith("*"):
            continue
        f = ln.split()
        if not ln[0].isspace() and len(f) >= 2:
            op = f[1].lower()
            if lo <= i <= hi and op not in DATA and prev_op not in PREFIX:
                out.append(i)
            prev_op = op
        else:
            prev_op = f[0].lower()
    return out


FILLER = ["\tмода\t0\n"]


def boots(lines, at, n):
    text = lines[:at - 1] + FILLER * n + lines[at - 1:]
    open("src/mott.be", "w", encoding="utf-8").writelines(text)
    try:
        if subprocess.run("make build > build.log 2>&1", shell=True).returncode:
            sys.exit("build failed")
        r = subprocess.run("sim/run.sh", shell=True, capture_output=True,
                           text=True, env={**os.environ, "TIMEOUT": "60"})
        return "### PRINTED" in r.stdout
    finally:
        open("src/mott.be", "w", encoding="utf-8").writelines(lines)


def main():
    global FILLER
    os.chdir(os.path.join(os.path.dirname(__file__), ".."))
    data = sys.argv[1] == "-d"
    args = sys.argv[2:] if data else sys.argv[1:]
    lo, hi = int(args[0]), int(args[1])
    n = 1 if data else (int(args[2]) if len(args) > 2 else 5)
    lines = open("src/mott.be", encoding="utf-8").readlines()
    if data:
        FILLER = ["\tпам\t1\n"]
        c = data_candidates(lines, lo, hi)
    else:
        c = candidates(lines, lo, hi)
    def test(k):
        ok = boots(lines, c[k], n)
        print(f"строка {c[k]} {lines[c[k] - 1].split()[0]}: {'OK' if ok else 'FAIL'}",
              flush=True)
        return ok
    a, b = 0, len(c) - 1
    fa = test(a)
    if test(b) == fa:
        sys.exit("на концах одинаковый результат")
    while b - a > 1:
        m = (a + b) // 2
        if test(m) == fa:
            a = m
        else:
            b = m
    print(f"граница: {c[a]} {lines[c[a] - 1].split()[0]} -> "
          f"{c[b]} {lines[c[b] - 1].split()[0]}")
    subprocess.run("make build > build.log 2>&1", shell=True)


if __name__ == "__main__":
    main()
