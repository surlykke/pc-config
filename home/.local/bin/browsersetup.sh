#!/usr/bin/env bash
nohup $BROWSER https://outlook.office.com/mail > /dev/null 2>/dev/null &
sleep 1
$BROWSER https://outlook.office.com/calendar/view/week
$BROWSER https://paychexeurope.atlassian.net/jira/software/c/projects/DL/boards/147
$BROWSER https://jenkins.lessor.dk/view/Payroll
$BROWSER mail.google.com/mail/u/0/#chat/dm/n3GWhAAAAAE

