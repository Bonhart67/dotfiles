#!/bin/sh

set_bg

while true; do 
    CURRENT_TIME=$(date +%H:%M)
    BATT=$(echo $(acpi | cut -d ',' -f2))
    xsetroot -name "[$BATT] [$CURRENT_TIME]";
    sleep 1;
done  &
