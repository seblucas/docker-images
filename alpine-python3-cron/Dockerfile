FROM seblucas/alpine-python3:3.6
LABEL maintainer="Sebastien Lucas <sebastien@slucas.fr>"
LABEL Description="python3 / cron image"

COPY runCron.sh /bin/runCron.sh
RUN mkdir /data && \
    chmod +x /bin/runCron.sh && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

ENTRYPOINT ["runCron.sh"]
