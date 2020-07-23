#!/bin/bash  

#Set the volume level
LEVEL=27
echo Keeping input volume at/under $LEVEL
while true ; do
    while (( `osascript -e "input volume of (get volume settings)"` > LEVEL )); do
        osascript -e "set volume input volume (input volume of (get volume settings) - 5)";
        echo `osascript -e "input volume of (get volume settings)"`
        #sleep 0.01;
    done;
    sleep 0.2;
done;