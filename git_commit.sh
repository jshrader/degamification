#!/bin/bash
# A bash script to automatically perform routine git commits.
# To use this, run
#  git_commit.sh file_name
# Actually, this is no supported yet.
# OR
#  git_commit.sh text_file_with_file_names
while read line
do
    f=$(echo $line|tr -d '\n')
    f=$HOME/$f
    echo "Committing $f"
    #touch $f/test.txt
    /usr/bin/git --git-dir=$f/.git add *
    timestamp=$(date +%Y-%m-%d)
    echo "$timestamp"
    /usr/bin/git --git-dir=$f/.git commit -m "Regular commit at $timestamp"
done < $1

