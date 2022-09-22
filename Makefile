up:
	docker-compose up -d

bash:
	docker-compose exec server bash

test:
	docker-compose exec server bash -c "./bin/phpunit --testdox --color"

coverage:
	docker-compose exec server bash -c "php -dxdebug.mode=coverage ./bin/phpunit --testdox --color --coverage-html coverage"
.PHONY: coverage

stop:
	docker-compose stop

rm:
	docker-compose rm server --force

build:
	docker-compose up -d --build

rebuild: stop rm build
