FROM alpine:3.4
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="RClone docker image"

ARG RCLONE_VERSION=current

RUN apk --no-cache --update add \
                            ca-certificates && \
    addgroup -g 1000 rclone && \
    adduser -h /config -D -G rclone -s /bin/ash -u 1000 rclone && \
    cd /tmp && \
    wget -q http://downloads.rclone.org/rclone-${RCLONE_VERSION}-linux-arm.zip && \
    unzip /tmp/rclone-${RCLONE_VERSION}-linux-arm.zip && \
    mv /tmp/rclone-*-linux-arm/rclone /usr/bin && \
    rm -r /tmp/rclone* && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

USER rclone

VOLUME ["/config"]

ENTRYPOINT ["/usr/bin/rclone"]

CMD ["--version"]
