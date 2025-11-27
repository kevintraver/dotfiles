#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Firefox (New Instance)
# @raycast.mode silent

# Documentation:
# @raycast.description Open Firefox with a new temporary profile (Google DNS + clean startup)
# @raycast.author Kevin Traver
# @raycast.authorURL https://raycast.com/kevintraver
# @raycast.icon /Applications/Firefox.app/Contents/Resources/firefox.icns

source ~/.dotfiles/zsh/functions/browsers.zsh
temp-firefox
