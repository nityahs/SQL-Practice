#Session 2
#Updates and Nulls
/*
null and not null values 
update statement
delete statement
alter statement
*/
create table customer_info(
id integer auto_increment, #uses auto_increment [constraint] to naturally increment without effort 
first_name varchar(10),
last_name varchar(10),
salary integer,
primary key(id)); #allots a row as primary key

insert into customer_info(first_name,last_name,salary) values #we don't use id coz it is auto_incremented here
('Nitya','Shah',10000), 
( 'Rakesh','Shah',10000),
( 'Rajat','Shah',null); #has null value

select * from customer_info where salary is null; #here we use where condition to determine where the salary is null
select * from customer_info where salary is not null; #here we use where condition to determine where the salary is not null

update customer_info set salary=50000 where id=6; #updates the data 
update customer_info set salary=30000 where id=2; #updates the data 
delete from customer_info where id=5; #deletes specified data (based on id)

alter table customer_info add email varchar(25); #adds column with datatype
alter table customer_info add dob date;
alter table customer_info modify dob year; #modifies datatype of column
alter table customer_info drop email; #drops particular column
select * from customer_info;
desc customer_info; #gives info about datatype and all the schema related information of table
update customer_info set dob=2024 where id=1;
update customer_info set dob=2022 where id=2; 
#for date format will be: ('2024-12-19')
