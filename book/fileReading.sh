#!/bin/bash
#The read command isn't just for getting user input, it can also read the contents of a file 

while read line
do
echo $line
done < yourfile.txt
