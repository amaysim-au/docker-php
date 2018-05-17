FROM php:7.1-apache

RUN apt-get update && apt-get install -y \
    mysql-client \
    libmcrypt4 \
    libmcrypt-dev \
    openssl \
    ca-certificates \
    zlib1g-dev \
    libxml2-dev \
    git

RUN pecl install xdebug

RUN touch /usr/local/etc/php/php.ini

RUN echo "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20160303/xdebug.so" > /usr/local/etc/php/php.ini

RUN docker-php-ext-install mcrypt pdo pdo_mysql zip mbstring soap tokenizer bcmath
