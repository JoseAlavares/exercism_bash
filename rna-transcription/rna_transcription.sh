#!/usr/bin/env bash

# The following comments should help you get started:
# - Bash is flexible. You may use functions or write a "raw" script.
#
# - Complex code can be made easier to read by breaking it up
#   into functions, however this is sometimes overkill in bash.
#
# - You can find links about good style and other resources
#   for Bash in './README.md'. It came with this exercise.
#
#   Example:
#   # other functions here
#   # ...
#   # ...
#
#   main () {
#     # your main function code here
#   }
#
#   # call main with all of the positional arguments
#   main "$@"
#
# *** PLEASE REMOVE THESE COMMENTS BEFORE SUBMITTING YOUR SOLUTION ***

declare -A arr
arr[0,0]='G'
arr[0,1]='C'

arr[1,0]='C'
arr[1,1]='G'

arr[2,0]='T'
arr[2,1]='A'

arr[3,0]='A'
arr[3,1]='U'

strand=$1

len_patterns=${#arr[@]}
let len_patterns-=1
let len_patterns/=2

len_word=${#strand}
let len_word-=1

for i in $(seq 0 $len_word); do
	if [[ ]]
	#for j in $(seq 0 $len_patterns); do		
		#temp=$(echo ${strand:$i:1} | tr a-z A-Z)
		#tmp_pattern=${arr[$j,0]}		
		
		#[[ $temp =~ $tmp_pattern ]] && total=$(expr $total+${arr[$j,1]} | bc)		
	#done	

done

echo $total