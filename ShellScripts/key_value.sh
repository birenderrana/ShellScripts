#!/bin/bash

#How to store key-value pairs

declare -A myarray
myarray=( [Name]=Birender [age]=30 [city]=LKO)
echo "My name is ${myarray[Name]}"

#String Operations
myvar="hello WoRlD"

#To check the lenght 
echo "Length of the string is ${#myvar}"

#Upper case
echo "Upper case is ${myvar^^}"

#Lower case 
echo "Lower case is ${myvar,,}"

#replace
echo "Replacing World to ${myvar/WoRlD/User}"

#Slicing 
#In this the second options tells the index and the last option tells how many characters to slice

echo "Slicing End word ${myvar:6:5}"

