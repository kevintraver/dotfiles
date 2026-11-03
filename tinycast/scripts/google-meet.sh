#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Google Meet
# @raycast.mode silent

# Documentation:
# @raycast.description Open Google Chrome with a new temporary profile
# @raycast.author Kevin Traver
# @raycast.authorURL https://raycast.com/kevintraver
# @raycast.icon /Users/kevin/Applications/Chrome Apps.localized/Google Meet.app/Contents/Resources/app.icns

# 1. Ensure the Chrome process for this profile is running (backgrounded, no window)
open -na "Google Chrome" --args --user-data-dir="$HOME/.tmp/chrome-google-meet" --no-startup-window

# 2. Launch the specific App shim (which uses the running process and has the correct icon)
open "$HOME/Applications/Chrome Apps.localized/Google Meet.app"