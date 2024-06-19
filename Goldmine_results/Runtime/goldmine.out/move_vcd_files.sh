#!/bin/bash

# Function to create directories based on the path
create_directories() {
    local path="$1"
    mkdir -p "$path"
}

# Read paths from the text file
while IFS= read -r file_path; do
    # Extract directory path and create directories
    directory_path=$(dirname "$file_path")
    create_directories "$directory_path"

    # Copy the file to the destination
    cp "$file_path" "/data/vpulav2/Work/harm/verilog/$file_path" || continue

    echo "File '$file_path' copied successfully."
done < vcdfile_test.txt

