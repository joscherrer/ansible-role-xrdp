#!/bin/bash
# Modular user .xinitrc
# Sources all files in ~/.xinitrc.d/*.sh
# You should name the scripts like this : 0000-scriptname.sh
# With the file loading the wm named 9999-scriptname.sh

if [ -d "$HOME"/.xinitrc.d/ ]; then
    shopt -s nullglob
    files=($(ls "$HOME"/.xinitrc.d/ | egrep '[0-9]{4}-(.*?).sh'))

    for scr in "${files[@]}"; do
        . "$HOME"/.xinitrc.d/"$scr"
    done
fi