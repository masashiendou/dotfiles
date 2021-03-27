#!/bin/sh
setxkbmap
xkbcomp -I$HOME/.xkb2 $HOME/.xkb2/keymap/myxkb $DISPLAY 2>/dev/null
