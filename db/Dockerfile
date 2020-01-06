FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD test
ENV MYSQL_DATABASE timecard
ENV MYSQL_USER timecard
ENV MYSQL_PASSWORD timecard

ADD 01_table_create\* /docker-entrypoint-initdb.d/

EXPOSE 3306
