#!/bin/bash

root_directory="$(cd "$(dirname "$0")" && pwd)/.."

echo $root_directory

to_remove=( ".pytest_cache" "__pycache__" )

if [ -d "$root_directory" ]; then
    for item in "${to_remove[@]}"; do
        find "$root_directory" -type d -name "$item" -exec rm -rf {} +
        find "$root_directory" -type f -name "$item" -exec rm -f {} +
    done
    echo "Removal Completed"
else
    echo "Root directory not found: $root_directory"
fi
