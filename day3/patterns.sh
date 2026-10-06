#!/bin/bash



# Pttern 1

<< first
for (( i = 1; i <= 5; i++ ))
do
	for (( j = 1; j <= $i; j++ ))
	do
		echo -n "*"
	done
	echo	
done
first



# Pattern 2


n=9
spaces=0
stars=0

for (( i = 1; i <= n; i++ ))
do
	if (( i <= 5 ))
	then
		(( spaces= i - 1 ))
		(( stars= (n + 2) - 2*i  ))
	else
		(( spaces= n - i ))
		(( stars= 2*i - n ))
	fi
	for (( j = 1; j <= spaces; j++ ))
	do
		echo -n " "
	done
	for (( j = 1; j <= stars; j++ ))
	do 
		echo -n "*"
	done
	for (( j = 1; j <= spaces; j++ ))
	do
		echo -n " "
	done
	echo
done
