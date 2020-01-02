#!/bin/bash
# Modular user .xinitrc
# Sources all files in ~/.xinitrc.d/*.sh
# You should name the scripts like this : 0000-scriptname.sh
# With the file loading the wm named 9999-scriptname.sh

shopt -s nullglob
globconf=$(echo "$HOME"/.xinitrc.d/*.sh)

if [ -n "${globconf}" ]; then
    for scr in "$HOME"/.xinitrc.d/*.sh; do
        . $scr
    done
fi
