#!/bin/bash


read -p "enter the number:" number

if [ $number -gt 0 ]; then
	echo "Positive"
elif [ $number -lt 0 ]; then
	echo "negetive"
else 
	echo "Zero"

fi
