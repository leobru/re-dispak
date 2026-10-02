#!/bin/sh
# Проверки после каждого шага: сборка без ошибок, ни одна метка не сдвинулась,
# задача, сеанс на T002, сеансы на КОНСУЛАХ T031/T032; КАДОПАМ не трогается.
cd "$(dirname "$0")/.." || exit 1
make build > build.log 2>&1 || { tail -20 build.log; echo "### BUILD FAILED"; exit 1; }
bad=$(grep -L 'ОШИБОК=0000' *.lst)
[ -z "$bad" ] || { echo "### ASSEMBLY ERRORS: $bad"; exit 1; }
grep -E 'differs' build.log | sed 's/\x1b\[[0-9;]*m//g'
tools/labels.py --check labels.base || { echo "### LABELS MOVED"; exit 1; }
out=$( { sim/run.sh; sim/term.sh; sim/term.sh consuls; } 2>&1 )
echo "$out" | grep '^###'
echo "$out" | grep -q -E 'TIMEOUT|FAILED' && { echo "### SIM TEST FAILED"; exit 1; }
echo "$out" | grep 'KADOPAM accesses' | grep -v -q ': 0$' && { echo "### KADOPAM USED"; exit 1; }
echo "### ALL CHECKS OK"
