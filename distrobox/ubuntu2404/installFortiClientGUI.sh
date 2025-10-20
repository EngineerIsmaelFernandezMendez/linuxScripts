#!/bin/bash
#Based on: https://serveistic.upc.edu/ca/upclink/documentacio/forticlient-ubuntu-24-04.pdf

#Download libdbusmenu-gtk4
wget http://mirrors.kernel.org/ubuntu/pool/universe/libd/libdbusmenu/libdbusmenu-gtk4_16.04.1+18.10.20180917-0ubuntu8_amd64.deb

#Install libdbusmenu-gtk4 package
dpkg -i libdbusmenu-gtk4_16.04.1+18.10.20180917-0ubuntu8_amd64.deb

#Download libappindicator1
wget http://mirrors.kernel.org/ubuntu/pool/universe/liba/libappindicator/libappindicator1_12.10.1+20.10.20200706.1-0ubuntu1_amd64.deb

#Install libappindicator1 package
dpkg -i libappindicator1_12.10.1+20.10.20200706.1-0ubuntu1_amd64.deb

#Download latest .deb FortiClient package from Fortinet.
wget https://links.fortinet.com/forticlient/deb/vpnagent
