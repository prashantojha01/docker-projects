#!/bin/bash


user="root"
passwd="Admin@123456789"

mysql -u $user -p$passwd << EOF
CREATE DATABASE IF NOT EXISTS college;
use college;
create table IF NOT EXISTS student (name varchar(80),marks int);
LOAD DATA INFILE '/var/lib/mysql-files/studentdata.csv' INTO TABLE college.student FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
Select * from college.student;
EOF