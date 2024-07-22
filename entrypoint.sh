#!/bin/bash

echo "================"
git config --global user.name "s{GITHUB_ACTOR}"
git config --global user.email "s{INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace
python3 /usr/bin/feed.py
git add -A && git commit -m "Update Feed"
git push --set-upstream origin main
echo "================"
