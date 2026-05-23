#!/bin/sh
setxkbmap
xkbcomp -I$HOME/.xkb4 $HOME/.xkb4/keymap/myxkb $DISPLAY 2>/dev/null
