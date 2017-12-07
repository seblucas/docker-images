FROM seblucas/alpine-python2:2.7.13
LABEL maintainer="Sebastien Lucas <sebastien@slucas.fr>"
LABEL Description="Ansible"

ARG ANSIBLE_VERSION=2.3.1.0

RUN mkdir -p /etc/ansible && \
    apk add --no-cache openssl sshpass openssh-client && \
    apk add --no-cache --virtual=build-dependencies build-base python2-dev libffi-dev openssl-dev && \
    pip install --no-cache-dir --upgrade pip cffi && \
    pip install --no-cache-dir ansible=="${ANSIBLE_VERSION}" && \
    apk del build-dependencies && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

WORKDIR /etc/ansible

ENTRYPOINT [ "ansible-playbook" ]

CMD [ "--version" ]
