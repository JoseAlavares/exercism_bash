#!/bin/bash
[[ $# -ne 1 ]] && echo "Error" && exit 1
#sentence=$(echo $sentence | tr a-zA-Z a-z)
sentence=$(echo ${1,,})
[[ ${#sentence} -eq 0 ]] && echo "false" && exit 0
alphabet=26
total=0
pattern='^[a-zA-Z]$'
len=${#sentence}
for i in $(seq 0 $len); do	
	item=$(echo ${sentence:$i:1})	
	[[ $item =~ $pattern ]] && total=$(($total + 1))
	sentence=${sentence//$item/0}
done

[[ $total -ge 26 ]] && echo "true" || echo "false"