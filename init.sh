#!/bin/bash

for s in /app/.profile.d/* ; do
    source $s
done

if [ $# -eq 0 ] ; then
    echo "Emacs: ----------"
    emacs --version
    echo " Cask: ----------"
    cask --version

    exit 0
fi

exec "$@"
