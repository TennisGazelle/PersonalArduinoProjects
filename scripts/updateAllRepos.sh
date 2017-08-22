#!/bin/bash

function showUsageErrorPrompt {
  #statements
  echo "No arguments given"
  echo "Please provide directory holding all repositories to update"
  echo "Usage: ./updateAllRepos [directory]"
}

function iterateAndPull {
  echo Iterating directory "$1"
  for d in $1/*/; do
    cd $d && pwd && git status

  done
}

if [ $# -eq 0 ]; then
  showUsageErrorPrompt
  exit
fi

iterateAndPull $1
