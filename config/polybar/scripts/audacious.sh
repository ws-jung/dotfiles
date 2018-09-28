#!/bin/bash
if [ "$(playerctl status)" = "Playing" ]; then
  title=`exec playerctl metadata xesam:title`
  artist=`exec playerctl metadata xesam:artist`
  echo "$title - $artist"
elif [ "$(playerctl status)" = "Stopped" ]; then
  echo ""
else
  echo "$(playerctl status)"
fi
