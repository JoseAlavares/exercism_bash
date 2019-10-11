#!//bin/bash
pattern='^[0-9]+$'
[ $# -ne 1 ] && echo "Usage: leap.sh <year>" && exit 1
anyo=$1
#Para usar expresiones regulares en bash y tratar de hacerlo mas compatible entre versiones de bash
#la expresion debera ser almacenada en una variable
#la expresion debe ser rodeada entre comillas simples '[0-9]'
#la condicion if debera estar entre dobles corchetes [[ $var =~ $pattern ]]
#el operador de igualdad a usar en expresiones regulares debe ser =~
if [[ $anyo =~ $pattern ]]; then
	[[ $(($anyo % 4)) -eq 0 && ($(($anyo % 100)) -ne 0 || $(($anyo % 400)) -eq 0) ]] && echo "true" || echo "false"
else
	echo "Usage: leap.sh <year>"
	exit 1
fi
