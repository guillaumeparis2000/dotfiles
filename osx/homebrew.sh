#!/usr/bin/env bash

# Check for Homebrew installation
if test ! $(which brew)
then
  echo "Installing Homebrew..."

  # Install homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

brew analytics off

# Update homebrew formaulaes
brew update

# Install some packages
brew install wget ssh-copy-id coreutils trash tmux reattach-to-user-namespace watch colordiff exiftool gpg gpg2 gnupg

# Tell applications that use xcode-select where the GNU utils are located
sudo xcode-select --switch /usr/bin

# Install homebrew cask
brew tap caskroom/cask
brew tap caskroom/versions
