# Server Launch

This repository contains:
A Bash script to install Apache 2, MySQL, Django, and Python on Raspberry Pi 2 running Raspbian (modified Debian).  
A Python script to obtain a static IP and configure, Apache, MySQL, and Django.

## serverinstall.sh

## config.py

### IP config

The file to be configured here is **interfaces** in **/etc/network/**.  

First, the line **iface eth0 inet dchp** is changed to **iface eth0 inet static**.  Then, the user is asked for the **address**, **netmask**, **network**, **broadcast**, and **gateway** values, which are writen to the **interfaces** file.


