#!/bin/sh

if [ "$(mocp -Q %state)" != "STOP" ];then
	ICON=""
	if [ "$(mocp -Q %state)" == "PAUSE" ];then
		ICON=""
	fi

	SONG=$(mocp -Q %song)

	if [ -n "$SONG" ]; then
		echo "$ICON $SONG - $(mocp -Q %album)"
	else
		basename "$(mocp -Q %file)"
	fi
else
	echo ""
fi
