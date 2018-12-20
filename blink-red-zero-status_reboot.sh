#!/bin/bash
SERVICE=read_nrflite_orangezero.py
while :
do
	result=$(ps ax|grep -v grep|grep $SERVICE)
#	echo ${#result}
	if [ ${#result} != 0 ] 
	then
		# Indicamos con parpadeo lento que está todo OK
		# cada 10 segundos probamos si sigue bien
		for i in `seq 1 5`
		do
			#encendemos led rojo de la placa
			echo 1 > /sys/class/leds/orangepi\:red\:status/brightness
			#esperamos 1 segundo
			sleep 1
			#apagamos led rojo de la placa
			echo 0 > /sys/class/leds/orangepi\:red\:status/brightness
			sleep 1
			#esperamos 1 segundo
		done
	else
		# Indicamos con parpadeo rápido que no está funcionando
		# cada 10 segundos probamos si ha vuelto
		for i in `seq 1 75`
		do
		#encendemos led rojo de la placa
			echo 1 > /sys/class/leds/orangepi\:red\:status/brightness
			#esperamos 10ms
			sleep 0.1
			#apagamos led rojo de la placa
			echo 0 > /sys/class/leds/orangepi\:red\:status/brightness
			sleep 0.1
			#esperamos 10 ms
		done
		#inicar script (en este caso un script de python)
		/root/nrf24-Logger-OrangeZero/$SERVICE > /var/log/nrf24_logger.log &
		# esperamos a que cargue
		sleep 1
	fi
done
