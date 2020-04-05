#!bin/bash

(ping -w 10 10.0.8.8 && echo "Connection Established") || echo "Connection Failed"

if [[ $? = 0 ]]; then
	read -p "Which webpage would you like to download? " webpage
	wget $webpage
fi
