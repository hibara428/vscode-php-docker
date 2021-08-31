FROM php:7.4-cli
LABEL maintainer="hibara428 <hibara428@gmail.com>"

COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN apt-get update && \
  apt-get install -y git unzip libzip-dev zlib1g-dev && \
  docker-php-ext-install zip && \
  apt-get clean && rm -rf /var/lib/apt/lists/*
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

COPY ./ /app
WORKDIR /app
CMD ["php", "-S", "0.0.0.0:8080", "-t", "public"]