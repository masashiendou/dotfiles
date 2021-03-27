#!/bin/sh
xrandr --delmonitor think-virt-left
xrandr --delmonitor think-virt-right
xrandr --delmonitor eizo-virt-left
xrandr --delmonitor eizo-virt-right
xrandr --setmonitor eizo-virt-right 1920/475x1080/285+1920+0 DP2-2
xrandr --output eDP1 --off --output DP1 --off --output DP2 --off --output DP2-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --crtc 0 --output DP2-2 --mode 1920x1080 --pos 1920x0 --rotate normal --crtc 1 --output DP2-3 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
feh --bg-scale "Downloads/wallpapers/4845.jpg"
fcitx -d
~/.xkb/script/i3-config.sh
