#!/bin/bash

set -euo pipefail

# Exit if no argument
if [ $# -eq 0 ]; then
    echo "Error: No log file path provided."
    exit 1
fi

log_file="$1"

# Check file exists
if [ ! -f "$log_file" ]; then
    echo "Error: $log_file does not exist"
    exit 1
fi

# Total lines
total_lines_processed=$(wc -l < "$log_file")

# Error count
total_errors_count=$(grep -Ei "ERROR|Failed" "$log_file" | wc -l)

# Top 5 errors
top_errors=$(grep -Ei "ERROR|Failed" "$log_file" | awk '{$1=$2=$3=""; print}' | sort | uniq -c | sort -rn | head -5)

# Critical events
critical_events=$(grep -n "CRITICAL" "$log_file" | sed 's/^\([0-9]*\):/Line \1:/' || echo "No critical events found")

# Report name
summary_report="log_report_$(date +%Y-%m-%d).txt"

{
echo "Date of analysis: $(date)"
echo "Log file name: $log_file"
echo "Total lines processed: $total_lines_processed"
echo "Total error count: $total_errors_count"
echo "------------ Top 5 Error Messages ------------"
echo "$top_errors"
echo ""
echo "------------ Critical Events ------------"
echo "$critical_events"
echo ""
} | tee "$summary_report"

echo "Summary report generated: $summary_report"

# Archive directory
archive_dir="./archive"

mkdir -p "$archive_dir"

mv "$log_file" "$archive_dir/"

echo "$log_file moved to $archive_dir/"
echo "Log analysis completed."
