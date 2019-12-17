#!/bin/bash

# change directory
cd ~/bin/res/lbm

# get 4 byte random numbers in base 16
random=`od -An -N4 -tx < /dev/urandom`
color=`echo $random | cut -c 1-6`

# make copy to be editted
cp stripe.svg stripe_.svg

# set text line 1 and line 2
sed -i -e "s:98aaf2:$color:g" stripe_.svg

# export png in ~/Downloads
inkscape -D -w 1000 -e stripe.png stripe_.svg

# delete copied svg
rm stripe_.svg

exit 0
