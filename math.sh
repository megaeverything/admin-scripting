#!/bin/bash
#This script demonstrates doing arithmetic

#get two numbers form the user

read -p "Enter a first number please:" firstnum
read -p "Enter a second number please:" secondnum

#do some arithmetic on those numbers

sum=$((firstnum + secondnum))
echo "$firstnum plus $secondnum is $sum"

sum=$((firstnum - secondnum))
echo "$firstnum minus $secondnum is $sum"

sum=$((firstnum * secondnum))
echo "$firstnum multiplied by $secondnum is $sum"

sum=$((firstnum / secondnum))
echo "$firstnum divided by $secondnum is $sum"

sum=$((firstnum % secondnum))
echo "$firstnum divided by $secondnum leaves a remainder of $sum"