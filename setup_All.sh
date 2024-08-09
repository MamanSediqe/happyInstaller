# Command 1
sudo apt install apache2

# Command 2
sudo add-apt-repository ppa:ondrej/php

# Command 3
sudo apt-get install php7.4 php7.4-cli php7.4-common php7.4-fpm

# Command 4
sudo apt-get install libapache2-mod-php7.4

# Command 5
sudo apt-get install php7.4-mysqli

# Command 6
sudo systemctl restart apache2

# Command 7
sudo apt-get install mysql-server

# Command 8
sudo systemctl enable mysql

sudo apt install unzip

# Grant Permission to write on folder
chmod 775  /var/www/html/happy2/
chown www-data:www-data /var/www/html/happy2/

# Download and unzip the php files
wget https://raw.githubusercontent.com/MamanSediqe/happyInstaller/main/Happy2Server.zip -O Happy2Server.zip
sudo mkdir -p /var/www/html/happy2/
sudo unzip Happy2Server.zip -d /var/www/html/happy2/

# Create MySQL users and grant privileges
sudo mysql -u root -e "CREATE USER 'u312411968_happy2_user'@'localhost' IDENTIFIED BY 'Happy_12346';"
sudo mysql -u root -e "FLUSH PRIVILEGES;"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'u312411968_happy2_user'@'localhost';"

# Create the database
sudo mysql -u u312411968_happy2_user -p'Happy_12346' -e "CREATE DATABASE IF NOT EXISTS u312411968_happy2_db;"

# Download and import the SQL dump into the correct database
#curl -H "Cache-Control: no-cache" -H "Pragma: no-cache" -Ls https://raw.githubusercontent.com/MamanSediqe/happyInstaller/main/DefaultDb2.sql > DefaultDb2.sql
#sudo mysql -u u312411968_happy2_user -p'Happy_12346' u312411968_happy2_db < DefaultDb2.sql
#rm DefaultDb2.sql

#Import the SQL dump into the database
#sudo mysql -u u312411968_happy2_user -p'Happy_12346' u312411968_happy2_db < /var/www/html/happy2/DefaultDb2.sql


# Cleanup
rm Happy2Server.zip 
