#!/bin/bash

if [ $# != 0 ]; then
       echo "Arguments are not allowed here!"
else
	chmod +x sys_info_out.sh
	bash sys_info_out.sh
	read -p "Write this output in file? (Y/N) " answer
	if [[ $answer == Y || $answer == y ]] ; then
		echo "Writing in file..."
		bash sys_info_out.sh > $(date +"%d_%m_%y_%H_%M_%S").status
		echo "Write in file was finished!"
	fi
fi	
