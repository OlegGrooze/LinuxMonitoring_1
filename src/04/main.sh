#!/bin/bash

if [ $# != 0 ]; then
	echo "Arguments are not allowed here!"
	exit 1
else
	source colors.conf
	export color_var_bg=$column1_background
	export color_var_font=$column1_font_color
	export color_val_bg=$column2_background
	export color_val_font=$column2_font_color
	if [[ $color_var_bg != [1-6] \
		|| $color_var_font != [1-6] \
		|| $color_val_bg != [1-6] \
		|| $color_val_font != [1-6] \
		|| $color_var_bg == $color_var_font \
		|| $color_val_bg == $color_val_font ]]; then
			color_var_bg=6
			color_var_font=2
			color_val_bg=6
			color_val_font=3
			export flag=1
	fi
	chmod +x vars.sh
	bash vars.sh
fi	
