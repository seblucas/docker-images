FROM seblucas/alpine-nginx:3.10.3
LABEL maintainer="Sebastien Lucas <sebastien@slucas.fr>"
LABEL Description="Nginx/php docker image"

RUN apk --no-cache add \
      php7-fpm php7 php7-json php7-openssl php7-opcache php7-mbstring php7-zip  php7-curl php7-gd curl s6 && \
    ln -sf /usr/bin/php7 /usr/bin/php && \
    ln -sf /usr/sbin/php-fpm7 /usr/bin/php-fpm && \
    rm -rf /tmp/*

RUN sed -i \
      -e "s/^user =.*/user=nginx/" \
      -e "s/^group =.*/group=nginx/" \
      -e "s/^;listen\.owner.*/listen.owner=nginx/" \
      -e "s/^;listen\.group.*/listen.group=nginx/" \
      -e "s/^;catch_workers_output.*/catch_workers_output = yes/" \
      -e "s/^listen = .*/listen=\/tmp\/php-fpm.sock/" \
      -e "s/^pm.max_children.*/pm.max_children = 10/" \
      -e "s/^;pm.max_requests.*/pm.max_requests=2000/" \
      /etc/php7/php-fpm.d/www.conf && \
    sed -i \
      -e "s/^;error_log.*/error_log=\/dev\/stderr/" \
      -e "s/^;log_level.*/log_level=error/" \
      /etc/php7/php-fpm.conf && \
    sed -i \
      -e "s/^expose_php.*/expose_php = Off/" \
      -e "s/^;error_log.*/error_log=\/dev\/stderr/" \
      /etc/php7/php.ini

COPY data /

EXPOSE 80

CMD ["/bin/s6-svscan", "/etc/services.d"]
