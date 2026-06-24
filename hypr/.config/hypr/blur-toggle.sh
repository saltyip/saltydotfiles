#!/bin/bash
STATE=$(hyprctl getoption decoration:blur:enabled | grep -oP 'int: \K[01]')

if [ "$STATE" = "1" ]; then
    hyprctl keyword decoration:blur:enabled false
    echo "Blur: OFF"
else
    hyprctl keyword decoration:blur:enabled true
    echo "Blur: ON"
fi
