#!/usr/bin/env python3

import time
import subprocess

while 1 :
    subprocess.call("echo 1 > /sys/class/leds/orangepi\:red\:status/brightness", shell=True)
    time.sleep(1)## Wait    
    subprocess.call("echo 0 > /sys/class/leds/orangepi\:red\:status/brightness", shell=True)
    time.sleep(1)## Wait 


