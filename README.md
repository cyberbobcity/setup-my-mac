# setup-my-mac
How I setup a fresh mac install with many of the software, settings, and scripts I need. Currently 
using this with Big Sur beta builds so there are some notes and changes to handle things still in beta.

## Steps
1. Open Terminal and paste in the following. This sets up my personal git folder, checks out my project and runs the initial setup script.

        mkdir -p ~/git/me
        git clone https://github.com/cyberbobcity/setup-my-mac.git ~/git/me/
        zsh setup-my-mac.sh

