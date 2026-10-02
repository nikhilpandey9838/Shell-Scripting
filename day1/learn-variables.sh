#!/bin/bash

<< comment
Script to show
how to use variables
comment


# Create Variables
name="Champaklal Jayantilal Gada"
age=60


# Using the variables
echo "Character name is : $name, and his age is : $age"


# Checking if variable can be changed or not


name="Jethalal"

echo "Son : $name"


# Variable to store the o/p of a command

DATE=$(date)

echo "Today's date is : $DATE"


# Creating constant variables

readonly lady="Daya Aap Gada"

echo "Jetha's wife : $lady"

lady="Babita"

