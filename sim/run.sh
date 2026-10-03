#!/bin/sh
# Прогон собранного 2053.bin в SIMH: sim/run.sh [задача] [ini]
# Каталог прогона sim/run создаётся заново; результат - sim/run/output.txt,
# протокол пульта - sim/run/log.txt.
set -e
here=$(cd "$(dirname "$0")" && pwd)
job=$(realpath "${1:-$here/prime.job}")
ini=${2:-$here/boot.ini}
. "$here/setup.sh"
cp "$job" input.txt
"$besm6" boot.ini < /dev/null &
pid=$!
# Распечатка задачи кончается строкой из пятёрок.
deadline=$(( $(date +%s) + ${TIMEOUT:-60} ))
while kill -0 $pid 2>/dev/null; do
    if grep -q '^55555555555555555555' output.txt 2>/dev/null; then
        sleep 2
        kill $pid
        wait $pid 2>/dev/null || true
        echo "### PRINTED"
        kadopam_count
        exit 0
    fi
    if [ "$(date +%s)" -ge "$deadline" ]; then
        # SIGTERM only interrupts the current SIMH command, the script goes on.
        kill -9 $pid
        wait $pid 2>/dev/null || true
        echo "### TIMEOUT"
        exit 124
    fi
    sleep 2
done
wait $pid
