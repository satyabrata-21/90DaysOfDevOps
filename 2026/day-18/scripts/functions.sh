#!/bin/bash

# Function to greet a person

greet() {
	name=$1
 echo "Hello, $name!"
 
}

# Function to add two numbers

add() {
	num1=$1
	num2=$2
	sum=$(( $num1 + $num2 ))
	echo "The sum of $num1 and $num2 is $sum"

}

greet Satya
add 4 6

