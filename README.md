# Simple blink red led Orange Pi Zero

Simple script bash to blink orange pi zero onboard led red to heartbeat

### Requirements

#### Hardware

* Orange Pi Zero

#### Software

* armbian

### Installation
* Download from Github 
    ```sh
    $ git clone https://github.com/GuillermoElectrico/blink-red-led-pizero.git
	$ cd blink-red-led-pizero/
	$ sudo chmod+x blink-red-led-zero.sh

* To run the script at system startup. Add to following lines to the end of /etc/rc.local but before exit:
    ```sh
    # Start Blink Led Heartbeat Orange Pi Zero
    /home/--user--/blink-red-led-pizero/blink-red-led-zero.sh > /var/log/blink_led.log &
    ```
