#!/usr/bin/env bash

DANIELFILE=~/.danielfile
FILE=.profile

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
    FILE=~/.profile
    fi
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
    FILE=~/.bashrc
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
    # TODO find out how to look up WSL on either windows platform
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
fi

cp ./.daniefile $DANIELFILE
cat ~/.profile | grep daniel
EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ]; then
	echo 'source ~/.danielfile' >> $FILE
fi
echo 'Danielfile Installed'