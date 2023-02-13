# Tdd Starter Kit

```
curl -L https://github.com/sensorario/tdd-starter-kit/archive/main.zip | tar xz ; mv tdd-starter-kit-main <project>
```

## Start

After the download run `make up`. After a while everything will be ready and all php dependencies installed.

## Test automation

Run the command `./bin/robo watch:code` to run tests everytime some php code inside src and tests folder change.

## Lumen

```
curl -L https://github.com/sensorario/tdd-starter-kit/archive/main.zip | tar xz ; mv tdd-starter-kit-main <project>
rm -rf public
composer create-project --prefer-dist laravel/lumen && cp -r lumen/** . && rm -rf lumen
```

