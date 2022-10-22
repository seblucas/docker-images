# Python 3.X Docker image

This image is based on Alpine Linux image, which is only a 5MB image, and contains [Python 3.X](https://www.python.org/) and of course `pip3`.

This image should be available (unless a problem happened on my side) for the following architectures :
 * amd64
 * armhf
 * arm64

I'm using a proper manifest so you can use the main tags directly (no need for amd64-X.X.X).

If you want to learn more about multi-architecture docker images, please read [my blog](https://blog.slucas.fr/series/multi-architecture-docker-image/)

## Usage Example

```bash
$ docker run --rm seblucas/alpine-python3 python3 -c 'print("Hello Container World")'
```

## Target audience

This package contain some pip packages targeted at home automation / IOT usage :

 * paho-mqtt to interact with a MQTT broker.
 * request to interact with HTTP API.
 * smbus to interact with I2C bus (on raspberry pi / orange pi / ...).

if you wish to access your I2C bus don't forget to add the device to your commande line :

```bash
$ docker run --rm --device /dev/i2c-1 seblucas/alpine-python3 python3 -c 'print("Hello Container World")'
```
