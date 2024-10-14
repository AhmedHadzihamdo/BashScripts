#!/bin/bash
if [ "$#" -ne 1 ]; then
echo "Usage: $0 <destination>"
exit 1
fi
destination="$1"
echo "Tracing the route to $destination..."
traceroute "$destination"
