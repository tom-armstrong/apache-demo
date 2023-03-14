#!/bin/bash
#cld=aws
cld=gcp
sudo touch /var/lib/man-db/auto-update  # slow mand-db update bug
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo mv index-${cld}.html /var/www/html/index.html
sudo mv ${cld}-graphic.gif /var/www/html/
