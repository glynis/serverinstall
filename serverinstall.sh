#!/bin/bash

# This bash script updates the linux distro; 
# installs Python, Apache2, MySQL, and Django;
# copies modified config files from MBP to RP.
# Written by GAJ Febraury 2014 for Raspberry Pi 2, Raspbian OS.

# ---------
# OS check 
# ---------

apt-get updates
apt-get upgrades

# ---------------
# PYTHON install
# ---------------

# install python here

# ---------------
# APACHE install 
# ---------------
 
apt-get install -y apache2

# special packages for python?

# --------------
# MYSQL install 
# --------------

apt-get install mysql-server mysql-client

mysqladmin -u root password passwordhere


# ---------------
# DJANGO install
# ---------------

 apt-get install python-django python-mysqldb

# place django python files in /var/www
# restart apache

# copy config files from mbp to rp

# --------------
# Restart server
# --------------
