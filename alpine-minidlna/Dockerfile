FROM alpine:3.6
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>

# install minidlna
RUN echo '@community http://nl.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories && \ 
    apk --no-cache add minidlna@community && \
    mkdir -p /opt/Music && mkdir -p /opt/Pictures && mkdir -p /opt/Videos

# Add config file
ADD minidlna.conf /etc/minidlna.conf

EXPOSE 1900/udp
EXPOSE 8200

ENTRYPOINT ["/usr/sbin/minidlnad", "-S"]
