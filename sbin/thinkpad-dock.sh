#!/bin/sh -e

# Save this file as /sbin/thinkpad-dock.sh

# NB: you will need to modify the username and tweak the xrandr
# commands to suit your setup.

# wait for the dock state to change
sleep 0.5

username=kanda

#export IFS=$"\n"

if [[ "$ACTION" == "bind" ]]; then
  DOCKED=1
  logger -t DOCKING "Detected condition: docked"
elif [[ "$ACTION" == "unbind" ]]; then
  DOCKED=0
  logger -t DOCKING "Detected condition: un-docked"
else
  logger -t DOCKING "Detected condition: unknown"
  echo Please set env var \$ACTION to 'add' or 'remove'
  exit 1
fi

# invoke from XSetup with NO_KDM_REBOOT otherwise you'll end up in a KDM reboot loop
NO_KDM_REBOOT=0
for p in $*; do
  case "$p" in
  "NO_KDM_REBOOT") NO_KDM_REBOOT=1 ;;
  "SWITCH_TO_LOCAL") DOCKED=0 ;;
  esac
done

function switch_to_local {
  export DISPLAY=$1
  #export XAUTHORITY=$(find /var/run/kdm -name "A${DISPLAY}-*")
  #export XAUTHORITY=/var/run/lightdm/sflaniga/xauthority
  logger -t DOCKING "Switching off DP2-1 and switching on eDP1"
  # su $username -c '
  su $username -c '
  /usr/bin/xrandr \
	--output eDP1 --primary --mode 1366x768 --pos 0x0 --rotate normal \
	--output DP1 --off \
	--output DP2 --off \
	--output DP2-1 --off \
	--output DP2-2 --off \
	--output DP2-3 --off \
	--output HDMI1 --off \
	--output HDMI2 --off \
	--output VIRTUAL1 --off
  /usr/bin/feh \
	  --bg-scale "/home/kanda/Downloads/52286.jpg"
  '
    
      # --output HDMI1 --off \
      # --output HDMI2 --off \
      # --output HDMI3 --off \
      # --output VGA1  --off \
      # --output eDP1  --auto \
      # --output LVDS1 --auto \
}

function switch_to_external {
  export DISPLAY=$1
  #export XAUTHORITY=/var/run/lightdm/sflaniga/xauthority
  #export XAUTHORITY=$(find /var/run/kdm -name "A${DISPLAY}-*")

  # The Display port on the docking station is on HDMI2 - let's use it and turn off local display
  logger -t DOCKING "Switching off eDP1 and switching on DP2-1"

  # su $username -c '
  su $username -c '
  /usr/bin/xrandr \
	--output eDP1 --off \
	--output DP1 --off \
	--output DP2 --off \
	--output DP2-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal \
	--output DP2-2 --off \
	--output DP2-3 --off \
	--output HDMI1 --off \
	--output HDMI2 --off \
	--output VIRTUAL1 --off
  /usr/bin/feh \
	  --bg-scale "/home/kanda/Downloads/218699.jpg"
  '
    
#      --output eDP1  --off \
#      --output LVDS1 --off \
#      --output HDMI1 --auto \
#      --output HDMI2 --auto --pos 1680x0 --rotate left \
#      --output HDMI3 --auto --pos 0x600 --primary \
#      --output VGA1  --auto \

  # alternative:
  # xrandr --output LVDS1 --off --output HDMI3 --primary --auto --pos 0x0
  # --output HDMI2 --auto --rotate left --pos 1680x-600

  # this will probably fail ("Configure crtc 2 failed"):
  #/usr/bin/xrandr --output LVDS1 --auto
}

case "$DOCKED" in
  "0")
    #undocked event
    switch_to_local :0 ;;
  "1")
    #docked event
    switch_to_external :0 ;;
esac
