#!/bin/bash
FILE=""
DIR="/home/plots/complete1"
# init
# look for empty dir
while true
do
if [ "$(ls -A $DIR)" ]; then
     datei="$(find /home/plots/complete1/ -type f | head -n1)"
     gdrive upload $datei --timeout 0 --delete --config /home/ubuntu/.gdrive1
else
    sleep 10
fi
done
# rest of the logic
