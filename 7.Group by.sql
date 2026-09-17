use collegedb;
select salary, avg(salary) from employee group by salary;
select count(*) from employee;
select sum(salary) from employee;
select avg(salary) from employee;
select min(salary) from employee;
select max(salary) from employee;
select count(*),avg(salary) from employee;
select job_role, count(*) from employee group by job_role;
select job_role, avg(salary) from employee group by job_role;
select emp_name, avg(salary) from employee group by emp_name;
select job_role, avg(salary) as average_salary from employee group by job_role;
select job_role, sum(salary) as salaries_sum from employee group by job_role;
select job_role, max(salary) as maximum_salary from employee group by job_role;
select job_role, min(salary) as minimum_salary from employee group by job_role;
select job_role,
	count(*) as employee_cnt,
	sum(salary) as total_salary,
	min(salary) as minimum_salary,
	max(salary) as maximum_salary,
	avg(salary) as average_salary 
from employee 
group by job_role;
select city,count(*) as employee_cnt from employee group by city;
select city,avg(salary) as average_salary from employee group by city;
select job_role,city,count(*) as employee_cnt from employee group by job_role,city;
select city,salary,count(*) from employee group by city,salary;
----------------------------------------
select job_role, count(*) as employee_cnt from employee group by job_role;
select job_role,avg(salary) as average_salary from employee group by job_role;
select job_role,sum(salary) as total_salary from employee group by job_role;
select job_role,max(salary) as maximum_salary from employee group by job_role;
select job_role,min(salary) as minimum_salary from employee group by job_role;
select city,count(*) employee_cnt from employee group by city;
select city,avg(salary) as employee_cnt from employee group by city;
select city,job_role, count(*) as employee_cnt from employee group by city,job_role;
select job_role,
	count(*) as employee_cnt,
	sum(salary) as total_salary,
	min(salary) as minimum_salary,
	max(salary) as maximum_salary,
	avg(salary) as average_salary 
from employee 
group by job_role;


