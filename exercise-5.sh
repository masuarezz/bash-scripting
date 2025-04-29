#!/bin/bash
echo "Bienvenido al ejercicio 5"
echo -e "Instrucciones:\n\nEste script deberá realizar las siguientes tareas:\n\n\t1. Dar bienvenida.\n\t2. Solicitar al usuario que escriba su nombre.\n\t3. Imprimir su nombre y preguntar si la información es correcta\n\t4. En caso de ser correcta ejecutar el ejercicio 4\n\t5. En caso de lo contrario preguntar si quiere salir del programa o corregirlo.\n\t6. Si elige salir terminar el programa sin más.\n\tSi desea corregirlo volver al punto 2"
showExerciseFour(){
	if [[ $distroName = "Debian" || $distroName="Ubuntu" ]]
	then
		echo "SO no soportado"
	elif [[ $distroName = "RedHat" || $distroName="CentOS" ]]
	then
		echo "Memoria: $(free -h)"
		echo "Numero de CPUs: $(nproc --all)"
		echo "Host: $(hostname)"
		echo "IP: $(hastname -I)"
		echo "Estatus del Firewall $(systemctl status firewalld)"

	fi
}

askName(){
	lineSeparator=".-----------------------------------------------."
	echo -e "$lineSeparator\nPor favor ingrese su nombre :)"
	read userName

	echo "Hola $userName, ¿Tu nombre está bien escrito?"
	echo -e "(Y) - Sí\n(N) - No, deseo cambiarlo\n(C) - deseo salir"
	read option

	if [ $option = "Y" ]
	then
		showExerciseFour
	elif [ $option = "N" ]
	then
		askName
	fi
}
askName
exit

