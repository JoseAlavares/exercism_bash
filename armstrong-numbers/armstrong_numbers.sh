#!/usr/bin/env bash

#status exit 1 means the input is not a number
number=$1
length=${#number}
total=0
#"^[0-9]+$"
if [[ $number>=0 ]]; then		
	for i in $(seq 0 $((length-1))); do
		tmp=$(echo ${number:$i:1})
		n=$(echo $tmp $length | awk '{ print $1 ^ $2 }')
		total=$(expr $total+$n | bc)
	done

	if [[ $total -eq $number ]]; then
		echo "true"
	else
		echo "false"
	fi
else
	echo "The parameter is not a number"
	exit 1
fi
