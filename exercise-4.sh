#!/bin/bash
echo "Bienvenido al ejercicio 3"
echo -e "Instrucciones:\n\n 1. Imprimir la distribución de Linux y la versión del servidor donde se está ejecutando.\n\n 2. Si el SO es RedHat o CentOS,imprimir en pantalla lo siguiente: \n\n\t- Estatus de Firewall\n\n\t- IP y hostname.\n\n\t- Número de CPUs.\n\n\t- Memoria RAM total\n\n3. Si el SO es Debian o Ubuntu imprimir: SO no soportado\n\n"

distroName=$(grep NAME /etc/os-release | cut -d'=' -f2 | head -n1 | cut -d'"' -f2 | cut -d" " -f1)
lineSeparator=".--------------------------------------."

echo $lineSeparator
echo "Distro: $distroName"
echo "Server-version: $(uname -r)"
echo $lineSeparator
searchingDistro(){
	if [[ $distroName = "Debian" || $distroName="Ubuntu" ]]
	then
		echo "SO no soportado"
	elif [ $distroName = "RedHat" || $distroName="CentOS" ]
	then
		echo "Memoria: $(free -h)"
		echo "Numero de CPUs: $(nproc --all)"
		echo "Host: $(hostname)"
		echo "IP: $(hastname -I)"
		echo "Estatus del Firewall $(systemctl status firewalld)"

	fi
}
searchingDistro
exit
