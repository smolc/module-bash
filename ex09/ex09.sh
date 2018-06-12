#!/bin/bash

case $1 in 
  -u)
      grep "https://" $2
    ;;
  -e)
      grep '^[a-zA-Z0-9]\+@[a-zA-Z0-9]\+\.[a-z]\{2,\}' $2
    ;;
 --url)
     grep "https://" $2
     ;;
 --email)
     grep '^[a-zA-Z0-9]\+@[a-zA-Z0-9]\+\.[a-z]\{2,\}' $2
     ;;

esac
