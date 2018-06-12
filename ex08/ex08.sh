#!/bin/bash

if [ -z $1 ] ||  [ $# -gt 1 ] ; then
  echo "Too many(few) arguments"
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "Error.."
  exit 1
fi

answer=""
words=( zeroes ones twoes threes fours fives sixs sevens eights nines )
wlen=${#words[@]}
for (( i=0; i<${wlen}; i++ ))
do
  answer+=$(grep -o "$i" $1 | wc -l)
  answer+=" ${words[$i]}, "
done
echo "$answer" | sed 's/..$//'
