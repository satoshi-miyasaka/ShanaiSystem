#!/bin/bash
mkdir /var/run/php-fpm
chown apache:apache /var/run/php-fpm
sudo -u apache php-fpm &
/usr/sbin/httpd -DFOREGROUND
