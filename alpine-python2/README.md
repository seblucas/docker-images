# Python 2.7 Docker image

This image is based on Alpine Linux image, which is only a 5MB image, and contains [Python 2.7](https://www.python.org/) and of course `pip`.

This image should be available (unless a problem happened on my side) for the following architectures :
 * amd64
 * armhf
 * arm64

I'm using a proper manifest so you can use the main tags directly (no need for amd64-X.X.X).

If you want to learn more about multi-architecture docker images, please read [my blog](https://blog.slucas.fr/series/multi-architecture-docker-image/)

## Usage Example

```bash
$ docker run --rm seblucas/alpine-python2 python -c 'print("Hello Container World")'
```

## Target audience

I guess everyone, nothing except python / pip are installed.

The only thing done it to set the timezone / tzdata.
