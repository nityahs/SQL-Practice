#Views: virtual table based on SQL Query
alter table person modify id int auto_increment;
ALTER TABLE person
DROP PRIMARY KEY;
ALTER TABLE person
ADD PRIMARY KEY (id);
ALTER TABLE person
MODIFY COLUMN id INT AUTO_INCREMENT;
/*
Only One AUTO_INCREMENT Column: You can only have one AUTO_INCREMENT column in a table.
Primary Key or Unique Key: The column with AUTO_INCREMENT must also be part of the table's primary key or a unique key.
*/
create table department(
student_id int auto_increment,
department_name varchar(25),
foreign key (student_id) references person(id)
);
DESC DEPARTMENT;
ALTER TABLE DEPARTMENT MODIFY DEPARTMENT_NAME VARCHAR(25) NOT NULL;
INSERT INTO DEPARTMENT VALUES(1,'Computer Science'),(2,'Electronic');
select * from department;

create view student_ino as 
select first_name,city from person inner join department using (id); 

select * from student_ino;
