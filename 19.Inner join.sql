use collegedb;
select 
	e.emp_name,
	d.dept_name
from employee e
inner join department d
on e.dept_id=d.dept_id;
SELECT e.emp_name,
       e.salary,
       d.dept_name
FROM employee e
INNER JOIN department d
ON e.dept_id = d.dept_id;
---------------------------------
select 
	e.emp_name,
	d.dept_name
from employee e
inner join department d
on e.dept_id=d.dept_id;
select 
	e.emp_name,
	e.job_role,
	d.dept_name
from employee e
inner join department d
on e.dept_id=d.dept_id;
select 
	e.emp_name,
	e.salary,
	d.dept_name,
	d.manager_name
from employee e
inner join department d
on e.dept_id=d.dept_id;
------------------------------------
select 
	e.emp_name,
	e.salary,
	d.dept_name
from employee e
inner join department d
on e.dept_id=d.dept_id
where e.salary>70000;
select 
	e.emp_name,
	e.job_role,
	d.dept_name
from employee e
inner join department d
on e.dept_id=d.dept_id
where d.dept_name='HR';
select 
	e.emp_name,
	e.salary,
	d.dept_name,
	d.location
from employee e
inner join department d
on e.dept_id=d.dept_id
order by e.salary desc;