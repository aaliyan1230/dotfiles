#!/bin/bash

# Get the current script's filename

# Loop through all files in the current directory
for file in *; do
    # Check if the file exists in the home directory
    if [ -f "~/$file" ]; then
        # Delete the file in the home directory
        rm "~/$file"
    fi
    # Create a symlink in the root directory
    ln -s "$(pwd)/$file" "~/$file"
done