#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Restart yabai
# @raycast.mode silent

# @raycast.icon 🖥

# Documentation:
# @raycast.description Restart the yabai service
# @raycast.author kevintraver
# @raycast.authorURL https://raycast.com/kevintraver

output=$(/opt/homebrew/bin/yabai --restart-service 2>&1)
status=$?
if [ $status -eq 0 ]; then
  echo "Yabai service restarted successfully"
else
  echo "Error restarting yabai service"
fi