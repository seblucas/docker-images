FROM alpine:3.4
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="python3 image"

ARG TIMEZONE=Europe/Paris

RUN apk add --no-cache python3 ca-certificates && \
    apk add --no-cache --virtual=build-dependencies tzdata wget && \
    cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && echo "${TIMEZONE}" > /etc/timezone && \ 
    wget "https://bootstrap.pypa.io/get-pip.py" --no-check-certificate -O /dev/stdout | python3 && \
    pip install --no-cache-dir --trusted-host https://pypi.python.org paho-mqtt requests && \
    apk del build-dependencies && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

