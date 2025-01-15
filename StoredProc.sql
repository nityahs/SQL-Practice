#stored procedure
select students.student_id,students.name,departments.department_id,departments.department_name,course_name from students 
inner join departments on students.dept_id=departments.department_id
inner join courses on departments.department_id=courses.dept_id;
#for stored procedure select stored procedure on the side bar and create a stored procedure, there give a procedure name, use call function_name 
#can give parameter names as IN and return values as OUT
call mutlitable_join; #how to call non-parameter stored procedure;
call input_func('Bangalore');
call output_func(@ret);
select @ret as totalRecords;
SET @ret = NULL;
CALL inout_func(@ret, 'Bangalore');
SELECT @ret;

select * from person;
select * from person where first_name like '__b%'; # _ is for definite number of letters (one _ for one space) and % can be for any number of letters 
select * from person where first_name like '__i%'; #has i at third place
select * from person where first_name like '%i%';# has i anywhere in letter
