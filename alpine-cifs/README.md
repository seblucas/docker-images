# CIFS client Docker image

This image is based on Alpine Linux image, which is only a 5MB image, and only contains the package `cifs-utils`.

This image should be available (unless a problem happened on my side) for the following architectures :
 * amd64
 * armhf
 * arm64

I'm using a proper manifest so you can use the main tags directly (no need for amd64-X.X.X)

## Usage Example

```bash
$ docker run -it --rm --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH seblucas/alpine-cifs /bin/sh
$ docker run -it --rm --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH -v /var/opt/downloads/dst:/data seblucas/alpine-cifs /bin/sh
```

The capababilities added are mandatory.

You can also check the two mount shell helpers (in the github repository) to understand how to mount external samba shares.

