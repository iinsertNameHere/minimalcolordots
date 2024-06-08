#!/bin/bash

entries="Lock\nReboot\nShutdown"

selected=$(echo -e $entries|wofi -Dhide_search=true --dmenu --cache-file /dev/null)

echo $selected

case $selected in
  Lock)
    sh $HOME/.config/scripts/lock.sh;;
  Reboot)
    systemctl reboot;;
  Shutdown)
    systemctl poweroff -i;;
esac
