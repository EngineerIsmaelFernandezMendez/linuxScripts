#!/bin/bash
sudo apt update
sudo apt install mysql-server
#According to ChatGPT:
#In many containers (including Distrobox), systemd / init scripts don’t run, so apt install mysql-server can’t start the MySQL service automatically.
#That’s why the socket /var/run/mysqld/mysqld.sock doesn’t exist — no server is running
#ChatGPT attempt 
#sudo mkdir -p /var/run/mysqld
#sudo chown mysql:mysql /var/run/mysqld
#sudo chown -R mysql:mysql /var/lib/mysql
#sudo -u mysql mysqld_safe --datadir=/var/lib/mysql --skip-networking &
mysql -v # Not working
