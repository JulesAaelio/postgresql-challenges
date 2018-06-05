sudo -u postgres psql -c "CREATE ROLE "$1" LOGIN PASSWORD '"$2"' SUPERUSER;"
sudo -u postgres psql -c "CREATE DATABASE "$1" OWNER "$1";"

acl="local all "$1" md5"
toadd="1s/^/$acl\n/"
sudo sed -i "$toadd" /etc/postgresql/10/main/pg_hba.conf

echo *:*:*:$1:$2 >> ~/.pgpass
chmod 600 ~/.pgpass
sudo service postgresql restart
