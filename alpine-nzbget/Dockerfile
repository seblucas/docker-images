FROM armhf/alpine:3.4
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="Nzbget"

RUN apk add --no-cache curl p7zip unrar wget && \
    addgroup -g 1000 nzbget && adduser -H -D -G nzbget -s /bin/false -u 1000 nzbget && \
    mkdir /app && mkdir /config && mkdir /downloads && \
    curl -o /tmp/json -L http://nzbget.net/info/nzbget-version-linux.json && \
    NZBGET_VERSION=$(grep "stable-download" /tmp/json  | cut -d '"' -f 4) && \
    curl -o /tmp/nzbget.run -L "${NZBGET_VERSION}" && \
    sh /tmp/nzbget.run --destdir /app && \
    cp -v /app/nzbget.conf /config/nzbget.conf && \
    sed -i -e "s#\(MainDir=\).*#\1/downloads#g" /config/nzbget.conf && \
    sed -i -e "s#\(WriteLog=\).*#\1none#g" /config/nzbget.conf && \
    sed -i -e "s#\(ErrorTarget=\).*#\1screen#g" /config/nzbget.conf && \
    sed -i -e "s#\(WarningTarget=\).*#\1screen#g" /config/nzbget.conf && \
    sed -i -e "s#\(InfoTarget=\).*#\1screen#g" /config/nzbget.conf && \
    sed -i -e "s#\(DetailTarget=\).*#\1none#g" /config/nzbget.conf && \
    sed -i -e "s#\(DebugTarget=\).*#\1none#g" /config/nzbget.conf && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

# volume mappings
VOLUME /config /downloads

# exposes nzbget's default port
EXPOSE 6789

# not root anymore going forward
USER nzbget

ENTRYPOINT ["/app/nzbget", "-s", "-o", "OutputMode=log", "-c", "/config/nzbget.conf"]
