#!/bin/bash

echo "======================="
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py
#running feed.py will generate the xml

#add the new xml file and push it to the repo
git add -A && git commit -m. "Update Feed"
git push --set-upstream origin main



echo "======================="