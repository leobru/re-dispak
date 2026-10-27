#!/bin/sh
# Boot with ТМГУ ДА: ТЕРМАС loaded and ВХПУСК called. No concentrator yet.
set -e
here=$(cd "$(dirname "$0")" && pwd)
ini=$here/tmgu.ini
. "$here/setup.sh"
"$here/tmgu.py" 2053.bin 2053.bin
"$besm6" boot.ini < /dev/null > sim.out 2>&1 || true
echo "### CELLS (MPRP / PREDEL / PRP12 / PRP10 / TERMАS entries)"
grep -E '^(1164|2040|4050|4052|40000|40002|40004):' sim.out || true
echo "### увв 142"
grep -E 'увв 142|PRP \|=' sim.out | head -20 || true
echo "### STOP / BOOTED"
grep -E 'STOP|BOOTED|не реализован|UNIMPLEMENTED' sim.out | head -20 || true
tail -40 sim.out
