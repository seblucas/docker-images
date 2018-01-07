# Mosquitto Docker image

This image is based on Alpine Linux image, which is only a 5MB image, and only contains the package `mosquitto`.

This image should be available (unless a problem happened on my side) for the following architectures :
 * amd64
 * armhf
 * arm64

I'm using a proper manifest so you can use the main tags directly (no need for amd64-X.X.X)

## Usage Example

```bash
$ docker run --rm -p 1883:1883 \
                  seblucas/alpine-mosquitto
```

You can also override the default configuration by using a volume.

