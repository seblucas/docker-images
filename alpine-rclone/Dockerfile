FROM alpine:3.6
LABEL maintainer=Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="RClone docker image"

ARG RCLONE_VERSION=v1.36

RUN apk --no-cache --update add \
                            wget ca-certificates && \
    addgroup -g 1000 rclone && \
    adduser -h /config -D -G rclone -s /bin/sh -u 1000 rclone && \
    cd /tmp && \
    wget -q https://downloads.rclone.org/rclone-${RCLONE_VERSION}-linux-arm.zip && \
    unzip /tmp/rclone-${RCLONE_VERSION}-linux-arm.zip && \
    mv /tmp/rclone-*-linux-arm/rclone /usr/bin && \
    rm -r /tmp/rclone* && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

USER rclone

ENTRYPOINT ["/usr/bin/rclone"]

CMD ["--version"]
