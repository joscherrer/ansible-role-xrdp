#!/bin/sh

reload_xresources() {
    for file in "$HOME"/.config/Xresources/* ; do
        xrdb -merge "${file}"
    done
}

if [ ! -d "$HOME/.config/Xresources/" ]; then
    exit 0
fi

reload_xresources
