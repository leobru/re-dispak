#!/bin/sh
# ТМГУ ДА, один операторский терминал физ. 13 / лог.1:
# ТЕРМ АС,VТ:13 и ОТАС 13 (номера терминалов в ГЕНС восьмеричные).
#   sim/tmguop.sh            - прогон TIMEOUT секунд (по умолчанию 90)
#   PHYS=N sim/tmguop.sh     - другой физ. номер, восьмеричный (конфигурация и 041)
#   NOTMGU=1 sim/tmguop.sh   - та же конфигурация через АС (ТМГУ НЕТ, set tty mux)
#   INI=sim/vyzrez.ini sim/tmguop.sh - то же с другим сценарием SIMH
#   SCR=файл sim/tmguop.sh          - другой сценарий ввода с терминала (tty.py)
# Печатает обмен с концентратором (sim/tmgu_decode.py) и вывод tty1.
set -e
here=$(cd "$(dirname "$0")" && pwd)
ini=$(realpath "${INI:-$here/tmguop.ini}")
phys=${PHYS:-13}
dec=$(printf '%d' "0$phys")
tas=$(printf '%o' $((02445 + dec)))
. "$here/setup.sh"
"$here/muxvt.py" 2053.bin 2053.bin "$phys"
if [ -n "$NOTMGU" ]; then
    sed -i "s/^set tty tmgutrace$/set tty mux/" boot.ini
else
    "$here/tmgu.py" 2053.bin 2053.bin
fi
# Физ. номер терминала за концентратором = номер линии SIMH (десятичный в tty).
sed -i "s/tty13 /tty$dec /; s/lineorder=13/lineorder=$dec/; s/^e 2460$/e $tas/" boot.ini
# e @ИМЯ -> e АДРЕС (адреса меток МОТТ и ТЕРМАС текущей сборки), с подписью.
for name in $(grep -o '^e @[^ ]*' boot.ini | cut -c4-); do
    addr=$(awk -v n="$name" '$3 == n { print $1; exit }' "$here/../mott.be.tab" "$here/../termas.be.tab")
    sed -i "s/^e @$name\$/echo $name\ne $addr/" boot.ini
done
port=$(python3 -c 'import socket; s = socket.socket(); s.bind(("", 0)); print(s.getsockname()[1])')
sed -i "s/%PORT%/$port/" boot.ini
"$besm6" boot.ini < /dev/null > sim.out 2>&1 &
pid=$!
# telnet на линию терминала за концентратором (set ttyN mux): сценарий
# sim/tmguop.scr (или SCR=...), затем чтение до конца прогона.
{ cat "${SCR:-$here/tmguop.scr}"; printf 'wait %s\n' "${TIMEOUT:-90}"; } > op.scr
( sleep 2; "$here/tty.py" "$port" op.scr > session.txt 2>/dev/null ) &
sleep "${TIMEOUT:-90}"
kill $pid 2>/dev/null || true
for i in 1 2 3 4 5 6 7 8 9 10; do grep -q '^### END' sim.out && break; sleep 0.5; done
kill -9 $pid 2>/dev/null || true
wait $pid 2>/dev/null || true
grep -E '^### BOOTED' sim.out || echo "### NOT BOOTED"
echo "### CELLS (после имён МОТТ: ТАС+1 ТАС+ФИЗ ТСЛ+1 ТСЛ+25 ТНФ(1) ТНФ(25) ППКВВ ППКВЫВ)"
sed -n '/^### BOOTED/,$p' sim.out | grep -E '^[0-7]{4,5}:|^[^ #:]+$' | grep -v -i '^sim' || true
echo "### TMGU"
"$here/tmgu_decode.py" log.txt
echo "### tty1 ($(wc -c < tty1.txt) bytes)"
tail -c 600 tty1.txt || true
echo
echo "### terminal tty$dec telnet ($(wc -c < session.txt) bytes)"
tail -c 600 session.txt || true
echo
