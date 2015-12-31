#!/bin/bash

CWD=`pwd`
LOGDIR="/tmp"
WORKDIR="${HOME}/workspace"

echo VNC client running at https://$C9_HOSTNAME/vnc.html
echo

cd "$WORKDIR"
supervisord --configuration=${HOME}/.supervisord.conf --logfile="$LOGDIR/supervisord.log"
cd "$CWD"
