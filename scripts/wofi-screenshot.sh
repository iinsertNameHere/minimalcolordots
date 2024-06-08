#!/bin/bash

entries="Copy\nSave"

selected=$(echo -e $entries|wofi -Dhide_search=true --dmenu --cache-file /dev/null)

echo $selected

case $selected in
  Copy)
    grim -g "$(slurp)" - | wl-copy;;
  Save)
    grim -g "$(slurp)" "$HOME/Pictures/Screenshots/ls $(date +%d%m%Y-%H%M%S).png";;
esac