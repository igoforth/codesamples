#!/bin/bash

exec 3<>/dev/tcp/vm/1294
for i in {1..20}
do
    read -u 3 j
    if k=$(echo "$j" | grep -oP ":\s\K.*")
    then
        echo $k | bc >&3
    else
        echo $j
    fi
done