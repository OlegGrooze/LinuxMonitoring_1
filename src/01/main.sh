#!/bin/bash

regex='^[0-9]+([.][0-9]+)?$'
if [ $# = 0 ]; then
	echo "No argument!"
elif [ $# != 1 ]; then
	echo "Too many arguments!"
elif [[ $1 =~ $regex ]]; then
	echo "It is a number!"
else
	export argument=$1
  chmod +x func.sh
  bash func.sh
fi
