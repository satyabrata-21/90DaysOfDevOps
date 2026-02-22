#!/bin/bash

# Enable strict mode
set -euo pipefail

# 1. Function: Hostname and OS Info

print_system_info() {
	echo "===== HOSTNAME & OS INFO ====="
	echo "Hostname: $(hostname)"
	echo "OS Info:" 
	uname -a
	echo ""	
}

# 2. Function: Uptime

print_uptime() {
	echo "===== SYSTEM UPTIME ====="
	uptime
	echo ""
}
# 3. Function: Disk Usage (Top 5 by size)
print_disk_usage() {
    echo "===== TOP 5 DIRECTORIES BY SIZE (/) ====="
    # df -h: human-readable disk usage
    # sort -hr -k5: sort by usage percentage (5th column) in descending order
    # head -n 6: show header + top 5 entries
    df -h | sort -hr -k5 | head -n 6
    echo ""
}

# 4. Function: Memory Usage
 print_memory_usage() {
    echo "===== MEMORY USAGE ====="
    free -h
    echo ""
}

# 5. Function: Top 5 CPU-consuming processes
print_top_cpu() {
   echo "===== TOP 5 CPU-CONSUMING PROCESSES ====="
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
    echo ""
}

# 6. Main Function
main() {
    echo "########################################"
    echo "        SYSTEM INFORMATION REPORT      "
    echo "########################################"
    echo ""

    print_system_info
    print_uptime
    print_disk_usage
    print_memory_usage
    print_top_cpu

    echo "########## REPORT COMPLETE ############"
}

# Run main
main

