#!/bin/sh

TAG=my_ubuntu
docker image build -t $TAG .

# same as the following, because of the command (CMD) argument in the Dockerfile
# docker container run -it my_ubuntu bash
docker container run -it $TAG
