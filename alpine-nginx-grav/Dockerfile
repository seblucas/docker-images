FROM seblucas/alpine-nginx:1.4
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="Nginx/grav docker image"

RUN echo '@community http://nl.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories && \
    apk --no-cache add \
      php7-fpm@community php7@community php7-json@community php7-openssl@community php7-opcache@community php7-mbstring@community php7-zip@community  php7-curl@community php7-gd@community curl supervisor && \
    ln -sf /usr/bin/php7 /usr/bin/php && \
    ln -sf /usr/sbin/php-fpm7 /usr/bin/php-fpm && \
    rm -rf /tmp/*

RUN sed -i \
      -e "s/^user=.*/user=nginx/" \
      -e "s/^group=.*/group=nginx/" \
      -e "s/^;catch_workers_output.*/catch_workers_output = yes/" \
      /etc/php7/php-fpm.d/www.conf && \
    sed -i \
      -e "s/^;error_log.*/error_log=\/dev\/stdout/" \
      /etc/php7/php-fpm.conf

ADD default.conf /etc/nginx/conf.d/
ADD supervisord.conf /etc/supervisor/conf.d/
ADD phpinfo.php /var/www

EXPOSE 80

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
