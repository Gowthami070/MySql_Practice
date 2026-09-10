Write a query to find the employee who has the highest salary using a subquery.
Write a query to display employees whose salary is greater than Rahul's salary.
Write a query to display all employees who work in the same department as Arun.
Write a query to display employees who belong to the IT department using a subquery.
Write a query to display employees who belong to the Sales department using a subquery.
Write a query to find the second highest salary using a subquery.


use company;
select * from employee where salary in(select max(salary) from employee);
select * from employee;
select * from employee where salary>(select salary from employee where emp_name='hema');
select * from employee where job in(select job from employee where emp_name='hari');
select * from employee where job in(select job from depeartmet where dept_name='sql developer');
select * from employee where job in(select job from depeartmet where depeartmet='cyber security');
select * from employee where salary = (select salary from employee order by salary desc LIMIT 1 OFFSET 1);
select * from depeartmet;