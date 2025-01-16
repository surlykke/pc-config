#!/usr/bin/env bash
thisdir=$(realpath $(dirname $0))
echo $thisdir
nohup alacritty --working-directory $HOME/projekter/payroll -T Work >/dev/null 2>/dev/null &
nohup alacritty --working-directory $HOME/projekter/payroll -T Log >/dev/null 2>/dev/null &

. $thisdir/browsersetup.sh
nohup intellij-idea-ultimate nosplash  >/dev/null 2>/dev/null &

nohup slack --disable-gpu >/dev/null 2>/dev/null &
nohup  microsoft-edge --profile-directory=Default --app-id=cifhbcnohmdccbgoicgdjpfamggdegmo >/dev/null 2>/dev/null &

layout
sleep 1
swaymsg '[instance="slack"] resize set width 1000px'
nmcli con up 'lessor-vpn'
