#!/bin/bash
# This script will ask the user for a random number between one and ten and will keep asking until they get it right

myNumber=$(($RANDOM % 10 + 1))

guess=0

while [ $guess -ne $myNumber ]; do
    read -p "Pick a number from to 10:" guess
done

echo "You got it! The number was $myNumber"