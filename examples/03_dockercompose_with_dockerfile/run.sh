#!/bin/sh

SERVICE=my_ubuntu
docker-compose up
docker-compose run $SERVICE
docker-compose down
