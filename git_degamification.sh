#!/bin/bash
bin_path="/Users/jgs/google_drive/bin"
timestamp=$(date +%Y-%m-%d)
file_path="$bin_path/degamification"
file="$file_path/growth.txt"

echo "A new line on $timestamp" >> $file
$bin_path/scripts/git_commit.sh $file_path/path.txt
