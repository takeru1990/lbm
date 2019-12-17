#!/bin/bash

# change directory
cd ~/bin/res/lbm

# make copy to be editted
cp text.svg text_.svg

# set text line 1 and line 2
sed -i -e "s:1行目:${1}:g" text_.svg
sed -i -e "s:2行目:${2}:g" text_.svg

# export png in ~/Downloads
inkscape -D -w 800 -e text.png text_.svg

# delete copied svg
rm text_.svg

exit 0
