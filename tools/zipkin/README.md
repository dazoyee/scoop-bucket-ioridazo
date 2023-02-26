zipkin
---

# MySQL

1. install the schema and indexes
   ```
   mysql -uroot -e "create database if not exists zipkin"
   grant all privileges on zipkin.* to zipkin@localhost IDENTIFIED BY 'zipkin'
   ```
2. DDL  
   https://github.com/openzipkin/zipkin/blob/master/zipkin-storage/mysql-v1/src/main/resources/mysql.sql

3. 環境変数を指定して実行  
   `.\start.bat`
