#!/bin/sh
# То же, что tools/check.sh, но без проверки сдвига меток (labels.base):
# для экспериментов, где адреса заведомо меняются.
#   tools/simcheck.sh        - сборка, ошибки ассемблера, задача, сеансы T002/T031/T032
# Печатает только строки '###'; код возврата 1 при любой неудаче.
cd "$(dirname "$0")/.." || exit 1
make build > build.log 2>&1 || { tail -20 build.log; echo "### BUILD FAILED"; exit 1; }
bad=$(grep -L 'ОШИБОК=0000' build/lst/*.lst)
[ -z "$bad" ] || { echo "### ASSEMBLY ERRORS: $bad"; exit 1; }
out=$( { sim/run.sh
          grep -q 'КОНЕЦ ЗАДАЧИ' sim/run/output.txt || echo "### JOB FAILED"
          sim/term.sh; sim/term.sh consuls; } 2>&1 )
echo "$out" | grep '^###'
echo "$out" | grep -q -E 'TIMEOUT|FAILED' && { echo "### SIM TEST FAILED"; exit 1; }
echo "### SIM CHECKS OK"
