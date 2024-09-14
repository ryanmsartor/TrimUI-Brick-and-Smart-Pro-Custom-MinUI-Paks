#!/bin/sh
echo $0 $*

EMU_DIR=/mnt/SDCARD/Emus/tg5040/DC.pak

$EMU_DIR/cpufreq.sh
$EMU_DIR/effect.sh

cd "$EMU_DIR/flycast"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:lib
export FLYCAST_BIOS_DIR="/mnt/SDCARD/Bios/dc/"
export FLYCAST_DATA_DIR=$FLYCAST_BIOS_DIR
export FLYCAST_CONFIG_DIR="$EMU_DIR/flycast/config/"

./flycast "$@"