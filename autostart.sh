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
#run "variety"
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

if [[ $COMPUTER_NAME == 'nuc10' ]]; then
  xrandr --output DP-1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-2 --mode 2560x1440 --pos 2560x0 --rotate normal --output HDMI-1 --off
elif [[ $COMPUTER_NAME == 'workpc' ]]; then
  # run xrandr for workpc
  #run "franz"
  #run "slack"
  #run "teams"
  :;
fi
