#!/usr/bin/env bash

primary="DP-3"
secondary="DVI-D-1"
setting="--mode 1920x1080 --rate 144.00"

xrandr --output $primary $setting --primary 
xrandr --output $secondary $setting --right-of $primary

