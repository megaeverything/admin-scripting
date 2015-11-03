#!/bin/bash

#Get a number from the user
read -p "Please enter a number to be multiplied by 6: " num

#multiply that number by 6
finalnum=$(($num * 6))

#print out the number multiplied by 6
echo "The number $num multiplied by 6 is $finalnum"