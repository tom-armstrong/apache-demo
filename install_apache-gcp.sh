#!/bin/bash
#cld=aws
cld=gcp
sudo touch /var/lib/man-db/auto-update  # slow mand-db update bug
sudo apt update -y
sudo apt install apache2 -y
sudo mv ${cld}-apache/index.html ${cld}-apache/${cld}-graphic.gif /var/www/html/
sudo systemctl start apache2
