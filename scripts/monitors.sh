#!/usr/bin/env bash

primary="DP-0"
secondary="DVI-D-0"
setting="--mode 1920x1080 --rate 144.00"

xrandr --output $primary $setting --primary
bspc monitor $primary -d 1 2 3 4
xrandr --output $secondary $setting --right-of $primary
bspc monitor $secondary -d 5 6 7 8

