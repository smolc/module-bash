#!/bin/bash

for files in "$@"
do
     output=$(ls -R | grep $files)
     if [[ $? -eq 0 ]]
      then
        echo $output | tr ' ' '\n'
      else
        echo the searched PATH is unexisting
     fi
done
