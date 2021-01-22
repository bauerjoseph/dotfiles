#!/usr/bin/env bash
set -euo pipefail
IFS=' '

while :
    DATE=$(date +'%b %d %l:%M %p')
    BATT=$(acpi -b)
    VOL=$(amixer)
    PERC=''

    read -rasplitIFS<<< "$BATT"
    for word in "${splitIFS[@]}"; do
        if [[ $word == *"%"* ]]; then
            PERC=${word:0:-1}
        fi
    done

    VOL=$(amixer | awk '/%/ {print $5}' | awk 'NR==1')
    VOL=${VOL:1:-1}

    echo "${DATE} BATT ${PERC} VOL ${VOL}"
    do sleep 1; 
done
