-- show databases in our db
show databases;
-- creat db
create database one_child;
-- drop db
drop database one_child;
-- move from db to other
use pet_shop;
-- know which database we use
select database();
-- create table using varchar(100) 100 is max number of char , age is number of type intger
create table cats (name varchar(100) , age int);
-- show table in our database
show tables;
-- describe cats table details
desc cats;
-- drop cats table
drop table cats;

-- create / describe / drop (challenge)
create table pastries(name varchar(100) , quantity int);
desc  pastries;
drop table pastries;
