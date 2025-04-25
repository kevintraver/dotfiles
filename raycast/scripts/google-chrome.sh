#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Google Chrome (New Instance)
# @raycast.mode silent

# Documentation:
# @raycast.description Open a new instance of Google Chrome
# @raycast.author Kevin Traver
# @raycast.authorURL https://raycast.com/kevintraver
# @raycast.iconDark /Applications/Google Chrome.app/Contents/Resources/app.icns

open -na /Applications/Google\ Chrome.app --args "--user-data-dir=/tmp/Chrome/$(date +%s)" --no-default-browser-check --no-first-run --disable-notifications