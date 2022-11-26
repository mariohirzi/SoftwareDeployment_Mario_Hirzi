-- Local database definition.

DROP DATABASE IF EXISTS $MYSQL_DB;

CREATE DATABASE $MYSQL_DB;

USE $MYSQL_DB;


CREATE USER '$MYSQL_USER' IDENTIFIED WITH mysql_native_password BY '$MYSQL_PASS';
GRANT ALL ON $MYSQL_DB.* TO '$MYSQL_USER';
FLUSH PRIVILEGES;

