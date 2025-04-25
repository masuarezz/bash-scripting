#!/bin/bash
echo "Bienvenido al ejercicio 3"
echo -e "Debes crear un shell scrip de nombre creando-carpetas.sh en la ruta: /home/usuario/ejercicio-3\n\nEl escript debera tener lo siguiente:\n\tGenerar 100 carpetas dentro de la ruta mencionada anteriormente. El nombre de las carpetas deberá tener la nomenclatura file-##\n2. Dentro de cada carpeta creada insertar un archivo vacío de nombre basura.tmp"

fileName="file-"

nameAssignment(){
	for i in {1..100}
	do
		if [ $i -lt 10 ]
		then
			dirName=$fileName"0"$i
		else
			dirName=$fileName$i
		fi
		mkdir $dirName
		> $dirName/basura.tmp
	done
}

nameAssignment
exit
