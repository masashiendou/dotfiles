#!/bin/bash

STR=$(xprop -id $(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -f 2) WM_CLASS)
MOD1=$(xmodmap -pm|grep Super_R)
MOD2=$(xmodmap -pm|grep mod4)
if [[ $STR == *tmux* ]] && [[ $MOD1 == *"Super_R (0x6c)"* ]]; then
	~/.xkb2/script/tmux-config.sh
elif [[ ! $STR == *tmux* ]] && [[ $MOD1 == *"Super_R (0x86)"* ]]; then
	xmodmap .Xmodmap_i3
elif [[ $STR == *tmux* ]] && [[ $MOD2 == *"Alt_R (0x86)"* ]]; then
	~/.xkb2/script/tmux-config.sh
elif [[ $STR == *tmux* ]] && [[ $MOD2 == *"Alt_R (0x6c)"* ]]; then
	~/.xkb2/script/tmux-config.sh
elif [[ ! $STR == *tmux* ]] && [[ $MOD2 == *"Alt_R (0x86)"* ]]; then
	~/.xkb/script/i3-config.sh
else
	:
fi

