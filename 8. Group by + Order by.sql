select job_role, count(*) as employee_cnt 
from employee
group by job_role
order by employee_cnt desc;

select job_role, count(*) as employee_cnt 
from employee
group by job_role
order by employee_cnt asc;

select job_role, avg(salary) as average_salary 
from employee
where salary>30000
group by job_role
order by average_salary desc;
---------------------------------------
select job_role,count(*) as employee_cnt 
from employee
group by job_role
order by employee_cnt desc;

select job_role ,avg(salary) as average_salary 
from employee
group by job_role 
order by average_salary asc;

select job_role, sum(salary) as total_salary
from employee
group by job_role
order by total_salary desc;

select job_role, max(salary) as maximum_salary
from employee
group by job_role
order by maximum_salary desc;

select city, count(*) as employee_cnt 
from employee
group by city
order by employee_cnt asc;

select city, avg(salary) as average_salary 
from employee
group by city
order by average_salary desc;

select job_role,count(*) as employee_cnt, avg(salary) as average_salary
from employee
group by job_role
order by average_salary desc;

select city,job_role,count(*) as employee_cnt 
from employee
group by city,job_role
order by employee_cnt desc;

select job_role,
	count(*) as employee_cnt,
	sum(salary) as total_salary,
	avg(salary) as average_salary,
	max(salary) as maximum_salary,
	min(salary) as minimum_salary
from employee
group by job_role
order by average_salary desc;

