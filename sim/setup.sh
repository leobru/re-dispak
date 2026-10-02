# Общая часть sim/run.sh и sim/term.sh: каталог прогона sim/run с дисками.
# На входе $here (каталог sim), $ini; на выходе текущий каталог - sim/run.
top=$(dirname "$here")
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
cp "$ini" "$run/boot.ini"
cd "$run"

kadopam_count() {
    echo "### KADOPAM accesses: $(grep -cE '^DBG.*(032|0132):' log.txt)"
}
