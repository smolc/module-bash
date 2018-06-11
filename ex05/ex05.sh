#!/bin/bash
if [ -z $2 ]; then
	echo "0"
	exit 0
fi

if ! [[ $2 =~ [[:digit:]] ]]; then
     echo "Error.."
     exit 1
fi

flag=$1
count=0
sum=0
odd_sum=0
even_sum=0
while [ "$#" -gt "0" ]
do
	if ! [ "$count" == "0" ]; then
		let sum+=$1
	fi
  	if [ "$flag" == "-o" ]; then
  		if [ $(($1 % 2)) == 1 ]; then
         		let odd_sum+=$1
		fi
	fi
	if [ "$flag" == "-e" ]; then
     		if [ $(($1 % 2)) == 0 ]; then
    			    let even_sum+=$1
   		fi
  	fi
	let count+=1
	shift
done
let count-=1
if [ "$flag" == "-m" ]; then
	echo $[$sum/$count] | bc
elif [ "$flag" == "-o" ]; then
	echo $odd_sum | bc 
elif [ "$flag" == "-e" ]; then
	echo $even_sum | bc
elif [ "$flag" == "-s" ]; then
	echo $sum | bc
else
	echo "Error.."
	exit 1
fi
