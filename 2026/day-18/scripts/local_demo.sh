#!/bin/bash

echo "+++++ Local Variable Demo ++++"

# Function using local variables

use_local() {
 
	local message="I am a LOCAL variable"
	echo "Inside use_local(): $message"
	
}

# Function using regular (global) variables

use_global() {

	 message="I am a GLOBAL variable"
	echo "Inside use_global(): $message"

}
# Call local function
use_local

# Try to access local variable outside
echo "Outside after use_local():" $message

echo ".................................."

# Call globa function 

use_global

# Try to access global variable outside

echo "Outside after use_global(): " $message
