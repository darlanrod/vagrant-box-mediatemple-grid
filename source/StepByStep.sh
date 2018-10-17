# DON'T RUN THIS SCRIPT!!!
# The purpose of this script is to know the steps of creating the virtual machine.

# GENERAL CONFIG
sudo apt-get update && sudo apt-get upgrade -y
sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure tzdata
# Choose America / Los Angeles

# MYSQL
sudo wget https://dev.mysql.com/get/mysql-apt-config_0.8.9-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.9-1_all.deb
# choose MySQL version
sudo apt-get update
sudo apt-get install -y mysql-community-server
rm mysql-apt-config_0.8.9-1_all.deb

# APACHE
sudo apt-get install -y apache2
sudo a2enmod rewrite

# PHP
sudo nano /etc/apt/sources.list
# Add the lines below in the file:
# deb http://packages.dotdeb.org jessie all
# deb-src http://packages.dotdeb.org jessie all
wget https://www.dotdeb.org/dotdeb.gpg
sudo apt-key add dotdeb.gpg
rm dotdeb.gpg
sudo apt-get update
sudo apt-get install -y php7.0

# PHP MODULES
sudo apt-get install -y php7.0 php7.0-bcmath php7.0-bz2 php7.0-cgi php7.0-cli php7.0-common php7.0-curl php7.0-dba php7.0-dev php7.0-fpm php7.0-gettext php7.0-gd php7.0-imap php7.0-intl php7.0-json php7.0-ldap php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-opcache php7.0-pgsql php7.0-pspell php7.0-recode php7.0-soap php7.0-sqlite3 php7.0-xml php7.0-xmlrpc php7.0-xsl php7.0-zip

# CUSTOM PHP.INI
cd /vagrant/ # or the php.ini path
sudo cp php.ini /etc/php/7.0/apache2/php.ini

# PHP MY ADMIN (MYSQL)
sudo apt-get install -y phpmyadmin
sudo nano /etc/apache2/apache2.conf
# Include /etc/phpmyadmin/apache.conf

# GIT
sudo apt-get install -y git

# SVN
sudo apt-get install subversion libapache2-mod-svn

# SERVICES RESTART
sudo service apache2 restart
sudo service mysql restart
