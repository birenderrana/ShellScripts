#!/bin/bash

read -p "Enter filename" filename

if [ -f "$filename" ]; then
	echo "file exist"
else
	echo "file not found"
fi


