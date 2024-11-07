php := server
docker := docker compose
compose := $(docker) --file compose.yml
docker_exec := $(compose) exec
args = $(filter-out $@,$(MAKECMDGOALS))

test:
	$(docker_exec) $(php) bash -c "./bin/phpunit --color"

testdox:
	$(docker_exec) $(php) bash -c "./bin/phpunit --testdox --color"

up:
	$(docker) up -d
	make install

bash:
	$(docker_exec) $(php) bash

install:
	$(docker_exec) $(php) bash -c "composer install"

coverage:
	$(docker_exec) $(php) bash -c "php -dxdebug.mode=coverage ./bin/phpunit --testdox --color --coverage-html coverage"
.PHONY: coverage

stop:
	$(docker) stop

rm:
	docker rm $(php) --force

rmi:
	docker rmi $$(docker images -q) 

build:
	$(docker) up -d --build

rebuild: stop rm rmi build install

composer:
	$(docker_exec) $(php) composer $(args)
