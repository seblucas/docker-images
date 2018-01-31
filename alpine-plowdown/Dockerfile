FROM alpine:3.7
LABEL maintainer="Sebastien Lucas <sebastien@slucas.fr>"
LABEL Description="Plowdown docker image"

RUN apk --no-cache --update add \
                           bash vim git tar curl wget make unrar sed && \
    addgroup -g 1000 plowdown && \
    adduser -h /config -D -G plowdown -u 1000 plowdown && \
    cd /tmp && \
    git clone https://github.com/mcrapet/plowshare && \
    cd plowshare && make install && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

USER plowdown

RUN plowmod --install

WORKDIR /media

ENTRYPOINT ["/usr/bin/plowdown"]

CMD ["--version"]
