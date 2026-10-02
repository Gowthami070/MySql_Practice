use collegedb;
select 
	e.emp_id,
	e.emp_name,
	d.dept_name
from employee e
right join department d
on e.dept_id=d.dept_id;
select 
e.emp_name,
d.dept_name
from employee e
right join department d
on e.dept_id=d.dept_id;
----------------------------------
select
	e.emp_name,
	d.dept_name
from employee e
right join department d
on e.dept_id=d.dept_id;
select 
	d.dept_name,
	d.location,
	d.manager_name,
	e.emp_name
from employee e
right join department d
on d.dept_id=e.dept_id;
select 
	d.dept_id,
	d.dept_name
from employee e
right join department d
on d.dept_id=e.dept_id
where e.emp_id is null;
select 
	d.dept_name,
	count(e.emp_id) as employee_cnt
from employee e
right join department d
on d.dept_id=e.dept_id
group by d.dept_name;
select
	d.dept_name,
	count(e.emp_id) as employee_cnt,
	avg(e.salary) as average_salary
from employee e
right join department d
on d.dept_id=e.dept_id
group by d.dept_name,d.dept_id;
select 
	d.dept_name,
	count(e.emp_id) as employee_cnt
from employee e
right join department d
on d.dept_id=e.dept_id
group by d.dept_name
having count(e.emp_id)>2;
select 
	d.dept_name,
	e.emp_name,
	e.salary
from employee e
right join department d
on d.dept_id=e.dept_id
where e.salary=(
	select max(e1.salary)
	from employee e1
    where e1.dept_id=d.dept_id
);

select 
	d.dept_name,
	count(e.emp_id) as employee_count,
	max(e.salary) as maximum_salary,
	min(e.salary) as minimum_salary,
	avg(e.salary) as average_salary
from employee e
right join department d
on d.dept_id=e.dept_id
group by d.dept_id,d.dept_name;