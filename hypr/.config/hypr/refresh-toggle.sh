#!/bin/bash
CURRENT=$(hyprctl monitors | grep -v "availableModes" | grep "@" | grep -o '@[0-9]*' | tr -d '@')

if [ "$CURRENT" -le 60 ]; then
    hyprctl keyword monitor eDP-2,1920x1080@144,0x0,1
    notify-send "Display" "Switched to 144Hz"
else
    hyprctl keyword monitor eDP-2,1920x1080@60,0x0,1
    notify-send "Display" "Switched to 60Hz"
fi
