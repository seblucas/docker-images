FROM alpine:3.6
LABEL maintainer="Sebastien Lucas <sebastien@slucas.fr>"
LABEL Description="python3 image"

ARG TIMEZONE=Europe/Paris

RUN apk add --no-cache git python3 ca-certificates libffi-dev && \
    apk add --no-cache --virtual=build-dependencies tzdata build-base linux-headers python3-dev && \
    cp "/usr/share/zoneinfo/${TIMEZONE}" /etc/localtime && echo "${TIMEZONE}" > /etc/timezone && \
    pip3 install --upgrade --no-cache-dir pip && \
    pip3 install --no-cache-dir paho-mqtt requests cffi smbus-cffi && \
    apk del build-dependencies && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

