#!/bin/bash

<< comment
Here we will be learning 
Arrays
comment


# Creating an array


myArr=(1 2 Hello "Iyer Bhai")


# Access the elements of the array 



echo "${myArr[0]}"

echo "${myArr[2]}"

echo "${myArr[3]}"


# Accessing all at once without using loops

echo "The elements of the array are : ${myArr[@]}"

# Check the length of the Array 

echo "The length of the array is : ${#myArr[@]}"



# Adding elements in the array

myArr+=("Bhide")


echo "Updated array : ${myArr[@]}"


# Range of values

newArr=(10 20 30 40 50 60)

echo "Elements from index 2 to 4 are : ${newArr[@]:2:3}"





# Array Key-Value


declare -A arr

arr=([name]=Tappu 
     [age]=18
)


echo "${arr[name]} and his age is ${arr[age]}"
