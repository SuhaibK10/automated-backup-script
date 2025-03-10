#!/bin/bash

# Automated Backup Script

# Define Source & Destination
SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backup"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

# Create Backup Directory if not exists
mkdir -p "$BACKUP_DIR"

# Create a tar.gz backup
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

# Print Backup Status
if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_DIR/$BACKUP_FILE"
else
    echo "Backup failed!"
fi

