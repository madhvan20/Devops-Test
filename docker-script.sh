#!/bin/bash

docker stop $(docker ps -qa)
docker rm $(docker ps -aq)
deployimg=`docker images | awk 'NR==2 { print $1 }'`
imgtag=`docker images | awk 'NR==2 { print $2 }'`
docker run --name container -it -d -p 6060:8080 $deployimg:$imgtag bash
