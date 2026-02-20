#!/bin/bash

#Learning Array  

myarray=(1 2 3 4 5 6 "Shell scripting")

echo "${myarray[1]}"


#Count the lenght of the array  

echo "The values inside the array is ${myarray[@]}"
echo "Length of the array is ${#myarray[@]}"

#Specific values in array

echo "Values from index 2 to 3 is ${myarray[@]:2}"
