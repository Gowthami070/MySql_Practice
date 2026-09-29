use collegedb;
select job_role,avg(salary)
from employee
group by job_role;
SELECT AVG(average_salary) AS overall_role_average
FROM (
    SELECT job_role, AVG(salary) AS average_salary
    FROM employee
    GROUP BY job_role
) AS role_salary;
select 
emp_name,salary,
(select avg(salary) from employee) as average_salary
from employee;
SELECT e1.emp_name, e1.job_role, e1.salary
FROM employee e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM employee e2
    WHERE e2.job_role = e1.job_role
);
--------------------------------------------
select 
	emp_name,
	salary,
	(select avg(salary) from employee) as average_salary
from employee;
select
	emp_name,
	salary,
	(select max(salary) from employee) as maximum_salary
from employee;
SELECT AVG(average_salary) AS overall_role_average
FROM (
    SELECT job_role, AVG(salary) AS average_salary
    FROM employee
    GROUP BY job_role
) AS role_salary;
select avg(average_salary) as average_salary
from (
	select job_role,avg(salary) as average_salary
	from employee
	group by job_role
) as average_salaries;
select job_role,salary
from employee
where salary > (
	select avg(salary) as average_salary
	from employee
);
select *
from employee e1
where salary <(
	select avg(salary) as average_salary
	from employee e2
	where e2.city=e1.city
);
select *
from employee e1
where salary = (
	select max(salary) as maximum_salary
	from employee e2
	where e2.job_role=e1.job_role
);
select emp_name,city,salary
from employee e1
where salary > (
	select avg(salary) as average_salary
	from employee e2
	where e2.city=e1.city
);
select *
from employee e1
where e1.salary = (
	select max(e2.salary) as maximum_salary
	from employee e2
	where e2.job_role=e1.job_role
);
------------------------
select *
from employee e1
where e1.salary > (
	select avg(e2.salary) as average_salary
	from employee e2
	where e2.job_role=e1.job_role
);
select *
from employee e1
where e1.salary < (
	select avg(e2.salary) as average_salary
	from employee e2
	where e2.city=e1.city
);
select *
from employee e1
where e1.salary = (
	select max(e2.salary) as maximum_salary
	from employee e2
	where e2.city=e1.city
);
select *
from employee e1
where e1.salary = (
	select min(e2.salary) as minimum_salary
	from employee e2
	where e2.job_role=e1.job_role
);
select *
from employee e1
where e1.salary > (
	select min(e2.salary) as minimum_salary
	from employee e2
	where e2.city=e1.city
);
select *
from employee e1
where salary < (
	select max(salary) as maximum_salary
	from employee e2
	where e2.job_role=e1.job_role
);
select 
	emp_name,
    job_role,
    salary
from employee e1 
where e1.salary > (
	select avg(e2.salary) as average_salary
	from employee e2
	where e2.job_role=e1.job_role
);
select 
	emp_name,
    city,
    salary
from employee e1
where e1.salary = (
	select max(e2.salary) as maximum_salary
	from employee e2
	where e2.city=e1.city
);