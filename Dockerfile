FROM php:8.0-apache 
ARG PHP_VERSION="8.1"
ENV PHP_VERSION="${PHP_VERSION}"
LABEL build_version="PHP: ${PHP_VERSION}"
ARG SERVERNAME="localhost"
ARG DOMAIN="example.com"
ARG WWWDOMAIN="www.example.com"
ARG TZ="Europe/Rome"

ENV SERVERNAME="${SERVERNAME}"
ENV DOMAIN="${DOMAIN}"
ENV WWWDOMAIN="${WWWDOMAIN}"

RUN apt-get update && apt-get install -y
RUN apt-get install -y curl
RUN apt-get install -y build-essential libssl-dev zlib1g-dev libpng-dev libjpeg-dev libfreetype6-dev
RUN apt-get install -y libicu-dev
COPY ./.docker/php/sites-available/ci4.conf /etc/apache2/sites-enabled/ci4.conf
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN apt-get update
RUN docker-php-ext-install intl
RUN docker-php-ext-configure intl
RUN service apache2 restart

WORKDIR /var/www/html/codeigniter4
USER root
