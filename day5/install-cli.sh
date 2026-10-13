#!/bin/bash



instll(){
	echo "Installing AWS CLI..."
	sudo apt update
	sudo apt install curl unzip -y
	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscli.zip"
}

unzp(){
	echo "Unzipping the AWS CLI file..."
	unzip awscli.zip
}

after-unzp-instll(){
	echo "Installing locally..."
	sudo ./aws/install
}

check-version(){
	echo "CLI verion : "
	aws --version
}


echo "********************** Installation Started *************************"
echo
echo


if ! instll; then
	echo "Installation failed"
	exit 1
fi

if ! unzp; then
	echo "Unzipping failed"
	exit 1
fi

if ! after-unzp-instll; then
	echo "Cant't install locally"
	exit 1
fi

if ! check-version; then
	echo "Version not found"
	exit 1
fi


echo
echo
echo "****************************** Installation Ended ******************************"
