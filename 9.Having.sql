use collegedb;
select job_role,count(*) as employee_cnt 
from employee
group by job_role;

select job_role,count(*) as employee_cnt 
from employee
group by job_role
having employee_cnt>=2;

select 
job_role,
avg(salary) as average_salary,
count(*) as employee_cnt
from employee
group by job_role
having avg(salary)>50000 and employee_cnt>=2;

select job_role,
count(*) as employee_cnt
from employee
group by job_role
having count(*)>1;

select job_role,count(*) as employee_cnt
from employee 
group by job_role
having count(*)>=2
order by employee_cnt asc;

select job_role,
avg(salary) as average_salary,
count(*) as employee_cnt
from employee
where salary>30000
group by job_role
having avg(salary)>50000
order by average_salary desc;
--------------------------------------------
select job_role,count(*) as employee_cnt
from employee
group by job_role
having employee_cnt>1;

select job_role,count(*) as employee_cnt
from employee
group by job_role
having employee_cnt>=2;

select job_role,count(*) as employee_cnt,
avg(salary) as average_salary
from employee
group by job_role
having avg(salary)>60000;

select job_role,
sum(salary) as total_salary
from employee
group by job_role
having sum(salary)>100000;

select job_role,
max(salary) as maximum_salary
from employee 
group by job_role
having max(salary)>90000;

select job_role,
min(salary) as minimum_salary
from employee 
group by job_role
having min(salary)>40000;

select job_role,count(*) as employee_cnt
from employee
group by job_role
having count(*)>1
order by employee_cnt desc;

select job_role,
avg(salary) as average_salary
from employee
group by job_role
having avg(salary)>60000
order by average_salary desc;

select job_role,
avg(salary) as average_salary
from employee
where salary>40000
group by job_role 
having avg(salary)>60000;