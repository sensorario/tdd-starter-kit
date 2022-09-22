FROM php:8.0-apache
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./ /var/www/html
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y git zip
