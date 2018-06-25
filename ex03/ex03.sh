#!/bin/bash


if [[ -r $1 ]]
then
    arguments=($2 $3 $4)
    for arg in ${arguments[*]}
    do
      echo $arg $(grep -c $arg $1 )
      grep -n $arg $1 | cut -f1 -d":"

    done
    exit 0
  else
    exit 1
fi






