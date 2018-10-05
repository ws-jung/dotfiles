#!/bin/bash
CURRENT=`i3-msg -t get_workspaces \
  | jq '.[] | select(.focused==true).name' \
  | cut -d"\"" -f2`
if [ $CURRENT = 0 ]; then
    i3-msg "workspace back_and_forth"
else
    i3-msg "workspace 0"
fi
