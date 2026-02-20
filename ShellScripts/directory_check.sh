#!/bin/bash

read -p "Enter directory to check" directory

if [ -d "$directory" ];then
	echo "directory exist"
else
	echo "directory not found"
fi
