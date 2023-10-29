#!/usr/bin/env bash
cd $(dirname $0)
work.sh
WindowArranger -wait 30 ./layoutWorkHome

swaymsg '[title=Slack] resize set width 1000px'
swaymsg '[title="^VPN$"] focus'


