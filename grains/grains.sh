posicion=$1
patron='^[0-9]+$'

if [[ $posicion =~ $patron ]]; then
	if [[ $posicion -lt 65 && $posicion -gt 0 ]]; then
		let posicion=$posicion-1
		echo 2^$posicion | bc -l	
	else
		echo "Error: invalid input";
		exit 1
	fi
elif [[ $posicion = "total" ]]; then
	total=0	
	let i=$i-1		
	total=$(expr 2^64 | bc)
	total=$(expr $total-1 | bc)		
	echo $total
else
	echo "Error: invalid input"
	exit 1
fi
