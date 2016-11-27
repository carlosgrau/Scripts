
#!/bin/bash

function factorial (){

if [ $1 -le 1 ]
then
        echo 1
else
       echo  `expr $(factorial $(expr $1 - 1)) \* $1`
fi
}
num=`zenity --forms --title="Factorial" \
		--text="Introduce un numero" \
		--separator="," \
		--add-entry="Numero"`

zenity --info --text "El factorial de $num es `factorial $num`" 


