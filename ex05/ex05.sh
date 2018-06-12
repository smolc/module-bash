#!/bin/bash
if [ -z $2 ]; then
	echo "0"
	exit 0

if ! [[ $2 =~ [[:digit:]] ]]; then
     echo "Error.."
     exit 1
fi

flag=$1
count=0
sum=0

case $flag in
