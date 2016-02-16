#!/bin/bash

currentDirectory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run -it --rm \
    -v $currentDirectory:/workspace \
    neolao/php-7.0 \
    php -f /workspace/check.php
