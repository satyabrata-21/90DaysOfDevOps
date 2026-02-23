#!/bin/bash

# Exit immediately if any command fails
set -e

# Validate argument count
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_destination>"
    exit 1
fi

# Assign source and destination variables
SOURCE_DIR="$1"
DEST_DIR="$2"

# Check source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# Ensure destination directory exists
if [ ! -d "$DEST_DIR" ]; then
    echo "Destination directory does not exist. Creating it..."
    mkdir -p "$DEST_DIR"
fi

# Generate current date timestamp
TIMESTAMP=$(date +"%Y-%m-%d-%H-%M-%S")

# Create archive filename
ARCHIVE_NAME="backup-$TIMESTAMP.tar.gz"

# Create compressed tar.gz archive
tar -czf "$DEST_DIR/$ARCHIVE_NAME" -C "$SOURCE_DIR" .

# Verify archive creation
if [ ! -f "$DEST_DIR/$ARCHIVE_NAME" ]; then
    echo "Error: Backup archive was not created."
    exit 1
fi

# Get archive size
ARCHIVE_SIZE=$(du -h "$DEST_DIR/$ARCHIVE_NAME" | cut -f1)

echo "----------------------------------------"
echo "Backup created successfully."
echo "Archive: $ARCHIVE_NAME"
echo "Size: $ARCHIVE_SIZE"
echo "----------------------------------------"

# Delete backups older than 14 days
find "$DEST_DIR" -type f -name "backup-*.tar.gz" -mtime +14 -delete

echo "Old backups (older than 14 days) cleaned up."

echo "=====================END======================"
