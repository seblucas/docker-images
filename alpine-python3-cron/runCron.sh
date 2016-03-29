#!/bin/sh

cp /data/root /var/spool/cron/crontabs/root
crond -l 7 -f

