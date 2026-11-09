#!/usr/bin/env python3
"""Ищет в модуле повторяющиеся последовательности команд.

tools/dupcode.py ФАЙЛ.be [K]

Берутся только живые строки команд (не '*', не данные: конд/пам/конк/вход/
внеш/экв...). Команда сравнивается по операции и адресной части без учёта
регистра, меток и комментариев. Печатаются максимальные совпадающие участки
длиной не меньше K команд (по умолчанию 5) с номерами строк обоих мест.
"""
import sys

DATA = {"конд", "конк", "пам", "экв", "эквив", "вход", "внеш", "рег", "старт",
        "текст", "финиш", "анор", "аноп", "апу", "апб", "гблв", "уств", "употр"}


def instructions(path):
    out = []
    for n, ln in enumerate(open(path, encoding="utf-8"), 1):
        if not ln.strip() or ln[0] == "*":
            continue
        f = ln.split()
        if not ln[0].isspace():
            f = f[1:]
        if not f:
            continue
        op = f[0].lower()
        if op in DATA or op.startswith(("б", "е", "м")) and len(f) == 1 and len(op) == 1:
            continue
        arg = f[1] if len(f) > 1 and not f[1].startswith("!") else ""
        out.append((n, op + " " + arg.lower().replace("’", "'")))
    return out


def main():
    path = sys.argv[1]
    k = int(sys.argv[2]) if len(sys.argv) > 2 else 5
    ins = instructions(path)
    seq = [s for _, s in ins]
    seen = set()
    for i in range(len(seq)):
        for j in range(i + 1, len(seq)):
            if seq[i] != seq[j] or (i, j) in seen:
                continue
            if i > 0 and seq[i - 1] == seq[j - 1] and j - 1 > i:
                continue                    # не начало участка
            m = 0
            while j + m < len(seq) and i + m < j and seq[i + m] == seq[j + m]:
                seen.add((i + m, j + m))
                m += 1
            if m >= k:
                print(f"{m:3} команд: строки {ins[i][0]}-{ins[i + m - 1][0]}"
                      f" = {ins[j][0]}-{ins[j + m - 1][0]}  ({seq[i]} ...)")


if __name__ == "__main__":
    main()
