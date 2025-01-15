#Practice L1:
select * from person where first_name like 'a%';	
select * from customer_info;
select concat(first_name,' ' , last_name) as EmployeeName, salary from customer_info where id in
(select id from customer_info where salary between 15500 and 50000); #known as subqueries
alter table customer_info modify dob year;
select * from customer_info where dob=2024; # when datatype is year we can directly compare it
UPDATE customer_info SET dob = NULL WHERE id=1;
UPDATE customer_info SET dob = NULL WHERE id=2;
alter table customer_info modify dob date;
UPDATE customer_info SET dob = '2024-01-01' WHERE id = 1;
UPDATE customer_info SET dob = '2022-05-15' WHERE id = 2;
select * from customer_info where year(dob)=2024; #this helps us compare directly the date, year and day where format of column is date
select * from customer_info where month(dob)=1;
select * from customer_info where day(dob)=	15;
select city,count(*) from person group by city; 
 
 call mutlitable_join;
 
SELECT students.name, departments.department_name
FROM students
INNER JOIN departments
ON departments.department_id = students.dept_id
AND departments.department_name IN ('Computer'); #we print details of person whose department is computer

#cloning table structure
create table s like students;
select * from s;
#cloning data 
INSERT INTO s SELECT * FROM students;

-- we use limit in the end of syntax to determine how many rows are required to be displayed

select * from customer_info order by salary desc limit 2;
select * from customer_info order by salary asc limit 4;

#nth highest values
-- using limits
select first_name, salary from customer_info order by salary desc limit 0,3; -- n-1 , 1 for nth highest salary here
/*
The first number (n-1) specifies the offset (starting point), which is the number of rows to skip before starting to return results.
The second number (1) specifies the limit (number of rows to return), which is 1 in this case, meaning only one row will be returned.
*/

-- without using limits	

#count, max(),min(),sum(),avg() perform functions as per their names
select max(salary) from customer_info;
select avg(salary) from customer_info;

#cascade 
-- on delete cascade: here child table deletes referencing row from itself if referenced row from parent is deleted
-- on update cascade: here child table updates referencing row from itself if referenced row from parent is updated
create table stud(
id int primary key,
courseId int,
Foreign key(courseId) references courses(course_id)
on delete cascade
on update cascade); -- we include update and delete cascade with foreign key definition
