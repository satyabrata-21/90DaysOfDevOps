#!/bin/bash

set -e # Exit immediately if any command fails

DIR="/tmp/devops-test"
FILE="text.txt"

# Create directory

mkdir "$DIR" || echo "Failed to create directory"

# Navigate into directory

cd "$DIR" || echo "Failed to enter directory"

# Create file

touch "$FILE" ||  echo "Failed to create file"






