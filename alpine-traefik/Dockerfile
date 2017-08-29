FROM alpine:3.6

ARG TRAEFIK_VERSION=v1.3.7

ADD https://github.com/containous/traefik/releases/download/${TRAEFIK_VERSION}/traefik_linux-arm /traefik
RUN apk upgrade --no-cache &&\
    apk add --no-cache ca-certificates &&\
    update-ca-certificates && \
    chmod +x /traefik
EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]
