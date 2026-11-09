#!/usr/bin/env python3
"""Снимает условную сборку по переменной, считая её равной 1.

tools/resolve_apu.py ФАЙЛ.be ПЕРЕМ [МЕТКА,МЕТКА...]

Для каждой строки 'АПУ (&ПЕРЕМ).L' (условие истинно) удаляются строки до
'.L АНОП' включительно (неактивная ветка); для 'АПУ (not &ПЕРЕМ).L' удаляется
только сама строка. Затем удаляются строки '.X АНОП', на которые больше не
ссылается ни одна АПУ/АПБ. Если заданы метки, обрабатываются только АПУ с
этими целями, и объявление переменной остаётся; иначе убираются и
'∧ПЕРЕМ УСТВ 1', и ПЕРЕМ из ГБЛВ. Условия по другим переменным не трогаются.
"""
import re
import sys


def main():
    path, var = sys.argv[1], sys.argv[2]
    only = set(sys.argv[3].split(",")) if len(sys.argv) > 3 else None
    lines = open(path, encoding="utf-8").read().split("\n")
    apu = re.compile(r"^\s*АПУ\s+\((not\s+)?&" + var + r"\)\.(\S+)", re.I)
    out, i = [], 0
    while i < len(lines):
        m = apu.match(lines[i])
        if m and (only is None or m.group(2) in only):
            target = m.group(2)
            if m.group(1):                  # not &V: ложно, просто убрать
                i += 1
                continue
            j = i + 1
            lab = re.compile(r"^\." + re.escape(target) + r"\s+АНОП", re.I)
            while not lab.match(lines[j]):
                j += 1
            i = j + 1
            continue
        out.append(lines[i])
        i += 1
    refs = set()
    for ln in out:
        if ln.startswith("*"):
            continue
        r = re.search(r"\b(?:АПУ|АПБ)\b.*?\.(\S+)", ln, re.I)
        if r:
            refs.add(r.group(1))
    res = []
    for ln in out:
        m = re.match(r"^\.(\S+)\s+АНОП", ln, re.I)
        if m and m.group(1) not in refs:
            continue
        res.append(ln)
    if only is None:
        res = [ln for ln in res
               if not re.match(r"^∧" + var + r"\s+УСТВ\b", ln)]
        fixed = []
        for ln in res:
            m = re.match(r"^(\s*ГБЛВ\s+)(\S+)(.*)$", ln)
            if m:
                names = [n for n in m.group(2).split(",") if n != "∧" + var]
                if not names:
                    continue
                ln = m.group(1) + ",".join(names) + m.group(3)
            fixed.append(ln)
        res = fixed
    open(path, "w", encoding="utf-8").write("\n".join(res))


if __name__ == "__main__":
    main()
