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

#Constraints 2
/*
check constraint
foreign key
default constraint
unique constraint
*/
create table person1(
id integer,
first_name varchar(25) not null,
last_name varchar(25) not null
);
alter table person1 modify id integer not null;
alter table person1 modify first_name varchar(10);
desc person1;
alter table person1 modify id varchar(10) not null;
alter table person1 add constraint primary key(id,first_name);
alter table person1 drop primary key;
alter table person1 modify id int primary key;
alter table person1 add salary int;

-- foreign key
create table department(
id int not null,
department_name varchar(25) not null,
dept_id int not null,
primary key(dept_id),
constraint fk_person1dept foreign key(id) references person1(id)
);
DESC department;
alter table department drop foreign key fk_person1dept; #drops specified foreign key
alter table department add foreign key fk_person1dept(id) references person1(id);#alters to add foreing key
drop table person,department;
-- check constraint
create table person(
id int not null,
first_name varchar(25),
last_name varchar(25),
salary integer not null,
primary key(id),
check(salary<50000)); #works as a constraint in regards to value
desc person;
insert into person(id, first_name, last_name, salary) values (1,'Nitya', 'Shah',60000); #this fails the check where salary>50000
insert into person(id, first_name, last_name, salary) values (1,'Nitya', 'Shah',20000); #this fails the check where salary<50000
alter table person drop check person_chk_1; #we got the name of constraint from below statement
show create table person; #helps us identify the name of constraint set by default while making a constraint
alter table person add constraint check(salary<50000);
select * from person;
drop table person;
-- default constraint
create table person(
id int not null,
first_name varchar(25),
city varchar(25) default 'Bangalore' #this sets default value for the given column
);
insert into person(id,first_name) values(1,'Nitya');
insert into person values(2,'Shah','Mumbai');
select * from person;
alter table person alter city drop default; #used to drop default
alter table person alter city set default 'Bangalore'; #alter to change default

