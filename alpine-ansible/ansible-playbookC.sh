#!/bin/sh

docker run -it --rm -v /var/opt/docker/ansible:/etc/ansible seblucas/alpine-ansible:latest "$@"
# docker.yml --check
