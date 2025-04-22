# GIT configuration

git init --initial-branch=main

git remote add github git@github.com:LazloDEV/docker-postgres.git

git remote add gitlab git@gitlab.com:LazloDEV/docker-postgres.git

git remote add bitbucket git@bitbucket.org:lazlo_dev/docker-postgres.git



# Docker

docker build -t dbms-mariadb .

docker run -d --rm -p 3306:3306 --name my-mariadb-1 --network my-bridge-net -e MYSQL_ROOT_PASSWORD=mypass dbms-mariadb

docker run -d --rm -p 3306:3306 --name my-mariadb-2 --network my-bridge-net -e MYSQL_ROOT_PASSWORD=mypass mariadb:11-ubi

docker run -d --rm -p 3306:3306 --name my-mariadb-3 --network my-bridge-net -e MARIADB_ROOT_PASSWORD=mypass -v C:/DBMS/Docker-MariaDB/volumes/initdb/init.sql:/docker-entrypoint-initdb.d/init.sql -d mariadb:11-ubi



# DBMS

## SQL Command Types in MariaDB (with Examples)

| Type   | Name                         | Description                          | Example |
|--------|------------------------------|--------------------------------------|---------|
| **DDL** | Data Definition Language     | Defines the structure of the database | `CREATE TABLE users (id INT PRIMARY KEY, name VARCHAR(100));`<br>`ALTER TABLE users ADD email VARCHAR(100);`<br>`DROP TABLE users;` |
| **DML** | Data Manipulation Language   | Deals with data inside tables         | `INSERT INTO users (id, name) VALUES (1, 'Alice');`<br>`UPDATE users SET name = 'Bob' WHERE id = 1;`<br>`DELETE FROM users WHERE id = 1;` |
| **DCL** | Data Control Language        | Controls access to data               | `GRANT SELECT ON mydb.* TO 'user'@'localhost';`<br>`REVOKE SELECT ON mydb.* FROM 'user'@'localhost';` |
| **TCL** | Transaction Control Language | Manages transactions                  | `START TRANSACTION;`<br>`UPDATE users SET name = 'Carol' WHERE id = 2;`<br>`COMMIT;`<br>`ROLLBACK;` |
| **DQL** | Data Query Language          | Queries data                          | `SELECT * FROM users;` |

