#!/usr/bin/env python3
"""
k71blocks.py [файл.be ...] : блоки условной сборки по ∧К71.

АПУ (∧К71).X ... [АПБ .Y] .X АНОП [... .Y АНОП]
  строки между АПУ и АПБ (или .X) - вариант "штат" (собирается при ∧К71=0),
  строки между .X и .Y - вариант "К71" (собирается при ∧К71=1).
Для каждого блока печатаются номера строк, число непустых строк каждого
варианта и имена ДКС из списка DKS, встреченные в варианте К71.
"""
import glob
import re
import sys

LAT = str.maketrans("abcehkmoptxyABCEHKMOPTXY", "авсенкмортхуАВСЕНКМОРТХУ")
DKS = """СВЯЗЬ7 ЭКО КУССВ7 базсв7 базэко туsаб нстдкс новтер обмен7 обме7б рабнст
р6прп шкраб7 слркс0 слркс1 тестс7 режим7 шкошиб рсвсм1 рсвясм завобм кзк71
шсост7 шкут шзпри7 шкаэко шзагс7 бсв7ма бсв7мб кик7а выдас7 кмас7 прнол7
прсим7 км2бк7 штерм7 диасм7 Э50133 Э133 изсв7 вдмлмб св7мб слдсмв прмhтр
кнцмсв трмдкс э1в вхэко прцес1 прцс1а экозап экояч ПИЛОТ вдкс опрдк7""".split()


def norm(s):
    return s.translate(LAT).upper()


DKSN = {norm(s): s for s in DKS}
WORD = re.compile(r"[0-9A-Za-zА-Яа-яЁё’]+")
APU = re.compile(r"^\S*\s+АПУ\s+\((?:&|∧)К71\)(\.\S+)", re.I)
APB = re.compile(r"^\S*\s+АПБ\s+(\.\S+)", re.I)


def anop(label):
    return re.compile(r"^" + re.escape(label) + r"\s+АНОП", re.I)


def code(line):
    return line.strip() and not line.startswith("*")


def scan(path):
    lines = open(path, encoding="utf-8").read().split("\n")
    i = 0
    while i < len(lines):
        m = APU.match(lines[i])
        if not m:
            i += 1
            continue
        x = m.group(1)
        start = i + 1
        j = start
        y = None
        while j < len(lines) and not anop(x).match(lines[j]):
            mb = APB.match(lines[j])
            if mb and y is None:
                y = mb.group(1)
                std_end = j
            j += 1
        if y is None:
            std_end = j
        std = [l for l in lines[start:std_end] if code(l)]
        k71 = []
        k = j
        if y is not None:
            k = j + 1
            while k < len(lines) and not anop(y).match(lines[k]):
                k += 1
            k71 = lines[j + 1:k]
        names = sorted({DKSN[norm(w)] for l in k71 if code(l)
                        for w in WORD.findall(l.split("!")[0]) if norm(w) in DKSN})
        print("%s:%d-%d  штат %d, К71 %d  %s" % (
            path, i + 1, k + 1, len(std), len([l for l in k71 if code(l)]),
            " ".join(names)))
        i = k + 1


for f in sys.argv[1:] or sorted(glob.glob("src/*.be")):
    scan(f)
