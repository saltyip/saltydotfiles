#!/bin/bash
while true; do
    BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)
    
    if [ "$STATUS" = "Discharging" ] && [ "$BATTERY" -le 20 ]; then
        notify-send -u critical "Battery Low" "${BATTERY}% remaining"
    fi
    
    sleep 60
done
