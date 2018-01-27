#!/usr/bin/env bash

# VSCode
###########
brew cask install visual-studio-code

# Atom
###########
brew cask install atom

# Install Hack font
###########
brew cask install caskroom/fonts/font-hack

# Kdiff3
###########
brew cask install kdiff3

git config --global merge.tool kdiff3
git config --global mergetool.kdiff3.path /Applications/kdiff3.app/Contents/MacOS/kdiff3

# GPG-utils
###########
brew cask install gpg-utils
