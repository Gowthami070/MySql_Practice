use collegedb;
select
	e.emp_name,
	d.dept_name
from employee e 
left join department d
on e.dept_id=d.dept_id;
select 
	e.emp_name,
	e.job_role,
	d.dept_name,
	d.manager_name
from employee e
left join department d
on e.dept_id=d.dept_id;
select * 
from employee e
left join department d
on e.dept_id=d.dept_id; 
--------------------------------
select *
from employee e
left join department d
on e.dept_id=d.dept_id
where d.dept_id is null;
select 
	e.emp_name,
	d.dept_name
from employee e
left join department d
on e.dept_id=d.dept_id
where e.salary>80000;
select 
	e.emp_name,
	e.salary,
	d.dept_name
from employee e
left join department d
on e.dept_id=d.dept_id
order by e.salary desc;
-----------------------------------
select 
	e.emp_id,
	e.emp_name,
	d.dept_id
from employee e
left join department d
on e.dept_id=d.dept_id
where d.dept_id is null;
select 
	d.dept_name,
	count(e.emp_id)
from department d
left join employee e
on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;
select
	e.dept_id,
	d.dept_name,
	d.location
from department d
left join employee e
on e.dept_id=d.dept_id
where e.emp_id is null;
select
	d.dept_name,
	count(e.emp_id) as employee_count,
	avg(e.salary) as average_salary
from department d
left join employee e
on e.dept_id=d.dept_id
GROUP BY d.dept_id, d.dept_name;
select 
	d.dept_name,
	count(e.emp_id) as employee_count
from employee e
left join department d
on e.dept_id=d.dept_id
GROUP BY d.dept_id, d.dept_name
having count(e.emp_id)>2;
select 
	d.dept_name,
	count(e.emp_id) as employee_count
from department d
left join employee e
on e.dept_id=d.dept_id
and e.salary>80000
group by d.dept_id,d.dept_name;
select 
	d.dept_name,
	d.manager_name,
	e.emp_name,
	e.salary
from employee e
left join department d
on e.dept_id=d.dept_id;
select
	d.dept_name,
	e.emp_name,
	e.salary
from department d
left join employee e
on e.dept_id=d.dept_id
where e.salary = (
	select max(e2.salary) 
	from employee e2
    where e2.dept_id=d.dept_id
);
select
	d.dept_name,
	avg(e.salary) as average_salary
from employee e
left join department d
on e.dept_id=d.dept_id 
group by d.dept_id,d.dept_name
having avg(e.salary)>60000;
select 
	d.dept_name,
	count(e.emp_id) as employee_count,
	max(e.salary) as maximum_salary,
	min(e.salary) as minimum_salary,
	avg(e.salary) as average_salary
from employee e
left join department d
on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;