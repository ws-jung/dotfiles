#!/bin/sh

if [ "$(mocp -Q %state)" != "STOP" ]; then
	mocp -G
else
	mocp -p
fi
