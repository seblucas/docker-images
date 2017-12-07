FROM seblucas/alpine-python3:3.6.1
LABEL maintainer=Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="python3 / cron image"

COPY runCron.sh /bin/runCron.sh
RUN apk add --no-cache libffi-dev && \
    apk add --no-cache --virtual=build-dependencies build-base linux-headers python3-dev && \
    pip3 install --no-cache-dir --trusted-host https://pypi.python.org cffi smbus-cffi && \
    apk del build-dependencies && \
    mkdir /data && \
    chmod +x /bin/runCron.sh && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

VOLUME ["/data"]

ENTRYPOINT ["runCron.sh"]
