#!/bin/bash
# defaults.sh - Apply macOS system preferences
# Run once on a new machine, then log out and back in

# Text input: no auto-capitalization, autocorrect, inline predictive text, or suggested replies
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticInlinePredictionEnabled -bool false
defaults write NSGlobalDomain NSSmartReplyEnabled -bool false
