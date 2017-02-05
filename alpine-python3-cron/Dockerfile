FROM seblucas/alpine-python3:1.1
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="python3 / cron image"

ADD runCron.sh /bin/runCron.sh
RUN apk add --no-cache libffi-dev && \
    apk add --no-cache --virtual=build-dependencies build-base linux-headers python3-dev && \
    pip install --no-cache-dir --trusted-host https://pypi.python.org cffi smbus-cffi && \
    apk del build-dependencies && \
    mkdir /data && \
    chmod +x /bin/runCron.sh && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

VOLUME ["/data"]

ENTRYPOINT ["runCron.sh"]
