# Python 3.6 Docker image

This image is based on Alpine Linux image, which is only a 5MB image, and contains [Python 2.7](https://www.python.org/) and of course `pip`.

## Usage Example

```bash
$ docker run --rm seblucas/alpine-python2 python -c 'print("Hello Container World")'
```

## Target audience

I guess everyone, nothing except python / pip are installed.

The only thing done it to set the timezone / tzdata.