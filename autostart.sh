#!/bin/bash

COMPUTER_NAME=$(uname -n);

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run "nm-applet"
run "pamac-tray"
run "variety"
run "xfce4-power-manager"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "numlockx on"
run "volumeicon"

#run "nitrogen --restore"
#run applications from startup
#run "firefox"
#run "atom"
#run "dropbox"
#run "insync start"
#run "spotify"
#run "ckb-next -b"
#run "discord"
#run "telegram-desktop"

if [[ $COMPUTER_NAME == 'unstable' ]]; then
  run xrandr --output DVI-D-1 --primary --mode 1920x1200 --pos 1920x0 --rotate normal --output DP-4 --mode 1920x1200 --pos 0x0 --rotate normal --output DP-5 --off --output HDMI-4 --off --output HDMI-5 --off --output DP1 --off --output DP2 --off --output DP3 --off --output HDMI1 --off --output HDMI2 --off --output HDMI3 --off --output VGA1 --off --output VIRTUAL1 --off
elif [[ $COMPUTER_NAME == 'workpc' ]]; then
  # run xrandr for workpc
  #run "franz"
  #run "slack"
  #run "teams"
  :;
fi
