#!/bin/bash

#get imput from the user
read -p "Please enter a letter: " letter
read -p "Please enter a number: " num

#make variable tries
tries=$num

#Print out the letter as many times as the number they gave
while [ $tries -gt 0 ]; do
echo "$letter"
tries=$(($tries - 1))
done
