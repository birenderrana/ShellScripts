#!/bin/bash

#Creating a function

function greet {

	echo "Welcome to Bash Scripting"

}

#Printing the function 5 times

for  ((i=1; i<6; i++))
do
	greet
done
