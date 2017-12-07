FROM alpine:3.6
LABEL maintainer=Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="mqttwarn image"

RUN apk --no-cache --update add \
        py2-pip git && \
    pip install paho-mqtt && \
    addgroup -g 1000 mqttwarn && adduser -h /mqttwarn -D -G mqttwarn -s /bin/sh -u 1000 mqttwarn && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* && \
    git clone --depth=1 https://github.com/jpmens/mqttwarn.git && \
    rm -Rf /mqttwarn/.git && \
    chmod +x /mqttwarn/mqttwarn.py && \
    ln -sf /dev/stdout /mqttwarn/mqttwarn.log

COPY mqttwarn.ini /mqttwarn/mqttwarn.ini

RUN chown -R mqttwarn:mqttwarn /mqttwarn

USER mqttwarn
WORKDIR /mqttwarn/

ENTRYPOINT ["/mqttwarn/mqttwarn.py", "-l"]
