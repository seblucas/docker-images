FROM alpine:3.12.12
LABEL maintainer="Sebastien Lucas <sebastien@slucas.fr>"
LABEL Description="python2 image"

ARG TIMEZONE=Europe/Paris

RUN apk add --no-cache --update python2 py2-pip ca-certificates && \
    apk add --no-cache --virtual=build-dependencies tzdata && \
    cp "/usr/share/zoneinfo/${TIMEZONE}" /etc/localtime && echo "${TIMEZONE}" > /etc/timezone && \ 
    apk del build-dependencies && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

