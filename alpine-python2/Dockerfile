FROM alpine:3.14.10
LABEL maintainer="Sebastien Lucas <sebastien@slucas.fr>"
LABEL Description="python2 image"

ARG TIMEZONE=Europe/Paris

RUN apk add --no-cache --update python2 ca-certificates && \
    python -m ensurepip --upgrade && \
    apk add --no-cache --virtual=build-dependencies tzdata && \
    cp "/usr/share/zoneinfo/${TIMEZONE}" /etc/localtime && echo "${TIMEZONE}" > /etc/timezone && \ 
    apk del build-dependencies && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

