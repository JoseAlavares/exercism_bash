#!/usr/bin/bash
strand_1=$1
strand_2=$2
exit_code=0
output=""
if [[ (${#strand_1} -eq ${#strand_2}) && ($# -eq 2) ]]; then
	mutations=0
	len_1=${#strand_1}
	for i in $(seq 0 $((len_1-1))); do
		first=${strand_1:$i:1}
		second=${strand_2:$i:1}
		[[ $first != $second ]] && mutations=$((mutations+1))
	done	
	echo $mutations
	exit $exit_code
else
	if [[ $# -ne 2 ]]; then
		output="Usage: hamming.sh <strand1> <strand2>"
	elif [[ ($# -eq 2) && (${#strand_1} -ne ${#strand_2}) ]]; then
		output="left and right strands must be of equal length"
	else
		output="The length of the strands is different"
	fi
	echo $output
	exit 1
fi

