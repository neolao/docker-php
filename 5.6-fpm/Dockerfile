FROM php:5.6-fpm
MAINTAINER neolao <contact@neolao.com>

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        unzip \
        php5-dev \
    && docker-php-ext-install mcrypt pdo_mysql mbstring \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd


# Install APC
RUN pecl install apc
RUN echo "extension=apc.so" > /usr/local/etc/php/conf.d/apc.ini


# Install phpredis 2.2.7
WORKDIR /root
COPY phpredis-2.2.7.zip phpredis-2.2.7.zip
RUN unzip phpredis-2.2.7.zip
WORKDIR phpredis-2.2.7
RUN phpize
RUN ./configure
RUN make && make install
RUN cp /root/phpredis-2.2.7/modules/redis.so /usr/lib/php5/20131226/
RUN mkdir /etc/php5/conf.d
RUN echo "extension=redis.so" > /etc/php5/conf.d/redis.ini
RUN echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini

# Include the start script
COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

CMD ["start.sh"]
