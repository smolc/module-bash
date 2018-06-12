#!/bin/bash

if [ -z $1 ] || [ -z $2 ]; then
	exit 1
fi

echo $2 | cut -d'/' -f 2
grep -in $1 $2 | cut -d : -f 1
