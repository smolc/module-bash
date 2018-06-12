#!/bin/bash



if [[ -r $1 ]]
then
echo $(awk 'END{print NR}' $1) $1
exit 0
fi
exit 1
