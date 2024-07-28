 -- Basic Theory
 
 -- Type of SQL Commands
 --    DDL (Data Definition Language): create, alter, rename, truncate & drop
 --    DQL (Data Query Language): select
 --    DML (Data Manipulation Language): insert, update & delete
 --    DCL (Data Control Language): grant & revoke permission to users
 --    TCL (Transaction Control Language): start transaction, commit, rollback



 -- create Database
 # create database shashikant;
 # create database if not exists shashikant;
 
  -- Delete Database
 # drop database shashikant;
 # drop database if exists shashikant;

-- Show Databse
 # show databases;

use shashikant;

-- Drop the Table --
# drop table users;

-- Create Table --
# create table users(
#	 id int primary key not null, 
#    name varchar(50) not null,
#    age int not null,
#    email varchar(45) null,
#    phone int not null   
# );

-- Showing Tables --
show tables;

-- Meta Data of Table --
# describe users;

-- Change Table Configuration --
 # alter table users modify phone bigint;
 
 -- Delete Data in Table --
# delete from users where  id=1;

-- Insert Data in Table --
# insert into users (id, name, age, email, phone) value (3, "Mohit", 21, "Mohit@gmail.com", 9643510696),(4, "Sumit", 21, "Sumit@gmail.com", 8860700696);




# select * from users;
