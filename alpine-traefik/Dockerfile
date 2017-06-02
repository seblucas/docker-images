FROM alpine:3.4

ARG TRAEFIK_VERSION=v1.2.0

ADD https://github.com/containous/traefik/releases/download/${TRAEFIK_VERSION}/traefik_linux-arm /traefik
RUN apk upgrade --no-cache &&\
    apk add --no-cache ca-certificates &&\
    chmod +x /traefik
EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]
