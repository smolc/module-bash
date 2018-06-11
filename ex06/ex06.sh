#!/bin/bash
map() {
  arg=$1
	for i in "$@"
	do
		shift 1
		$arg $i
	done
}

if [ $1 ]; then
  map $@
fi
