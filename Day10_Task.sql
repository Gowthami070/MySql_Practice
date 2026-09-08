Write a query to find employees whose salary is greater than 50,000 and display their department name.
Write a query to find employees who work in either IT or HR.
Write a query to display all employees, including employees without a department.
Write a query to display department name and employee name using RIGHT JOIN.
Write a query to find employees who do not have a manager.
Write a query to create a view containing employees whose salary is greater than 50,000.
Write a query to create a view that displays employee name and annual salary.

select * from employee;
select emp_name,dept_no from employee 
where salary>50000;
select emp_name from employee where job in('python developer' or ' java developer');
select * from employee where manager is null;
select * from employee where manager is not null;
create view hightest_salary as 
select * from employee 
where salary > 50000;
select * from hightest_salary;

create view annual_salary as
select emp_name, salary*12 from employee;
select * from annual_salary;