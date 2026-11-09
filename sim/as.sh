#!/bin/sh
# Операторский терминал на аппаратуре сопряжения (АС), ТМГУ НЕТ: загрузка,
# приглашение T013(01), ответ на ВРЕ. Консоль SIMH стоит на линии терминала
# (tty11 = физ. 013), сеанс ведут expect/send в sim/as.ini.
#   sim/as.sh                - прогон, TIMEOUT секунд на всё (по умолчанию 90)
# Печатает ### BOOTED / ### PROMPT / ### ВРЕ OK или ### AS FAILED.
here=$(cd "$(dirname "$0")" && pwd)
ini=$here/as.ini
. "$here/setup.sh"
"$here/muxvt.py" 2053.bin 2053.bin 13
timeout "${TIMEOUT:-90}" "$besm6" boot.ini < /dev/null > sim.out 2>&1
grep -a '^### ' sim.out
grep -aq '^### ВРЕ OK' sim.out || { tail -c 600 sim.out; echo; echo "### AS FAILED"; exit 1; }
