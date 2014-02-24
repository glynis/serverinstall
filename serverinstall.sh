#!/bin/bash

# LAUNCH SERVER 
# --------------

# This bash script updates the linux distro; assigns a static IP; 
# installs and configures Apache2, MySQL, Django, and Python.
# Written by GAJ Febraury 2014 for Raspberry Pi 2, Raspbian OS.

# ---------
# OS check 
# ---------

apt-get updates
apt-get upgrades

# ---------------
# PYTHON install
# ---------------

# install python here so it can be called later in the script

# reboot needed?

# ----------
# IP config
# ----------

# file: /etc/network/interfaces

ip_config="interfaces"

while read LINE
do
#	if  [ $line="iface eth0 inet dynamic" ]
#	then
		sed s/"iface eth0 inet dynamic"/"iface eth0 inet static"/ $ip_config
#	fi
# add address, netmask, network, gateway, nameserver lines
done < $ip_config


# ---------------
# APACHE install 
# ---------------

# ps auxw | grep apache2 | grep -v grep > /dev/null

# if [ $? != 0 ]
# then 
#	/etc/init.d/apache2 start > /dev/null
# fi
 
# sudo apt-get install -y apache2
# this needs cleaning up

# special packages for python?

# --------------
# MYSQL install 
# --------------

# ps auxw | grep mysql | grep -v grep > /

# if [$? != 0 ]
# then
#	/etc/
# fi

# sudo apt-get install mysql-server mysql-client

# -------------
# MYSQL config 
# -------------

# mysqladmin -u root password passwordhere



# ---------------
# DJANGO install
# ---------------

# apt-get install python-django python-mysqldb

# --------------
# DJANGO config
# --------------



# --------------
# APACHE config 
# --------------



# place django python files in /var/www
# restart apache

# -------
# REBOOT 
# -------

# sudo reboot

