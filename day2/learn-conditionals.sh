#!/bin/bash


<< comment
In this script we will be learning
Conditional statements
comment


# if-else

read -p "Enter your marks : " marks

if [[ $marks -gt 40 ]];
then
	echo "You are pass"
else
	echo "You are fail"
fi


# elif


read -p "Enter Marks to check your divison : " mks

if [[ $mks -ge 80 ]]
then
	echo "First Division"
elif [[ $mks -ge 60 ]]
then
	echo "Second Division"
elif [[ $mks -ge 40 ]]
then
	echo "Third Division"
else
	echo "Fail !"
fi
