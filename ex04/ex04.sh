#!/bin/bash
  path=$2
  pattern=$1
  if [[ -z $pattern || -z $path ]]
  then
    exit 1
  else
    files=$(find $2)
    basename $files 
    grep -n $pattern $files | cut -f1 -d":"
    exit 0
  fi
