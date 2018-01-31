# Minidlna Docker image

This image is based on Alpine Linux image, which is only a 5MB image, and only contains the package `minidlna`.

This image should be available (unless a problem happened on my side) for the following architectures :
 * amd64
 * armhf
 * arm64

I'm using a proper manifest so you can use the main tags directly (no need for amd64-X.X.X).

If you want to learn more about multi-architecture docker images, please read [my blog](https://blog.slucas.fr/series/multi-architecture-docker-image/)

## Usage Example

```bash
$ /usr/bin/docker run --rm -p 1883:1883 \
                           -p 1900:1900/udp \
                           --net=host \
                           -v /var/opt/downloads/dst:/opt/Videos \
                           --name=minidlna \
                           seblucas/alpine-minidlna
```

Unfortunately running with `HOST` network seems mandatory, as stated in the default conf you can use the following directories :
 * media_dir=A,/opt/Music
 * media_dir=V,/opt/Videos
 * media_dir=P,/opt/Pictures

You can also completely override the default config with a volume.


