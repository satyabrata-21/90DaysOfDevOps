#!/bin/bash

# Exit immediately if any command fails
set -e

# Log file path
LOG_FILE="/var/log/maintenance.log"

# Function to print timestamp
timestamp() {
    date +"%Y-%m-%d %H:%M:%S"
}

# Start logging
echo "==================================================" >> "$LOG_FILE"
echo "$(timestamp) - Maintenance started" >> "$LOG_FILE"

# Run log rotation
echo "$(timestamp) - Running log rotation..." >> "$LOG_FILE"
/home/satya/shell-scripting/script/day-19/log_rotate.sh /var/log/myapp >> "$LOG_FILE" 2>&1

# Run backup
echo "$(timestamp) - Running backup..." >> "$LOG_FILE"
/home/satya/shell-scripting/script/day-19/backup.sh /data /backup >> "$LOG_FILE" 2>&1

# End message
echo "$(timestamp) - Maintenance completed successfully" >> "$LOG_FILE"
echo "==================================================" >> "$LOG_FILE"
