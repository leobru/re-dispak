#!/usr/bin/env python3
"""Helpers for growing code coverage of a disbesm6 disassembly.

Usage:
  dishelp.py gaps  file.dis [minlen]   code/data word counts and data runs
                                      of at least minlen (default 3) words
  dishelp.py cand  file.dis           targets of "уиа LABEL(Mi)" (return
                                      addresses) that are still data
  dishelp.py tab   file.bin [origin]  words that look like "3 chars + address"
                                      table entries pointing into the image
  dishelp.py cmp   a.bin b.bin [n]    first n (default 30) differing words

Typical loop (see dis2be.pl): disbesm6 -b -a0 -e2 -e... img.bin > img.dis;
dishelp.py gaps img.dis; look at a gap, add -e entries, repeat.
"""
import re
import sys

WORD_RE = re.compile(r'^(?=.{4}[0-7][ :]) *([0-7]+)[ :]')
DATA_MNEM = ('конд', 'конк', 'кк', 'дк', 'пам')


def classify(dis):
    """Returns {address: is_data} for every word in a disbesm6 listing."""
    words, cur = {}, None
    for line in open(dis, encoding='utf-8'):
        m = WORD_RE.match(line)
        if m:
            cur = int(m.group(1), 8)
            words[cur] = False
        if cur is None:
            continue
        f = line.rstrip('\n').split('\t')
        mnem = f[2] if len(f) > 2 else ''
        if mnem in DATA_MNEM or (mnem == '' and len(f) > 4):
            words[cur] = True
    return words


def gaps(dis, minlen=3):
    words = classify(dis)
    code = sum(1 for d in words.values() if not d)
    print('code words', code, 'data words', len(words) - code)
    runs, start, last = [], None, None
    for a in sorted(words):
        if words[a]:
            if start is None:
                start = a
            last = a
        elif start is not None:
            runs.append((start, last))
            start = None
    if start is not None:
        runs.append((start, last))
    print(' '.join('%o-%o(%d)' % (s, e, e - s + 1)
                   for s, e in runs if e - s + 1 >= minlen))


def cand(dis):
    words = classify(dis)
    found = set()
    for line in open(dis, encoding='utf-8'):
        f = line.rstrip('\n').split('\t')
        if len(f) > 3 and f[2] == 'уиа':
            m = re.match(r"([GD])([0-7]{5})(?:\+(\d+))?\(М1[1-7]\)", f[3])
            if m:
                a = int(m.group(2), 8) + int(m.group(3) or 0)
                if words.get(a):
                    found.add(a)
    print(' '.join('%o' % a for a in sorted(found)))


def read_words(path):
    b = open(path, 'rb').read()
    return [int.from_bytes(b[i:i + 6], 'big') for i in range(0, len(b) - 5, 6)]


def tab(path, origin=0):
    w = read_words(path)
    end = origin + len(w)
    for i, v in enumerate(w):
        lo = v & 0o77777777
        if v >> 24 and origin < lo < end:
            print('%05o %016o -> %05o' % (origin + i, v, lo))


def cmp(a, b, n=30):
    wa, wb = read_words(a), read_words(b)
    shown = 0
    for i, (x, y) in enumerate(zip(wa, wb)):
        if x != y:
            print('%05o %016o %016o' % (i, x, y))
            shown += 1
            if shown >= n:
                break
    if len(wa) != len(wb):
        print('lengths differ: %d and %d words' % (len(wa), len(wb)))


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    cmd, args = sys.argv[1], sys.argv[2:]
    if cmd == 'gaps':
        gaps(args[0], int(args[1]) if len(args) > 1 else 3)
    elif cmd == 'cand':
        cand(args[0])
    elif cmd == 'tab':
        tab(args[0], int(args[1], 8) if len(args) > 1 else 0)
    elif cmd == 'cmp':
        cmp(args[0], args[1], int(args[2]) if len(args) > 2 else 30)
    else:
        sys.exit(__doc__)


if __name__ == '__main__':
    main()
