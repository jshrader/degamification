#!/bin/bash
bin_path="/Users/jgs/google_drive/bin"
timestamp=$(date +%Y-%m-%d)
file_path="$bin_path/degamification"
file="$file_path/growth.txt"

echo "A new line on $timestamp" >> $file
$file_path/git_commit.sh $file_path/path.txt
git push -u origin master
