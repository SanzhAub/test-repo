#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Eroor: write correct first and second dir"
    exit 1
fi

SOURCE_DIR="$1"
TARGET_DIR="$2"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: $SOURCE_DIR not exist"
    exit 1
fi

mkdir -p "$TARGET_DIR"

rsync -av --delete "$SOURCE_DIR/" "$TARGET_DIR/" || {
    echo "Error in sync"
    exit 1
}

echo "Dir sync: $SOURCE_DIR -> $TARGET_DIR"
