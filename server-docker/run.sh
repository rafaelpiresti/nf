#!/usr/bin/env bash


#docker rm $(docker ps -aq) -f

#docker-compose rm  -f

docker build -t nf .

docker-compose up -d
docker-compose run composer install --ignore-platform-reqs --no-scripts
docker ps
