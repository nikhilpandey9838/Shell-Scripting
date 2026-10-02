#!/bin/bash

<< comment
Getting values from a file name.txt
comment

FILE="/home/ubuntu/Shell-Scripting/day3/names.txt"

for i in $(cat $FILE)
do
	echo "Names are : $i"
done
