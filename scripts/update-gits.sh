#!/bin/bash

current_epoch=$(date +%s)
target_epoch=$(date -d '9/7/2017 06:00' +%s)

sleep_seconds=$(( $target_epoch - $current_epoch ))

sleep $sleep_seconds

while read repo; do 
	git clone https://github.com/"$repo"
done < repolist.txt
