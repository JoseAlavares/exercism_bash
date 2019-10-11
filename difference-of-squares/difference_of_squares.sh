#!/bin/bash
type=$1
num=$2
sum=0
sum_2=0

if [[ $# -ne 2 ]]; then  
	echo "La cantidad de parametros es diferente a los solicitados"	
	exit 1
fi

for i in $(seq 1 $num); do
	sum=$(($sum + ($i**2)))
	sum_2=$(($sum_2 + $i))
done;

if [ $type == "square_of_sum" ]; then
	echo $(($sum_2**2))
elif [ $type == "sum_of_squares" ]; then
	echo $(($sum))
elif [ $type == "difference" ]; then
	echo $((($sum_2**2) - ($sum)))
else
	#No existe la operacion solicitada
	echo "No existe la operacion solicitada"
	exit 2
fi
