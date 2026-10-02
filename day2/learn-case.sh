#/bin/bash

<< comment
In this script
we will learn
case
comment


echo "Please select an option"
echo "a = to print date"
echo "b = list all the files and directories"
echo "c = to know your current location"

read option

case $option in
	a)
		echo "Today's date is : "
		date | awk '{print $1, $2, $3, $6}'
		echo "Ending..."
		;;
	b)ls;;
	c)pwd;;
	*)echo "Invalid input"
esac
