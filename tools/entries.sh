#!/bin/sh
# Адреса всех входных меток (ВХОД) по таблицам *.be.tab последней сборки.
cat *.be.tab | grep ' entry ' | awk '{print $NF, $3, $1}' | sort
