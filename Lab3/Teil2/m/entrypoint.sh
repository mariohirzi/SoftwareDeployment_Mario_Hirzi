#!/bin/bash
/etc/init.d/mysql restart

echo "
CREATE DATABASE $MYSQL_DB;
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED WITH mysql_native_password BY '$MYSQL_PASS';
GRANT ALL ON $MYSQL_DB.* TO '$MYSQL_USER'@'%';
FLUSH PRIVILEGES;" | mysql -u root


tail -f /var/log/mysql/error.log