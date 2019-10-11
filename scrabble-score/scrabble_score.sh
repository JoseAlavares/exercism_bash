#!/usr/bin/env bash

declare -A arr
arr[0,0]='[A|E|I|O|U|L|N|R|S|T]'
arr[0,1]=1
arr[1,0]='[D|G]'
arr[1,1]=2
arr[2,0]='[B|C|M|P]'
arr[2,1]=3
arr[3,0]='[F|H|V|W|Y]'
arr[3,1]=4
arr[4,0]='[K]'
arr[4,1]=5
arr[5,0]='[J|X]'
arr[5,1]=8
arr[6,0]='[Q|Z]'
arr[6,1]=10

total=0
word=$1

len_patterns=${#arr[@]}
let len_patterns-=1
let len_patterns/=2

len_word=${#word}
let len_word-=1

for i in $(seq 0 $len_word); do
	
	for j in $(seq 0 $len_patterns); do		
		temp=$(echo ${word:$i:1} | tr a-z A-Z)
		tmp_pattern=${arr[$j,0]}		
		
		[[ $temp =~ $tmp_pattern ]] && total=$(expr $total+${arr[$j,1]} | bc)		
	done	

done

echo $total