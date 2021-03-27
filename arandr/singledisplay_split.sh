#!/bin/sh
xrandr --delmonitor eizo-virt-left
xrandr --delmonitor eizo-virt-right
xrandr --delmonitor think-virt-left
xrandr --delmonitor think-virt-right
xrandr --setmonitor think-virt-left 866/80x768/200+0+0 eDP1
xrandr --setmonitor think-virt-right 500/80x768/200+866+0 none
# xrandr --setmonitor think-virt-right 866/80x768/200+500+0 none
xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output DP1 --off --output DP2-1 --off --output DP2-2 --off --output DP2-3 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --off
# feh --bg-scale "Downloads/wallpapers/52286.jpg"
feh --bg-scale "Downloads/wallpapers/4845.jpg"
fcitx -d
~/.xkb/script/i3-config.sh
i3 -c ~/.config/i3/config_laptop
