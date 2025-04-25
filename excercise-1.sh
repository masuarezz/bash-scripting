#!/bin/bash
echo "Bienvenido al ejercicio 1"
echo -e "Instrucciones\nGenerar archivo Shell script de nombre hola_mundo.sh, en la ruta:\n/home/usuario/ejercicio-1\n\nEl script debe hacer lo siguiente:\n\n1. Imprimir fecha y hora de ejecución\n2. Imprimir Distribución de Linux donde está siendo ejecutado.\n3. Imprimir versión de Kernel\n4. Imprimir nombre del usuario que lo está ejecutando.\n5. Imprimir lista de filesystems montados en el servidor."

echo "---------FECHA----------"
date
echo "--------DISTRO----------"
lsb_release -a
echo "--------KERNEL----------"
uname -a
echo "-------USUARIO----------"
whoami
echo "------FILE SYS---------"
df -h

echo "\n>>Fin del primer ejercicio :)<<"

exit
