FROM armhf/alpine:3.4
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="python3 / cron image"

ARG TIMEZONE=Europe/Paris

ADD runCron.sh /bin/runCron.sh
RUN apk add --no-cache python3 libffi-dev && \
    apk add --no-cache --virtual=build-dependencies tzdata wget ca-certificates build-base linux-headers python3-dev && \
    cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && echo "${TIMEZONE}" > /etc/timezone && \ 
    wget "https://bootstrap.pypa.io/get-pip.py" --no-check-certificate -O /dev/stdout | python3 && \
    pip install --trusted-host https://pypi.python.org paho-mqtt requests cffi smbus-cffi && \
    apk del build-dependencies && \
    mkdir /data && \
    chmod +x /bin/runCron.sh && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

VOLUME ["/data"]

ENTRYPOINT ["runCron.sh"]
