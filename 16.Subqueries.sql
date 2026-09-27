use collegedb;
select avg(salary) from employee;
select *
from employee
where salary>(
	select avg(salary)
	from employee
);
select *
from employee
where salary = (
	select max(salary)
	from employee
);
select *
from employee
where salary > (
	select avg(salary)
    from employee
);
select * 
from employee
where salary <(
	select avg(salary)
    from employee
);
select *
from employee
where salary = (
	select max(salary)
    from employee
);
select *
from employee
where salary in(
	select salary
    from employee
    where city='Hyderabad'
);
select *
from employee
where dept_id = (
	select dept_id
    from department
    where dept_name='HR'
);
------------------------------------
select * 
from employee
where salary>(
select avg(salary)
from employee);

select * 
from employee
where salary = (
	select max(salary)
	from employee
);

select * 
from employee
where salary = (
	select min(salary)
	from employee
);

select * 
from employee
where salary<(
	select avg(salary)
	from employee
);

select *
from employee 
where salary= (
select max(salary)
from employee
);

select *
from employee
where salary = (
select min(salary)
from employee
);

select *
from employee
where salary >(
	select avg(salary)
	from employee
	where city='Hyderabad'
);

select *
from employee
where salary >(
select avg(salary)
from employee
where job_role='Developer'
);