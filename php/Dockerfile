FROM centos:latest

RUN useradd apache
RUN yum update -y
RUN yum install -y git zip unzip httpd httpd-devel
RUN yum install -y php php-devel php-common php-mbstring php-openssl \
                   php-mysqlnd php-pdo php-pecl-apcu php-xml php-xmlrpc \
                   php-pear php-gd php-json php-intl
WORKDIR /root
ADD .virc .
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer
ADD php.ini /etc/php.ini
ADD httpd.conf /etc/httpd/conf
ADD notrace.conf /etc/httpd/conf.d/
ADD autoindex.conf /etc/httpd/conf.d/
ADD welcome.conf /etc/httpd/conf.d/
##ADD ssl.conf /etc/httpd/conf.d/
ADD security.conf /etc/httpd/conf.d/
ADD www.conf /etc/php-fpm.d/
ADD php-fpm.conf /usr/lib/tmpfiles.d
ADD entrypoint.sh .
# RUN composer create-project --prefer-dist cakephp/app test

EXPOSE 80
ENTRYPOINT ["sh", "/root/entrypoint.sh"]
