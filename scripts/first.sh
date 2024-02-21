#!/bin/bash

# Accept command-line arguments
instance_array=($1)
parameter1=$2
parameter2=$3

# Print the array items, parameter1, and parameter2
echo "Instance array:"
for item in "${instance_array[@]}"; do
    echo "$item"
    # Append each item to a temporary file
    echo "$item" >> /tmp/restored_file.txt
done

echo "Parameter 1: $parameter1"
echo "Parameter 2: $parameter2"

# Check if the restored_array contains "ads" using grep
if grep -q "abhi" /tmp/restored_file.txt; then
    echo "Restored array contains 'ads'"
else
    echo "Restored array does not contain 'ads'"
fi

# Alternatively, you can use awk to check for "ads"
# awk '/ads/ { found=1; exit } END { exit !found }' /tmp/restored_file.txt && echo "Restored array contains 'ads'" || echo "Restored array does not contain 'ads'"
