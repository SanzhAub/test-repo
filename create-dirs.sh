#!/bin/bash

if [ -z "$1"]; then 
    BASE_PATH="."
else 
    BASE_PATH="$1"
fi

mkdir -p "${BASE_PATH}/temp"
mkdir -p "${BASE_PATH}/persistent"

echo "DIr created in: ${BASE_PATH}/"


