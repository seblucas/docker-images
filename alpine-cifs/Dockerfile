FROM alpine:3.6
LABEL maintainer="Sebastien Lucas <sebastien@slucas.fr>"
LABEL Description="CIFS docker image"

COPY mountFreebox.sh /usr/bin/mountFreebox.sh
COPY mountNas.sh /usr/bin/mountNas.sh

RUN apk --no-cache --update add \
                            cifs-utils  && \
    mkdir /media/freebox && \
    mkdir /media/nas && \
    mkdir /data && \
    chmod +x /usr/bin/mountFreebox.sh && \
    chmod +x /usr/bin/mountNas.sh && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

