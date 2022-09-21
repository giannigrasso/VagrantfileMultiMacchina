#!/bin/bash
DBNAME=vagrant
DBUSER=vagrant
DBPASSWD=vagrantpass
echo "Creating new db $DBNAME"
mysql -u root -e "CREATE DATABASE $DBNAME"
mysql -u root -e "CREATE TABLE $DBNAME.prova (id INT, campo VARCHAR(20))"

mysql -u root -e "CREATE USER '$DBUSER'@'%' IDENTIFIED BY '$DBPASSWD'"
mysql -u root -e "grant all privileges on $DBNAME.* to '$DBUSER'@'%'"
