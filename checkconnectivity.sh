#!/bin/bash
# Lista web sajtova
websites=("google.com" "facebook.com" "example.com" "nepostojeciweb.xyz")
# For petljom prolazimo kroz site-ove
for site in "${websites[@]}"; do
if ping -c 1 "$site" &> /dev/null; then
echo "$site is reachable."
else
echo "$site is not reachable."
fi
done
