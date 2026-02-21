#!/bin/bash



if [ -z "$1" ]; then # -z → Checks if the string is empty (argument is empty)
	echo "Usage: ./greet.sh <name>"
	exit 1
else
	echo "Hello, $1!"
fi



