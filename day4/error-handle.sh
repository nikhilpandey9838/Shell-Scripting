#!/bin/bash

read -p "Enter Directory Name : " dir
create-dir(){
	mkdir $dir
}

if ! create-dir; then
	echo "The code is being exited because the dir. already exist"
	exit 1
fi

echo "Your directory ($dir) has been created successfully"
