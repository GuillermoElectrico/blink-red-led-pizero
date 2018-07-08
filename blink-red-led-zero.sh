#!/bin/bash 

while : 
do
	#encendemos led rojo de la placa
	echo 1 > /sys/class/leds/orangepi\:red\:status/brightness
	#esperamos 1 segundo
	sleep 1
	#apagamos led rojo de la placa
	echo 0 > /sys/class/leds/orangepi\:red\:status/brightness
	#esperamos 1 segundo
	sleep 1
done  #y así hasta el infinito
#En caso de salir forzosamente del bucle
#apagamos led rojo de la placa
echo 0 > /sys/class/leds/orangepi\:red\:status/brightness

#buena manera de saber si la placa se cuelga en algún momento por exceso de temperatura u otra causa
