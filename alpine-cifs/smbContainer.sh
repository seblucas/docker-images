#!/bin/sh

docker run -it --rm -v /var/opt/downloads/dst/:/data --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH seblucas/alpine-cifs:latest /bin/sh
