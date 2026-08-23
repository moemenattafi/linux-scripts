#!/bin/bash

printf "\nChecking network Interfaces (ip addr)\n"

ip addr

printf "\nChecking Listening Services (ss or netstat with tlnp flag)\n"

ss -tlnp

printf "\nDNS resolution\n"

cat /etc/resolv.conf
resolvectl monitor #to see actual requests
nslookup google.com
dig google.com
