#!/bin/bash

BASE=${1:-.}
mkdir -p $BASE/{temp, persistent, volume}
sudo mount -t tmpfs -o size=100M tmpfs $BASE/temp
sudo mount --bind $BASE/volume $BASE/persistent
mount | grep -E "temp|persistent"
