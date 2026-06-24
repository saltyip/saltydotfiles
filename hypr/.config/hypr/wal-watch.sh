#!/bin/bash

WALLPAPER=$(grep '^wallpaper =' ~/.config/waypaper/config.ini | cut -d'=' -f2- | xargs)
WALLPAPER="${WALLPAPER/#\~/$HOME}"

wallust run "$WALLPAPER"

# Small delay to ensure wallust finishes writing templates
sleep 0.2

# Reload Ghostty config so new windows pick up the new colors silently
killall -q -SIGUSR2 ghostty || true

hyprctl reload
