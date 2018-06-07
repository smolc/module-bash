#!/bin/bash



if [[ -d $1 ]]
then
	echo ""
	exit 1
fi

if [[ -r $1 ]]
then
	echo $(awk 'END{print NR}' $1) $1
	if [[ -r $2 ]]
	then
		echo $(awk 'END{print NR}' $2) $2
	fi
	exit 0
fi
	exit 1
