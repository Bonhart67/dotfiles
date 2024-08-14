#!/bin/sh

set_bg

while true; do 
    CURRENT_TIME=$(date +%H:%M)
    BATT=$(acpi | awk '{print $5}')
    xsetroot -name "[$BATT] [$CURRENT_TIME]";
    sleep 1;
done  &
