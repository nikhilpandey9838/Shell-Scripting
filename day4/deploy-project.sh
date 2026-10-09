#!/bin/bash

<< tasks
Deploy a Django app
and handle the code for errors
tasks

code-clone(){
	echo "Cloning the Django app..."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install-requirements(){
	echo "Installing dependencies..."
	sudo apt-get update
	sudo apt-get install -y python3 docker.io nginx
}


required-restarts(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy(){
	cd django-notes-app || exit 1
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}







echo "******************** DEPLOYMENT STARTED *********************"

echo 
echo
 

if ! code-clone; then
	echo "App is already clonned"
	cd django-notes-app
fi

if ! install-requirements; then
	echo "Installation failed"
	exit 1
fi

if ! required-restarts; then
	echo "System fault identified"
	exit 1
fi

deploy


echo
echo

echo "******************** DEPLOYMENT ENDED ********************"
