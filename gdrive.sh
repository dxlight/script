#!/bin/bash
FILE=""
DIR="/home/plots/complete"
# init
# look for empty dir
while true
do
if [ "$(ls -A $DIR)" ]; then
     datei="$(find /home/plots/complete/ -type f | head -n1)"
     gdrive upload $datei --timeout 0 --delete
else
    sleep 10
fi
done
# rest of the logic
