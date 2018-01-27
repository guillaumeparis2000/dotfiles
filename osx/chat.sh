#!/usr/bin/env bash

# Skype
##########
brew cask install skype

# Disable notifications for received messages
defaults write com.skype.skype UserDefinedEvents '{ MessageReceived = { Display = 0; PlaySound = 0; }; }'
defaults write com.skype.skype UserDefinedEvents '{ FirstMessageReceived = { Display = 0; PlaySound = 0; }; }'

# Telegram
##########
brew cask install telegram

# Slack
##########
brew cask install slack
