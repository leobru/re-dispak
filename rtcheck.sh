#!/bin/sh
# Quick round-trip check of one module against the original disk,
# without a full "make build".
#
# Usage: ./rtcheck.sh src/file.be
#
# Assembles file.be (asm.pl), links only this module's line of rvs.src
# into build/disk/2222, dumps the zones it occupies from there and from the original
# disk (2053 for zones below 01000, 2048 above, as verify.pl does) and
# prints the first differing words (address, original, rebuilt).
# The module must already be in modlist.src (run
# "./mkloc.pl < modlist.src > build/modloc.txt" after adding it) and
# have a "мдл ... ЗОНГП 43zzzz n^" line in rvs.src.
# Only for self-contained modules: one that imports names from another
# module (e.g. "СЕРП ВНЕШ" in serp3-5) links wrongly when alone, and its
# zones in build/disk/2222 then stay wrong until the next "make build".
set -e
[ $# -eq 1 ] || { echo "Usage: $0 src/file.be" >&2; exit 1; }
src=$1
export BESM6_PATH=build/disk:${BESM6_PATH:-/usr/local/share/besm6}
mod=$(awk 'tolower($2) ~ /старт/ { print tolower($1); exit }' "$src")
line=$(grep -i "^мдл   $mod" rvs.src)
[ -n "$line" ] || { echo "No rvs.src line for $mod" >&2; exit 1; }
zone=$(echo "$line" | sed -n 's/.*[Зз][Оо][Нн][Гг][Пп] 43\([0-7]*\) *\([0-9]*\).*/\1/p')
len=$(echo "$line" | sed -n 's/.*[Зз][Оо][Нн][Гг][Пп] 43\([0-7]*\) *\([0-9]*\).*/\2/p')
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
./asm.pl "$src" 2>&1 | tail -2
echo "$line" > "$tmp/rvs.src"
./rvs.pl "$tmp/rvs.src" > /dev/null 2>&1
grep -a ЗОНГП build/rvs.log || true
disk=2053
[ $((0$zone)) -ge 512 ] && disk=2048
besmtool dump $disk --start=0$zone --length=$len --to-file="$tmp/gold" > /dev/null
besmtool dump 2222 --start=0$zone --length=$len --to-file="$tmp/new" > /dev/null
if cmp -s "$tmp/gold" "$tmp/new"; then
    echo "Zones $zone+$len match"
else
    echo "Zones $zone+$len differ:"
    "$(dirname "$0")/dishelp.py" cmp "$tmp/gold" "$tmp/new" 20
fi
