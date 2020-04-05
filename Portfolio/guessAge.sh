#!/bin/bash

#Defining the function to get the age the user will guess
generateAge()
{
	#Generating a random number between 20 & 70 assigning it to the age variable
	age=$(shuf -i 20-70 -n1)
	#Returning the age variable
	return $age
}
#Calling the guessAge function to generate the random number
generateAge

#Create an empty variable called guess
unset guess

#Main loop of the program. Infinite until it's broken when the correct number is guessed
while true
do
	#MAIN INPUT VALIDATION/CHECKING LOGIC 

	#Prompts the user for their guess, overwrites and stores in the guess variable
	read -p "Guess an age between 20 and 70: " guess

	#prevents the user from entering only non numeric characters
	if [[ $guess =~ [^0-9] ]]; then

		#If a non integer value is entered the user is prompted for an integer
		echo "Enter an integer"
		echo

	#Checks if the guess is correct
	elif [[ $guess = $age ]]; then
		
		#if it is, the user is told, the loop broken and program ended.
		echo "Correct!"
		break


	#Checks if the guess is within the range of the ages generated
	elif [[ $guess < 20 || $guess > 70 ]]; then
		
		#Useful nudge in the right direction, not needed but nice to have
		echo "You'll have more success guessing within the range!"
		echo

	else
		
		#If the guess is higher than the age
		if [[ $guess > $age ]]; then
			#User is prompted to guess lower. 
			echo "Guess Lower!"
			echo

		else
			#Otherwise they need to guess higher
			echo "Guess Higher!"
			echo
		fi
		
	fi
done
