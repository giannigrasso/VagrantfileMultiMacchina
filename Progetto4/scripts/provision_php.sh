#!/bin/bash
echo "Php provisioning - begin"
sudo apt-get install php libapache2-mod-php php-mysql -y
sudo systemctl reload apache2
echo "Php provisioning - end"