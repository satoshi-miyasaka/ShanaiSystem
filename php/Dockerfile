FROM centos:latest

RUN yum update -y
RUN yum install -y git zip unzip httpd php php-mbstring php-xml php-xmlrpc php-gd php-pdo php-mysqlnd php-json php-intl.x86_64
WORKDIR /root
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer
ADD php.ini /etc/php.ini
# RUN composer create-project --prefer-dist cakephp/app test

EXPOSE 80
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
