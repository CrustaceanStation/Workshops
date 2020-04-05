#!/bin/bash

#Gets the users directory to create
read -p "Specify a directory to create: " dirName

#Gets the users super secret password
read -sp "Enter a secret password: " password

#Makes the directory, if it works, will echo out the password to secret.txt which is in the created directory. If secret.txt exists, it will overwrite, if it doesn't exit it will create

mkdir $dirName && echo $password > $dirName/secret.txt

#New line echo for formatting
echo 
