#!/bin/bash

read -p "Where is the secret located: " loaction


#Checks if secret exists, then cats it
if [ -f $location/secret.txt ]; then
	cat $location/secret.txt

#If secret doesn't exist prints that it doesn't exist
else

	echo "Secret not found"
fi
