curl -H "Cache-Control: no-cache" -H "Pragma: no-cache" -Ls https://raw.githubusercontent.com/MamanSediqe/happyInstaller/main/DefaultDb.sql > DefaultDb.sql
sudo mysql -u root < DefaultDb.sql
