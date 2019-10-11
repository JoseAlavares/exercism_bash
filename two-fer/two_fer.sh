#!/usr/bin/env bash
name=$1
pattern='^[a-zA-Z]+$'
if [[ $name == '' ]]; then
	echo "One for you, one for me."
elif [[ $name =~ $pettern ]]; then	
	echo "One for $name, one for me."
fi