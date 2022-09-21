#!/bin/sh
xrandr --delmonitor eizo-virt-left
xrandr --delmonitor eizo-virt-right
xrandr --delmonitor think-virt-left
xrandr --delmonitor think-virt-right
xrandr --output eDP1 --off --output DP1 --off --output DP2 --off --output DP2-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --crtc 0 --output DP2-2 --off
feh --bg-scale "Downloads/wallpapers/4845.jpg"
fcitx -d
~/.xkb/script/i3-config.sh
i3 -c ~/.config/i3/config
