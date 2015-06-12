PHP in a Docker container
=========================

Available modules
-----------------

- iconv
- mbstring
- mcrypt
- pdo_mysql
- gd



tmpfs
-----

A tmpfs directory is available if you provide the environment variable `RAM_SIZE`.

Example :

```bash
docker run -it --rm --privileged --env RAM_SIZE=400 neolao/php:5.4-fpm
```
