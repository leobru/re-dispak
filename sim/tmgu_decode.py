#!/usr/bin/env python3
"""Разбор обмена с концентратором ТМГУ по протоколу SIMH (set tty tmgutrace).

tmgu_decode.py log.txt

'>>> TMGU: ooo' — байт от БЭСМ (ТЕРМАС) концентратору, '<<< TMGU: ooo' —
байт концентратора, предложенный БЭСМ. Ключ 377 252 125 отделяется, дальше
кадры: байт адреса; при E8 — длинный кадр (счётчик N и N байт), иначе
короткий (2 байта). Короткие кадры вывода 'узел, физ., символ' сводятся
в текст (КОИ-7, 0140-0176 — русские буквы); символ 000 заканчивает выдачу
(ТЕРМАС СТЕР), 377 — заполнитель, не печатается.
"""
import re
import sys

KEY = [0o377, 0o252, 0o125]
RUS = "ЮАБЦДЕФГХИЙКЛМНОПЯРСТУЖВЬЫЗШЭЩЧ"


def koi7(c):
    c &= 0o177
    if c == 0o12:
        return "\n"
    if c in (0o15, 0o177):
        return ""
    if 0o140 <= c <= 0o176:
        return RUS[c - 0o140]
    if 0o40 <= c < 0o140:
        return chr(c)
    return "<%03o>" % c


def frames(data):
    """Отделить ключ и разбить поток на кадры."""
    out, i, matched = [], 0, 0
    while i < len(data) and matched < 3:
        b = data[i]
        matched = matched + 1 if b == KEY[matched] else (1 if b == KEY[0] else 0)
        i += 1
    out.append(("ключ" if matched == 3 else "до ключа", data[:i]))
    while i < len(data):
        a = data[i]
        if a & 0o200:
            n = data[i + 1] if i + 1 < len(data) else 0
            fr = data[i:i + 2 + n]
            i += 2 + n
        else:
            fr = data[i:i + 3]
            i += 3
        out.append(("кадр", fr))
    return out


def main():
    dirs = {">>>": [], "<<<": []}
    for line in open(sys.argv[1], encoding="utf-8", errors="replace"):
        m = re.search(r"(>>>|<<<) TMGU: ([0-7]{3})\s*$", line)
        if m:
            dirs[m.group(1)].append(int(m.group(2), 8))
    for d, title in ((">>>", "БЭСМ → концентратор"), ("<<<", "концентратор → БЭСМ")):
        print(f"--- {title}: {len(dirs[d])} байт")
        text = []
        for kind, fr in frames(dirs[d]):
            if kind == "кадр" and len(fr) == 3 and not fr[0] & 0o200:
                if fr[2]:
                    text.append(koi7(fr[2]))
                    continue
                print("  выдача:", repr("".join(text)), "[000]")
                text = []
                continue
            if text:
                print("  текст:", repr("".join(text)))
                text = []
            print(f"  {kind}:", " ".join("%03o" % b for b in fr[:40]),
                  "…" if len(fr) > 40 else "")
        if text:
            print("  текст:", repr("".join(text)))


if __name__ == "__main__":
    main()
