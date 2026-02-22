#!/bin/bash

# Function to check disk usage

check_disk() {
	echo "Disk usages of /"
	df -h /
	echo ""
}

# Function to check memory usage

check_memory() {
	echo "Memory usages : "
	free -h 
	echo ""
	
}

# Main section

echo "===== System Resource Check ====="

check_disk
check_memory

echo "===== Check Completed ====="
