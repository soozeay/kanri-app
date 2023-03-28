SHELL=/bin/bash

build:
	docker-compose build

up:
	USER_NAME=$(shell id -nu) USER_ID=$(shell id -u) GROUP_NAME=$(shell id -ng) GROUP_ID=$(shell id -g) docker-compose up -d

start:
	docker-compose start

stop:
	docker-compose stop

down:
	docker-compose down -v

ps:
	docker ps

shell:
	docker exec -it kanri-app /bin/bash

restart:
	docker-compose restart

mysql:
	docker exec -it kanri-mysql

fresh:
	docker exec -it kanri-app php artisan migrate:fresh --seed
