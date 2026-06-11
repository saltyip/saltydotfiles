#!/bin/bash

while true; do
    inotifywait -e modify ~/.config/waypaper/config.ini
    sleep 0.3
    WALLPAPER=$(grep 'wallpaper = ' ~/.config/waypaper/config.ini | cut -d' ' -f3 | sed 's|~|/home/osleepy|')
    wal -i "$WALLPAPER" --backend haishoku
    hyprctl keyword general:col.active_border "rgba($(cat ~/.cache/wal/colors | sed -n '2p' | tr -d '#')ff)"
done
