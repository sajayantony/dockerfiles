#!/bin/sh 

SOURCE_IMAGE=hello-world@sha256:083de497cff944f969d8499ab94f07134c50bcf5e6b9559b27182d3fa80ce3f7
TARGET_IMAGE=example.com/non-existant:sometag

echo Pulling $SOURCE_IMAGE  and retagging as the tag referenced in the docker file $TARGET_IMAGE
docker pull $SOURCE_IMAGE
docker tag $SOURCE_IMAGE $TARGET_IMAGE
docker build -t test . 

