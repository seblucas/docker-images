#!/bin/sh
mount -t cifs "//192.168.0.105/video" /media/nas -o username=$1,password=$2,iocharset=utf8
