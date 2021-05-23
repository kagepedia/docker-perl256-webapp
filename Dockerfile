FROM perl:5.26

# apt update
RUN apt update

# vim install
RUN apt -y install vim

# git install
RUN apt -y install git

# apache install
RUN apt -y install apache2

# apache2設定作成
COPY www/ /var/www
# CMD [ "/etc/init.d/apache2", "start" ]

# mysql install
RUN apt -y install lsb-release
RUN mkdir ~/src && \
    cd ~/src && \
    wget http://dev.mysql.com/get/mysql-apt-config_0.8.17-1_all.deb

# dpkg -i mysql-apt-config_0.8.17-1_all.deb
# CMD [ "mkdir", "~/src" ]
# CMD [ "cd", "~/src" ]
# RUN wget http://dev.mysql.com/get/mysql-apt-config_0.8.17-1_all.deb
# RUN dpkg -i mysql-apt-config_0.8.17-1_all.deb 

# 1 1 4

RUN apt-get update
# RUN apt-get -y install mysql-server

# password root root
# RUN service mysql start
# CMD [ "mysql", "-u", "root", "-p" ]

# mysqlの設定作成

RUN cpan install Module::Build

WORKDIR /var/www
# RUN git clone https://github.com/googleads/google-ads-perl.git
# RUN cpan install Module::Build
# RUN perl Build.PL
# RUN perl Build installdeps
