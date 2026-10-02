#!/bin/sh
# Сеанс с терминала (линия 2, telnet) на собранном 2053.bin:
# sim/term.sh [сценарий]   (сценарий - для sim/tty.py, по умолчанию sim/term.scr)
# Протокол терминала - sim/run/tty2.txt.
set -e
here=$(cd "$(dirname "$0")" && pwd)
scr=$(realpath "${1:-$here/term.scr}")
ini=$here/term.ini
port=${PORT:-4199}
. "$here/setup.sh"
PORT=$port "$besm6" boot.ini < /dev/null > sim.out 2>&1 &
pid=$!
deadline=$(( $(date +%s) + ${TIMEOUT:-60} ))
stop() {
    kill $pid 2>/dev/null || true
    wait $pid 2>/dev/null || true
}
until grep -q '^### BOOTED' sim.out 2>/dev/null; do
    if ! kill -0 $pid 2>/dev/null || [ "$(date +%s)" -ge "$deadline" ]; then
        stop
        echo "### TIMEOUT (boot)"
        exit 124
    fi
    sleep 1
done
left=$(( deadline - $(date +%s) ))
if timeout $left "$here/tty.py" $port "$scr" > session.txt; then
    stop
    echo "### SESSION OK"
    kadopam_count
else
    rc=$?
    stop
    cat session.txt
    echo "### SESSION FAILED ($rc)"
    exit 1
fi
