#!/bin/bash




numOfFiles=0
newestFile=""

for file; do
	
	if [ -f $file ]; then
		((numOfFiles++))

		if [ $numOfFiles = 0 ]; then
			newestFile=$file

		else
			
			if [ $file -nt newestFile ]; then
				newestFile=$file
			fi
		fi
		
	else
		echo "The arguments are not all files - $file is not a file"
		exit 1
	fi
done

if [ $numOfFiles = $# ]; then
	echo "The newest file is $newestFile"

else
	echo "Insufficient files for comparison"
fi

exit 0 
