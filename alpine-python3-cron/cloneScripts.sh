#!/bin/sh

[ "$(ls -A /scripts)" ] && exit 0

cd /scripts

IFS=# ary=$CRON_GIT_CLONE

for key in ${ary}; do
  # Remove the quotes around the command
  temp="${key%\"}"
  temp="${temp#\"}"
  cmd="git clone ${temp}"
  eval $cmd
done

cd $OLDPWD
