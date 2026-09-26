use collegedb;
select job_role,count(*) as employee_cnt
from employee
group by job_role;
select job_role,sum(salary) as total_salary
from employee
group by job_role;
select job_role,avg(salary) as average_salary
from employee
group by job_role;
select job_role,
max(salary) as maximum_salary,
min(salary) as minimum_salary
from employee
group by job_role;
select job_role,count(*) as employee_cnt
from employee
group by job_role
having count(*)>1;
select job_role,avg(salary) as average_salary
from employee
where salary > 40000
group by job_role
having avg(salary)>60000;
select job_role,count(*) as employee_cnt
from employee
group by job_role
having count(*)>1
order by employee_cnt desc;
----------------------------------------
select city,count(*) as employee_cnt 
from employee
group by city;
select job_role,sum(salary) as total_salary
from employee
group by job_role;
select job_role,avg(salary) as average_salary
from employee
group by job_role;
select city,max(salary) as maximum_salary
from employee
group by city;
select job_role,min(salary) as lowest_salary
from employee
group by job_role;
select city,count(*) as employee_cnt
from employee
group by city
having count(*)>1;
select job_role,avg(salary) as average_salary
from employee
group by job_role
having avg(salary)>70000;
select city,sum(salary) as total_salary
from employee
group by city
having sum(salary)>100000;
select job_role,count(*) as employee_cnt
from employee
where salary>40000
group by job_role;
select city,avg(salary) as average_salary
from employee
where salary>40000
group by city
having avg(salary)>60000;
select job_role,count(*) as employee_cnt
from employee
group by job_role
having count(*)>1
order by employee_cnt desc;