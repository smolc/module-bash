#!/bin/bash


if [[ -z $1 ]]
then
  exit 1
else
  head -$1 resourses/surnames.txt | grep -v 'Q-Chem' | sed 's/-//;s/.$//'
  exit 0 
fi
