#!/bin/bash
SERVICE="gedit"   # nginx httpd gedit

if pgrep -x "$SERVICE" > /dev/null
then
    echo "$SERVICE is running"
else
    echo "$SERVICE stopped"
fi 