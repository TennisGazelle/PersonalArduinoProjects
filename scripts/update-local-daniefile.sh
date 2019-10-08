#!/usr/bin/env bash

mkdir /tmp/current_home_dir
# current dir to temp
cp ~/.danielfile /tmp/current_home_dir/.danielfile
# commit quietly
(cd /tmp/current_home_dir && git init && git add .danielfile && git commit -m 'init comparative commit') > /dev/null

# overwrite from repo to temp
cp ./.danielfile /tmp/current_home_dir/.danielfile
git add -p
(git commit -m 'only these changes' && git checkout .) > /dev/null

# overwrite the directory with what's in the temp
cp /tmp/current_home_dir/.danielfile ~/.danielfile

rm -rf /tmp/current_home_dir