select avg(salary) from employee;
select job_role,avg(salary) from employee group by job_role;
--------------------------------
select count(*) as employee_cnt from employee;
select sum(salary) as total_salary from employee;
select avg(salary) as average_salary from employee;
select max(salary) as highest_salary from employee;
select min(salary) as minimum_salary from employee;

-- where
select count(*) as employee_cnt from employee
where salary>60000;
select sum(salary) as total_salary from employee
where salary>50000;
select avg(salary) from employee
where salary>60000;
select max(salary) as maximum_salary from employee
where city='Hyderabad';
select min(salary) as minimum_salary from employee
where city='Chennai';

-- multiple aggregates
select
count(*) as employee_cnt,
sum(salary) as total_salary,
avg(salary) as average_salary
from employee;
select 
count(*) as employee_cnt,
max(salary) as maximum_salary,
min(salary) as minimum_salary
from employee;

-- distinct
select count(distinct city) as unique_city_cnt from employee;
select count(distinct job_role) as unique_jobrole_cnt from employee;
--------------------------
select count(*) from employee;
select sum(salary) as total_salary from employee
where job_role='Developer';
select avg(salary) as average_salary from employee
where city='Hyderabad';
select max(salary) as maximum_salary from employee
where job_role='Testing';
select min(salary) as minimum_salary from employee
where age>25;
select count(*) as employee_cnt from employee
where salary between 40000 and 90000;
select sum(salary) as total_salary from employee
where city='Chennai' 
	or city='Pune';
select avg(salary) as average_salary from employee
where job_role='Developer' 
	or job_role='HR';
select count(distinct city) as unique_city_cnt from employee;
select count(distinct job_role) as unique_job_role_cnt from employee
where salary>50000;
