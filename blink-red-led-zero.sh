#!/bin/bash 
CONTADOR=1
while [ $CONTADOR ]; do
	#encendemos led rojo de la placa
	echo 1 > /sys/class/leds/orangepi\:red\:status/brightness
	#esperamos 0.5 segundos
	sleep 0.5
	#apagamos led rojo de la placa
	echo 0 > /sys/class/leds/orangepi\:red\:status/brightness
	#esperamos 0.5 segundos
	sleep 0.5
done  #y así hasta el infinito
#En caso de salir forzosamente del bucle
#apagamos led rojo de la placa
echo 0 > /sys/class/leds/orangepi\:red\:status/brightness

#buena manera de saber si la placa se cuelga en algún momento por exceso de temperatura u otra causa