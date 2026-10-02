#!/bin/bash

<< comment
In this script we will learn
Loops
comment

# for loop

	# First way to create

for (( i = 0; i <= 10; i++ ))
do
	echo "Running : $i times"
done


	# Second way 

for i in 10 20 30 40 50 60
do
	echo "Printing : $i using for loop"
done


for i in Jethalal Champaklal Gada
do
	echo "$i"
done


for i in {1...5}
do
	echo "$i"
done



