#!/bin/bash
# A bash script to automatically perform routine git commits.
# To use this, run
#  git_commit.sh < file_name
# OR
#  git_commit.sh < text_file_with_file_names
while read line
do
    f=$(echo $line|tr -d '\n')
    f=$HOME/$f
    echo "Committing $f"
    #touch $f/test.txt
    cd $f    
    /usr/bin/git add *
    timestamp=$(date +%Y-%m-%d)
    echo "$timestamp"
    /usr/bin/git commit -m "Regular commit at $timestamp"
done < $1

