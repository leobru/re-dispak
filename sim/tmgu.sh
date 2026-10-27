#!/bin/sh
# Boot with ТМГУ ДА: ТЕРМАС loaded and ВХПУСК called. No concentrator yet.
set -e
here=$(cd "$(dirname "$0")" && pwd)
ini=$here/tmgu.ini
. "$here/setup.sh"
"$here/tmgu.py" 2053.bin 2053.bin
"$besm6" boot.ini < /dev/null > sim.out 2>&1 || true
echo "### CELLS (MPRP / PPKVV / PPKVYV / SHKAS / SLON / TAS1 / SHKORAB / SHKNOV)"
grep -E '^(1164|40025|40123|77152|77124|2446|77146|77151):' sim.out || true
echo "### TMGU"
grep -E 'TMGU' sim.out | head -60 || true
echo "### STOP / BOOTED"
grep -E 'STOP|BOOTED|не реализован|UNIMPLEMENTED|key exchange|connect' sim.out | head -20 || true
tail -40 sim.out
