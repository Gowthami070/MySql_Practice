use collegedb;
select distinct city from employee;
select distinct job_role from employee;
SELECT DISTINCT city, job_role
FROM employee;
select distinct city,count(*) as employee_cnt
from employee
group by city;
select count(distinct city) as unique_city from employee;
select count(city) from employee;
select distinct city from employee where salary>50000;
select distinct city from employee order by city desc;
select distinct city
from employee
where salary>50000
order by city;
---------------------------------
select distinct city from employee;
select distinct job_role from employee;
select distinct city from employee
order by city;
select distinct job_role from employee
where salary>60000;
select distinct city,job_role from employee;
select count(distinct city) as unique_cities from employee;
select count(distinct job_role) as unique_jobroles from employee;
select distinct city from employee
where age>25;
select distinct city,job_role from employee
order by city asc;
select distinct gender from employee;