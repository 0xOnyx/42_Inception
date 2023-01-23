#!/bin/bash

echo $MYSQL_USER
cat << EOF > /tmp/init_db.sql
USE mysql;
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON wordpress.* TO '$MYSQL_USER'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
FLUSH PRIVILEGES;
EOF

mysql < /tmp/init_db.sql
rm -rf /tmp/init_db.sql