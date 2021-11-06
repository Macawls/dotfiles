#!/usr/bin/env bash

primary="DP-0"
secondary="DVI-D-0"
setting="--mode 1920x1080 --rate 144.00"

xrandr --output $primary $setting --primary 
xrandr --output $secondary $setting --right-of $primary

