# Setup My Mac With Big Sur
This is how I setup a fresh mac install with many of the software, settings I need. To start, do the following steps below by pasting them into Terminal to start the script. Some of them need a little customization first since

## Steps

1. Open and sign into the Mac App Store so that it can download your apps.

2. Open Terminal and paste in the following. This checks out my project and runs the initial setup script. It will download Xcode Command Line tools after prompting you when you first try to use git.

        mkdir -p ~/Git/me
        git clone https://github.com/cyberbobcity/setup-my-mac.git ~/Git/me/setup-my-mac

3. Start the bulk of this install script by running the below command. The script will end prematurely. To fix it run the second command below.

        zsh ~/Git/me/setup-my-mac/setup-my-mac.sh

	USE THIS BELOW TO FIX ISSUE AND RERUN ABOVE SCRIPT
        
	compaudit | xargs chmod g-w,o-w


4. After the install finishes, copy the .zshrc file in

	cp ~/Git/me/setup-my-mac/support/zshrc ~/.zshrc

5. Then I need to setup my SSH keys in the various git services I use (Gitea, Github, and Gitlab). The below script copies my key to the clipboard that I can then paste online.

        pbcopy < ~/.ssh/id_rsa.pub

6. Setup my git config

        git config --global user.name "YOUR NAME HERE"
        git config --global user.email YOUR@EMAILHERE.COM

7. Download my notes file. Run the script below to check it out and then open Obsidian and open my vault.

        git clone ssh://git@YOUR-SERVER/YOUR-USERNAME/YOUR-NOTES.git ~/notes

8. Setup Git folder in sidebar - Drag my git folder to the finder sidebar

9. Setup iTerm to use my profile

        1. Open iTerm Preferences
        2. Go to Profiles tab
        3. Click the gear on the bottom left side and choose "Import"
        4. Select my iTerm Json file in support folder
        5. Select my imported profile and make it the default
        6. Restart the app

10. Setup Obsidian - Open Obsidian and point it to my notes folder

11. Login to my 1Password Account - Open the app and login! When in Safari if it askes to enable 1Password, do so.

12. Install the Creative Cloud apps I use

        1. Photoshop
        2. Illustrator
        3. InDesign
        4. Lightroom Classic

13. Safari turn off AutoFill on everything but information from my Contacts

14. Download and Install SetApp manually then install the following apps (I had trouble with the cask of SetApp on Big Sur)

        1. Bartender
        2. SSH Config Editor
        3. Paw
        4. Screens
        5. Coherence X
        6. TablePlus

15. Open Keyboard Maestro and setup syncing to my sync file in iCloud Drive. Turn on Launch On Login and Hide Applications Pallette.

16. Create stand alone YNAB app with Coherence X and put it in the dock.

17. Copy my SSH Config file in iCloud Drive to ~/.ssh/config

18. Download, install and setup Checkpoint VPN

19. Download and start a ScreenConnect session to install that software

20. Download and install Citrix Workspace

21. Download and install AutoMounter Helper https://www.pixeleyes.co.nz/automounter/helper/

22. Setup my printers

23. Turn the Spotlight CMD+Space shortcut off and set it up for Alfred

24. Setup new App Shortcut for "Paste and Match Style" and set it to CMD+V