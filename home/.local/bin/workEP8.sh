#!/usr/bin/env bash
thisdir=$(realpath $(dirname $0))
echo $thisdir
i3-msg "workspace 1; append_layout $thisdir/arb_ws_1.json"
nohup alacritty --working-directory $HOME --title VPN >/dev/null 2>/dev/null &
nohup alacritty --working-directory $HOME/projekter/payroll --title Work >/dev/null 2>/dev/null &
nohup alacritty --working-directory $HOME/projekter/payroll --title Log >/dev/null 2>/dev/null &

i3-msg "workspace 2; append_layout $thisdir/arb_ws_2.json"
nohup intellij-idea-ultimate nosplash >/dev/null 2>/dev/null &

i3-msg "workspace 3; append_layout $thisdir/arb_ws_3.json"
nohup brave-browser https://outlook.office.com/mail  >/dev/null 2>/dev/null &
sleep 1
brave-browser https://outlook.office.com/calendar
brave-browser https://paychexeurope.atlassian.net/jira/software/c/projects/DL/boards/147
brave-browser https://jenkins.lessor.dk/view/Payroll
brave-browser mail.surlykke.dk


nohup slack >/dev/null 2>/dev/null &
i3-msg '[title="Slack"] focus'
nohup /opt/brave.com/brave/brave-browser --profile-directory=Default --app-id=cifhbcnohmdccbgoicgdjpfamggdegmo >/dev/null 2>/dev/null &

wmctrl -r 'Refude notifier' -e 0,26,361,-1,-1

i3-msg '[title="^VPN$"] focus'
