#!/bin/bash
if [ "$#" -eq 0 ]; then
echo "Usage: $0 <hostname>"
exit 1
fi
host="$1"
output=$(ping -c 5 "$host")
latency=$(echo "$output" | grep 'avg' | awk -F'/' '{print $5}')
if [ -n "$latency" ]; then
echo "Latency to $host: $latency ms"
else
echo "Ping failed or no response from &host"
fi

