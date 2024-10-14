#!/bin/bash
if [ "$#" -ne 1 ]; then
echo "Usage: $0 <file_with_domains>"
exit 1
fi
domain_file="$1"
if [ ! -f "$domain_file" ]; then
echo "File not found: $domain_file"
exit 1
fi
while IFS= read -r domain; do
if [ -n "$domain" ]; then
echo "Testing DNS resolution time for: $domain"
resolution_time=$(dig +noall +stats "$domain" | grep "Query time" | awk '{print $4}')
echo "DNS resolution time for $domain: $resolution_time ms"
echo 
fi
done < "$domain_file"
