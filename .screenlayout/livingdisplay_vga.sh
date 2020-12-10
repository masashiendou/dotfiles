#!/bin/sh
# xrandr --output eDP1 --mode 1366x768 --pos 234x1080 --rotate normal --off --output DP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP2 --off --output DP2-1 --off --output DP2-2 --off --output DP2-3 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off

xrandr --delmonitor eizo-virt-left
xrandr --delmonitor eizo-virt-right
xrandr --delmonitor think-virt-left
xrandr --delmonitor think-virt-right

xrandr --output eDP1 --off --output DP2 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --crtc 1 --output DP1 --off --output DP2-1 --off --output DP2-2 --off --output DP2-3 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
# xrandr --output eDP1 --mode 1366x768 --pos 0x0 --rotate normal --crtc 0 --output DP2 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --crtc 1 --output DP1 --off --output DP2-1 --off --output DP2-2 --off --output DP2-3 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off


feh --bg-scale "/home/kanda/Downloads/218680.jpg"
fcitx -d
"~/.xkb/script/i3-config.sh"
