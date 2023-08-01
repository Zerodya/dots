#!/bin/bash

entries=" Shutdown\n Reboot\n Suspend \n Standby\n Logout\n Lockscreen"

selected=$(echo -e $entries|wofi -c ~/.config/wofi/evocarbon/config -s ~/.config/wofi/evocarbon/style.css --dmenu -W 170 -H 210 --location 3 -x -51 -y 6 -k /dev/null | awk '{print tolower($2)}')

case $selected in
  shutdown)
    loginctl poweroff;;
  reboot)
    loginctl reboot;;
  suspend)
    loginctl suspend;;
  standby)
    sleep 1 && hyprctl dispatch dpms off;;
  logout)
    loginctl terminate-session ${XDG_SESSION_ID-};;
  lockscreen)
    swaylock;;
esac
