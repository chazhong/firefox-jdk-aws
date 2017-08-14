#!/bin/bash
set -e
date

firefox --version

echo 'Starting Xvfb ...'

#2>/dev/null 1>&2 Xvfb :99 -shmem -screen 0 1366x768x16 &
Xvfb :99 -shmem -screen 0 1920x1080x16

#/usr/bin/Xvfb :99 -screen 0 1400x4000x24 -ac +extension GLX +render -noreset &

exec "$@"
