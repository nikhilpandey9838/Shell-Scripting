#!/bin/bash


clone(){
	echo "Clonning..."
	git clone https://github.com/Lordwill1/todo-list.git
}

install-req(){
	echo "Installing Dependencies"
	sudo apt-get update
	sudo apt-get install docker.io -y
}


create-dockerfile(){
    echo "Creating Dockerfile..."

    cat > Dockerfile <<EOF
FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
EOF
}

build-image(){
	echo "Building docker image..."
	docker build -t todo-app . 
}

deploy(){
    echo "Deploying container..."

    # if there is an old container present it will remove and also if there is no container present it will hide the error

    docker rm -f todo-container 2>/dev/null

    docker run -d --name todo-container -p 8000:80 todo-app
}




echo "************************* Deployment Started *******************************"

echo
echo

if ! clone; then
	echo "Project already exist"
	cd todo-list
else
	cd todo-list
fi

if ! install-req; then
	echo "Dependency installation failed"
	exit 1
fi


if ! create-dockerfile; then
	echo "Failed to create Dockerfile"
	exit 1
fi

if ! build-image; then
	echo "Docker image build failed"
	exit 1
fi

if ! deploy; then 
	echo "Deployment failed"
	exit 1
fi


echo
echo

echo "************************** Deployment Ended ***********************************"

