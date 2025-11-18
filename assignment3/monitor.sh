#!/bin/bash
# --------------------------------------------------------
# Script Name : monitor.sh
# Purpose     : Log CPU and memory usage at regular intervals.
# Author      : <Your Name>
# Date        : <Date>
# --------------------------------------------------------

# Log file where data will be saved
log_file="system_usage.log"
# How many seconds to wait between checks
interval=5
echo "Starting CPU/Memory monitoring..."
echo "Log saved to: $log_file"
echo "Press CTRL+C to stop."
while true
do
    # Printing date and time for each entry
    echo "------------------------" >> "$log_file"
    date >> "$log_file"
    # Using 'top' command to get first 5 lines of output
    top -b -n 1 | head -5 >> "$log_file"
    # Wait for the interval
    sleep $interval
done