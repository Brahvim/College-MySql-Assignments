SELECT user, host, plugin, authentication_string FROM mysql.user WHERE user='root';
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
