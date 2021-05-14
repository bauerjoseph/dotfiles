#!/usr/bin/env bash
set -euo pipefail

#current_ip=$(curl ifconfig.me)

#echo Test $current_ip
#echo $saved_ip
currentIP=$(curl ifconfig.me)
touch ~/.ip
savedIP=$(cat ~/.ip)

if [ "$currentIP" != "$savedIP" ]; then
    echo "Not equal"
    echo $currentIP >> ~/.ip
else
    echo "Equal"
fi
