#!/bin/sh
# Сеансы с терминалов по telnet на собранном 2053.bin:
#   sim/term.sh            - линия 2 (T002)
#   sim/term.sh consuls    - КОНСУЛЫ T031 и T032 (tty25, tty26) как видеотоны
#                            VIDI; образ правит sim/consuls.py
# Сценарий - sim/term.scr (для sim/tty.py); протоколы - sim/run/session*.txt.
set -e
here=$(cd "$(dirname "$0")" && pwd)
scr=$here/term.scr
# Порты - свободные от ядра: SIMH не слушает порт, оставшийся в TIME-WAIT.
freeport() {
    python3 -c 'import socket; s = socket.socket(); s.bind(("", 0)); print(s.getsockname()[1])'
}
port=$(freeport) port25=$(freeport) port26=$(freeport)
if [ "$1" = consuls ]; then
    ini=$here/consul.ini
    sessions="031:$port25 032:$port26"
else
    ini=$here/term.ini
    sessions="002:$port"
fi
. "$here/setup.sh"
if [ "$1" = consuls ]; then
    "$here/consuls.py" 2053.bin 2053.bin
fi
PORT=$port PORT25=$port25 PORT26=$port26 \
    "$besm6" boot.ini < /dev/null > sim.out 2>&1 &
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
for s in $sessions; do
    line=${s%:*}
    left=$(( deadline - $(date +%s) ))
    if LINE=$line timeout $left "$here/tty.py" ${s#*:} "$scr" > session$line.txt; then
        echo "### SESSION T$line OK"
    else
        rc=$?
        stop
        cat session$line.txt
        echo "### SESSION T$line FAILED ($rc)"
        exit 1
    fi
done
stop
kadopam_count
