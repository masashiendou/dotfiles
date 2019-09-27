#!/bin/bash

STR=$(xprop -id $(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -f 2) WM_CLASS)
MOD1=$(xmodmap -pm|grep Super_R)
MOD2=$(xmodmap -pm|grep mod4)
if [[ $STR == *tmux* ]] && [[ $MOD1 == *"Super_R (0x6c)"* ]]; then
	# echo "Current keymap is I3 but current window is TMUX"
	# xkbcomp ~/git/dotfiles/tmux-config.xkm $DISPLAY
	~/.xkb2/script/tmux-config.sh
	# xmodmap .Xmodmap_tmux
elif [[ ! $STR == *tmux* ]] && [[ $MOD1 == *"Super_R (0x86)"* ]]; then
	# echo "Current keymap is TMUX but current window is I3"
	# xkbcomp ~/git/dotfiles/i3-config.xkm $DISPLAY
	#~/.xkb/script/i3-config.sh
	xmodmap .Xmodmap_i3
elif [[ $STR == *tmux* ]] && [[ $MOD2 == *"Alt_R (0x86)"* ]]; then
	~/.xkb2/script/tmux-config.sh
elif [[ $STR == *tmux* ]] && [[ $MOD2 == *"Alt_R (0x6c)"* ]]; then
	~/.xkb2/script/tmux-config.sh
elif [[ ! $STR == *tmux* ]] && [[ $MOD2 == *"Alt_R (0x86)"* ]]; then
	~/.xkb/script/i3-config.sh
else
	# echo "Current keymap and window are maching !!!"
	:
fi
