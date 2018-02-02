#!/usr/bin/env bash

brew cask install zsh

# Make ZSH as the default shell for the current user
sudo chsh -s /bin/zsh "`whoami`"

# Install oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Copy custom theme
ln -s "$(pwd)/$(dirname $0)/../oh-my-zsh/themes/mytheme.zsh-theme" "~/oh-my-zsh/themes/mytheme.zsh-theme"

# Load all the zsh files in the ~/.zshrc
echo "# dotfiles zsh config" >> ~/.zshrc
echo "source `pwd`/$(dirname $0)/../oh-my-zsh/zshrc" >> ~/.zshrc
