#!/bin/bash
# 
# Let's get a fresh mac setup with nearly everything I need!
#
# NOTE: Make sure you sign into the Mac App Store before running this or it will error out

# Install XCode Command Line Developer Tools
# TODO: This wasn't working in the beta, so I had to download the
# tools from here and install: https://developer.apple.com/download/more/
if [ ! -d "$(xcode-select -p)" ]; then
   echo XCode Command Line Tools not found...installing now.;
   xcode-select --install
fi

# Setup my work git repo folder
mkdir -p ~/git/work

# Check if homebrew is installed and if not install it.
if ! which brew > /dev/null; then
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi;

# Create public SSH  Key
if [ ! -f ~/.ssh/id_rsa ]; then
   echo Creating SSH Key;
   ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
fi

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy my .zshrc file to where it needs to be
cp support/zshrc ~/.zshrc

# Copy my modified theme to where it needs to be
cp support/bobbyb.zsh-theme ~/.oh-my-zsh/themes/

# # Install Menlo-Powerline font
cp support/Menlo-Powerline.otf /Library/Fonts/

# Update brew to it's latest version
brew update

# Install bundle and everything in my Brewfile
brew bundle

# Turn on syntax highlighting in vim
echo syntax on > ~/.vimrc