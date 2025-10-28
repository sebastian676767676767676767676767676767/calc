#!/bin/bash

name=""

while [ -z "$name" ]; do 
    read -t 5 -p "You Have 5 seconds to enter your name: " name

    if [ -z "$name" ]; then
        echo "You didnt enter your damn name"
    fi
done

echo "Good job, $name!"

if [ "$name" == "clash" ]; then
    xdg-open https://web.cloudmoonapp.com/game/com.supercell.clashroyale/
fi