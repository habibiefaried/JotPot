FROM php:7.1-apache
RUN apt-get update -y && apt-get install -y libpng-dev \
        libfreetype6-dev \
        libmcrypt-dev \
        libjpeg-dev 
RUN docker-php-ext-configure gd \
        --enable-gd-native-ttf \
        --with-freetype-dir=/usr/include/freetype2 \
        --with-png-dir=/usr/include \
        --with-jpeg-dir=/usr/include 
RUN docker-php-ext-install mysqli pdo pdo_mysql gd
COPY php.ini /usr/local/etc/php/php.ini
COPY . /var/www/html/
