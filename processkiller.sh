#!/bin/bash

# Define the process name
process_name="your_process_name"

# Check if the process is running
if pgrep "$process_name" >/dev/null 2>&1; then
    # If the process is running, kill it
    pkill "$process_name"
    echo "Process '$process_name' has been killed."
else
    echo "Process '$process_name' is not running."
fi

