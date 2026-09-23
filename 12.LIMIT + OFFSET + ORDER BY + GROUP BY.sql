use collegedb;
select * from employee
order by salary desc
limit 1 offset 1;

select * from employee
order by salary desc
limit 1 offset 2;

select * from employee
order by salary asc
limit 1 offset 1;

select * from employee 
where salary>50000
order by salary desc
limit 3;

select * from employee
order by salary desc
limit 2 offset 1;

select * from employee
order by salary desc
limit 2 offset 3;

select job_role,count(*) as employee_count
from employee
group by job_role
order by employee_count desc
limit 2;

select job_role,avg(salary) as average_salary
from employee
where salary>40000
group by job_role
order by average_salary desc
limit 3;

select emp_name,job_role,salary
from employee
order by salary desc
limit 1 offset 1;

select emp_name,city,salary
from employee
order by salary asc
limit 1 offset 2;