#!/bin/bash

<< comment
Getting values from a file name.txt
comment


FILE="/home/ubuntu/Shell-Scripting/day3/names.txt"

for i in $(cat $FILE)
do
	echo "Names are : $i"
done



# making directories using loops and arguments

<< comment
for(( i=1; i <= $1; i++ ))
do 
	mkdir demo$i
done
comment
