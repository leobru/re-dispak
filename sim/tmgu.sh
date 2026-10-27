#!/bin/sh
# Boot with ТМГУ ДА: ТЕРМАС loaded and ВХПУСК called. No concentrator yet.
set -e
here=$(cd "$(dirname "$0")" && pwd)
ini=$here/tmgu.ini
. "$here/setup.sh"
"$here/tmgu.py" 2053.bin 2053.bin
"$besm6" boot.ini < /dev/null > sim.out 2>&1 || true
echo "### CELLS (MPRP / PREDEL / PRP12/10 / PPKVV / PPKVYV / TERMAS)"
grep -E '^(1164|2040|4050|4052|40025|40123|40000):' sim.out || true
echo "### TMGU / 142"
grep -E 'TMGU|увв 142|PRP \|=' sim.out | head -40 || true
echo "### STOP / BOOTED"
grep -E 'STOP|BOOTED|не реализован|UNIMPLEMENTED|key exchange' sim.out | head -20 || true
tail -50 sim.out
