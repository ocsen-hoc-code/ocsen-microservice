# ocsen-microservice
## Run Project OcSen Microservice
- Require:
    + Install docker on your local (Link: https://docs.docker.com/install/)
    + Install tool support Makefile (CMake)
    + Install tool support file bash (Winbash on Window)

- Commands:
    + Run cmd `make pull` to pull all project.
    + Run cmd `make build` to build image docker and run all project.
    + Run cmd `make down` to stop all service in project.
    + Run cmd `make up` to start all service in project.
    + Run cmd `make clean` to clean service on docker.

## Run graylog
- Enable `mongodb`, `elasticsearch`, `graylog` in docker-compose.yml
- If you would like run on IDE please change `<graylogHost>graylog</graylogHost>` to  `<graylogHost>127.0.0.1</graylogHost>` in logback.xml file.

Warning: If you would like use graylog to write log for system, your cpu have least INTEL CORE I3 and Ram 8GB.
         If you run app with docker it will take few second to start apllication.

## Run on IDE
- Disable `ocsen-user-service` in docker-compose.yml
- Change value `spring.datasource.url`, `spring.redis.host` in appliction.properties file.

## Service Urls:

- Graylog:             http://127.0.0.1:9000/(Username-Password: admin - admin)
- OcSen Eureka Server: http://127.0.0.1:8761/
- OcSen Zuul Service:  http://127.0.0.1:8080/
                       http://127.0.0.1:8080/swagger-ui.html
- OcSen User Service:  http://127.0.0.1:8081/
                       http://127.0.0.1:8081/swagger-ui.html

## Github:
+ https://github.com/ocsen-hoc-code/ocsen-eureka-server
+ https://github.com/ocsen-hoc-code/ocsen-zuul-service
+ https://github.com/ocsen-hoc-code/ocsen-user-service

## Linked: https://www.linkedin.com/in/dolambinhminh/
