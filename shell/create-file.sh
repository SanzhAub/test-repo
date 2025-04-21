#!/bin/sh

cd "$(dirname "$0")/.." || exit 1

mkdir -p test/target &&

python3 python/creator.py < numbers.txt > test/target/my.txt
