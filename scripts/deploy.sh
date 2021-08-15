#!/usr/bin/env sh
set -e
shopt -s extglob

TEMP_PATH="docs/.temp"

# build docs
npm run build

# prepare deploy
rm -rf $TEMP_PATH
mkdir $TEMP_PATH
cd $TEMP_PATH
git init
git pull https://github.com/lwj201606/react-note.git gh-pages
cp -r ../../dist/* .

# commit and push changes
git add -A
git commit --am -m "build: deploy documentation"
git push -f https://github.com/lwj201606/react-note.git master:gh-pages

## clean
cd
rm -rf $TEMP_PATH