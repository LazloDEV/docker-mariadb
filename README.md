# GIT configuration

git init
git config --local user.email "lazlo.developer@gmail.com"
git config --local user.name "lazlo"



# Docker

docker build -t dbms-mariadb .
docker run -d --rm -p 3306:3306 --name my-mariadb-1 --network my-bridge-net -e MYSQL_ROOT_PASSWORD=mypass dbms-mariadb
docker run -d --rm -p 3306:3306 --name my-mariadb-2 --network my-bridge-net -e MYSQL_ROOT_PASSWORD=mypass mariadb:11-ubi
docker run -d --rm -p 3306:3306 --name my-mariadb-3 --network my-bridge-net -e MARIADB_ROOT_PASSWORD=mypass -v C:/DBMS/Docker-MariaDB/volumes/initdb/init.sql:/docker-entrypoint-initdb.d/init.sql -d mariadb:11-ubi


C:/DBMS/Docker-MariaDB/volumes/initdb/init.sql
C:/DBMS/Docker-Postgres/volumes/initdb/
C:/DBMS/Docker-Postgres/volumes/initdb/