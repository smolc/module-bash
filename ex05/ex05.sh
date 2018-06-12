#!/bin/bash

if [ -z $2 ]; then
	echo "0"
	exit 0
fi

summ=0

for i in $@
do
  if [ "$1" == "-s" ]; then
    summ=$(echo "$summ + $i" | bc)
  elif [ "$1" == "-m" ]; then
    summ=$(echo "$summ + $i" | bc)
  elif [ "$1" == "-e" ]; then
    [ $((i%2)) -eq 0 ] && summ=$(echo "$summ + $i" | bc)
  elif [ "$1" == "-o" ]; then
    [ $((i%2)) -ne 0 ] && summ=$(echo "$summ + $i" | bc)
  else
    echo "Error.."
    exit 1
  fi
done

if [ "$1" == "-m" ]; then
  shift 1
  summ=$(echo $(( "$summ / $#" )))
fi

echo "$summ"
