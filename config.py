# This python script configures a static IP,
# configures Apache 2, MySQL, and Django.
# Written by GAJ February 2014 for Python X.X on Rasbian OS.

import os

# IP config 
# ---------

IPdir = "/etc/network"
IPfileA = "interfaces"
IPfileB = IPfileA + "_mod"

address = str(raw_input('Enter desired address value:'))
netmask = str(raw_input('Enter desired netmask value:'))
network = str(raw_input('Enter desired network value:'))
broadcast = str(raw_input('Enter desired broadcast value:'))
gateway = str(raw_input('Enter desired gateway value:'))


with open(IPfileA, 'r') as inputIP, open(IPfileB, 'w') as outputIP:
	for line in inputIP.readlines():
		if line.strip() == 'iface eth0 inet dchp':
			outputIP.write('iface eth0 inet static\n\naddress ' + address + '\nnetmask' + netmask + '\nnetwork ' + network + '\nbroadcast ' + broadcast + '\ngateway ' + gateway + '\n')
# user input above values?
		else:
			outputIP.write(line)			

# Apache Config
# -------------

#

