#Joins
select* from person;
select * from department;
#INNER JOIN
select person.id, person.first_name,department.department_name from person inner join department on person.id=department.id;
select * from person inner join department on person.id=department.id;
#LEFT JOIN
select person.id, person.first_name,department.department_name from person LEFT join department on person.id=department.id; #SHOWS ALL THE VALUES OF LEFT TABLE AND MATCHES THE VALUE FROM OTHER TABLE
#RIGHT JOIN
select person.id, person.first_name,department.department_name from person RIGHT join department on person.id=department.id; #SHOWS ALL THE VALUES OF RIGHT TABLE AND MATCHES THE VALUE FROM OTHER TABLE
#FULL OUTER JOIN: Union of left and right join
select person.id, person.first_name,department.department_name from person LEFT join department on person.id=department.id
union
select person.id, person.first_name,department.department_name from person RIGHT join department on person.id=department.id; 
#cross join
select person.id, person.first_name,department.department_name from person cross join department; #shows all possible combinations
#natural join
/*
used to combine rows from two or more tables based on common columns. It automatically matches columns with the same names and 
compatible data types in both tables and eliminates duplicate columns in the result.
*/
select person.id, person.first_name,department.department_name from person natural join department;  
#Join on multiple tables
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(25),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(department_id)
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(department_id)
);
insert into departments values (1,'Computer'),(2,'Electric'),(3,'Mechanical');
insert into students values (1,'Nitya',1),(2,'Hitesh',1),(3,'Arsh',2),(4,'Manish',3);
insert into courses values (101,'CyberSec',1),(102,'UIDev',1),(103,'Hardware',2),(104,'Motor',3);
select students.student_id,students.name,departments.department_id,departments.department_name,course_name from students 
inner join departments on students.dept_id=departments.department_id
inner join courses on departments.department_id=courses.dept_id;
