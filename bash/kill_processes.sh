#!/bin/bash

# Check if a keyword is provided
if [[ -z "$1" ]]; then
    echo "Usage: $0 <keyword>"
    exit 1
fi

keyword=$1

# Find processes matching the keyword for the current user, excluding the grep command itself
pids=$(ps -u $USER | grep "$keyword" | grep -v "grep" | awk '{print $2}')

# Exit if no processes are found
if [[ -z "$pids" ]]; then
    echo "No processes found matching '$keyword'."
    exit 0
fi

# Display the found processes
echo "Processes matching '$keyword':"
ps -u $USER | grep "$keyword" | grep -v "grep"

# Ask for user confirmation
read -p "Do you want to terminate these processes? (y/n) " response

if [[ "$response" == "y" ]]; then
    echo "$pids" | xargs kill -9 2>/dev/null
    echo "Processes terminated."
else
    echo "No action taken."
fi
