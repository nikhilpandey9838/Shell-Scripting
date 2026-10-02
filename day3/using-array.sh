#!/bin/bash

myArr=( 1 2 3 Hello )

length=${#myArr[@]}

for (( i=0; i< $length; i++ ))
do
	echo "Elements : ${myArr[$i]}"
done
