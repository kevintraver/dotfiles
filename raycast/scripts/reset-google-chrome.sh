#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Reset Google Chrome
# @raycast.mode silent

# Documentation:
# @raycast.description Reset Google Chrome (removes all user data)
# @raycast.author Kevin Traver
# @raycast.authorURL https://raycast.com/kevintraver
# @raycast.icon /Applications/Google Chrome.app/Contents/Resources/app.icns

source ~/.dotfiles/zsh/functions/browsers.zsh
reset-google-chrome
