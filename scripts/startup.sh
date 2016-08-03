#!/bin/bash

#
# START UP SCRIPT
#

## Update beforehand
sudo apt-get update

# g++ compiler
PROGRAMS="g++"

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
