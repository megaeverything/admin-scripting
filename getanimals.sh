#!/bin/bash
# This script will demonestarte creating and using some vairables

# Create the colours array

colours=("red" "green" "blue")

# Create the animals hash

declare -A animals
animals=(["red"]="cardinal" ["green"]="frog" ["blue"]="lobster")

# Display the arrays

echo "Element 0 of the colors array has the value ${colours[0]}"
echo "Element 1 of the colors array has the value ${colours[1]}"
echo "Element 2 of the colors array has the value ${colours[2]}"
echo "The array contains ${colours[@]}"
echo "The red element of the animals array has the value ${animals[red]}"
echo "The green element of the animals array has the value ${animals[green]}"
echo "The blue element of the animals array has the value ${animals[blue]}"
echo "The animals array contains ${animals[@]}"


# Create a num variable tp use as an index
read -p "which element of the colours array yould you like to use?" num

# Display some data elements from both arrays using the index num
echo "The first colour in the array is ${colours[$num]} and it can"
echo "  be used to find the ${colours[$num]} animal which is the "
echo "  ${animals[${colours[$num]}]}"
