#!/bin/bash

if [ $# != 4 ]; then
	echo "Must be 4 arguments here!"
	exit 1
elif [[ $1 != [1-6] || $2 != [1-6] || $3 != [1-6] || $4 != [1-6] ]]; then
	echo  "Arguments must be digits from 1 to 6!"
	exit 1
elif [[ $1 == $2 || $3 == $4 ]]; then
	echo "Colors of background and font not must be equals!"
	exit 1
else
	export color_var_bg=$1
	export color_var_font=$2
	export color_val_bg=$3
	export color_val_font=$4
	chmod +x vars.sh
	bash vars.sh
fi	
