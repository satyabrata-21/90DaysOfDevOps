#!/bin/bash          


# Check if script is run as root
if [ "$EUID" -ne 0 ]; then                   # EUID = Effective User ID (0 = root)
    echo " Please run this script as root." 
    echo " Example: sudo ./install_packages.sh"
    exit 1                                   # Exit with error status
fi

packages=("nginx" "curl" "wget")         
apt update                                   # Update package list (no sudo needed now)

for package in "${packages[@]}"; do         
    	echo "Checking package: $package"

    if dpkg -s "$package" &> /dev/null; then
        echo " $package is already installed. Skipping..."
    else
        echo "$package is NOT installed. Installing..."
        apt install -y "$package"

        if [ $? -eq 0 ]; then
            echo " $package installed successfully."
        else
            echo "⚠️ Failed to install $package."
        fi
    fi

    echo "-----------------------------------"
done
