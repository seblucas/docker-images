FROM alpine:3.6
LABEL maintainer=Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="Nzbget"

RUN apk add --no-cache --update curl p7zip unrar wget && \
    addgroup -g 1000 nzbget && adduser -H -D -G nzbget -s /bin/false -u 1000 nzbget && \
    mkdir /app && mkdir /config && mkdir /downloads && \
    curl -o /tmp/json -L http://nzbget.net/info/nzbget-version-linux.json && \
    NZBGET_VERSION=$(grep "stable-download" /tmp/json  | cut -d '"' -f 4) && \
    curl -o /tmp/nzbget.run -L "${NZBGET_VERSION}" && \
    sh /tmp/nzbget.run --destdir /app && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

# exposes nzbget's default port
EXPOSE 6789

# not root anymore going forward
USER nzbget

ENTRYPOINT ["/app/nzbget", "-s", "-o", "OutputMode=log", "-c", "/config/nzbget.conf"]
