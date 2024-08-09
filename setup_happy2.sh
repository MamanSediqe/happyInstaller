sudo apt install unzip
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
curl -H "Cache-Control: no-cache" -H "Pragma: no-cache" -Ls https://raw.githubusercontent.com/MamanSediqe/happyInstaller/main/DefaultDb2.sql > DefaultDb2.sql
sudo mysql -u u312411968_happy2_user -p'Happy_12346' u312411968_happy2_db < DefaultDb2.sql

# Grant Permission to write on folder
chmod 775  /var/www/html/happy2/
chown www-data:www-data /var/www/html/happy2/

# Cleanup
rm DefaultDb2.sql
rm Happy2Server.zip 
