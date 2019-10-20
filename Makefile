pull-code:
	chmod +x ./pull.sh
	./pull.sh
	
default: pull-code
	chmod +x ./build.sh
	./build.sh

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
	docker system prune -f
	docker volume prune -f
