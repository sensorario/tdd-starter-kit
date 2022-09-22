up:
	docker-compose up -d

bash:
	docker-compose exec server bash

test:
	docker-compose exec server bash -c "./bin/phpunit --testdox --color"

stop:
	docker-compose stop

rm:
	docker-compose rm server --force

build:
	docker-compose up -d --build

rebuild: stop rm build
