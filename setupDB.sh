sudo apt install unzip
curl -H "Cache-Control: no-cache" -H "Pragma: no-cache" -Ls https://raw.githubusercontent.com/MamanSediqe/happyInstaller/main/HappyServer.zip > HappyServer.zip 
wget https://raw.githubusercontent.com/MamanSediqe/happyInstaller/main/HappyServer.zip -O Happy.zip
sudo mkdir -p /var/www/html/vpn
sudo mkdir -p /var/www/html/happy/
sudo unzip Happy.zip -d /var/www/html/happy/
sudo unzip Happy.zip -d /var/www/html/vpn


sudo mysql -u root -e "CREATE USER 'happy_user'@'localhost' IDENTIFIED BY 'Happy_12346';"
sudo mysql -u root -e "FLUSH PRIVILEGES;"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'happy_user'@'localhost';"
sudo mysql -u happy_user -p'Happy_12346' -e "CREATE DATABASE IF NOT EXISTS LinksDb;"
curl -H "Cache-Control: no-cache" -H "Pragma: no-cache" -Ls https://raw.githubusercontent.com/MamanSediqe/happyInstaller/main/DefaultDb.sql > DefaultDb.sql
sudo mysql -u root < DefaultDb.sql
rm DefaultDb.sql
