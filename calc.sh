#!/bin/bash

read -t 5 -p "You Have 5 seconds to enter your name: " name
if [ -z "$name" ]; then
    echo "You didnt enter your damn name"
else
    echo "Good job, $name!"
fi

read -t 5 -p "try again? (y/n) " ans
if [ "$ans" == "y" ]; then 
    read -t 5 -p "You Have 5 seconds to enter your name: " name
fi

if [ -z "$name" ]; then
    echo "You didnt enter your damn name"
else
    echo "Good job, $name!"
fi

if [ "$ans" == "n" ]; then 
    echo "Bye loser"
fi