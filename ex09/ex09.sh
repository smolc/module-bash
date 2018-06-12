#!/bin/bash

if [ -z $1 ] || [ -z $2 ]; then
  exit 1
fi

if [ $1 -eq "-u" | "--url" ]; then
  grep -Eo "https:\/\/([[:alnum:]]|\.|\/)+" $2
fi
