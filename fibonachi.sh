#! /bin/bash

max=$1


if [ -z $max ]; then
	echo """enter maxs num. for fibonachi list. (number should not exceed 10000 to avoid cpu crash..
if no number is entered the default will be 100"""
	read -r max
	if [ -z $max ]; then max=100 ; fi

fi

for ((i=1; i<=$max; i++)); do
	k=$i-1
	fib[$k]=$(expr $(expr $i - 1) + $i)
done

echo ${fib[@]}
