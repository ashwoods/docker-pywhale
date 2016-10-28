#!/bin/bash
docker-machine create -d generic \
 --generic-ssh-user vagrant \
 --generic-ssh-key $(vagrant ssh-config | awk 'FNR == 8 {print $2}') \
 --generic-ip-address 10.0.0.10 \
 default
