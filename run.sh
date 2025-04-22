#!/bin/bash

python3 main.py > background.log 2>&1 &

echo $! > background.pid
echo "main.py is started at back: $(cat background.pid)"
