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
  dishelp.py rel   file.bin origin reg off [entry...] [-addr...]
                                      code entries of a program addressed
                                      through a base register: every jump
                                      "X(Mreg)" (also "мода X(Mreg)" before a
                                      jump or "уиа (Mi)") is taken as image
                                      address X+off;
                                      disbesm6 is rerun with -e until no new
                                      entries appear; prints the -e list;
                                      -addr excludes a false entry (e.g. a
                                      "мода X / уиа (Mi)" that loads the
                                      address of data); all numbers octal
  dishelp.py lstcmp file.lst file.bin origin
                                      compares the words of an assembler
                                      listing (build/lst) with a binary
                                      loaded at octal origin; prints the
                                      differing words, missing ones and a
                                      summary; a word the listing does not
                                      give (ПАМ) passes if it is zero

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


JUMPS = ('пб', 'пе', 'по', 'пв', 'пио', 'пино', 'цикл')


def rel(binf, origin, reg, off, entries, excl=()):
    """Grows a disbesm6 -e list for code addressed as X(Mreg)."""
    import subprocess
    ents = set(entries)
    excl = set(excl)
    code = re.compile(r'([0-7]{2}) ([0-7]{2,3}) ([0-7]{4,5})')

    def value(c):
        m = code.search(c)
        if not m or int(m.group(1), 8) != reg:
            return None
        op, a = m.group(2), int(m.group(3), 8)
        if len(op) == 3 and op[0] == '1':
            a |= 0o70000        # format 1, address extension bit
        if a & 0o40000:
            a -= 0o100000
        return a + off

    while True:
        out = subprocess.run(['disbesm6', '-b', '-a%o' % origin]
                             + ['-e%o' % e for e in sorted(ents)] + [binf],
                             capture_output=True, text=True).stdout
        ops = []
        for line in out.split('\n'):
            f = line.split('\t')
            if len(f) > 2 and f[2]:
                ops.append((f[2], f[3] if len(f) > 3 else '', f[0]))
        new = set()
        for i, (m, o, c) in enumerate(ops):
            v = value(c)
            if v is None:
                continue
            nxt = ops[i + 1] if i + 1 < len(ops) else ('', '', '')
            # a jump, a jump through "мода", or a return address
            # set by "мода X / уиа (Mi)"
            if m in JUMPS or (m in ('мода', 'мод') and
                              (nxt[0] in JUMPS or nxt[0] == 'уиа')
                              and re.match(r'^(\(М\d+\))?$', nxt[1])):
                new.add(v)
        new -= ents | excl
        if not new:
            break
        ents |= new
    print(' '.join('%o' % e for e in sorted(ents)))


def lst_words(path):
    """Returns {address: word} from a БЕМШ listing."""
    words, addr, half = {}, None, None
    full = re.compile(r'^[0-7]{16}$')
    insn = re.compile(r'^([0-7]{2}) (?:([0-7]{3}) ([0-7]{4})|([0-7]{2})(?: ([0-7]{5}))?)$')

    def enc(m):
        r = int(m.group(1), 8)
        if m.group(2):
            return r << 20 | int(m.group(2), 8) << 12 | int(m.group(3), 8)
        return r << 20 | int(m.group(4), 8) << 15 | int(m.group(5) or '0', 8)

    for line in open(path, encoding='utf-8', errors='replace'):
        if line[24:25] in ('_', '‾'):
            continue        # label/comment line: shows the address only
        a = line[25:30].strip()
        c = line[31:48].strip()
        # under УПОТР the listing adds the effective address after the code
        m = re.match(r'^([0-7]{2} (?:[0-7]{3} [0-7]{4}|[0-7]{2} [0-7]{5}))'
                     r' +[0-7]{5}$', c)
        if m:
            c = m.group(1)
        if re.match(r'^[0-7]{5}$', a):
            addr, half = int(a, 8), None
            if full.match(c):
                words[addr] = int(c, 8)
                continue
            m = insn.match(c)
            if m:
                half = enc(m)
                words[addr] = half << 24
        elif addr is not None and half is not None and not a:
            m = insn.match(c)
            if m:
                words[addr] = half << 24 | enc(m)
                half = None
    return words


def lstcmp(lst, binf, origin):
    lw = lst_words(lst)
    bw = read_words(binf)
    bad = res = 0
    for i, v in enumerate(bw):
        a = origin + i
        if a not in lw and v == 0:
            res += 1        # ПАМ: no word in the listing, zero on disk
        elif a not in lw:
            print('%05o missing, binary %016o' % (a, v))
            bad += 1
        elif lw[a] != v:
            print('%05o listing %016o binary %016o' % (a, lw[a], v))
            bad += 1
    print('%d of %d words differ, %d reserved (ПАМ) words are zero on disk'
          % (bad, len(bw), res))


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
    elif cmd == 'lstcmp':
        lstcmp(args[0], args[1], int(args[2], 8))
    elif cmd == 'rel':
        rel(args[0], int(args[1], 8), int(args[2], 8), int(args[3], 8),
            [int(a, 8) for a in args[4:] if a[0] != '-'],
            [int(a[1:], 8) for a in args[4:] if a[0] == '-'])
    else:
        sys.exit(__doc__)


if __name__ == '__main__':
    main()
