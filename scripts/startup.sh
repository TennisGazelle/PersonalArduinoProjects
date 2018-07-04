#!/bin/bash

#
# START UP SCRIPT
#

# g++ compiler
PROGRAMS="g++"
PROGRAMS="$PROGRAMS tmux cmake make"

# git (which should've already been installed)
PROGRAMS="$PROGRAMS git"

# tree
PROGRAMS="$PROGRAMS tree"

# add sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
PROGRAMS="$PROGRAMS sublime-text"

# install these
echo "$PROGRAMS will be installed"
sudo apt-get install $PROGRAMS

# download, install and run dropbox
#cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
#~/.dropbox-dist/dropboxd &
