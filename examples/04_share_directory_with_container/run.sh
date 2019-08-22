#!/bin/sh

SERVICE=my_ubuntu
docker-compose up
docker-compose run $SERVICE
docker-compose down

# alternatively, you could do
# docker container run -it --rm -v "$(pwd)/my_stuff/:/my_stuff/" ubuntu:18.04 bash
