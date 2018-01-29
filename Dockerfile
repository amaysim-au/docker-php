FROM php:7.1-apache

RUN apt-get update && apt-get install -y \
    mysql-client \
    libmcrypt4 \
    libmcrypt-dev \
    openssl \
    ca-certificates \
    zlib1g-dev \
    libxml2-dev \
    php7.1-bcmath

RUN docker-php-ext-install mcrypt pdo pdo_mysql zip mbstring soap tokenizer
