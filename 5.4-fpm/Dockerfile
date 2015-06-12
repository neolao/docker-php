FROM php:5.4-fpm

RUN docker-php-ext-install pdo_mysql && docker-php-ext-configure pdo_mysql
RUN docker-php-ext-install mbstring && docker-php-ext-configure mbstring


RUN start.sh .
RUN chmod +x start.sh

CMD ["start.sh"]
