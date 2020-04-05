#!/bin/bash
#Base name is used to only display the name of the file not it full path
read -p "What is your name?: " #Since we have specified no name for this variable, the default name $REPLY is used.
							   #-p allows read to provide a prompt to the user, reducing the amount of lines needed in the program (removing the need for echo)
echo "Hello $REPLY"
read -sn1 -p "Press any key to exit" # The -n flag specifies how many characters we want as an input before the script carries on
									 # Adding the -s (silent) flag, causes the input in the shell to be invisible. Good for hiding passwords, PINS and formatting
echo #adding new line for output formatting
exit 0 
