FROM alpine:3.6
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="mqttwarn image"

RUN apk --no-cache --update add \
        py2-pip git && \
    pip install paho-mqtt && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

RUN git clone --depth=1 https://github.com/jpmens/mqttwarn.git && \
    rm -Rf /mqttwarn/.git && \
    chmod +x /mqttwarn/mqttwarn.py && \
    ln -sf /dev/stdout /mqttwarn/mqttwarn.log
ADD mqttwarn.ini /mqttwarn/mqttwarn.ini

WORKDIR /mqttwarn/

ENTRYPOINT ["/mqttwarn/mqttwarn.py", "-l"]
