<?php

if (extension_loaded('redis')) {
    echo 'Redis OK';
} else {
    echo 'Redis module not found';
}
