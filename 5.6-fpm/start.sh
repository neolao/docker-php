#!/bin/bash

# Create /ram directory if the enrivonment variable RAM_SIZE is set
if [ ! -z "$RAM_SIZE" ]
then
    RAM_SIZE=${RAM_SIZE:-"256"}

    if [ ! -d "/ram" ]; then
        mkdir /ram
    fi
    mount -t tmpfs -o size="${RAM_SIZE}m" tmpfs /ram
fi

# Start php-fpm
php-fpm --allow-to-run-as-root
