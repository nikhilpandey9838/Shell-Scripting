#!/bin/bash

<< comment
In this script we will learn
about arithemetic operations
comment


# Multiplication

x=10
y=2

let multi=$x*$y
echo "Multiplication of $x and $y is : $multi"

# Addidtion

let sum=$x+$y
echo "The sum is : $sum"


# Using brackets

echo "Subtraction : $(($x-$y))" 
