#!/bin/bash


menu(){
operacion=`zenity --text "--Elige una opcion--(0 exit)" \
	--list --column "Numero" --column "Operacion" \
	"1" "Sumar" "2" "Restar" "3" "Multiplicar" "4" "Dividir" "0" "Salir"`
}

calcular() {

case $1 in
	1) echo Suma
		resultado=`expr $2 + $3`;;
	2) echo Resta
                resultado=`expr $2 - $3`;;
	3) echo Multiplica
                resultado=`expr $2 \* $3`;;
	4) echo Divide
                resultado=`expr $2 / $3`;;
	esac
}

while true
do
	menu
	if [ $operacion -ne 0 ]
	then
		operandos=`zenity --forms --title="Introduce operandos" \
		--text="Introduce los dos operandos" \
		--separator="," \
		--add-entry="Primer Operando" \
		--add-entry="Segundo Operando"`
		op1=`echo $operandos |cut -f1 -d","`
		op2=`echo $operandos |cut -f2 -d","`
		calcular $operacion $op1 $op2
		zenity --info --text "Resultado: $resultado"
	else
		break
	fi
done
