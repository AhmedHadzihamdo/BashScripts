#!/bin/bash
#Prikaz informacija o CPU
echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')%"

#Prikaz informacija o memoriji
echo -e "\n Memory usage:"
free -h | awk 'NR==2{printf "Used: %s\nFree: %s\nTotal: %s\n", $3, $4, $2}'

