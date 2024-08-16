#!/bin/sh

set_bg

while true; do 
    CURRENT_TIME=$(date +%H:%M)
    if [ ! -z $(command -v acpi) ]; then
      BATT=$(echo $(acpi | cut -d ',' -f2))
      xsetroot -name "[$BATT] [$CURRENT_TIME]";
      echo "yes"
    else
      xsetroot -name "[$CURRENT_TIME]";
      echo "no"
    fi
    sleep 1;
done  &
