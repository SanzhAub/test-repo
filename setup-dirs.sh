#!/bin/bash

sudo mkdir -p /public /soos

sudo chgrp kbtusoos /public
sudo chmod 775 /public
echo "Public file content" | sudo tee /public/example.txt >/dev/null

sudo chgrp kbtusoos /soos
sudo chmod 770 /soos
sudo setfacl -R -m U:student2:rwx /soos
echo "Soos file content" | sudo tee /soos/example.txt >/dev/null

echo "Checking restr:"
ls -ld /public /soos
getfacl /public /soos
