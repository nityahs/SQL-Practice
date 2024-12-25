--Session 1
--Basic Function
show databases;
use world;
use customers;
show tables;
select * from city;
select * from country;
select * from countrylanguage;
/*
This Session's Summary
create database
drop database
create table
insert into table
truncate table
drop table
CTRL ENTER for single line execution
CTRL SHIFT ENTER for complete execution
*/
--Creating Database
create database Customers; --creates database Customer
drop database Customers; --deletes Customer database completely
show databases; --shows all the databases in the system
create database Customers;
use customers; --determine the database to use
create table customer_info(id integer, first_name varchar(10), last_name varchar(10) ); --create table table_name(row_name datatype, row_name2 datatype);
show tables;
select * from customer_info; --shows complete table (* is used to select all)
Insert into customer_info(id, first_name, last_name) values (1,'Nitya','Shah');
truncate table customer_info; --deletes the content of table without deleting the format of the table
drop table customer_info; --deletes content and the format of the table
