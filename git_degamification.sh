#!/bin/bash
if [ $HOME = "/Users/jgs" ]; then
    bin_path="$HOME/google_drive/bin"
else
    bin_path="$HOME/code"
fi
timestamp=$(date +%Y-%m-%d)
file_path="$bin_path/degamification"
file="$file_path/growth.txt"

echo "A new line on $timestamp" >> $file
cd $file_path
/usr/bin/git add growth.txt
timestamp=$(date +%Y-%m-%d)
/usr/bin/git commit -m "Regular commit at $timestamp"
#/usr/bin/git push -u origin master
