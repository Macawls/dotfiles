#!/usr/bin/env bash

#terminate instances of polybar
killall polybar 
#wait until processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar mainbar

echo "launching bar..."
