#!/bin/bash
# command line argument $1 = repo/imagename. (e.g. jkmetsola/excercise-3.3)
cat DOCKER_SECRET.txt | docker login --username jkmetsola --password-stdin  # DOCKER_SECRET.txt contains password/API key
docker build --tag $1 .
docker push $1