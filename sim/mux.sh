#!/bin/sh
# Один mux-видеотон (tty2): АС,VТ и ОТАС, все каналы сообщений на него.
# Текст загрузки, если ОС его туда шлёт, попадает в session.txt и tty2.txt.
set -e
here=$(cd "$(dirname "$0")" && pwd)
port=$(python3 -c 'import socket; s = socket.socket(); s.bind(("", 0)); print(s.getsockname()[1])')
ini=$here/mux.ini
. "$here/setup.sh"
"$here/muxvt.py" 2053.bin 2053.bin
PORT=$port "$besm6" boot.ini < /dev/null > sim.out 2>&1 &
pid=$!
deadline=$(( $(date +%s) + ${TIMEOUT:-40} ))
stop() {
    kill $pid 2>/dev/null || true
    sleep 0.3
    kill -9 $pid 2>/dev/null || true
    wait $pid 2>/dev/null || true
}
# Не открывать пробное соединение: первый accept и есть сеанс.
(
    end=$(( $(date +%s) + 15 ))
    while [ "$(date +%s)" -lt "$end" ]; do
        if PYTHONUNBUFFERED=1 "$here/tty.py" "$port" "$here/mux.scr" > session.txt 2>/dev/null; then
            exit 0
        fi
        sleep 0.2
    done
    exit 1
) &
tpid=$!
until grep -q '^### BOOTED' sim.out 2>/dev/null; do
    if ! kill -0 $pid 2>/dev/null || [ "$(date +%s)" -ge "$deadline" ]; then
        kill $tpid 2>/dev/null || true
        stop
        echo "### TIMEOUT (boot)"
        echo "--- sim.out ---"
        tail -30 sim.out
        exit 124
    fi
    sleep 0.5
done
wait $tpid 2>/dev/null || true
stop
echo "### CELLS"
grep -E '^(77152|77123|77155|77157|1164):' sim.out
echo "### MUX data syllables: $(grep -c '>>> MUX: [0-7]' sim.out || true)"
grep '>>> MUX:' sim.out | grep -v 'clear' | head -20 || true
echo "### tty2 session ($(wc -c < session.txt) bytes)"
cat session.txt
echo "### tty1 ($(wc -c < tty1.txt) bytes)"
head -c 400 tty1.txt || true
echo
