#!/bin/bash

# Toggle Waybar visibility using SIGUSR1 (hides/shows without restarting)
# This is the recommended way as it preserves state and is faster than killing/restarting.

if systemctl --user is-active --quiet waybar.service; then
    # If running, stop it (hides the bar)
    systemctl --user stop waybar.service
else
    # If not running, start it
    systemctl --user start waybar.service
fi
