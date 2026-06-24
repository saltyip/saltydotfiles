#!/usr/bin/env bash
# togglegaps.sh — toggle Hyprland gaps on/off globally

STATE_FILE="/tmp/hypr_gaps_state"

GAPS_IN=5
GAPS_OUT=10

if [[ -f "$STATE_FILE" ]]; then
    # gaps are currently off -> turn back on
    hyprctl keyword general:gaps_in "$GAPS_IN"
    hyprctl keyword general:gaps_out "$GAPS_OUT"
    rm "$STATE_FILE"
else
    # gaps are on -> turn off
    hyprctl keyword general:gaps_in 0
    hyprctl keyword general:gaps_out 0
    touch "$STATE_FILE"
fi
