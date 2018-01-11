# Python 3.6 Docker image with cron

This image is based on Alpine Linux image, which is only a 5MB image, and contains [Python 3.6](https://www.python.org/) and of course `pip3`. It's tailored to be used a cron image.

This image should be available (unless a problem happened on my side) for the following architectures :
 * amd64
 * armhf
 * arm64

I'm using a proper manifest so you can use the main tags directly (no need for amd64-X.X.X)

## Usage Example

```bash
$ docker run -it --rm \
    -v /root/src/docker-images/alpine-python3-cron/data:/data \
    --device /dev/i2c-1 \
    -e 'CRON_STRINGS=* * * * * python3 /scripts/i2c2mqtt/i2c2mqtt.py --help' \
    -e 'CRON_GIT_CLONE=" --branch 1.0.0 --depth 1 https://github.com/seblucas/i2c2mqtt.git"' \
    -e 'CRON_LOG_LEVEL=8' \
    seblucas/alpine-python3-cron:test
```

### Volume

`/data` can be mounted to host both the cron files and the scripts to use with cron. The cron files have to be named with a user name so in my case `root` or `joe`. To avoid most problems please put your scripts in a subdirectory inside `/data`

### Environment variables

 * CRON_STRINGS : to specify inline cron lines, each line has to be separated by `\n`. Note the content of this variable is appended to the cron of `root`.
 * CRON_GIT_CLONE : to specify git repositories to clone (separated by `#`). The repositories are stored in `/scripts`. You have to provide almost the full command line (except for `git clone`).
 * CRON_LOG_LEVEL : set the log level, the default value is 7.

**BEWARE** : An ugly `eval` was used to clone the repositories, please check twice to avoid any problem.

## TODO

Properly test everything with non-root user.
