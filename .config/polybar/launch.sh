#!/usr/bin/env sh

# More info : https://github.com/jaagr/polybar/wiki

# Install the following applications for polybar and icons in polybar if you are on ArcoLinuxD
# awesome-terminal-fonts
# Tip : There are other interesting fonts that provide icons like nerd-fonts-complete

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 0.1; done

MONITOR=DP-0 polybar --reload mainbar-i3 -c ~/.config/polybar/config &
MONITOR=DP-0 polybar --reload mainbar-i3-bottom -c ~/.config/polybar/config &

MONITOR=HDMI-0 polybar --reload mainbar-i3-extra -c ~/.config/polybar/config &
MONITOR=HDMI-0 polybar --reload mainbar-i3-bottom -c ~/.config/polybar/config &
