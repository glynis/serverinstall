#####################
### LAUNCH SERVER ###
#####################

# This bash script updates the linux distro; checks and fixes the IP; 
# checks, installs, configures Apache2, MySQL, Django, and Python.
# Written by GAJ Febraury 2014 for Raspberry Pi 2, Raspbian OS

#!/bin/bash

################
### OS check ###
################

sudo apt-get updates
sudo apt-get upgrades

#################
### IP static ###
#################

while read LINE
do 
# check line 'iface eth0 inet ...' ends in 'static'
#	what about 'iface defaut inet dchp/static' ?
# check for address, netmask, network, gateway, nameserver lines
# if yes, var = TRUE, else, var = FALSE
done < interfaces

# if var = FALSE, while loop
while read LINE
do
# change 'iface eth0 inet dchp' to 'iface eth0 inet static'
# add blank line
# add address, netmask, network, gateway, nameserver

done < interfaces 
# if var = TRUE, pass over

######################
### APACHE install ###
######################

ps auxw | grep apache2 | grep -v grep > /dev/null

if [ $? != 0 ]
then 
	/etc/init.d/apache2 start > /dev/null
fi
 
sudo apt-get install -y apache2
# this needs cleaning up

# special packages for python?

#####################
### MYSQL install ###
#####################

sudo apt-get install mysql-server mysql-client

####################
### MYSQL config ###
####################

mysqladmin -u root password passwordhere



######################
### PYTHON install ###
######################



######################
### DJANGO install ###
######################

apt-get install python-django python-mysqldb

#####################
### DJANGO config ###
#####################



#####################
### APACHE config ###
#####################



# place django python files in /var/www
# restart apache

##############
### REBOOT ###
##############

sudo reboot

