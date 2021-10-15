FROM php:7.1-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql
COPY php.ini /usr/local/etc/php/php.ini
COPY . /var/www/html/