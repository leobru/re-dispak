#!/usr/bin/env python3
"""Сравнивает МОТТ в памяти после загрузки с собранным образом.

tools/mott_memdiff.py [СЕК]

Берёт текущую сборку (make build уже сделан), запускает sim/run.sh-прогон
обычной загрузки на СЕК секунд (по умолчанию 20), дампит '76000'-'77777'
и сравнивает с зоной МОТТ (0633) из 2053.bin. Печатает отличающиеся слова
со строкой mott.lst: так видно, какие команды и ячейки МОТТ правят другие
модули (ГЕНС и т.п.) по абсолютным адресам. Ячейки данных, которые
меняются при работе, тоже попадут в список - их надо отсеять по смыслу.
"""
import os
import re
import signal
import struct
import subprocess
import sys
import time

ZONE = (8 + 1024) * 8
MOTT_ZONE, BASE = 0o633, 0o76000   # РВС: зонгп 430627, в 2053.bin на 4 зоны дальше
M48 = (1 << 48) - 1


def built_words():
    data = open("build/2053.bin", "rb").read()
    off = MOTT_ZONE * ZONE + 64
    return [struct.unpack_from("<Q", data, off + 8 * i)[0] & M48
            for i in range(1024)]


def listing():
    lines = {}
    for ln in open("build/lst/mott.lst", encoding="utf-8", errors="replace"):
        m = re.match(r"^\s*(?:\S+\s+)?(7[67][0-7]{3})\s+[0-7]{2}\s", ln)
        if m:
            lines.setdefault(int(m.group(1), 8), ln.rstrip()[25:110])
    return lines


def main():
    os.chdir(os.path.join(os.path.dirname(__file__), ".."))
    secs = int(sys.argv[1]) if len(sys.argv) > 1 else 20
    subprocess.run("TIMEOUT=3 sim/run.sh > /dev/null 2>&1", shell=True)
    ini = open("sim/run/boot.ini", encoding="utf-8").read()
    ini = ini.replace("run 2000\n", "run 2000\nex 76000-77777\nquit\n", 1)
    open("sim/run/md.ini", "w", encoding="utf-8").write(ini)
    besm6 = os.environ.get("BESM6", os.path.expanduser("~/git/besm6/simh/BIN/besm6"))
    p = subprocess.Popen([besm6, "md.ini"], cwd="sim/run", stdin=subprocess.DEVNULL,
                         stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True,
                         errors="replace")
    time.sleep(secs)
    p.send_signal(signal.SIGTERM)       # прерывает run 2000, дальше ex
    out = p.communicate(timeout=30)[0]
    mem, last = {}, None
    for ln in out.splitlines():
        m = re.match(r"^(7[67][0-7]{3}):\s+([0-7 ]+)$", ln)
        if m:
            last = int(m.group(2).replace(" ", ""), 8)
            mem[int(m.group(1), 8)] = last
            continue
        m = re.match(r"^(7[67][0-7]{3}): thru (7[67][0-7]{3}): same as above", ln)
        if m:                           # SIMH сворачивает одинаковые слова
            for a in range(int(m.group(1), 8), int(m.group(2), 8) + 1):
                mem[a] = last
    if len(mem) < 1024:
        sys.exit(f"дамп неполный: {len(mem)} слов")
    built, lst = built_words(), listing()
    for i, w in enumerate(built):
        a = BASE + i
        if mem[a] != w:
            print(f"{a:05o}: собрано {w:016o} память {mem[a]:016o}  {lst.get(a, '')}")


if __name__ == "__main__":
    main()
