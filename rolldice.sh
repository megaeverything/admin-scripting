#/bin/bash
# This script gets 2 numbers form the command line a count of dice and a count of sides per die

count=2 #default of 2 dice
sides=6 #defult of 6 sides

if [ $# -ne 2 ]; then
    echo "You didnt give me a count of dice and a number of sides/die"
    echo "Using the defaults of $count dice with $sides sides each"
else
    count="$1"
    if [[ "$count" -lt 1 || "$count" -gt 50 ]]; then
        echo "Invalid count of dice, keep it between 1 and 50"
        exit 2
    fi
    sides="$2"
    if [[ "$sides" -lt 2 || "$sides" -gt 20 ]]; then
        echo "Invalid count of sides, keep it between 2 and 20"
        exit 2
    fi
fi

sum=0
while [ $count -gt 0 ]; do 
    roll=$(( $RANDOM % $sides +1 ))
    sum=$(( $sum + $roll ))
    echo "Rolled $roll"
    count=$(( count -1 ))
done
echo "You rolled a toal of $sum"