#!/bin/bash

# Accept command-line arguments
instance_array=("$@")
parameter1=$1
parameter2=$2

# Print the array items, parameter1, and parameter2
echo "Instance array:"
for item in "${instance_array[@]}"; do
    echo "$item"
done

echo "Parameter 1: $parameter1"
echo "Parameter 2: $parameter2"
