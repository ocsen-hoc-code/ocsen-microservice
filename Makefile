pull-code:
	git clone git@github.com:ocsen-hoc-code/ocsen-zuul-service.git
	git clone git@github.com:ocsen-hoc-code/ocsen-eureka-server.git

default: 
	chmod +x ./build.sh
	./build.sh
	# @echo "=============Building Eureka Server============="
	# docker build -f ./ocsen-eureka-server/ocsen/Dockerfile -t ocsen-eureka-server .
	# @echo "=============Building Zuul Service============="
	# docker build -f ./ocsen-zuul-service/ocsen/Dockerfile -t ocsen-zuul-service .	

build: default
	@echo "=============Build And Starting Service Locally============="
	docker-compose up -d

up:
	@echo "=============Starting Service Locally============="
	docker-compose up -d

logs:
	docker-compose logs -f

down:
	docker-compose down

test:
	./mvnw test -B

clean: down
	@echo "=============Cleaning Up============="
	rm -f ocsen-eureka-server
	rm -f ocsen-zuul-service
	docker system prune -f
	docker volume prune -f
