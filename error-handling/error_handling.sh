#!/bin/bash

#error handling
pattern="^[a-zA-Z\s]*$"

if [[ $# -gt 1 ]]; then
	echo "Hay mas de 1 un parametro";
	exit 1;
fi

if [[ $# -eq 0 ]]; then
	echo "Usage: ./error_handling <greetee>";
	exit 1;
fi

phrase="Hello, ";
phrase=$phrase"$1";
echo $phrase;
exit 0;