#!/bin/bash

while IFS="\n" read line
do
	if [[ $line = "" ]]; then
		continue

	elif [[ -f $line ]]; then
		echo "$line is a file"
	
	elif [[ -d $line ]]; then
		echo "$line is a directory"
	else
		echo "I don't know what $line is"
	fi
done < filenames.txt
