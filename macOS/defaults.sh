#!/bin/bash
# defaults.sh - Apply macOS system preferences
# Run once on a new machine, then log out and back in

# Text input: no auto-capitalization, autocorrect, or inline predictive text
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticInlinePredictionEnabled -bool false
