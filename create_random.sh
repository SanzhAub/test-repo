#!/bin/bash

if [ -z "$1" ]; then
    echo "Error"
    exit 1
fi

TARGET_DIR="$1"

mkdir -p "$TARGET_DIR"

while true; do
    FILENAME="$TARGET_DIR/file_$(date +%s%N).txt"
    touch "$FILENAME"
    echo "Created file: $FILENAME"
    sleep 1
done
