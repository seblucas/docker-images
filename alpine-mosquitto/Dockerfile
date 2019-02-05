FROM alpine:3.9
LABEL maintainer="Sebastien Lucas <sebastien@slucas.fr>"
LABEL Description="MQTT docker image"

RUN apk --no-cache add \
                            mosquitto && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*


COPY mosquitto.conf /etc/mosquitto/mosquitto.conf
# Expose MQTT port
EXPOSE 1883 9001

ENTRYPOINT ["/usr/sbin/mosquitto"]
