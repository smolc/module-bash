#!/bin/bash

function map(){

for args in ${@:2}
  do
    eval $1 $args
done
 

}

map ${@}
