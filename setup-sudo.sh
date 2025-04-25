#!/bin/bash

sudo tee /etc/sudoers.d/kbtusoos-users <<EOF
%kbtusoos ALL=( root ) /usr/sbin/useradd, /usr/sbin/userdel, /usr/sbin/usermod, /usr/sbin/groupadd, /usr/sbin/groupdel, /usr/sbin/groupmod
EOF

sudo tee /etc/sudoers.d/student1-nopasswd <<EOF
student1 ALL=( student2 ) NOPASSWD: /usr/bin/vim /soos/*, /usr/bin/nano /soos/*, /usr/bin/cp /soos/*, /usr/bin/mv /soos/*
EOF

sudo visudo -c
