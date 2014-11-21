#!/usr/bin/env bash

brew cask install sublime-text3

# Add subl CLI
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

subl && sleep 1

# Install Package Control
wget https://sublime.wbond.net/Package%20Control.sublime-package -P "$HOME/Library/Application Support/Sublime Text 3/Installed Packages/" -N

# Link preferences files
rm -f "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
ln -s "$(pwd)/$(dirname $0)/../sublimeText3/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
ln -s "$(pwd)/$(dirname $0)/../sublimeText3/Package Control.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"

# Add shortcut to Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$HOME/Applications/Sublime Text.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
