# guessing game script that asks user to enter the number of files in the current directory
# author: ajeetkumar vishwakarma

function get_message {
	local message="low"
	local diff=$(expr $2 - $1)

	if [[ $1 -gt $2 ]]
	then 
		message="high"
		diff=$(expr $diff \* -1)
	fi

	if [[ $diff -gt 20 ]]
	then
		guess_proximity=$(expr $user_guess \* 100 / $actualcount)

		if [[ $guess_proximity -gt 49 ]]
		then
			message="too $message"
		fi
	fi
	echo $message
}

echo "Guess the number of files in current directory: "

actualcount=$(ls -1 | wc -l)

while [[ true ]] 
do
	read user_guess

	if [[ $user_guess -eq $actualcount ]]
	then
		echo "Congratulations! your guess is correct"
		break
	else
		echo "Your guess is $(get_message $user_guess $actualcount), guess again:"
	fi
done
