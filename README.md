PHP in a Docker container
=========================

Available modules
-----------------

- apc
- bcmath
- bz2
- calendar
- ctype
- curl
- dba (cdb cdb_make inifile flatfile)
- dom
- ftp
- gd
- hash (md2 md4 md5 sha1 sha224 sha256 sha384 sha512 ripemd128 ripemd160 ripemd256 ripemd320 whirlpool tiger128,3 tiger160,3 tiger192,3 tiger128,4 tiger160,4 t
      iger192,4 snefru snefru256 gost adler32 crc32 crc32b fnv132 fnv164 joaat haval128,3 haval160,3 haval192,3 haval224,3 haval256,3 haval128,4 haval160,4 haval192,4 haval224,
      4 haval256,4 haval128,5 haval160,5 haval192,5 haval224,5 haval256,5)
- iconv
- intl
- json
- mbstring
- mcrypt
- memcached
- mongo
- mysqlnd
- pdo_mysql
- pdo_pgsql
- pdo_sqlite
- phar
- posix
- readline
- recode
- redis
- reflection
- session
- simplexml
- spl
- tokenizer
- xmlwriter
- xmlreader
- xmlrpc
- xsl

To check the configuration :

```bash
docker run -it --rm neolao/php:5.4-fpm php -i
```

tmpfs
-----

A tmpfs directory is available if you provide the environment variable `RAM_SIZE`.

Example :

```bash
docker run -it --rm --privileged --env RAM_SIZE=400 neolao/php:5.4-fpm
```
