# This python script configures a static IP,
# configures Apache 2, MySQL, and Django.
# Written by GAJ February 2014 for Python X.X on Rasbian OS.

# import?

# IP config 
# ---------

IPdir = "/etc/network"
IPfileA = "interfaces"
IPfileB = IPfileA + "_mod"

with open(IPfileA, 'r') as inputIP, open(IPfileB, 'w') as outputIP:
	for line in inputIP.readlines():
		if line.strip() == 'iface eth0 inet dchp':
			outputIP.write('iface eth0 inet static\n\naddress 192.168.1.192\nnetmask 255.255.255.0\nnetwork 192.168.1.0\nbroadcast 192.168.1.255\ngateway 192.168.1.254\n')
		else:
			outputIP.write(line)			

# Apache Config

