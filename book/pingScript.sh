#!/bin/bash
read -p "What server would you like to ping? " server
ping -c3 $server 2>1 > /dev/null || echo "Server Dead"
exit 0
