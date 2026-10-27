#!/bin/sh
# Boot with ТМГУ ДА: ТЕРМАС loaded and ВХПУСК called. No concentrator yet.
set -e
here=$(cd "$(dirname "$0")" && pwd)
ini=$here/tmgu.ini
. "$here/setup.sh"
"$here/tmgu.py" 2053.bin 2053.bin
"$besm6" boot.ini < /dev/null > sim.out 2>&1 || true
echo "### CELLS"
grep -E '^(1164|40025|40123|77152|2446|77146|77151|442|446|2077|77141|40366|40124|2445|2447):' sim.out || true
echo "### TMGU (incl. possible 042 reply)"
grep -E 'TMGU' sim.out | head -80 || true
echo "### STOP / BOOTED"
grep -E 'STOP|BOOTED|UNIMPLEMENTED|key exchange|connect|СТ175' sim.out | head -20 || true
tail -30 sim.out
