#!/bin/sh
# Проверка, что МОТТ не зависит от абсолютных адресов: перед НАЧАЛО
# вставляется ПАМ K, затем сборка, задача, сеанс T002 и КОНСУЛЫ T031/T032.
#   tools/mott_pad.sh K     - K слов (mott.be после прогона восстанавливается)
# Печатает одну строку: K, время и результаты (### ... из sim/*.sh).
cd "$(dirname "$0")/.." || exit 1
k=${1:?K}
cp mott.be mott.be.pad-orig
trap 'mv mott.be.pad-orig mott.be; touch mott.be' EXIT   # touch: иначе make не пересоберёт МОТТ
sed -i "0,/^НАЧАЛО/s//\tПАМ\t$k\tПРОВЕРКА СДВИГА (tools\/mott_pad.sh)\nНАЧАЛО/" mott.be
s=$(date +%s)
make build > build.log 2>&1 || { echo "ПАМ $k: BUILD FAILED"; exit 1; }
bad=$(grep -L 'ОШИБОК=0000' *.lst)
[ -z "$bad" ] || { echo "ПАМ $k: ASSEMBLY ERRORS $bad"; exit 1; }
r1=$(TIMEOUT=40 sim/run.sh 2>&1 | grep -o 'PRINTED\|TIMEOUT')
grep -q 'КОНЕЦ ЗАДАЧИ' sim/run/output.txt || r1="$r1 JOB-FAILED"
r2=$(sim/term.sh 2>&1 | grep -o 'T002 OK\|T002 FAILED')
r3=$(sim/term.sh consuls 2>&1 | grep -o 'T03[12] OK\|T03[12] FAILED' | tr '\n' ' ')
echo "ПАМ $k: $(( $(date +%s)-s )) с; задача $r1; $r2; $r3"
