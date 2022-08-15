up:
	docker-compose up -d

bash:
	docker-compose exec server bash

stop:
	docker-compose stop

rm:
	docker-compose rm server

build:
	docker-compose up -d --build

rebuild: stop rm build
