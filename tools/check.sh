#!/bin/sh
# Проверки после каждого шага: сборка без ошибок, ни одна метка не сдвинулась,
# задача, сеанс на T002, сеансы на КОНСУЛАХ T031/T032; КАДОПАМ не трогается;
# сеанс через ДКС на штатном sbor2053.bin (sim/term.sh dks); операторский
# терминал на АС при ТМГУ НЕТ (sim/as.sh).
cd "$(dirname "$0")/.." || exit 1
make build > build.log 2>&1 || { tail -20 build.log; echo "### BUILD FAILED"; exit 1; }
bad=$(grep -L 'ОШИБОК=0000' build/lst/*.lst)
[ -z "$bad" ] || { echo "### ASSEMBLY ERRORS: $bad"; exit 1; }
grep -E 'differs' build.log | sed 's/\x1b\[[0-9;]*m//g'
tools/labels.py --check labels.base || { echo "### LABELS MOVED"; exit 1; }
out=$( { sim/run.sh
          grep -q 'КОНЕЦ ЗАДАЧИ' sim/run/output.txt || echo "### JOB FAILED"
          sim/term.sh; sim/term.sh consuls; sim/term.sh dks; sim/as.sh; } 2>&1 )
echo "$out" | grep '^###'
echo "$out" | grep -q -E 'TIMEOUT|FAILED' && { echo "### SIM TEST FAILED"; exit 1; }
echo "$out" | grep 'KADOPAM accesses' | grep -v -q ': 0$' && { echo "### KADOPAM USED"; exit 1; }
echo "### ALL CHECKS OK"
