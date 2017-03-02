FROM seblucas/alpine-python2
MAINTAINER Sebastien Lucas <sebastien@slucas.fr>
LABEL Description="Ansible"

RUN mkdir -p /etc/ansible && \
    apk add --no-cache openssl sshpass openssh-client && \
    apk add --no-cache --virtual=build-dependencies build-base python-dev libffi-dev openssl-dev && \
    pip install --no-cache-dir --trusted-host https://pypi.python.org ansible && \
    apk del build-dependencies && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

VOLUME ["/etc/ansible"]

