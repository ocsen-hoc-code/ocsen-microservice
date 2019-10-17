#!/bin/bash

echo "=============Pull Eureka Server============="
if [ -d "./ocsen-eureka-server/ocsen" ]
then
    cd ./ocsen-eureka-server/ocsen
    git pull
    cd ../..
else
    git clone git@github.com:ocsen-hoc-code/ocsen-zuul-service.git
fi

echo "=============Pull Zuul Service============="
if [ -d "./ocsen-zuul-service/ocsen" ]
then
    cd ./ocsen-zuul-service/ocsen
    git pull
    cd ../..
else
    git clone git@github.com:ocsen-hoc-code/ocsen-eureka-server.git
fi

# echo "=============Pull User Service============="
# if [-d "./ocsen-user-service/ocsen"]; then
#     cd ./ocsen-user-service/ocsen
#     git pull
#     cd ../..
# else
#     git clone git@github.com:ocsen-hoc-code/ocsen-user-service.git
# fi

