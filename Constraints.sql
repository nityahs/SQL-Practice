/*
not null
primary key
unique 
foreign key
check 
default
index
*/
create table student_info(
id integer not null, 
first_name varchar(25) not null,
last_name varchar(25) not null, 
age integer); #can use int as well

desc student_info;
alter table student_info modify age integer not null; #helps update to not null
alter table person1 modify first_name varchar(25); #we can drop not null by simply not specifying not null with modifying the row 
alter table student_info modify id integer primary key; #updates primary key
alter table student_info add unique(first_name); #sets attribute as unique

insert into student_info(id, first_name, last_name,age) values (1,'Nitya','Shah', 19);
insert into student_info(id, first_name, last_name,age) values (2,'N','HS', 19);
insert into student_info(id, first_name, last_name,age) values (3,'Nitya','hs', 19);
delete from student_info where id=2;
#this constraint checks when a data is entered both the data is unique combined, there cannot be two values having nitya and 18.
#though there can be 2 values nitya 12 and nitya 18
alter table student_info add constraint mul_cn	unique(age,first_name);
ALTER TABLE student_info DROP INDEX first_name; #drop constraint on first_name;

create table person(
id int not null ,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
constraint pk_person primary key(id, last_name));
desc person;
ALTER TABLE person DROP PRIMARY KEY;
ALTER TABLE person ADD CONSTRAINT pk_person PRIMARY KEY (id, last_name);

alter table person 
drop  primary key;
desc person;
alter table person add primary key(id);
