#!/bin/bash



<< try
function check_age() {
	if (( $1 >= 18 ))
	then
		echo "You can vote"
	else
		echo "You can't vote"
	fi
}

check_age 17
try


check-age(){
	read -p "Enter Your age : " age
	if (( age >= 18 ))
	then
		echo "You can vote"
	else
		echo "You can't vote"
	fi
}

check-age
