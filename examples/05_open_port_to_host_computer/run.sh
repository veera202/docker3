#!/bin/sh

echo "Run a web browser to 'localhost:80'"

SERVICE=my_nginx
docker-compose up
docker-compose run $SERVICE
docker-compose down


# alternatively, you could do
# docker container run --rm -p 80:80 nginx
