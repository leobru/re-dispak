#!/bin/sh
# Прогон собранного 2053.bin в SIMH: sim/run.sh [задача] [ini]
# Каталог прогона sim/run создаётся заново; результат - sim/run/output.txt,
# протокол пульта - sim/run/log.txt.
set -e
here=$(cd "$(dirname "$0")" && pwd)
top=$(dirname "$here")
job=${1:-$here/prime.job}
ini=${2:-$here/boot.ini}
disks=${DISKS:-$HOME/git/besm6.github.io/download/disks}
besm6=${BESM6:-$HOME/git/besm6/simh/BIN/besm6}

run=$here/run
rm -rf "$run"
mkdir -p "$run"
cp "$top/2053.bin" "$run/2053.bin"
for d in krab2063 sbor2048 svs2048 alt2048; do
    cp "$disks/$d.bin" "$run/"
done
cp "$here/boot_dispak.b6" "$run/"
cp "$job" "$run/input.txt"
cp "$ini" "$run/boot.ini"
cd "$run"
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
        exit 0
    fi
    if [ "$(date +%s)" -ge "$deadline" ]; then
        kill $pid
        wait $pid 2>/dev/null || true
        echo "### TIMEOUT"
        exit 124
    fi
    sleep 2
done
wait $pid
