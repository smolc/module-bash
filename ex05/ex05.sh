#!/bin/bash
keys=( -s -e -o -m )
for k in ${keys[*]}
do
  key_found=false
  if [ "$1" = "$k" ]; then
    key_found=true
    break
  fi
done
if [ $key_found = false ]; then 
  echo Error..
  exit 1
fi
if [ -z $2 ]; then
  :
elif ! [ "$2" -eq "$2" >& /dev/null ]; then
    echo "Error.."
    exit 1
fi
cmd=$0
op=$1
shift
res=0
case $op in
     "-s")
         for i in $@
         do
           res=$(echo "$res + $i" | bc)  
         done
          ;;
     "-e")
         for i in $@
         do
           [ $((i%2)) -eq 0 ] && res=$(echo "$res + $i" | bc)  
         done
          ;;
     "-o")
         for i in $@
         do
          ! [ $((i%2)) -eq 0 ] && res=$(echo "$res + $i" | bc)  
         done
          ;;
     "-m")
         for i in $@
         do
           res=$(echo "$res + $i" | bc)  
         done
         res=$(echo $(( $res / $# ))) 
         ;;
        *)
         ;;
esac
echo "$res"
