#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Reset Helium
# @raycast.mode silent

# Documentation:
# @raycast.description Reset Helium (removes all user data)
# @raycast.author Kevin Traver
# @raycast.authorURL https://raycast.com/kevintraver
# @raycast.icon /Applications/Helium.app/Contents/Resources/app.icns

source ~/.dotfiles/zsh/functions/browsers/helium.zsh
reset-helium
