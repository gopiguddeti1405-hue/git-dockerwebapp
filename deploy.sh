#!/bin/bash

cd git-dockerwebapp

docker stop web || true
docker rm web || true

docker build -t webapp .
docker run -d -p 80:80 --name web webapp
