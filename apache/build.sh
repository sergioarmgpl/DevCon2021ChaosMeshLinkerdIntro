#!/bin/bash
docker login --username $1
docker build -t apache .
docker tag apache $1/apache
docker push $1/apache
