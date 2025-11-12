#!/bin/bash
set -e 

if [ -n "$UID" ]; then
  echo "Changing UID to $UID ..."
  usermod -u $UID app
fi
if [ -n "$GID" ]; then
  echo "Changing GID to $GID ..."
  groupmod -g $GID app
fi

exec gosu app "$@"