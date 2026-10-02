#!/bin/bash

<< comment
we will learn
string
comment



#Creating a String

myString="chai piyo biscuit khao"


# Length of a string

echo "The Length of the string is : ${#myString}"





# Converting into upper-case

echo "${myString^^}"

# lower case

myStr="HELLO WORLD"

echo "${myStr,,}"




# Replacing a string


newstr=${myStr/WORLD/champaklal}

echo "$newstr"



# Slicing


padosi="My padosi is A.T Bhide"

echo "Padosi name : ${padosi:13:21}"



