#!/bin/sh
# Интерактивный прогон с ТМГУ ДА: операторский терминал (лог.1) стоит за
# концентратором ТМГУ, а к его линии подключена консоль SIMH.
#   sim/tmgucons.sh          - физ. номер 13 (восьмеричный), линия SIMH tty11
#   PHYS=N sim/tmgucons.sh   - другой физ. номер (конфигурация ОС и линия SIMH)
#   TRACE=1 sim/tmgucons.sh  - ещё и обмен с концентратором в sim/run/log.txt
#                              (разобрать: sim/tmgu_decode.py sim/run/log.txt)
# Берёт собранный 2053.bin (make build). ^E - в sim>, quit - выход.
# Протоколы: sim/run/log.txt (консоль, то есть терминал), sim/run/output.txt (АЦПУ).
set -e
here=$(cd "$(dirname "$0")" && pwd)
ini=$here/tmgucons.ini
phys=${PHYS:-13}
dec=$(printf '%d' "0$phys")
. "$here/setup.sh"
"$here/muxvt.py" 2053.bin 2053.bin "$phys"
"$here/tmgu.py" 2053.bin 2053.bin
sed -i "s/tty13\([ .]\)/tty$dec\1/g" boot.ini
[ -z "$TRACE" ] || sed -i "s/^set tty tmgu$/set tty tmgutrace/" boot.ini
exec "$besm6" boot.ini
