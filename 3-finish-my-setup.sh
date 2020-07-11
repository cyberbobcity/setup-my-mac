# Setup global git config
git config --global user.name "YOUR NAME HERE"
git config --global user.email YOUR@EMAILHERE.COM

# Setup my notes files
if [ ! -d ~/notes ]; then
   git clone ssh://git@YOUR-SERVER/YOUR-USERNAME/YOUR-NOTES.git ~/notes
fi

# # Setup my journal
if [ ! -d ~/journal ]; then
   git clone ssh://git@YOUR-SERVER/YOUR-USERNAME/YOUR-NOTES.git ~/journal
fi