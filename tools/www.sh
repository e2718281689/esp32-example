openocd --version

. $HOME/esp/esp-idf/export.sh

idf

openocd -f board/esp32-wrover-kit-3.3v.cfg

xtensa-esp32-elf-gdb -x gdbinit build/hello-world.elf

idf.py openocd gdbgui
idf.py monitor
