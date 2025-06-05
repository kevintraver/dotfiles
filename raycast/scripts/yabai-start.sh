#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Start yabai
# @raycast.mode silent

# @raycast.icon 🖥

# Documentation:
# @raycast.description Start the yabai service
# @raycast.author kevintraver
# @raycast.authorURL https://raycast.com/kevintraver

output=$(/opt/homebrew/bin/yabai --start-service 2>&1)
status=$?
if [ $status -eq 0 ]; then
  echo "Yabai service started successfully"
else
  echo "Error starting yabai service"
fi