# Nginx Docker image

This image is based on Alpine Linux image, which is only a 5MB image, and contains [Nginx](https://nginx.org/) and [PHP](http://php.net/) installed as a package.

You can check the real Nginx version [here for Alpine 3.6](https://pkgs.alpinelinux.org/packages?name=nginx&branch=v3.6&repo=&arch=x86_64&maintainer=) or [there for Alpine 3.7](https://pkgs.alpinelinux.org/packages?name=nginx&branch=v3.7&repo=&arch=x86_64&maintainer=).

You can check the real PHP version [here for Alpine 3.6](https://pkgs.alpinelinux.org/packages?name=php7&branch=v3.6&repo=&arch=x86_64&maintainer=) or [there for Alpine 3.7](https://pkgs.alpinelinux.org/packages?name=php7&branch=v3.7&repo=&arch=x86_64&maintainer=).

Most default configuration comes from [Nginx Server Configs](https://github.com/h5bp/server-configs-nginx).

Both services are running through S6 and all logs are redirected to stdout / stderr.

This image should be available (unless a problem happened on my side) for the following architectures :
 * amd64
 * armhf
 * arm64

I'm using a proper manifest so you can use the main tags directly (no need for amd64-X.X.X).

If you want to learn more about multi-architecture docker images, please read [my blog](https://blog.slucas.fr/series/multi-architecture-docker-image/)

## Usage Example

```bash
$ docker run --rm -p 80:80 seblucas/alpine-nginx-php
```

There is a default `phpinfo.php` page so you can check `http://<YOUR DOCKER HOST>/phpinfo.php` to confirm your container is working fine.

You can also mount as a volume :
 * `/etc/nginx/conf.d/default.conf` : to alter the default website configured.
 * `/var/www` : to add web / php content.

## Details

The following php plugins are installed :
 * php7-json@community
 * php7-openssl@community
 * php7-opcache@community
 * php7-mbstring@community
 * php7-zip@community
 * php7-curl@community
 * php7-gd@community

## TODO

Both php-fpm and Nginx's workers are running as user `nginx` and for now it's uid/guid is not configurable :

```bash
/ # id nginx
uid=100(nginx) gid=101(nginx) groups=101(nginx),82(www-data),101(nginx)
```

With latest debian Stretch, that user is mapped to `systemd-timesync` (not a good idea).