#!/bin/bash

if [ -z "$1"]; then
    echo "Error"
    exit 1
fi

TARGET_DIR="$1"
ARCHIVE_NAME="archive_$(date +%Y-%m-%d).tar.gz"

if [ ! -d "$TARGET_DIR"]; then
    echo "Error: Dir $TARGET_DIR not exist"
    exit 1
fi

if [ -z "$(ls -A "$TARGET_DIR")" ]; then
    echo "Error: Dir $TARGET_DIR empty"
    exit 1
fi

tar -czvf "$ARCHIVE_NAME" -C "$TARGET_DIR" . || {
    echo "Error when creating file"
    exit 1
}

echo "Archive $ARCHIVE_NAME created successfully"
