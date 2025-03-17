#!/bin/bash

echo "SUID files:"
find / -perm -4000 2>/dev/null

echo -e "\nSGID files:"
find / -perm -2000 2>/dev/null

echo -e "\nChecking common vulnerable binaries..."
for bin in $(find / -perm -4000 -o -perm -2000 2>/dev/null | grep -E '/usr/bin/|/bin/'); do
    echo "Checking $bin"

    #https://gtfobins.github.io/ do checks 
    
done
