FROM alpine:3.3
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="MQTT docker image"

RUN apk --no-cache --update add \
                            mosquitto && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*


ADD mosquitto.conf /etc/mosquitto/mosquitto.conf
# Expose MQTT port
EXPOSE 1883 9001

ENTRYPOINT ["/usr/sbin/mosquitto"]
