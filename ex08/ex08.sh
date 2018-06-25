#!/bin/bash
nums=( zeroes, ones, twoes, threes, fours, fives, sixs, sevens, eights, nines)                


if [[ $# -gt 1 || $# -lt 1 ]]
then
	echo "Too many(few) arguments"
  exit 1
fi



for i in {0..9}
do
	if ! [[ -f $1 ]];
	then
		echo "Error.."
		exit 1
	fi
  arr[$i]=$(grep -o $i $1 | wc -l)
  result+=' '${arr[$i]}' '${nums[$i]}
done
echo $result 
