#!/bin/bash

echo "1. Create a Folder"
echo "2. List files in a folder"
echo "3. Copy a folder"
echo "4. Save a password"
echo "5. Read a password"
echo "6. Print newest file"

read -p "Select an option: " userChoice

case $userChoice in
	"1")
		./3in4/week3/folderMaker.sh;;
	
	"2")
		./3in4/week3/displayContents.sh;;
	
	"3")
		./folderCopier.sh;;
	
	"4")
		./3in4/week3/secretMaker.sh;;

	"5")
		./secretReader.sh;;
	
	"6")
		./fileAgeChecker.sh;;
esac

