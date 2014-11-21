#!/usr/bin/env bash

brew cask install iterm2

# Open the app so the preference files get initialized
open -a iTerm && sleep 1

# Disable warning when quitting
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Show tab bar in FullScreen
defaults write com.googlecode.iterm2 ShowFullScreenTabBar -bool true

# Set font to Menlo Regular 14px
/usr/libexec/PlistBuddy -c "Set 'New Bookmarks':0:'Normal Font' Menlo-Regular 14" ~/Library/Preferences/com.googlecode.iTerm2.plist

# Reuse previous session directory
/usr/libexec/PlistBuddy -c "Set 'New Bookmarks':0:'Custom Directory' Recycle" ~/Library/Preferences/com.googlecode.iTerm2.plist

# Unlimited Scrollback
/usr/libexec/PlistBuddy -c "Set 'New Bookmarks':0:'Unlimited Scrollback' true" ~/Library/Preferences/com.googlecode.iTerm2.plist

# Add shortcut to Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$HOME/Applications/iTerm.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
