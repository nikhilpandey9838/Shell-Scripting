#/bin/bash

# AND && operator

read -p "Your Age : " age
read -p "Your Country : " country

if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then
	echo "You are eligible to vote"
else
	echo "You can't vote"
fi


# OR Operator

read -p "Your Age : " age
read -p "Your Country : " country

if [[ $age -ge 18 ]] || [[ $country == "America" ]]
then
        echo "You are eligible to vote"
else
        echo "You can't vote"
fi
