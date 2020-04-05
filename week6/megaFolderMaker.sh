#!/bin/bash
#Check for two arguments, if there isn't return error
if (( $# != 2 )); then
	#Return an error
	echo "Error invalid argument count - provide two arguments"
fi

#for each number between the first and last argument
for ((i = $1; i <= $2; i++))
do
	#Create a new week folder with the corresponding number
	echo "Creating Directory week$i"
	mkdir "week$i"
done
