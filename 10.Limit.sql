use collegedb;
select * from employee limit 5;
select * 
from employee 
order by salary desc 
limit 5;
select emp_name,salary
from employee
order by salary desc
limit 3;

select emp_name,salary 
from employee
order by salary asc
limit 3;

select emp_name,salary 
from employee 
where salary>50000 
order by salary desc 
limit 3;

select job_role,count(*) as employee_cnt
from employee
group by job_role
order by employee_cnt desc
limit 3;
----------------------------------------------
select * from employee limit 5;
select * from employee order by salary desc limit 3;
select * from employee order by salary asc limit 3;
select * from employee where salary>50000 limit 5;
select job_role,count(*) as employee_cnt 
from employee
group by job_role
limit 3;

select
emp_name,salary
from employee
order by salary desc
limit 3;

select * from employee
where job_role='Developer'
limit 2;
