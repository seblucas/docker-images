Sample run line

docker run -it --rm --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH seblucas/alpine-cifs:1.0 /bin/sh

docker run -it --rm --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH -v /var/opt/downloads/dst:/data  seblucas/alpine-cifs:1.0 /bin/sh
