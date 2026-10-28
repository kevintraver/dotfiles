#!/bin/bash
# defaults.sh - Apply macOS system preferences
# Run once on a new machine, then log out and back in

# Text input: no auto-capitalization, autocorrect, inline predictive text, or suggested replies
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticInlinePredictionEnabled -bool false
defaults write NSGlobalDomain NSSmartReplyEnabled -bool false

# Dock: no bouncing icons, locked size, no recent apps, no App Exposé gesture
defaults write com.apple.dock no-bouncing -bool true
defaults write com.apple.dock size-immutable -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock showAppExposeGestureEnabled -bool false

# Trackpad: tap to click (built-in and Bluetooth trackpads)
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Finder: show the path bar
defaults write com.apple.finder ShowPathbar -bool true
