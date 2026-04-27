#!/bin/bash

CONFIG_FILE="config.txt"
if [ -f "$CONFIG_FILE" ]; then
    SEARCH_PATH=$(cat "$CONFIG_FILE" | xargs)
else
    echo "No config file found! "
    exit 1
fi

#echo "Github main folder: $SEARCH_PATH"

find "$SEARCH_PATH" -type d -name ".git" | while read repo; do
    repo_dir=$(dirname "$repo")
    echo "Fetching $repo_dir"
    git -C "$repo_dir" fetch --all --prune
    echo "------------------------------------------------------"
done
