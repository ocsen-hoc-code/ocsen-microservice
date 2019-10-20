#!/bin/bash

echo "=============Building Eureka Server============="
cd ./ocsen-eureka-server/ocsen
./mvnw clean install
docker build -f ./Dockerfile -t ocsen-eureka-server .
cd ../..
echo "=============Building Zuul Service============="
cd ./ocsen-zuul-service/ocsen
./mvnw clean install
docker build -f ./Dockerfile -t ocsen-zuul-service .
cd ../..
echo "=============Building User Service============="
cd ./ocsen-user-service/ocsen
./mvnw clean install
docker build -f ./Dockerfile -t ocsen-user-service .
cd ../..
