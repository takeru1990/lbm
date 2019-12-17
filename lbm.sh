#!/bin/bash

# show message when no args
if [ $# -eq 0 ]; then
	echo "You need 2 args for this script."
	exit 0
elif [ $# -gt 2 ]; then
	echo "You can use up to 2 args."
	exit 0
fi

# make ~/.bin/lbm/res/stripe.png
stripe=`sh ~/bin/res/lbm/stripe`

# make ~/.bin/lbm/res/text.png
text=`sh ~/bin/res/lbm/text "${1}" "${2}"`

# change directory
cd ~/bin/res/lbm

# compose 2 images into ~/Downloads/`date`.png
name=`date '+%y%m%d-%H%M%S'`
convert -gravity center stripe.png text.png -composite ~/Downloads/$name.png

# delete intermidiate images
rm stripe.png text.png

exit 0
