#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Reset Firefox
# @raycast.mode silent

# Documentation:
# @raycast.description Reset Firefox (removes all user data)
# @raycast.author Kevin Traver
# @raycast.authorURL https://raycast.com/kevintraver
# @raycast.icon /Applications/Firefox.app/Contents/Resources/firefox.icns

source ~/.dotfiles/zsh/functions/browsers/firefox.zsh
reset-firefox
