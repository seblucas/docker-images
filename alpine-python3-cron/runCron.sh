#!/bin/sh

CRON_LOG_LEVEL="${CRON_LOG_LEVEL:-7}"

[ "$(ls -A /data)" ] && cp /data/* /var/spool/cron/crontabs/

[ ! -z "$CRON_GIT_CLONE" ] && cloneScripts.sh

[ ! -z "$CRON_STRINGS" ] && echo -e "$CRON_STRINGS\n" >> /var/spool/cron/crontabs/root

crond -l $CRON_LOG_LEVEL -f
