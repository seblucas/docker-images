# Python 3.6 Docker image

This image is based on Alpine Linux image, which is only a 5MB image, and contains [Python 3.6](https://www.python.org/) and of course `pip3`.

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
