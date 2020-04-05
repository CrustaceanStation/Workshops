#!/bin/bash

#Gets the folder to copy from the user
read -p "Enter the name of the folder you wish to copy: " copyFolder

#Gets the folder they wish to create
read -p "Name the file you wish to create: " newFolder

#Checks if the folder already exists
if [ -d "$newFolder" ]; then
	echo "That folder already exists"

#If the folder doesn't exist, creates the new folder and copies the specified folder into the new one
else
	mkdir "$newFolder" && cp -r  "$copyFolder" "$newFolder"
fi
