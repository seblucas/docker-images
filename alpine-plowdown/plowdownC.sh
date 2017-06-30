#!/bin/sh

docker run --rm -it -v /var/opt/downloads/dst/Divers/:/media seblucas/alpine-plowdown:latest "$@"
