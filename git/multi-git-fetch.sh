#!/bin/bash

find "/Users/asozza/Documents/github" -type d -name ".git" | while read repo; do
    repo_dir=$(dirname "$repo")
    echo "Fetching $repo_dir"
    git -C "$repo_dir" fetch
    echo "-----------------------------"
done
