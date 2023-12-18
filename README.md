# Tdd Starter Kit

## curl

```terminal
curl -L https://github.com/sensorario/tdd-starter-kit/archive/main.zip | tar xz ; mv tdd-starter-kit-main <project> ; cd <project> ; php init.php
```

## wget

```terminal
wget https://github.com/sensorario/tdd-starter-kit/archive/main.zip -O main.zip && unzip main.zip && mv tdd-starter-kit-main avocado && cd avocado && php init.php
```

## Init

Run a script that choose a free port number to configur docker-compose.yml file.

```terminal
php init.php
```

## Start

After the download run `make up`. After a while everything will be ready and all php dependencies installed.

## Test automation

Run the command `./bin/robo watch:code` to run tests everytime some php code inside src and tests folder change.

## Lumen

```terminal
rm -rf public
composer create-project --prefer-dist laravel/lumen && cp -r lumen/** . && rm -rf lumen
```

