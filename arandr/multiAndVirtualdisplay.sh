#!/bin/sh
xrandr --delmonitor eizo-virt-left
xrandr --delmonitor eizo-virt-right
xrandr --delmonitor think-virt-left
xrandr --delmonitor think-virt-right
xrandr --setmonitor eizo-virt-left 1320/345x1080/285+1920+0 DP2-2
# xrandr --setmonitor eizo-virt-left 600/130x1080/285+1920+0 none
xrandr --setmonitor eizo-virt-right 600/130x1080/285+3240+0 none
# xrandr --setmonitor eizo-virt-right 1320/345x1080/285+2520+0 DP2-2
xrandr --output eDP1 --off --output DP1 --off --output DP2 --off --output DP2-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --crtc 0 --output DP2-2 --mode 1920x1080 --pos 1920x0 --rotate normal --crtc 1 --output DP2-3 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
# xrandr --output eDP1 --off --output DP1 --off --output DP2 --off --output DP2-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --crtc 0 --output eizo-virt-left \
# --mode 600x1080 --pos 1920x0 --rotate normal --crtc 1 --output eizo-virt-right --mode 1320x1080 --pos 2520x0 --rotate normal --crtc 2 --output DP2-3 --off \
# --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
feh --bg-scale "Downloads/wallpapers/4845.jpg"
# feh --bg-scale "Downloads/wallpapers/52286.jpg"
fcitx -d
~/.xkb/script/i3-config.sh
i3 -c ~/.config/i3/config
~/.config/netctl/stopMobile.sh
