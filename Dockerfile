FROM php:7.1-apache

# Dependencies
RUN apt-get update; \
  apt-get install -y \
    curl \
    nano \
    libjpeg-dev \
    libpng12-dev \
    mariadb-client;

 # PHP Modules
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; \
  docker-php-ext-install gd mysqli;

# Apache Modules
RUN a2enmod rewrite

# Wordpress CLI
RUN curl -fsSL -o /usr/local/bin/wp "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"; \
  chmod +x /usr/local/bin/wp;

# Wordpress
RUN wp core download \
  --path=/var/www/html \
  --locale=de_DE \
  --version=4.8.1 \
  --allow-root;