# This python script configures a static IP,
# configures Apache 2, MySQL, and Django.
# Written by GAJ February 2014 for Python X.X on Rasbian OS.

# import?

IPdir = "/etc/network"
IPfileA = "interfaces"
IPfileB = IPfileA + "_mod"

with open(IPfileA, 'r') as inputIP, open(IPfileB, 'w') as outputIP:
	for line in inputIP.readlines():
		if line.strip() == 'iface eth0 inet dynamic':
			outputIP.write('iface eth0 inet static\n')
		else:
			outputIP.write(line)			

