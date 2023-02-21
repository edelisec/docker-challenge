
#!/bin/bash

docker run --name mysql-db -p 3306:1260  -e MYSQL_USER='user-1' -e  MYSQL_ROOT_PASSWORD=1234567 -d mysql:8

docker run --name my-admin -p 82:80 --link mysql-db:db -d phpmyadmin  

 

