FROM php:8.1.14-fpm-alpine3.17
EXPOSE 5173

COPY php.ini /usr/local/etc/php/php.ini
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/

RUN apk --update --no-cache add \
  curl \
  git \
  bash \
  nodejs \
  npm  \
  yarn  \
  patch && \
  install-php-extensions \
    pdo_mysql \
    bcmath \
    zip \
    opcache \
    gd \
    intl \
    redis \
    decimal \
    xdebug && \
  rm -rf /var/cache/apk/*

WORKDIR /app

CMD "php-fpm"
