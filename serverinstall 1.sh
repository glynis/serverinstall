#!/bin/bash

### upgrades ###
sudo apt-get updates
sudo apt-get upgrades

### ip ###

### lighttpd install ###	# later change to apache 
sudo apt-get install lighttpd
# special packages for python?

### mysql install ###
sudo apt-get install mysql-server mysql-client

### configure mysql ###
mysqladmin -u root password passwordhere

### django install ###
apt-get install python-django python-mysqldb

### configure django ###

### configure lighttpd ###
# place django python files in /var/www
# restart lighttpd

# is there anything else to be installed to use python with mysql

### reboot ###
sudo reboot

