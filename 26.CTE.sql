with mini_employee as (
	select emp_name,salary,city
	from employee
)
select * from mini_employee;
with high_salary as(
	select *
	from employee
	where salary>60000
)
select * from high_salary;
with dept_salary as(
	select dept_id,
	avg(salary) as average_salsry
	from employee
	group by dept_id
)
select * from dept_salary;
-------------------------------------
with high_salary as(
	select 
		emp_name,
		salary,
		job_role
	from employee
	where salary >70000
)
select * from high_salary;

with dept_salary as(
	select 
		dept_id,
		avg(salary) as average_salary
	from employee
	group by dept_id
)
select 
	d.dept_name,
	ds.average_salary
from department d
join dept_salary ds
on d.dept_id=ds.dept_id;

with dept_salary as(
	select
		dept_id,
		avg(salary) as average_salary
	from employee
	group by dept_id
)
select 
	d.dept_name,
	ds.average_salary
from department d
join dept_salary ds
on d.dept_id=ds.dept_id
having ds.average_salary >60000;

with dept_salary as(
	select 
		dept_id,
		avg(salary) as average_salary
	from employee
	group by dept_id
),
dept_project as(
		select
			dept_id,
			sum(budget) as total_project_budget
		from project
		group by dept_id
)
select 
	d.dept_name,
	ds.average_salary,
	dp.total_project_budget
from department d
join dept_salary ds
on d.dept_id=ds.dept_id
join dept_project dp
on ds.dept_id=dp.dept_id;

with dept_salary as(
	select
		dept_id,
		avg(salary) as average_salary
	from employee
	group by dept_id
),
dept_project as (
	select 
		dept_id,
		sum(budget) as total_project_budget
	from project 
	group by dept_id
)
select
	d.dept_name,
	ds.average_salary,
	dp.total_project_budget
from department d
join dept_salary ds
on d.dept_id=ds.dept_id
join dept_project dp
on ds.dept_id=dp.dept_id
where ds.average_salary>60000
	and dp.total_project_budget>200000;

with high_salary as(
	select
		emp_name,
		salary,
		job_role
	from employee
	where salary>(
		select avg(salary) 
		from employee
	)
)
select * from high_salary;