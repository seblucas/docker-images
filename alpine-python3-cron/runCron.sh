#!/bin/sh

[ "$(ls -A /data)" ] && cp /data/* /var/spool/cron/crontabs/

[ ! -z "$CRON_GIT_CLONE" ] && cloneScripts.sh

[ ! -z "$CRON_STRINGS" ] && echo -e "$CRON_STRINGS\n" >> /var/spool/cron/crontabs/root

crond -l 7 -f
