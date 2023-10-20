#!/usr/bin/env bash
thisdir=$(realpath $(dirname $0))
echo $thisdir
ToSkærme.sh
i3-msg "workspace 1; append_layout $thisdir/arb_ws_1.json"
i3-msg "workspace 2; append_layout $thisdir/arb_ws_2.json"
sleep 1
nohup urxvt -cd $HOME -T VPN >/dev/null 2>/dev/null &
nohup urxvt -cd $HOME/projekter/payroll -T Work >/dev/null 2>/dev/null &
nohup urxvt -cd $HOME/projekter/payroll -T Log >/dev/null 2>/dev/null &

. $thisdir/browsersetup.sh
nohup intellij-idea-ultimate nosplash  >/dev/null 2>/dev/null &

nohup slack >/dev/null 2>/dev/null &
nohup chromium --app-id=cifhbcnohmdccbgoicgdjpfamggdegmo >/dev/null 2>/dev/null &

i3-msg '[title="^VPN$"] focus'
