#!/bin/sh

# Set the icon size of Dock items to 40 pixels
defaults write com.apple.dock tilesize -int 45

# Enable maginification
defaults write com.apple.dock magnification -bool true

# Set maginification to 75 pixels
defaults write com.apple.dock largesize -int 75

# Set the dock to autohide
defaults write com.apple.Dock autohide -bool true

# Set the dock autohide delay to 0
defaults write com.apple.Dock autohide-delay -float 0

# Don't show recent apps
defaults write com.apple.Dock show-recents -bool false

# Don't minimise apps to their icon
defaults write com.apple.dock minimize-to-application -bool false

# Use genie effect when minimising
defaults write com.apple.dock mineffect -string "genie"

# Show indicator lights for open applications
defaults write com.apple.dock show-process-indicators -bool true

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/Intellij IDEA.app"
dockutil --no-restart --add "/System/Applications/System Preferences.app"
dockutil --no-restart --add "/Applications/Microsoft Outlook.app"
dockutil --no-restart --add "/Applications/Obsidian.app"
dockutil --no-restart --add "/Applications/Omnifocus.app"
dockutil --no-restart --move "System Preferences" --after "Omnifocus"

dockutil --add '~/Downloads' --view grid --display stack
dockutil --add '/Applications' --view grid --display folder

killall Dock
