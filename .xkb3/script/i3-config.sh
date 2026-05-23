#!/bin/sh
setxkbmap
xkbcomp -I$HOME/.xkb3 $HOME/.xkb3/keymap/myxkb $DISPLAY 2>/dev/null
