FROM php:5.5-fpm
MAINTAINER neolao <contact@neolao.com>


RUN apt-get update


# Install bcmath
RUN docker-php-ext-install bcmath

# Install bz2
RUN apt-get install -y libbz2-dev
RUN docker-php-ext-install bz2

# Install calendar
RUN docker-php-ext-install calendar

# Install dba
RUN docker-php-ext-install dba

# Install GD
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

# Install mbstring
RUN docker-php-ext-install mbstring

# Install mcrypt
RUN apt-get install -y libmcrypt-dev
RUN docker-php-ext-install mcrypt

# Install PDO
# RUN apt-get install -y freetds-dev php5-sybase
# RUN docker-php-ext-install pdo 
RUN docker-php-ext-install pdo_mysql
# RUN docker-php-ext-install pdo_oci
# RUN docker-php-ext-install pdo_odbc
RUN apt-get install -y libpq-dev
RUN docker-php-ext-install pdo_pgsql
# RUN apt-get install -y libsqlite3-dev
# RUN docker-php-ext-install pdo_sqlite

# Install phpredis 2.2.7
RUN apt-get install -y unzip php5-dev
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

# Install XSL
RUN apt-get install -y libxslt-dev
RUN docker-php-ext-install xsl

# Install xmlrpc
RUN docker-php-ext-install xmlrpc


# Install memcached
COPY memcached-2.2.0.tgz memcached-2.2.0.tgz
RUN apt-get install -y libmemcached-dev zlib1g-dev libncurses5-dev
RUN tar -xf memcached-2.2.0.tgz -C /usr/src/php/ext/
RUN rm memcached-2.2.0.tgz
RUN docker-php-ext-install memcached-2.2.0


# Install mongo
RUN pecl install mongo
RUN echo "extension=mongo.so" > /usr/local/etc/php/conf.d/mongo.ini

# Install ftp
RUN docker-php-ext-install ftp

# Install intl
RUN apt-get install -y libicu-dev
RUN pecl install intl
RUN docker-php-ext-install intl


COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

CMD ["start.sh"]
