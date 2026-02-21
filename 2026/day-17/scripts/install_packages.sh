#!/bin/bash


packages=("nginx" "curl" "wget")

sudo apt update 

for package in "${packages[@]}"; do # Expands to all elements of the array as separate words, preserving spaces safely.
	echo "Checking package : $package"

if dpkg -s "$package"  &> /dev/null; then # Redirects both stdout and stderr to /dev/null (discarding all output).
	  echo "$package is already installed. Skipping..."
  else 	
	echo "$package is NOT installed. Installing..."
	
		sudo apt-get install -y "$package"

	if [ $? -eq 0]; then # Check exit status of previous command (0 = success)
		echo "$package installed successfully..."
	else	
		echo " Failed to install $package...."
	
	fi

fi



done
