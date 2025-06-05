#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Stop yabai
# @raycast.mode silent

# @raycast.icon 🖥

# Documentation:
# @raycast.description Stop the yabai service
# @raycast.author kevintraver
# @raycast.authorURL https://raycast.com/kevintraver

output=$(/opt/homebrew/bin/yabai --stop-service 2>&1)
status=$?
if [ $status -eq 0 ]; then
  echo "Yabai service stopped successfully"
else
  echo "Error stopping yabai service"
fi