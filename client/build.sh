#!/bin/bash
docker login --username $1
docker build -t client .
docker tag client $1/client
docker push $1/client
