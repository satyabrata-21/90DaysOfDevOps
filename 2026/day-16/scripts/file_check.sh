#!/bin/bash


read -p "Enter the file name :" filename

if [ -f "$filename" ]; then
	echo "The file $filename exist"
else
	echo "The file $filename doesn't exist"
fi
