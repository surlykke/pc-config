#!/usr/bin/env bash
thisdir=$(realpath $(dirname $0))
echo $thisdir
nohup alacritty --working-directory $HOME -T VPN >/dev/null 2>/dev/null &
nohup alacritty --working-directory $HOME/projekter/payroll -T Work >/dev/null 2>/dev/null &
nohup alacritty --working-directory $HOME/projekter/payroll -T Log >/dev/null 2>/dev/null &

. $thisdir/browsersetup.sh
nohup intellij-idea-ultimate nosplash  >/dev/null 2>/dev/null &

nohup slack --disable-gpu >/dev/null 2>/dev/null &
nohup $BROWSER --app-id=cifhbcnohmdccbgoicgdjpfamggdegmo >/dev/null 2>/dev/null &

layout
