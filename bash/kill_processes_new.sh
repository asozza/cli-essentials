#!/bin/bash

# Usage check
if [[ -z "$1" ]]; then
    echo "Usage: $0 <keyword> [--force]"
    exit 1
fi

keyword=$1
force=false

# Check for force flag
if [[ "$2" == "--force" ]]; then
    force=true
fi

# Find processes using pgrep
pids=$(pgrep -u "$USER" -f "$keyword")

# Exit if no processes found
if [[ -z "$pids" ]]; then
    echo "No processes found matching '$keyword'."
    exit 0
fi

# Show matching processes
echo "Processes matching '$keyword':"
ps -fp "$pids"

# Confirmation (unless forced)
if [[ "$force" == false ]]; then
    read -p "Do you want to terminate these processes? (y/n) " response
    [[ "$response" != "y" ]] && echo "No action taken." && exit 0
fi

# Kill processes
echo "$pids" | xargs kill 2>/dev/null
echo "Processes terminated."
