#!/bin/bash

sudo groupadd kbtusoos

for user in student1 student2; do
    sudo useradd -m -G kbtusoos $user
    echo "Make password for $user:"
    sudo passwd $user
done

echo "Checking created users:"
getent group kbtusoos
id student1
id student2
