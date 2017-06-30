FROM alpine:3.6
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="Nginx docker image"

RUN apk --no-cache add \
                            nginx ca-certificates && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log && \
    mkdir -p /var/www && chown -R nginx:nginx /var/www && \
    mkdir -p /run/nginx && chown -R nginx:nginx /run/nginx && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* && \
    mkdir -p /var/tmp/nginx && chown -R nginx:nginx /var/tmp/nginx 

ADD default.conf /etc/nginx/conf.d/
ADD index.html /var/www
ADD nginx.conf /etc/nginx
ADD mime.types /etc/nginx

EXPOSE 80

#USER nginx

CMD ["nginx", "-g", "daemon off;"]
