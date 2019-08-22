#!/bin/sh

docker-compose up --build
xhost +local:
USER_ID=$(id -u) docker-compose run ros
docker-compose down
