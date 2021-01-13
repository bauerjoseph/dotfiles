#!/usr/bin/env bash
set -euo pipefail
IFS=' '

while :
    DATE=$(date +'%b %d %l:%M %p')
    BATT=$(acpi -b)
    PERC=''
    read -rasplitIFS<<< "$BATT"
    for word in "${splitIFS[@]}"; do
        if [[ $word == *"%"* ]]; then
            PERC=${word:0:-1}
        fi
    done
    echo "${DATE} ${PERC}"
    do sleep 1; 
done
