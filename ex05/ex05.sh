#!/bin/bash 


if [[ -z $2 ]]; then	
	echo "0"
    	exit 0
fi

if ! [[ $2 =~ [[:digit:]] ]]; then 
	echo "Error.."
	exit 1
fi


function sum(){
  evenresult=0
  oddresult=0
 for nums in $@
 do
    if [[ $(($nums%2)) -eq 0 ]]
    then
        evenresult=$(($evenresult+$nums))
      else
        oddresult=$(($oddresult+$nums))
    fi
 done
 result=$(($evenresult+$oddresult))
}



case $1 in
  -e)
    sum ${@:2} && echo $evenresult
    exit 0
    ;;
  -o)
    sum ${@:2} && echo $oddresult
    exit 0
    ;;
  -s)
     sum ${@:2} && echo $result
     exit 0	
    ;;
  -m)
    sum ${@:2} && echo $(( $result / $(($#-1)) ))
   exit 0  
esac
  echo "Error.."
  exit 1 


