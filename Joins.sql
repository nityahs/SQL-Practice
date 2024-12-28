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
