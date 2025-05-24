#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Reset Google Chrome
# @raycast.mode silent

# Optional parameters:
# @raycast.icon /Applications/Google Chrome.app/Contents/Resources/app.icns

# Documentation:
# @raycast.description Reset Google Chrome
# @raycast.author kevintraver
# @raycast.authorURL https://raycast.com/kevintraver

/bin/rm -rf /Users/kevin/Library/Application\ Support/Google && /bin/rm -rf /Users/kevin/Library/Preferences/com.google.Chrome.plist