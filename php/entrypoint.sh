#!/bin/bash
mkdir /var/run/php-fpm
chown apache:apache /var/run/php-fpm
su apache -c php-fpm &
/usr/sbin/httpd -DFOREGROUND
