#!/usr/bin/env bash
# File: guessinggame.sh
# Final project

echo "Welcome to Guessing game!"

function welcome_ask {
	echo "How many files in current directory?"
	read guess
}

ans=$(pwd | ls -l | wc -l)

while [[ $ans -ne guess ]]
do
	welcome_ask
	if [[ $ans -gt guess ]] 
	then 
		echo "Too Low!!"
	elif [[ $ans -lt guess ]] 
	then
		echo "Too High!!"
	fi
done

echo "Congratulation! It's correct answer!!"
echo "See you next time :)"


