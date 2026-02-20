#!/bin/bash

greet_user() {
	local name=$1
	echo "Hello, $name !"

}

greet_user Alice
