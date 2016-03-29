FROM alpine:3.3
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="python3 / cron image"

ADD runCron.sh /bin/runCron.sh
RUN apk add --no-cache python3 && \
    apk add --no-cache --virtual=build-dependencies wget ca-certificates && \
    wget "https://bootstrap.pypa.io/get-pip.py" --no-check-certificate -O /dev/stdout | python3 && \
    apk del build-dependencies && \
    pip install paho-mqtt requests && \
    mkdir /data && \
    chmod +x /bin/runCron.sh && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

VOLUME ["/data"]

ENTRYPOINT ["runCron.sh"]
