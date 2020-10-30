#!/bin/bash
# 
# 1-setup-my-mac.sh
# Let's get a fresh mac setup with nearly everything I need!
#

# Go into the newly downloaded folder
cd ~/git/me/setup-my-mac

# Setup my work git repo folder and notes folder
mkdir -p ~/git/work
mkdir -p ~/notes

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

# Copy over Karabiner Elements config
mkdir -p ~/.config/karabiner
cp support/karabiner.json ~/.config/karabiner