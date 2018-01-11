FROM seblucas/alpine-python3:3.6
LABEL maintainer="Sebastien Lucas <sebastien@slucas.fr>"
LABEL Description="python3 / cron image"

COPY runCron.sh /bin/runCron.sh
COPY cloneScripts.sh /bin/cloneScripts.sh
RUN mkdir /data && \
    mkdir /scripts && \
    chmod +x /bin/runCron.sh && \
    chmod +x /bin/cloneScripts.sh && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

ENTRYPOINT ["runCron.sh"]
