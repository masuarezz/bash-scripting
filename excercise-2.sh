#!/bin/bash
echo "Bienvenido al ejercicio 2"
echo -e "Instrucciones\nRealizar una script que conservando la misma funcionalidad del ejercicio 1 realice lo siguiente:\n\nEl script debe hacer lo siguiente:\n1. Todo aquél comando que genere una salida en la terminal, debe guardarse en una variable e imprimirla con el comando echo\n2. Crear una función que contenga los puntos 1 y 4 del ejercicio 1 y otra funcion que contenga los demás\n"

asignarVariables() {
  fecha=$(date)
  distro=$(lsb_release -a)
  kernel=$(uname -a)
  usuario=$(whoami)
  fileSys=$(df -h)
}


mostrarPrimerosCuatro(){
	echo "---------FECHA----------"
	echo $fecha
	echo "--------DISTRO----------"
	echo $distro
	echo "--------KERNEL----------"
	echo $kernel
	echo "-------USUARIO----------"
	echo $usuario
}

mostrarResto(){
	echo "------FILE SYS---------"
	echo $fileSys
}

asignarVariables
mostrarPrimerosCuatro
mostrarResto
echo "\n>>Fin del primer ejercicio :)<<"

exit

