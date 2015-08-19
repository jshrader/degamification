#!/bin/bash
if [ $HOME = "/Users/jgs" ]; then
    bin_path="$HOME/google_drive/bin"
else
    bin_path="$HOME/bin"
fi
timestamp=$(date +%Y-%m-%d)
file_path="$bin_path/degamification"
file="$file_path/growth.txt"

echo "A new line on $timestamp" >> $file
$file_path/git_commit.sh $file_path/path.txt
git push -u origin master
