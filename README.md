# Setup My Mac With Big Sur
This is how I setup a fresh mac install with many of the software, settings I need. Currently using this with Big Sur beta builds so there are some notes and changes to handle things still in beta.

To start, I'll do the following steps below and copy the 3 lines and paste them into Terminal to start the script.

## Steps

1. Open and sign into the Mac App Store so that it can download your apps.

2. Download Xcode 12 from the Mac App Store

3. Open Terminal and paste in the following. This sets up my personal git folder, checks out my project and runs the initial setup script.

        mkdir -p ~/git/me
        git clone https://github.com/cyberbobcity/setup-my-mac.git ~/git/me/setup-my-mac

4. Start the bulk of this install script by running the below command

        zsh ~/git/me/setup-my-mac/setup-my-mac.sh

5. At some point oh-my-zsh will fail so run the following command, close and reopen Terminal, and rerun the above command to restart the script:

	cp ~/git/me/setup-my-mac/support/zshrc ~/.zshrc

6. Then I need to setup my SSH keys in the various git services I use (Gitea, Github, and Gitlab). The below script copies my key to the clipboard that I can then paste online.

        pbcopy < ~/.ssh/id_rsa.pub

7. Setup my git config

        git config --global user.name "YOUR NAME HERE"
        git config --global user.email YOUR@EMAILHERE.COM

8. Download my notes file. Run the script below to check it out and then open Obsidian and open my vault.

        git clone ssh://git@YOUR-SERVER/YOUR-USERNAME/YOUR-NOTES.git ~/notes

9. Setup Git folder in sidebar - Drag my git folder to the finder sidebar

10. Setup iTerm to use my profile

        1. Open iTerm Preferences
        2. Go to Profiles tab
        3. Click the gear on the bottom left side and choose "Import"
        4. Select my iTerm Json file in support folder
        5. Select my imported profile and make it the default
        6. Restart the app

11. Setup Obsidian - Open Obsidian and point it to my notes folder

12. Login to my 1Password Account - Open the app and login! When in Safari if it askes to enable 1Password, do so.

13. Install the Creative Cloud apps I use

        1. Photoshop
        2. Illustrator
        3. Indesign
        4. Lightroom Classic

14. Safari turn off AutoFill on everything but information from my Contacts

15. Download and Install SetApp manually then install the following apps (I had trouble with the cask on Big Sur)
        1. Bartender
        2. SSH Config Editor
        3. Paw
        4. Screens
        5. Coherence X