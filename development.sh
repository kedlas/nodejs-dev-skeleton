#!/bin/bash

CONTAINER_NAME=my-nodejs-app

docker stop ${CONTAINER_NAME}
docker rm ${CONTAINER_NAME}

docker build -t my-nodejs-app .
docker run -d -p 3000:3000 -p 5858:5858 --name ${CONTAINER_NAME} -v `pwd`:/app my-nodejs-app
