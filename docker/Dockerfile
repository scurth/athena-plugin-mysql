FROM ubuntu:16.04
MAINTAINER sascha.curth@gmail.com

RUN apt-get update ; \
    apt-get install -y apt-utils vim net-tools dialog

RUN echo 'mysql-server mysql-server/root_password password secret' | debconf-set-selections ; \
    echo 'mysql-server mysql-server/root_password_again password secret' | debconf-set-selections ; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server --fix-missing ; \
    apt-get clean; rm -rf /var/tmp/*; rm -rf /tmp/*

RUN sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf
