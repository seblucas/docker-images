FROM alpine:3.14.10
LABEL maintainer="Sebastien Lucas <sebastien@slucas.fr>"

# install minidlna
RUN apk --no-cache add minidlna && \ 
    mkdir -p /opt/Music && mkdir -p /opt/Pictures && mkdir -p /opt/Videos

# Add config file
COPY minidlna.conf /etc/minidlna.conf

EXPOSE 1900/udp
EXPOSE 8200

ENTRYPOINT ["/usr/sbin/minidlnad", "-S"]
