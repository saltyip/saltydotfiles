#!/bin/bash
THEME=$(ls ~/.config/waybar/configs | rofi -dmenu -p "Waybar theme")
echo "SELECTED: [$THEME]" >> /tmp/waybar-switch.log

[ -z "$THEME" ] && { echo "EMPTY THEME, EXITING" >> /tmp/waybar-switch.log; exit 0; }

CONFIG_DIR="$HOME/.config/waybar/configs/$THEME"
echo "CONFIG_DIR: $CONFIG_DIR" >> /tmp/waybar-switch.log
ls "$CONFIG_DIR" >> /tmp/waybar-switch.log 2>&1

pkill -x waybar
sleep 0.3

ln -sf "$CONFIG_DIR/config.jsonc" "$HOME/.config/waybar/config.jsonc"
ln -sf "$CONFIG_DIR/style.css" "$HOME/.config/waybar/style.css"

echo "AFTER LINK:" >> /tmp/waybar-switch.log
readlink "$HOME/.config/waybar/config.jsonc" >> /tmp/waybar-switch.log

setsid waybar > /tmp/waybar-output.log 2>&1 &
echo "WAYBAR PID: $!" >> /tmp/waybar-switch.log
