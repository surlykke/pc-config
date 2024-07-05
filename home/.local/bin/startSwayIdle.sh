#!/bin/bash
[[ "no" == "$RUN_SWAYIDLE" ]] || exec swayidle -w timeout 300 lockscreen.sh timeout 360 'swaymsg "output * power off"' resume 'swaymsg "output * power on"'

