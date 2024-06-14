#!/bin/zsh

git add .
current_date=$(date +'%Y-%m-%d')
git commit -m "Auto commit on $current_date"
git push origin main