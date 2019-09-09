#!/bin/bash

STR=$(xprop -id $(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -f 2) WM_CLASS)
if [[ $STR == *tmux* ]]; then
 # echo "FOUND!!!";
 ~/.xkb2/script/tmux-config.sh
else
 # echo "Not FOUND...";
 ~/.xkb/script/i3-config.sh
fi
