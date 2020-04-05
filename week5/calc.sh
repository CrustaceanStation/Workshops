#!/bin/bash

clearColour='\033[0m'

#checks if there are three arguments, keeps the program simple.
#If there isn't, the program will exit
#Done this way because I want to minimise my usage of using if statements.

[ $# = 3 ] ||(echo "Invalid number of arguments - two numbers and an operator required" && exit 1)

#Checks what the second argument (Operator) is.
if [[ $2 = "+" ]]; then

	#Sets the variable sum to the appropriate operational result.
	let sum=($1 + $3)
	colour='\033[34m'
	
elif [[ $2 = "-" ]]; then
	let sum=($1 - $3)
	colour='\033[32m'

elif [[ $2 = "x" ]]; then
	let sum=($1 * $3)
	colour='\033[31m'

elif [[ $2 = "/" ]]; then
	let sum=($1 / $3)
	colour='\033[35m'

else
	#if the operator isn't valid, say so and exit with condition 1
	echo "Invalid Operator"
	exit 1

fi
#echos out the sum
echo -e "${colour}$sum${clearColour}" 
