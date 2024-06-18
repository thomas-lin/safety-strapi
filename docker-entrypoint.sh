#!/bin/sh
set -e

if [ ! -d "$PWD/build" ]; then
    yarn build
fi

exec "$@"