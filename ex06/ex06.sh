#!/bin/bash
map() {
  arg=$1
  shift
	for i in "$@"
	do
		shift
		eval "$arg $i"
	done
}

if [ $1 ]; then
  map $@
fi
